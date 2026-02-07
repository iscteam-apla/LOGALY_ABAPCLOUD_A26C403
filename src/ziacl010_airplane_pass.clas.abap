CLASS ziacl010_airplane_pass DEFINITION
  PUBLIC
  INHERITING FROM ziacl010_airplane_poly
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: airplane_type REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ziacl010_airplane_pass IMPLEMENTATION.
  METHOD airplane_type.
    rv_airplane_type = 'Passengers plane'.
  ENDMETHOD.

ENDCLASS.
