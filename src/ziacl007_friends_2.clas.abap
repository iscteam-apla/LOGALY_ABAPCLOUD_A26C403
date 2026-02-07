CLASS ziacl007_friends_2 DEFINITION
  PUBLIC
"  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS get_friend_data.


  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ziacl007_friends_2 IMPLEMENTATION.
  METHOD get_friend_data.
    DATA(lo_friend1) = NEW ziacl007_friends( ).

    " en ABAP para los FRIENDS es permitido acceder a los objetos PRIVADOS !!
    lo_friend1->warehouse = 'Main Warehouse'.

" tambien PROTECTED !!
    lo_friend1->warehouse_protected = 'test'.

" tambien PUBLIC !!
    lo_friend1->warehouse_public = 'test'.

  ENDMETHOD.

ENDCLASS.
