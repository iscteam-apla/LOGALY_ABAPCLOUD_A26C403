CLASS ziacl003 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    CLASS-DATA: log TYPE string.

    METHODS:
      constructor.

    CLASS-METHODS:
      class_constructor.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ziacl003 IMPLEMENTATION.
  METHOD class_constructor.
    log = |[ { log }] static parameter |.
  ENDMETHOD.

  METHOD constructor.
    log = |[ { log }] instance parameter |.
  ENDMETHOD.

ENDCLASS.
