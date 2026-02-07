CLASS ziacl007_friends_child DEFINITION INHERITING FROM ziacl007_friends_2
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS get_private_data.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ziacl007_friends_child IMPLEMENTATION.

  METHOD get_private_data.
    DATA(lo_friend1) = NEW ziacl007_friends( ).

    " en ABAP para los FRIENDS es permitido acceder a los objetos PRIVADOS !!
    lo_friend1->warehouse = 'Main Warehouse'.

    " Entre objetos FRIENDS al heredar.. la propiedad FRIENDS se hereda y tambien se tiene acceso a los objetos PRIVADOS

    " tambien PROTECTED !!
    lo_friend1->warehouse_protected = 'test'.

    " tambien PUBLIC !!
    lo_friend1->warehouse_public = 'test'.

  ENDMETHOD.

ENDCLASS.
