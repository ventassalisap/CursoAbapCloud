#Curso SAP BTP ABAP en Cloud
Nueva versión del 2025 Abap on Cloud (Ejercicios tomados del curso de Logaligroup)
Proyecto desarollado en base a los video del curso 
Se considero el uso de  define root view entity Z_I_RENTING_RJ y para esa interface se creo su vista de consumo 
define define root view entity Z_C_RENTING_RJ 
provider contract transactional_query
as projection on Z_I_RENTING_RJ
Se crea el metadata extensión de la vista de consumo 
@Search.searchable: true /* Permite la busqueda en Hana*/
annotate entity Z_C_RENTING_RJ with
