DATA: lr_entity TYPE REF TO if_bol_bo_property_access,
        lr_context TYPE REF TO if_crm_ui_data_context.

  lr_context = cl_crm_ui_data_context_srv=>get_instance( ).
  IF lr_context IS BOUND.
    lr_entity ?= 
lr_context->get_entity( name = cl_crm_ic_bp_constants=>gc_gdc_currentcustomer ).
  ENDIF.
