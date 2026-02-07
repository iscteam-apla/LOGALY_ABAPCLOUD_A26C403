CLASS ziacl004_child DEFINITION INHERITING FROM ziacl004
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS:
      constructor,
      get_architecture REDEFINITION.
      "get_memory reDEFINITION.         "  no se puede REDEFINIR porque se creo como FINAL en la clase padre

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ziacl004_child IMPLEMENTATION.
  METHOD constructor.

    super->constructor( ).
    me->architecture = '32 bits'.

  ENDMETHOD.

  METHOD get_architecture.
    me->architecture = '16 bits'.
    rv_architecture = me->architecture.
  ENDMETHOD.

ENDCLASS.
