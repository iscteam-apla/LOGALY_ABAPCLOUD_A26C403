CLASS ziacl009_abstract_child DEFINITION ABSTRACT INHERITING FROM ziacl009_abstract
  PUBLIC
  "FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS:
      production_line REDEFINITION,
      input_products REDEFINITION.

    METHODS:
      inventory_process ABSTRACT
        RETURNING VALUE(rv_inventory) TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ziacl009_abstract_child IMPLEMENTATION.
  METHOD input_products.
    rv_inputn = 'Input products'.
  ENDMETHOD.

  METHOD production_line.
    rv_production = 'Production line'.
  ENDMETHOD.

ENDCLASS.
