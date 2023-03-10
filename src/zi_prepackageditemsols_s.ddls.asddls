@EndUserText.label: 'Pre packaged items for online shop Singl'
@AccessControl.authorizationCheck: #NOT_REQUIRED
define root view entity ZI_PrePackagedItemsOls_S
  as select from I_Language
    left outer join ZOS_PREPITEM on 0 = 0
  composition [0..*] of ZI_PrePackagedItems as _PrePackagedItems
{
  key 1 as SingletonID,
  _PrePackagedItems,
  max( ZOS_PREPITEM.CHANGEDAT ) as LastChangedAtMax,
  cast( '' as SXCO_TRANSPORT) as TransportRequestID,
  cast( 'X' as ABAP_BOOLEAN preserving type) as HideTransport
  
}
where I_Language.Language = $session.system_language
