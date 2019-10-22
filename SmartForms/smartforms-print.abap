 data:
            fm_name type rs38l_fnam.

    call function 'SSF_FUNCTION_MODULE_NAME'
        exporting
          formname                 = 'SMARTFORM_NAME'
*         VARIANT                  = ' '
*         DIRECT_CALL              = ' '
       importing
         fm_name                  = fm_name
       EXCEPTIONS
         NO_FORM                  = 1
         NO_FUNCTION_MODULE       = 2
         OTHERS                   = 3
                .
      if sy-subrc <> 0.
 MESSAGE ID SY-MSGID TYPE SY-MSGTY NUMBER SY-MSGNO
         WITH SY-MSGV1 SY-MSGV2 SY-MSGV3 SY-MSGV4.
      endif.


      call function fm_name
        exporting
          it_data = lt_data_to_prnt
          is_data = v_scr0100-gs_qapp.