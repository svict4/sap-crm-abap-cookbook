DATA: lr_data TYPE REF TO data,
      lo_type TYPE REF TO cl_abap_typedescr,
      lo_struct TYPE REF TO cl_abap_structdescr, 
      lr_entity TYPE REF TO if_bol_bo_property_access.

FIELD-SYMBOLS:  <fs_any> TYPE any,
                <fs_actions> LIKE LINE OF lt_actions.

TRY.
    CHECK lr_entity IS BOUND.
    lr_data = me->gr_node_struct. “see appendix

    CALL METHOD cl_abap_refdescr=>describe_by_data_ref
        EXPORTING
            p_data_ref  = lr_data
        RECEIVING
            p_descr_ref = lo_type.

    lo_struct ?= lo_type.
    CREATE DATA lr_data TYPE HANDLE lo_struct.
    ASSIGN lr_data->* TO <fs_any>.
    lr_entity->get_properties( IMPORTING es_attributes = <fs_any> ).


*-- Appendix
*-- GR_NODE_STRUCT 	Instance Attribute	Type Ref to 	DATA
