@EndUserText.label: 'Pre packaged items for online shop Singl'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
@ObjectModel.semanticKey: [ 'SingletonID' ]
define root view entity ZC_PrePackagedItemsOls_S
  provider contract transactional_query
  as projection on ZI_PrePackagedItemsOls_S
{
  key SingletonID,
  LastChangedAtMax,
  TransportRequestID,
  HideTransport,
  _PrePackagedItems : redirected to composition child ZC_PrePackagedItems
  
}
