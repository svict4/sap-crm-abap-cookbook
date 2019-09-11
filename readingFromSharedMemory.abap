*-- READING

DATA: lv_attr_str TYPE string,
      lo_root TYPE REF TO zXXXXXX_shared_mem,
      lo_area TYPE REF TO zXXXXXX_shared_mem_area.

TRY.
    lo_area = zXXXXXX_shared_mem_area=>attach_for_read( ).
    lv_attr_str = lo_area->root->get_ttt_mem( ).
    lo_area->detach( ).    
CATCH cx_root.
ENDTRY.


*-- SAVING

*-- created in a WebDyn pro view

DATA: lr_node TYPE REF TO if_wd_context_node,
      ls_attr TYPE wd_this->element_tttbuttons,
      lv_attr_str TYPE string,
      lo_root TYPE REF TO zXXXXXX_shared_mem,
      lo_area TYPE REF TO zXXXXXX_shared_mem_area.

lr_node = wd_context->get_child_node( 'NODE' ).

CHECK lr_node IS BOUND.
lr_node->get_static_attributes(
  IMPORTING
    static_attributes = ls_attr
).

lv_attr_str = ls_attr.

TRY.
    lo_area = zXXXXXX_shared_mem_area=>attach_for_write( ).
    CREATE OBJECT lo_root AREA HANDLE lo_area.
    lo_area->set_root( lo_root ).
    lo_area->root->set_ttt_mem( iv_ttt = lv_attr_str ).
    lo_area->detach_commit( ).
  CATCH cx_root.
ENDTRY.
