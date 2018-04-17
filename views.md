Views

| Name |	Type |	Short Text |	Description |
| --- | --- | --- | --- | 
| BSPC_DL_PERSSTOR | Trans | 	Storage Table for XML Personalised Layout Descriptions | This table contains Users' personalisation in the WebUI. If a user doesn’t have an entry in this table, then they don't have anything personalised. | 
| BSPDLCV_OBJ_TYPE | Mntn | Object Type |	This view displays all the Objects in the system. Most notably, it lists all the BOR Object Types and names. | 
| BSPWDVC_CMP_EXT | Cluster | 	Enhancement Set Definition | This view cluster lists the enhancement sets defined. It also lists each BSP component that has been definied under the sets, as well as each view that has been enhanced in that component. | 
| BUT000 | Trans | 	BP: General data I | This table stores General Information on the Business Partners (who would have guessed from the name). | 
| BUT001 | Trans | 	BP: General data II | This table also stores General Information on the Business Partners (who would have guessed from the name). | 
| BUT0BK | Trans | 	BP: Bank Details | This table stores all the Bank Details on a Business Partner. I have no idea what use this would be in any of the applications I have developed but can imagine lots of uses in DHS. | 
| BUT0ID | Trans | 	BP: ID Numbers | This table stores all the indentification details on the Business Partner. In DHS' case, you would expect to find a CRN here. | 
| BUT100 | Trans | 	BP: Roles | This is a table which stores which Roles are related to which Business Partner. For example, it would store that my BP is an employee (BUP003 role or something). | 
| COMM_PRODUCT | Trans | 	Product Table | This table stores all the general information about the Products configured. | 
| CRMC_PROC_TYPE | Trans | 	Business Transaction Type | This table stores all configurations of a business transaction done in SPRO.  | 
| CRMD_CASE_INDEX | Trans | 	Index table for Case document | This is an index table (as obvious from the short text) for Cases. Please note, this table stores a different entry for every partner procedure against the Case. | 
| CRMD_ORDER_INDEX | Trans | 	Index table for one-order document | This is an index table (as obvious from the short text) for One-Order transactions. Please note, this table stores a different entry for every partner procedure against the transaction. | 
| CRMD_ORDERADM_H | Trans | 	Business Transaction: Header | This table stores all the header information on One-Order transactions. Please note, Cases are not One-Order. | 
| CRMD_ORDERADM_I | Trans | 	Business Transaction: Item | This table stores all the item-level information on One-Order transactions. Please note, Cases are not One-Order. | 
| CRMV_IC_APP_COMP | Mntn | 	For maintaining IC application components. | This view allows for the viewing and changing of the mapping of Interaction Centre components to the classes that provide that functionality. | 
| CRMV_IC_BORADM | Mntn | 	Administration of system settings for Business Objects | Maintenance table for the Logical Systems utilised by Transaction Launcher. For example, you specific the RFC destinations of the ERP system etc. | 
| CRMV_PROCESS_MA | Cluster | 	Define Business Transaction Type | This view cluster is used for the maintenance and configuration of business transactions. This is what the 'Define Transaction Type' object in SPRO references to. | 
| E070 | Trans | 	Change & Transport System: Header of Requests/Tasks | This table contains the header information of all transports created within the system. This is particularly handy when grabbing specific information from a number of transports (such as description). | 
| SCMG_T_CASE_ATTR | Trans | 	Case Attributes | This table stores all the Case information.  | 
| T778A | Mntn | 	Evaluation Paths | This table lists all the evaluation paths and essentially tells the system how to pull the data back based on the relationship between objects. | 
| TJ30 | Trans | 	User Status | Lists every user status that has been maintained.  | 
| TJ30T | Trans | Texts for User Status | Lists every user status text that has been maintained. It also stores the User Status ID and the Status Profile making it easy to differentiate. | 
