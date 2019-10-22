PARAMETERS : p_fname  TYPE rlgrap-filename OBLIGATORY.
AT SELECTION-SCREEN ON VALUE-REQUEST FOR p_fname.
 
  CALL FUNCTION 'F4_FILENAME'
    EXPORTING
      program_name  = syst-cprog
      dynpro_number = syst-dynnr
      field_name    = ' '
    IMPORTING
      file_name     = p_fname.