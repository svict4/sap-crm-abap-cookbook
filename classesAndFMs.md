Classes and Function Modules 

| Name | Type |	Description |	Purpose |
| --- | --- | --- | --- |
| cl_scmg_case_api |	CL | Case: API | A useful API class for performing operations against CRM Cases. This class implements the IF_SCMG_CASE_API interface. | 
| rh_struc_get | FM | Read Structures | A function module useful for reading the Organisation structure based on the Evaluation path and object you provide it. An example is that you can determine a user's organisational heirarchy. | 
| end_time_determine | FM | Calendar: Determine end date and time | A function module that will determine the end date based off the duration you provide (also depends on Calendar. E.g. working calendar). | 
| if_crm_ui_navigation_service | IF | Navigation Service |  | 
| cl_crm_ui_navigation_service | CL | Navigation Service |  | 
| cl_crm_ui_descriptor_obj_srv | CL | Creation Service |  | 
| if_bol_bo_property_access | IF | Access Interface for BO Attributes | Interface which allows for the retrieval of information from context nodes (model and value). Please note, that a different interface must be used for mixed nodes (I think...). | 
| guid_create | FM | Create GUID ('globally unique ID') | This function module will generate a GUID for you. It can generate GUID_16, GUID_22, and GUID_32 typed data. | 
| bapi_bupa_central_getdetail | FM | SAP BP, BAPI: Read Central Data | This function module will read and return the general business partner information based off the BP ID that you provide. | 
| bapi_bupa_existence_check | FM | SAP BP, BAPI: Check Existence of Business Partner | This function module will check that the business partner exists.  | 
| bapi_bupa_relationships_get | FM | 	 |  | 
| bapi_bupa_roles_get | FM |  |  | 
| bapi_bupa_role_existence_check | FM |  |  | 
| crm_order_get_header_guid | FM | 	 |  | 
| crmd_orderadm_h_read_ow | FM | 	 |  | 
| crmd_orderadm_i_read_ow | FM | 	 |  | 
| crm_order_save | FM |  |  | 
| crm_intlay_get_handle | FM |  |  | 
| bapi_transaction_commit | FM | 	 |  | 
| coversion_exit_alpha_input | FM |  | Zeros to left |  | 
| conversion_exit_alpha_output | FM |  | Destroy zeros |  | 
| cl_bsp_wd_context_node | CL | WD Context Node |  | 
| cl_bsp_wd_context_node_tree | CL | Special Context Node for Tree-Table View |  | 
| cl_bsp_wd_tree_node_proxy | CL | Generic Proxy Object for Tree Node |  | 
| bsp_dlc_delete_personalisation | REP | WebClient UI: Delete UI Personalisation Data	User Personalisation can be deleted by "Reset to Default" in the WebUI. Administrators can delete it also using this report. | 
| fssc_rds_catschema_exp_imp | REP | Export and Import Categorisation Schema	Exports a Categorisation Schema to a tab separated text file. Can also be imported from a file. | 
| crm_dataexchange_toolbox | REP | CRM Dataexchange Toolbox	Provides a single view listing and allowing the execution of various reports related to analysis. In summary, a toolbox. | 
| crm_order_read | REP | Test Program for CRM_ORDER_READ function module.	Executes the function module. The biggest difference (imo) is the ability for you to easily enter a transaction id, instead of having to find out the Header GUID. | 
