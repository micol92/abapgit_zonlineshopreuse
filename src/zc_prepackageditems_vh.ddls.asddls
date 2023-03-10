@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Value Help for prepackaged Items'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.resultSet.sizeCategory:  #XS

define view entity ZC_PREPACKAGEDITEMS_VH
  as select from ZI_PrePackagedItems
{
      @UI.lineItem: [ { position: 10, importance: #HIGH } ]
      @ObjectModel.text.element: ['PackageName'] 
  key Pkgid as PackageId,
      @UI.lineItem: [ { position: 20, importance: #HIGH } ]
      @Semantics.text: true
      PackageName
}
