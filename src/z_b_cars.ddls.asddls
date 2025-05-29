@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cars'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity Z_B_CARS as select from zrent_cars_rj
{
    key inc_uuid as IncUuid,
    key matricula as Matricula,
    marca as Marca,
    modelo as Modelo,
    color as Color,
    motor as Motor,
    potencia as Potencia,
    und_potencia as UndPotencia,
    combustible as Combustible,
    consumo as Consumo,
    fecha_fabr as FechaFabr,
    puertas as Puertas,
   @Semantics.amount.currencyCode: 'Moneda'
    precio as Precio,
    moneda as Moneda,
    alquilado as Alquilado,
    alq_desde as AlqDesde,
    alq_hasta as AlqHasta,
    local_created_by as LocalCreatedBy,
    local_created_at as LocalCreatedAt,
    local_last_changed_by as LocalLastChangedBy,
    local_last_changed_at as LocalLastChangedAt,
    last_changed_at as LastChangedAt
    
}
