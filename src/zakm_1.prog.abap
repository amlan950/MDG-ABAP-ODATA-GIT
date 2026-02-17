*&---------------------------------------------------------------------*
*& Report ZAKM_1
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zakm_1.
*Define structure
*TYPES: BEGIN OF ty_data,
* roll type string,
*  name TYPE string,
*END OF ty_data.
**declare internal table
*DATA lt_target TYPE TABLE OF ty_data.
*DATA lt_source TYPE TABLE of ty_data.
*DATA ls_source TYPE ty_data.
**Simple data
*ls_source-roll ='1'.
*ls_source-name ='sunil'.
*APPEND ls_source to lt_source.
*ls_source-roll = '2'.
*ls_source-name = 'anil'.
*APPEND ls_source to lt_source.
**Loop inside Value using FOR.
*lt_target = VALUE #( FOR ls_source1 IN lt_source (
*                                                      roll = ls_source-roll
*                                                      name = ls_source-name ) ).



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
