CLASS zmke_cl_value_object_tests DEFINITION PUBLIC FINAL CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.

  PRIVATE SECTION.
    METHODS run_money_example.
    METHODS run_email_address_example.

ENDCLASS.



CLASS zmke_cl_value_object_tests IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.
    run_money_example( ).
    run_email_address_example( ).
  ENDMETHOD.

  METHOD run_email_address_example.
    TRY.
        DATA(email_address) = NEW zmke_cl_email_address( 'john.doe@example.com' ).
        DATA(local_part) = email_address->get_local_part( ).
      CATCH cx_bcs_mail.
        " error handling
    ENDTRY.
  ENDMETHOD.

  METHOD run_money_example.
    DATA(money_in_pocket) = NEW zmke_cl_money( amount = 25
                                               currency = 'EUR' ).

    DATA(prize_money) = NEW zmke_cl_money( amount = 100
                                           currency = 'EUR' ).

    money_in_pocket = money_in_pocket->add( prize_money ).
  ENDMETHOD.

ENDCLASS.
