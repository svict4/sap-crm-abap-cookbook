DATA: lr_entity TYPE REF TO if_bol_bo_property_access.

lr_entity ?= me->typed_context->btadminh->collection_wrapper->get_current( ).

CHECK lr_entity IS BOUND.
IF  lr_entity->get_property_as_string( iv_attr_name = 'PROCESS_TYPE' ) = 'process type here'. "added process type check, can never be too careful
ENDIF.
