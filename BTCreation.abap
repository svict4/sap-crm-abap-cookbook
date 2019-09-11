*-- Please note that this is the function module that is called remotely in '(C) Consume WS through ABAP'
*-- Found here https://gist.github.com/svict4/f09e13b02e71c4f81a4e6e5c5c73adfe

FUNCTION XXXXXXXXXX.
*"----------------------------------------------------------------------
*"*"Local Interface:
*"  IMPORTING
*"     VALUE(IV_DESCRIPTION) TYPE  STRING
*"     VALUE(IV_PROCESS_TYPE) TYPE  CHAR4
*"  EXPORTING
*"     VALUE(EV_OBJECT_ID) TYPE  STRING
*"----------------------------------------------------------------------
  DATA: lt_orderadm_h TYPE crmt_orderadm_h_comt,
        ls_orderadm_h TYPE crmt_orderadm_h_com,
        lt_guid_tab TYPE crmt_object_guid_tab,
        lv_guid TYPE guid_16,
        lt_input_fields TYPE crmt_input_field_tab,
        ls_input_fields TYPE crmt_input_field,
        lt_field_names TYPE crmt_input_field_names_tab,
        ls_field_names TYPE crmt_input_field_names,
        lt_saved_objects   TYPE  crmt_return_objects,
        lv_process_type TYPE char4.

  FIELD-SYMBOLS: <fs_orderadm_h> LIKE LINE OF lt_orderadm_h,
                 <fs_saved_objects> LIKE LINE OF lt_saved_objects.

  CALL FUNCTION 'CRM_INTLAY_GET_HANDLE'
    IMPORTING
      ev_handle = ls_input_fields-ref_handle.

  lv_process_type = iv_process_type.
*--------------------------------------------------------------------*
*   Orderadm_h
*--------------------------------------------------------------------*

  ls_orderadm_h-process_type = lv_process_type.
  ls_orderadm_h-mode = 'A'.
  ls_orderadm_h-handle = ls_input_fields-ref_handle.
  IF NOT iv_description IS INITIAL.
    ls_orderadm_h-description = iv_description.
    ls_field_names-fieldname = 'DESCRIPTION'.
    APPEND ls_field_names TO lt_field_names.
  ENDIF.
  APPEND ls_orderadm_h TO lt_orderadm_h.

*--------------------------------------------------------------------*
*   Input Fields
*--------------------------------------------------------------------*
  ls_field_names-fieldname = 'MODE'.
  APPEND ls_field_names TO lt_field_names.
  ls_field_names-fieldname = 'PROCESS_TYPE'.
  APPEND ls_field_names TO lt_field_names.

  ls_input_fields-ref_kind = 'A'.
  ls_input_fields-objectname = 'ORDERADM_H'.
  ls_input_fields-field_names = lt_field_names.
  APPEND ls_input_fields TO lt_input_fields.

*--------------------------------------------------------------------*
*   Saving and all that junk
*--------------------------------------------------------------------*

  CALL FUNCTION 'CRM_ORDER_MAINTAIN'
    CHANGING
      ct_orderadm_h     = lt_orderadm_h  
      ct_input_fields   = lt_input_fields
    EXCEPTIONS
      error_occurred    = 1
      document_locked   = 2
      no_change_allowed = 3
      no_authority      = 4
      OTHERS            = 5.

  READ TABLE lt_orderadm_h ASSIGNING <fs_orderadm_h> INDEX 1.
  IF <fs_orderadm_h> IS ASSIGNED.
    lv_guid = <fs_orderadm_h>-guid.
    APPEND lv_guid TO lt_guid_tab.
  ENDIF.

  CALL FUNCTION 'CRM_ORDER_SAVE'
    EXPORTING
      it_objects_to_save = lt_guid_tab
    IMPORTING
      et_saved_objects   = lt_saved_objects.

  CALL FUNCTION 'BAPI_TRANSACTION_COMMIT'.

  READ TABLE lt_saved_objects ASSIGNING <fs_saved_objects> INDEX 1.
  IF <fs_saved_objects> IS ASSIGNED.
    ev_object_id = <fs_saved_objects>-object_id.
  ELSE.
    ev_object_id = 'Error!'.
  ENDIF.

ENDFUNCTION.
