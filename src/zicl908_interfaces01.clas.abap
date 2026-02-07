CLASS zicl908_interfaces01 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES ziaif001.
    " la interface tiene N metodos, pero no es OBLIGATORIO implementarlos todos.  Avisa que faltan pero no es ERROR.

    ALIASES:
    get_conn_id FOR ziaif001~get_conn_id,
    set_conn_id FOR ziaif001~set_conn_id.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.


CLASS zicl908_interfaces01 IMPLEMENTATION.
  METHOD get_conn_id.

  ENDMETHOD.

  METHOD set_conn_id.

  ENDMETHOD.

ENDCLASS.
