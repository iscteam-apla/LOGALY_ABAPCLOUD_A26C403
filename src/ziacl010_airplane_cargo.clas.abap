CLASS ziacl010_airplane_cargo DEFINITION
  PUBLIC
  INHERITING FROM ziacl010_airplane_poly
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: airplane_type REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ziacl010_airplane_cargo IMPLEMENTATION.
  METHOD airplane_type.
    rv_airplane_type = 'Cargo plane'.
  ENDMETHOD.

ENDCLASS.
