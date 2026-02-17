*&---------------------------------------------------------------------*
*& Report ZAKM_1
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zakm_1.


TYPES : BEGIN OF ty_data,
  id TYPE string,
  name TYPE string,
  END OF ty_data.
*DATA ls_data TYPE ty_data.
DATA lt_old TYPE STANDARD TABLE OF ty_data.
DATA lt_new TYPE STANDARD TABLE OF ty_data.
*LOOP at lt_old INTO ls_data.
*  APPEND ls_data to lt_new.
*  ENDLOOP.

lt_new = VALUE #( FOR ls_data1 in lt_old
                    ( id = ls_data1-id
                      name = ls_data1-name ) ) .
BREAK-POINT.
