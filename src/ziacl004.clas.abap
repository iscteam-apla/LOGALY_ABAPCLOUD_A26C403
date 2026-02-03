CLASS ziacl004 DEFINITION
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.

    DATA: architecture TYPE string VALUE '64 bits'.

    METHODS get_architecture RETURNING VALUE(rv_architecture) TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ziacl004 IMPLEMENTATION.
  METHOD get_architecture.
    rv_architecture = me->architecture.
  ENDMETHOD.

ENDCLASS.
