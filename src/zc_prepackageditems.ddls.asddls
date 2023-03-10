@EndUserText.label: 'Pre packaged items for online shop - Mai'
@AccessControl.authorizationCheck: #NOT_ALLOWED
@Metadata.allowExtensions: true
define view entity ZC_PrePackagedItems
  as projection on ZI_PrePackagedItems
{
  key Pkgid,
      PackageName,
      PackageDescription,
      Plant,
      PurchaseRequisitionItemText,
      AccountAssignmentCategory,
      RequestedQuantity,
      BaseUnit,
      PurchaseRequisitionPrice,
      PurReqnItemCurrency,
      MaterialGroup,
      PurchasingGroup,
      PurchasingOrganization,
      @Consumption.hidden: true
      Locallastchangedat,
      @Consumption.hidden: true
      Changedat,
      @Consumption.hidden: true
      SingletonID,
      _PrePackagedItemsAll : redirected to parent ZC_PrePackagedItemsOls_S

}
