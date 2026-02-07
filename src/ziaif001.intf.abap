INTERFACE ziaif001
  PUBLIC .

  CLASS-DATA comp_id TYPE string.

  DATA conn_id TYPE string.

  METHODS:
    set_conn_id IMPORTING iv_conn TYPE string,
    get_conn_id EXPORTING ev_conn TYPE string.

ENDINTERFACE.
