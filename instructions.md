Your context node class’ inheritance must be changed to: `CL_BSP_WD_CONTEXT_NODE_TREE`. 

![image](https://user-images.githubusercontent.com/1137112/35034779-673c7dea-fbc3-11e7-84ee-d23e3a8316fa.png)

You then must redefine the “Refresh” method and write similar code to the following:

```abap
DATA: lr_value_node TYPE REF TO cl_bsp_wd_value_node,
      lr_iterator TYPE REF TO if_bol_bo_col_iterator,
      lr_root     TYPE REF TO if_bsp_wd_tree_node.

lr_iterator = me->collection_wrapper->get_iterator( ).
lr_value_node ?= lr_iterator->get_first( ).

WHILE lr_value_node IS BOUND.

  lr_root = me->node_factory->get_proxy(
            iv_bo         = lr_value_node
            iv_proxy_type = 'PROXY CLASS HERE' ).

  lr_root->node_key = add_root_node( lr_root ).
  lr_root->expand_node( ).
  lr_value_node ?= lr_iterator->get_next( ).
ENDWHILE.
```
The proxy class is a class inheriting from: `CL_BSP_WD_TREE_NODE_PROXY`.  In the GET_CHILDREN method is where you throw your logic. Remember to (if you want recursion) call the same proxy class for each node in that method: 

```abap
me->node_factory->get_proxy(
                   iv_bo         = lr_value_node
                   iv_proxy_type = 'PROXY CLASS HERE' ).
```

![image](https://user-images.githubusercontent.com/1137112/35034804-7b11712c-fbc3-11e7-89a3-2f6335901b3f.png)
