@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Details Customers'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@Metadata.allowExtensions: true
define view entity z_b_det_customer_rj 
as select from zrent_customs_rj
{     
   
    key doc_id as DocId,
    key matricula as Matricula,
    nombres as Nombres,
    apellidos as Apellidos,
  //  concat_with_space( nombres, apellidos,1 ) as Fullname,
    email as Email,
    cntr_type as TipoContrato
}
