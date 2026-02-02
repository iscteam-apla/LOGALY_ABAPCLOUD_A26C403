CLASS ziacl002 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

** instancia
    DATA: attr1 TYPE string.
    METHODS:
      set_attr1 IMPORTING iv_attr1 TYPE string,
      get_attr1 RETURNING VALUE(ev_attr1) TYPE string,
      get_flights IMPORTING iv_flight       TYPE /dmo/travel_id
                            iv_agency       TYPE /dmo/agency_id
                  RETURNING VALUE(rv_exist) TYPE abap_boolean.

** Static
    CLASS-DATA: attr2 TYPE string.
    CLASS-METHODS:
      set_attr2 IMPORTING iv_attr2 TYPE string,
      get_attr2 RETURNING VALUE(rv_attr2) TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS ziacl002 IMPLEMENTATION.
  METHOD set_attr1.
    me->attr1 = iv_attr1.
  ENDMETHOD.

  METHOD set_attr2.
    attr2 = iv_attr2.
  ENDMETHOD.

  METHOD get_attr1.
    ev_attr1 = me->attr1.
  ENDMETHOD.

  METHOD get_attr2.
    rv_attr2 = attr2.
  ENDMETHOD.

  METHOD get_flights.
    rv_exist = abap_false.
    SELECT @abap_true
      FROM /dmo/travel
     WHERE travel_id EQ @iv_flight
      INTO @rv_exist
        UP TO 1 ROWS.
    ENDSELECT.
  ENDMETHOD.

ENDCLASS.
