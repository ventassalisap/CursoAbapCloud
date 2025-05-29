@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumo Renting RJ'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity Z_C_RENTING_RJ 
provider contract transactional_query
as projection on Z_I_RENTING_RJ
{
    key IncUuid,
    key Matricula,
    Marca,
    Modelo,
    Color,
    Motor,
    Potencia,
    UndPotencia,
    Combustible,
    Consumo,
    FechaFabr,
    Puertas,
    @Semantics.amount.currencyCode: 'Moneda'
    Precio,
    Moneda,
    Alquilado,
    TiempoRenta,
    Estado,
    AlqDesde,
    AlqHasta,
    LocalCreatedBy,
    LocalCreatedAt,
    LocalLastChangedBy,
    LocalLastChangedAt,
    LastChangedAt
}
