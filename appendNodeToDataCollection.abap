DATA: lr_entity TYPE REF TO if_bol_bo_property_access,
      lr_node TYPE REF TO cl_bsp_wd_value_node,
      lr_col TYPE REF TO if_bol_bo_col,
      lr_node_struc TYPE REF TO <structure of your node>.

TRY.
    lr_col ?= me->typed_context->node->collection_wrapper.
    lr_col->clear( ).

    CREATE DATA lr_node_struc.

      CREATE OBJECT lr_node
        EXPORTING
          iv_data_ref = lr_node_struc.

      lr_col->add( lr_node ).
    ENDIF.
  CATCH cx_root.
ENDTRY.
