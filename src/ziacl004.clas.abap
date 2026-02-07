CLASS ziacl004 DEFINITION
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.

    DATA: architecture TYPE string.

    METHODS:
      constructor,
      get_architecture RETURNING VALUE(rv_architecture) TYPE string,
      get_memory FINAL
        IMPORTING iv_attr TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ziacl004 IMPLEMENTATION.
  METHOD get_architecture.
    rv_architecture = me->architecture.
  ENDMETHOD.

  METHOD constructor.
    me->architecture = '64 bits'.
  ENDMETHOD.

  METHOD get_memory.

  ENDMETHOD.

ENDCLASS.
