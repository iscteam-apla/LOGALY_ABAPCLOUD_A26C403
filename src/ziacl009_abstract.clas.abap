CLASS ziacl009_abstract DEFINITION ABSTRACT
  PUBLIC
  "FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS:
      merchadise_output
        RETURNING VALUE(rv_merchadise) TYPE string,
      production_line ABSTRACT
        RETURNING VALUE(rv_production) TYPE string,
      input_products ABSTRACT
        RETURNING VALUE(rv_inputn) TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ziacl009_abstract IMPLEMENTATION.
  METHOD merchadise_output.
    rv_merchadise = 'Merchadise output'.
  ENDMETHOD.

ENDCLASS.
