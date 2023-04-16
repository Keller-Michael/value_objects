CLASS zmke_cl_money DEFINITION PUBLIC FINAL CREATE PUBLIC.

  PUBLIC SECTION.
    DATA amount TYPE d34n READ-ONLY.
    DATA currency TYPE waers READ-ONLY.

    METHODS constructor
      IMPORTING
        amount   TYPE d34n
        currency TYPE waers.

    METHODS add
      IMPORTING
        other         TYPE REF TO zmke_cl_money
      RETURNING
        VALUE(result) TYPE REF TO zmke_cl_money.

  PROTECTED SECTION.

  PRIVATE SECTION.

ENDCLASS.



CLASS zmke_cl_money IMPLEMENTATION.

  METHOD add.
    IF currency <> me->currency.
      RETURN.
    ENDIF.

    result = NEW #( amount   = me->amount + other->amount
                    currency = me->currency ).
  ENDMETHOD.

  METHOD constructor.
    me->amount = amount.
    me->currency = currency.
  ENDMETHOD.

ENDCLASS.
