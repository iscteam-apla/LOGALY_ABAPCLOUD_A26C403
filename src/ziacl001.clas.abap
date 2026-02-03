CLASS ziacl001 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES: if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.

ENDCLASS.



CLASS ziacl001 IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.
    "     out->write( 'Holaaaa' ).

    DATA(lo_instance) = NEW ziacl002( ).

    lo_instance->set_attr1( 'prueba OO01' ).
    out->write( lo_instance->get_attr1(  ) ).

    ziacl002=>set_attr2( 'prueba OO02' ).
    out->write( ziacl002=>get_attr2(  ) ).

    IF lo_instance->get_flights( iv_flight = '00000009' iv_agency = '0002' ) EQ abap_true.
      out->write( 'existe' ).
    ELSE.
      out->write( 'no existe' ).
    ENDIF.

* Constructors
    DATA(lo_instance03a) = NEW ziacl003( ).
    out->write( lo_instance03a->log ).
    DATA(lo_instance03b) = NEW ziacl003( ).
    out->write( lo_instance03b->log ).

* Heritance
    DATA(lo_instance04) = NEW ziacl004_child( ).
    out->write( lo_instance04->get_architecture( ) ).

  ENDMETHOD.

ENDCLASS.
