CLASS ziacl001 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES: if_oo_adt_classrun.

    DATA name TYPE string VALUE 'Tim'.

  PROTECTED SECTION.
  PRIVATE SECTION.

ENDCLASS.



CLASS ziacl001 IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.
    "     out->write( 'Holaaaa' ).

*    out->write( 'Test 01' ).
*    DATA lo_test01 TYPE REF TO ziacl001.
*    lo_test01 = NEW #( ).
*    out->write( lo_test01->name ).
*
*    DATA(lo_test01b) = NEW ziacl006_declar_types_encap( ).
*    DATA lv_test TYPE ziacl006_declar_types_encap=>ty_test.
**    DATA lv_test2 TYPE ziacl_test01=>ty_test2.      " ERROR al ser PRIVATE
*    DATA(lo_instance) = NEW ziacl002( ).
*
*    lo_instance->set_attr1( 'prueba OO01' ).
*    out->write( lo_instance->get_attr1(  ) ).
*
*    ziacl002=>set_attr2( 'prueba OO02' ).
*    out->write( ziacl002=>get_attr2(  ) ).
*
*    IF lo_instance->get_flights( iv_flight = '00000009' iv_agency = '0002' ) EQ abap_true.
*      out->write( 'existe' ).
*    ELSE.
*      out->write( 'no existe' ).
*    ENDIF.
*
** Constructors
*    DATA(lo_instance03a) = NEW ziacl003( ).
*    out->write( lo_instance03a->log ).
*    DATA(lo_instance03b) = NEW ziacl003( ).
*    out->write( lo_instance03b->log ).
*
** Heritance
*    DATA(lo_instance04) = NEW ziacl004_child( ).
*    out->write( lo_instance04->get_architecture( ) ).
*
**Narrowing casing  -->  UP cast
*    DATA(lo_animal) = NEW ziacl005_animal( ).
*    DATA(lo_lion) = NEW ziacl005_lion( ).
*
*    out->write( lo_animal->walk( ) ).
*    out->write( lo_lion->walk( ) ).
*
**    out->write( 'Narrowing (Up Cast)' ).
**    lo_animal = lo_lion.
**    out->write( lo_animal->walk( ) ).
*
**Widning casing  -->  DOWN cast
*
*    out->write( lo_animal->walk( ) ).
*    out->write( lo_lion->walk( ) ).
*
*    TRY.
*        out->write( 'Widening (Up Cast)' ).
*        lo_lion ?= lo_animal.
*        out->write( lo_lion->walk( ) ).
*        out->write( lo_animal->walk( ) ).
*      CATCH cx_sy_move_cast_error.
*        out->write( 'DUMP widening' ).
*    ENDTRY.


** Polimorphism     !!!!
    DATA lt_airplanes TYPE STANDARD TABLE OF REF TO ziacl010_airplane_poly.
    DATA lo_cargo TYPE REF TO ziacl010_airplane_cargo.
    DATA lo_pass TYPE REF TO ziacl010_airplane_pass.

    lo_cargo = NEW ziacl010_airplane_cargo( ).
    APPEND lo_cargo TO lt_airplanes.
    lo_pass = NEW ziacl010_airplane_pass( ).
    APPEND lo_pass TO lt_airplanes.

    LOOP AT lt_airplanes ASSIGNING FIELD-SYMBOL(<o_airplane>).
      out->write( <o_airplane>->airplane_type( ) ).
    ENDLOOP.

  ENDMETHOD.

ENDCLASS.
