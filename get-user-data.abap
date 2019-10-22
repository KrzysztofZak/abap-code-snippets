  data:
      lv_user_address type  addr3_val.

  call function 'SUSR_USER_ADDRESS_READ'
    exporting
      user_name                    = sy-uname
*   READ_DB_DIRECTLY             = ' '
*   CACHE_RESULTS                = 'X'
   importing
     user_address                 = lv_user_address
*   USER_USR03                   =
* EXCEPTIONS
*   USER_ADDRESS_NOT_FOUND       = 1
*   OTHERS                       = 2
            .
  if sy-subrc <> 0.
* MESSAGE ID SY-MSGID TYPE SY-MSGTY NUMBER SY-MSGNO
*         WITH SY-MSGV1 SY-MSGV2 SY-MSGV3 SY-MSGV4.
  else.
    lv_user = lv_user_address-name_text.
  endif.
