@EndUserText.label: 'Pre packaged items for online shop'
@AccessControl.authorizationCheck: #NOT_ALLOWED
define view entity ZI_PrePackagedItems
  as select from zos_prepitem
  association to parent ZI_PrePackagedItemsOls_S as _PrePackagedItemsAll on $projection.SingletonID = _PrePackagedItemsAll.SingletonID
{
  key pkgid as Pkgid,
  pkgname as PackageName,
  pkgdescr as PackageDescription,
  werks as Plant,
  txz01 as PurchaseRequisitionItemText,
  knttp as AccountAssignmentCategory,
  @Semantics.quantity.unitOfMeasure: 'BaseUnit'
  menge as RequestedQuantity,  
  meins as BaseUnit,
  @Semantics.amount.currencyCode: 'PurReqnItemCurrency'
  preis as PurchaseRequisitionPrice,
  waers as PurReqnItemCurrency,
  matkl as MaterialGroup,
  ekgrp as PurchasingGroup,
  ekorg as PurchasingOrganization,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  locallastchangedat as Locallastchangedat,
  @Semantics.systemDateTime.lastChangedAt: true
  changedat as Changedat,
  1 as SingletonID,
  _PrePackagedItemsAll
  
}
