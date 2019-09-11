*-- This code is calling the exposed Function Module in the snippet of 'BT Creation'.
*-- Found here: https://gist.github.com/svict4/d64fa12613415ab94afd1ee98a82c881

DATA: lo_proxy TYPE REF TO zsapco_zsrv_XXXXXX,
      ls_service_output TYPE zsapzfm_XXXXXX_servresponse,
      ls_service_input TYPE zsapzfm_XXXXXX_serv.

TRY.
*-- Create an instance of the ABAP Proxy class
  CREATE OBJECT lo_proxy.

*-- In this case, the WS takes the process type of a transaction to be
*    created as well as the description. The WS then creates a transaction
*    appropriate and returns the objectid in the response.
    ls_service_input-iv_process_type = 'SRVR'.
    ls_service_input-iv_description = 'Test'.

    CALL METHOD lo_proxy->zfm_tbo475_serv
      EXPORTING
        input  = ls_service_input
      IMPORTING
        output = ls_service_output.

    CATCH cx_ai_system_fault.
      " This must be caught when using ABAP Proxies.
ENDTRY.
