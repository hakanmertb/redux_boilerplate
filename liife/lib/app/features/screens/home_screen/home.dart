import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:intl/intl.dart';
import 'package:liife/app/features/data-stores/appDataStore/state.dart';
import 'package:liife/app/features/data-stores/authDataStore/actions.dart';
import 'package:liife/app/features/data-stores/authDataStore/state.dart';
import 'package:liife/app/features/shared/sdk/lib/api.dart';
import 'package:liife/app/features/shared/widgets/loading_indicator.dart';
import 'package:one_context/one_context.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late final StreamController<List<ApplicationWithRelations>?>
      _streamController;

  @override
  void initState() {
    super.initState();
    _streamController = StreamController<List<ApplicationWithRelations>?>();
  }

  @override
  void dispose() {
    _streamController.close();
    super.dispose();
  }

  Future<void> _fetchApplicationData(AuthState authState) async {
    final applicationData =
        await ApplicationControllerApi().applicationControllerFind(
      filter: ApplicationFilter1(
        include: [
          ApplicationIncludeFilterInner(
            relation: ApplicationIncludeFilterInnerRelationEnum.user,
          ),
        ],
        where: authState.user != null ? {"userId": authState.user!.id} : {},
      ),
    );
    _streamController.add(applicationData);
  }

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppDataStoreState, AuthState>(
      converter: (store) => store.state.authState,
      builder: (context, authState) {
        return Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {},
            ),
            title: Padding(
              padding: const EdgeInsets.only(right: 14),
              child: Center(
                child: SizedBox(
                  height: 65,
                  child: Image.asset(
                    'assets/logo.png',
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.logout),
                onPressed: () {
                  StoreProvider.of<AppDataStoreState>(OneContext().context!)
                      .dispatch(Logout());
                },
              ),
            ],
            elevation: 0,
            backgroundColor: Theme.of(context).colorScheme.surface,
            foregroundColor: Theme.of(context).colorScheme.onSurface,
          ),
          body: RefreshIndicator(
            onRefresh: () => _fetchApplicationData(authState),
            child: StreamBuilder<List<ApplicationWithRelations>?>(
              stream: _streamController.stream,
              builder: (context, snapshot) {
                if (!snapshot.hasData || authState.user == null) {
                  return const _LoadingView();
                }

                if (snapshot.data == null || snapshot.data!.isEmpty) {
                  return _buildEmptyView(authState.user!);
                }

                final application = snapshot.data!.first;
                return _buildApplicationView(authState.user!, application);
              },
            ),
          ),
        );
      },
    );
  }

  SingleChildScrollView _buildEmptyView(User user) {
    return SingleChildScrollView(
      physics: const AlwaysScrollableScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 16)
            .copyWith(bottom: 15),
        child: Column(
          children: [
            _buildProfileCard(user),
            const _DemographicInfoCard(),
          ],
        ),
      ),
    );
  }

  SingleChildScrollView _buildApplicationView(
      User user, ApplicationWithRelations application) {
    return SingleChildScrollView(
      physics: const AlwaysScrollableScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 16)
            .copyWith(bottom: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildProfileCard(user),
            _buildDetailCard(
              'Application Details',
              [
                _buildDetailRow('Who are you searching for?', application.type),
                _buildDetailRow('ZIP Code', application.zipcode),
              ],
            ),
            _buildDetailCard(
              'Household Information',
              [
                _buildDetailRow(
                    'Household Size', application.householdSize.toString()),
                _buildDetailRow('Expected Household Income for 2024',
                    application.houseHoldIncomeRange),
              ],
            ),
            _buildDetailCard(
              'Personal Information',
              [
                _buildDetailRow('Gender', application.gender),
                _buildDetailRow('Birthday', formatDate(application.birthday)),
                _buildDetailRow('Height',
                    "${application.heightFeet.toString()}' ${application.heightInch.toString()}\" "),
                _buildDetailRow(
                    'Weight', '${application.weight.toString()} lbs'),
              ],
            ),
            _buildDetailCard(
              'Qualifying Life Events',
              [
                _buildDetailRow(
                  'Qualifying Life Event',
                  application.qualifyingLifeEvent.replaceFirstMapped(
                    application.qualifyingLifeEvent[0],
                    (m) => application.qualifyingLifeEvent[0].toUpperCase(),
                  ),
                ),
                _buildDetailRow(
                  'Any of these within the last 5 years?',
                  application.healthConditions.join(', ').substring(
                      0, application.healthConditions.join(', ').length),
                ),
                _buildDetailRow(
                    'Do you smoke?', application.smoking ? "Yes" : "No"),
                _buildDetailRow('Is anyone on this policy pregnant?',
                    application.pregnancy ? "Yes" : "No"),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _fetchApplicationData(
        StoreProvider.of<AppDataStoreState>(context).state.authState);
  }
}

class _LoadingView extends StatelessWidget {
  const _LoadingView();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 90,
            child: Image.asset('assets/logo.png'),
          ),
          const SizedBox(height: 8),
          const LoadingIndicator(),
          const SizedBox(height: 70),
        ],
      ),
    );
  }
}

class _DemographicInfoCard extends StatelessWidget {
  const _DemographicInfoCard();

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: double.infinity,
      child: Card(
        elevation: 2,
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Demographic info has not been found.",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildProfileCard(User user) {
  var nameList = [user.firstName, user.middleName, user.lastName];
  String fullName = nameList.join(' ');
  String? phoneNumber = user.phoneNumber;
  String firstLetters = '';
  for (var name in nameList) {
    if (name != null) firstLetters += name[0];
  }

  return SizedBox(
    width: double.infinity,
    child: Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 40,
              child: Text(
                firstLetters,
                style: const TextStyle(fontSize: 24),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              fullName.toUpperCase(),
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              phoneNumber == null
                  ? ''
                  : "(${phoneNumber.substring(3, 6)}) ${phoneNumber.substring(6, 9)}-${phoneNumber.substring(9)}",
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget _buildDetailCard(String title, List<Widget> details) {
  return SizedBox(
    width: double.infinity,
    child: Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Divider(),
            const SizedBox(height: 8),
            ...details,
          ],
        ),
      ),
    ),
  );
}

Widget _buildDetailRow(String title, String value) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 4.0),
    child: Row(
      children: [
        const SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 4),
            Row(
              children: [
                const Icon(
                  Icons.info,
                  color: Colors.black54,
                  size: 15,
                ),
                const SizedBox(width: 4),
                Text(
                  value,
                  style: const TextStyle(fontSize: 14),
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}

String formatDate(DateTime date) {
  final DateFormat formatter = DateFormat('dd/MM/yyyy');
  return formatter.format(date);
}
