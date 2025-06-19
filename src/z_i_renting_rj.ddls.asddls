@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Renting'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@Metadata.allowExtensions: true
define root view entity Z_I_RENTING_RJ
  as select from Z_B_CARS as Cars
  association [1]    to Z_B_REM_DAYS_RJ     as _RemDays     on Cars.Matricula = _RemDays.Matricula
  association [0..*] to Z_B_BRANDS_RJ       as _Brands      on Cars.Marca = _Brands.Marca
  association [0..*] to z_b_det_customer_rj as _DetCustomer on Cars.Matricula = _DetCustomer.Matricula
{
  key Cars.IncUuid            as IncUuid,
  key Cars.Matricula          as Matricula,
      Cars.Marca              as Marca,
      Cars.Modelo             as Modelo,
      Cars.Color              as Color,
      Cars.Motor              as Motor,
      Cars.Potencia           as Potencia,
      Cars.UndPotencia        as UndPotencia,
      Cars.Combustible        as Combustible,
      Cars.Consumo            as Consumo,
      Cars.FechaFabr          as FechaFabr,
      Cars.Puertas            as Puertas,
      @Semantics.amount.currencyCode: 'Moneda'
      Cars.Precio             as Precio,
      Cars.Moneda             as Moneda,
      Cars.Alquilado          as Alquilado,
      case
      when _RemDays.Dias <= 0 then 0
      when _RemDays.Dias between 1 and 30 then 1
      when _RemDays.Dias between 31 and 100 then 2
      when _RemDays.Dias > 100 then 3
      else 0
      end                     as TiempoRenta,
      _Brands.Imagen          as Imagen,
      ''                      as Estado,
      Cars.AlqDesde           as AlqDesde,
      Cars.AlqHasta           as AlqHasta,
      Cars.LocalCreatedBy     as LocalCreatedBy,
      Cars.LocalCreatedAt     as LocalCreatedAt,
      Cars.LocalLastChangedBy as LocalLastChangedBy,
      Cars.LocalLastChangedAt as LocalLastChangedAt,
      Cars.LastChangedAt      as LastChangedAt,
      _DetCustomer    
//      _DetCustomer.DocId as DocId,
//      _DetCustomer.TipoContrato as TpoContrato
      
}
