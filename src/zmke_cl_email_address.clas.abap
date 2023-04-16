CLASS zmke_cl_email_address DEFINITION PUBLIC FINAL CREATE PUBLIC.

  PUBLIC SECTION.
    DATA email_address TYPE string READ-ONLY.

    METHODS constructor
      IMPORTING
        email_address TYPE string
      RAISING
        cx_bcs_mail.

    METHODS get_local_part RETURNING VALUE(result) TYPE string
                           RAISING
                                     cx_bcs_mail.

  PROTECTED SECTION.

  PRIVATE SECTION.
    METHODS validate_email_address
      IMPORTING
        email_address TYPE string
      RAISING
        cx_bcs_mail.

ENDCLASS.



CLASS zmke_cl_email_address IMPLEMENTATION.

  METHOD constructor.
    validate_email_address( email_address ).
    me->email_address = email_address.
  ENDMETHOD.

  METHOD validate_email_address.
    " function module SX_INTERNET_ADDRESS_TO_NORMAL not allowed on BTP

    IF email_address NP '*@*'.
      RAISE EXCEPTION NEW cx_bcs_mail( ).
    ENDIF.
  ENDMETHOD.

  METHOD get_local_part.
    DATA local_part TYPE string.
    DATA domain_part TYPE string.

    SPLIT email_address AT '@' INTO local_part domain_part.
    IF sy-subrc <> 0.
      RAISE EXCEPTION NEW cx_bcs_mail( ).
    ENDIF.

    result = local_part.
  ENDMETHOD.

ENDCLASS.
