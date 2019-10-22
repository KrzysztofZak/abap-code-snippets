
parameter: pa_path    type localfile default 'C:\Folder'.

at selection-screen on value-request for pa_path.

  data: lv_path_str type string.

  call method cl_gui_frontend_services=>directory_browse
    exporting
      window_title    = 'Select destination folder'         "(003)
    changing
      selected_folder = lv_path_str
    exceptions
      cntl_error      = 1.

  call method cl_gui_cfw=>flush
    exceptions
      cntl_system_error = 1
      cntl_error        = 2.

  pa_path =  lv_path_str.