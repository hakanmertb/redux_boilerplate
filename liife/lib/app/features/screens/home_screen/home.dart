import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:liife/app/features/data-stores/appDataStore/state.dart';
import 'package:liife/app/features/data-stores/authDataStore/actions.dart';
import 'package:one_context/one_context.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
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
                )),
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 16)
              .copyWith(bottom: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildProfileCard(),
              _buildDetailCard('Application Details', [
                _buildDetailRow('Who are you searching for?', 'My Family'),
                _buildDetailRow('ZIP Code', '1010'),
              ]),
              _buildDetailCard('Household Information', [
                _buildDetailRow('Household Size', '4'),
                _buildDetailRow(
                    'Expected Household Income for 2024', '\$50,000'),
              ]),
              _buildDetailCard('Personal Information', [
                _buildDetailRow('Gender', 'Male'),
                _buildDetailRow('Birthday', '10-10-1990'),
                _buildDetailRow('Height', '1.90 m'),
                _buildDetailRow('Weight', '150 lbs'),
              ]),
              _buildDetailCard('Qualifying Life Events', [
                _buildDetailRow('Qualifying Life Event', 'Got Married'),
                _buildDetailRow(
                    'Any of these within the last 5 years?', 'None'),
                _buildDetailRow('Do you smoke?', 'No'),
                _buildDetailRow('Is anyone on this policy pregnant?', 'No'),
              ]),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProfileCard() {
    return const SizedBox(
      width: double.infinity,
      child: Card(
        elevation: 2,
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              CircleAvatar(
                radius: 40,
                child: Text(
                  'TO',
                  style: TextStyle(fontSize: 24),
                ),
              ),
              SizedBox(height: 8),
              Text(
                'TANSEL OZKUSAKSIZ',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
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
}
