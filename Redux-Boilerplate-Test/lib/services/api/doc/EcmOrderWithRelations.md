# my_api_client.model.EcmOrderWithRelations

## Load the model package
```dart
import 'package:my_api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**userId** | **String** |  | 
**status** | **String** |  | 
**totalPrice** | **num** |  | 
**paymentStatus** | **String** |  | 
**currency** | **String** |  | 
**shippingAddress** | **String** |  | 
**billingAddress** | **String** |  | 
**paymentDate** | [**DateTime**](DateTime.md) |  | [optional] 
**createdDate** | [**DateTime**](DateTime.md) |  | [optional] 
**createdBy** | **String** |  | [optional] 
**createdById** | **String** |  | [optional] 
**updatedDate** | [**DateTime**](DateTime.md) |  | [optional] 
**updatedBy** | **String** |  | [optional] 
**updatedById** | **String** |  | [optional] 
**deletedDate** | [**DateTime**](DateTime.md) |  | [optional] 
**deletedBy** | **String** |  | [optional] 
**deletedById** | **String** |  | [optional] 
**isDeleted** | **bool** |  | [optional] 
**shoppingCartId** | **String** |  | [optional] 
**items** | [**List<EcmOrderItemWithRelations>**](EcmOrderItemWithRelations.md) |  | [optional] [default to const []]
**foreignKey** | [**Object**](.md) |  | [optional] 
**shoppingCart** | [**EcmShoppingCartWithRelations**](EcmShoppingCartWithRelations.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


