.class public final Lcom/feelingk/iap/util/CommonStringEnglish;
.super Ljava/lang/Object;
.source "CommonStringEnglish.java"


# static fields
.field private static synthetic $SWITCH_TABLE$com$feelingk$iap$util$CommonString$Index:[I


# direct methods
.method static synthetic $SWITCH_TABLE$com$feelingk$iap$util$CommonString$Index()[I
    .locals 3

    .prologue
    .line 5
    sget-object v0, Lcom/feelingk/iap/util/CommonStringEnglish;->$SWITCH_TABLE$com$feelingk$iap$util$CommonString$Index:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/feelingk/iap/util/CommonString$Index;->values()[Lcom/feelingk/iap/util/CommonString$Index;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/feelingk/iap/util/CommonString$Index;->CANCEL:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-virtual {v1}, Lcom/feelingk/iap/util/CommonString$Index;->ordinal()I

    move-result v1

    const/16 v2, 0x39

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_38

    :goto_1
    :try_start_1
    sget-object v1, Lcom/feelingk/iap/util/CommonString$Index;->CONFIRM:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-virtual {v1}, Lcom/feelingk/iap/util/CommonString$Index;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_37

    :goto_2
    :try_start_2
    sget-object v1, Lcom/feelingk/iap/util/CommonString$Index;->CUTURE_INQUIRY:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-virtual {v1}, Lcom/feelingk/iap/util/CommonString$Index;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_36

    :goto_3
    :try_start_3
    sget-object v1, Lcom/feelingk/iap/util/CommonString$Index;->DEVELOPMENT:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-virtual {v1}, Lcom/feelingk/iap/util/CommonString$Index;->ordinal()I

    move-result v1

    const/16 v2, 0x36

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_35

    :goto_4
    :try_start_4
    sget-object v1, Lcom/feelingk/iap/util/CommonString$Index;->DLG_AUTO_PURCHASE_DISMISS_INFO:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-virtual {v1}, Lcom/feelingk/iap/util/CommonString$Index;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_34

    :goto_5
    :try_start_5
    sget-object v1, Lcom/feelingk/iap/util/CommonString$Index;->DLG_AUTO_PURCHASE_INFO:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-virtual {v1}, Lcom/feelingk/iap/util/CommonString$Index;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_33

    :goto_6
    :try_start_6
    sget-object v1, Lcom/feelingk/iap/util/CommonString$Index;->DLG_AUTO_PURCHASE_INFO2:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-virtual {v1}, Lcom/feelingk/iap/util/CommonString$Index;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_32

    :goto_7
    :try_start_7
    sget-object v1, Lcom/feelingk/iap/util/CommonString$Index;->DLG_TSTORE_NOT_INSTALLED_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-virtual {v1}, Lcom/feelingk/iap/util/CommonString$Index;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_31

    :goto_8
    :try_start_8
    sget-object v1, Lcom/feelingk/iap/util/CommonString$Index;->DOTORI_AUTH_SMS_SEND_MESSAGE_ERROR_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-virtual {v1}, Lcom/feelingk/iap/util/CommonString$Index;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_30

    :goto_9
    :try_start_9
    sget-object v1, Lcom/feelingk/iap/util/CommonString$Index;->DOTORI_AUTH_SMS_SEND_MESSAGE_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-virtual {v1}, Lcom/feelingk/iap/util/CommonString$Index;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_2f

    :goto_a
    :try_start_a
    sget-object v1, Lcom/feelingk/iap/util/CommonString$Index;->DOTORI_COUNT:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-virtual {v1}, Lcom/feelingk/iap/util/CommonString$Index;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_2e

    :goto_b
    :try_start_b
    sget-object v1, Lcom/feelingk/iap/util/CommonString$Index;->DOTORI_INQUIRY:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-virtual {v1}, Lcom/feelingk/iap/util/CommonString$Index;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_2d

    :goto_c
    :try_start_c
    sget-object v1, Lcom/feelingk/iap/util/CommonString$Index;->DOTORI_LIMIT_EXCESS_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-virtual {v1}, Lcom/feelingk/iap/util/CommonString$Index;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_2c

    :goto_d
    :try_start_d
    sget-object v1, Lcom/feelingk/iap/util/CommonString$Index;->DOTORI_MEMBERINFO_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-virtual {v1}, Lcom/feelingk/iap/util/CommonString$Index;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_2b

    :goto_e
    :try_start_e
    sget-object v1, Lcom/feelingk/iap/util/CommonString$Index;->DO_NOT_USE_AUTHENITACTION:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-virtual {v1}, Lcom/feelingk/iap/util/CommonString$Index;->ordinal()I

    move-result v1

    const/16 v2, 0x33

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_2a

    :goto_f
    :try_start_f
    sget-object v1, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_DLG_AUTO_PURCHASE:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-virtual {v1}, Lcom/feelingk/iap/util/CommonString$Index;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_29

    :goto_10
    :try_start_10
    sget-object v1, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_INTERNET_ACCESS_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-virtual {v1}, Lcom/feelingk/iap/util/CommonString$Index;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_28

    :goto_11
    :try_start_11
    sget-object v1, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_JUMIN_NUMBER_LENGTH:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-virtual {v1}, Lcom/feelingk/iap/util/CommonString$Index;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_27

    :goto_12
    :try_start_12
    sget-object v1, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_NETWORK_CONNECT_CHECK_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-virtual {v1}, Lcom/feelingk/iap/util/CommonString$Index;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_26

    :goto_13
    :try_start_13
    sget-object v1, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_NETWORK_SEND_RECV_CHECK_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-virtual {v1}, Lcom/feelingk/iap/util/CommonString$Index;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_25

    :goto_14
    :try_start_14
    sget-object v1, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_NONE_PARAMETER_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-virtual {v1}, Lcom/feelingk/iap/util/CommonString$Index;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_24

    :goto_15
    :try_start_15
    sget-object v1, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_ONITEMQUERY_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-virtual {v1}, Lcom/feelingk/iap/util/CommonString$Index;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_23

    :goto_16
    :try_start_16
    sget-object v1, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_PURCHASE_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-virtual {v1}, Lcom/feelingk/iap/util/CommonString$Index;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_22

    :goto_17
    :try_start_17
    sget-object v1, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_SMS_NUMBER_AUTH_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-virtual {v1}, Lcom/feelingk/iap/util/CommonString$Index;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_21

    :goto_18
    :try_start_18
    sget-object v1, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_USER_CERTI_FAIL_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-virtual {v1}, Lcom/feelingk/iap/util/CommonString$Index;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_20

    :goto_19
    :try_start_19
    sget-object v1, Lcom/feelingk/iap/util/CommonString$Index;->ERROR_USIM_ACTIVATE_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-virtual {v1}, Lcom/feelingk/iap/util/CommonString$Index;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_1f

    :goto_1a
    :try_start_1a
    sget-object v1, Lcom/feelingk/iap/util/CommonString$Index;->FINAL_VERSION_CHECK_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-virtual {v1}, Lcom/feelingk/iap/util/CommonString$Index;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1e

    :goto_1b
    :try_start_1b
    sget-object v1, Lcom/feelingk/iap/util/CommonString$Index;->HINT_INPUT_SECURITY:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-virtual {v1}, Lcom/feelingk/iap/util/CommonString$Index;->ordinal()I

    move-result v1

    const/16 v2, 0x32

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1d

    :goto_1c
    :try_start_1c
    sget-object v1, Lcom/feelingk/iap/util/CommonString$Index;->LAST_REQUEST:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-virtual {v1}, Lcom/feelingk/iap/util/CommonString$Index;->ordinal()I

    move-result v1

    const/16 v2, 0x35

    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1c

    :goto_1d
    :try_start_1d
    sget-object v1, Lcom/feelingk/iap/util/CommonString$Index;->MENT_DANAL_PAYMENTS:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-virtual {v1}, Lcom/feelingk/iap/util/CommonString$Index;->ordinal()I

    move-result v1

    const/16 v2, 0x2c

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_1b

    :goto_1e
    :try_start_1e
    sget-object v1, Lcom/feelingk/iap/util/CommonString$Index;->MENT_MONT_AUTO_PAYMENTS:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-virtual {v1}, Lcom/feelingk/iap/util/CommonString$Index;->ordinal()I

    move-result v1

    const/16 v2, 0x2d

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_1a

    :goto_1f
    :try_start_1f
    sget-object v1, Lcom/feelingk/iap/util/CommonString$Index;->MENT_NUMBER_RECLAIMED:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-virtual {v1}, Lcom/feelingk/iap/util/CommonString$Index;->ordinal()I

    move-result v1

    const/16 v2, 0x30

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_19

    :goto_20
    :try_start_20
    sget-object v1, Lcom/feelingk/iap/util/CommonString$Index;->MENT_NUMBER_REQUEST:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-virtual {v1}, Lcom/feelingk/iap/util/CommonString$Index;->ordinal()I

    move-result v1

    const/16 v2, 0x31

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_18

    :goto_21
    :try_start_21
    sget-object v1, Lcom/feelingk/iap/util/CommonString$Index;->MENT_PRIVACY_POLICY:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-virtual {v1}, Lcom/feelingk/iap/util/CommonString$Index;->ordinal()I

    move-result v1

    const/16 v2, 0x2e

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_17

    :goto_22
    :try_start_22
    sget-object v1, Lcom/feelingk/iap/util/CommonString$Index;->MENT_REQUEST_AUTHORIZATION:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-virtual {v1}, Lcom/feelingk/iap/util/CommonString$Index;->ordinal()I

    move-result v1

    const/16 v2, 0x2f

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_16

    :goto_23
    :try_start_23
    sget-object v1, Lcom/feelingk/iap/util/CommonString$Index;->MENT_SECURE_PAYMENTS:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-virtual {v1}, Lcom/feelingk/iap/util/CommonString$Index;->ordinal()I

    move-result v1

    const/16 v2, 0x2a

    aput v2, v0, v1
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_15

    :goto_24
    :try_start_24
    sget-object v1, Lcom/feelingk/iap/util/CommonString$Index;->MENT_SUM_PAYMENTS:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-virtual {v1}, Lcom/feelingk/iap/util/CommonString$Index;->ordinal()I

    move-result v1

    const/16 v2, 0x2b

    aput v2, v0, v1
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_14

    :goto_25
    :try_start_25
    sget-object v1, Lcom/feelingk/iap/util/CommonString$Index;->MONTH_AUTO_PAYMENT_INFO:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-virtual {v1}, Lcom/feelingk/iap/util/CommonString$Index;->ordinal()I

    move-result v1

    const/16 v2, 0x29

    aput v2, v0, v1
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_25} :catch_13

    :goto_26
    :try_start_26
    sget-object v1, Lcom/feelingk/iap/util/CommonString$Index;->OCB_CARD_DELETE_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-virtual {v1}, Lcom/feelingk/iap/util/CommonString$Index;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_26} :catch_12

    :goto_27
    :try_start_27
    sget-object v1, Lcom/feelingk/iap/util/CommonString$Index;->OCB_CHANGE_CARD:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-virtual {v1}, Lcom/feelingk/iap/util/CommonString$Index;->ordinal()I

    move-result v1

    const/16 v2, 0x23

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_27} :catch_11

    :goto_28
    :try_start_28
    sget-object v1, Lcom/feelingk/iap/util/CommonString$Index;->OCB_DELETE_CARD:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-virtual {v1}, Lcom/feelingk/iap/util/CommonString$Index;->ordinal()I

    move-result v1

    const/16 v2, 0x24

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_28} :catch_10

    :goto_29
    :try_start_29
    sget-object v1, Lcom/feelingk/iap/util/CommonString$Index;->OCB_INQUIRY:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-virtual {v1}, Lcom/feelingk/iap/util/CommonString$Index;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_29} :catch_f

    :goto_2a
    :try_start_2a
    sget-object v1, Lcom/feelingk/iap/util/CommonString$Index;->OCB_REGIST:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-virtual {v1}, Lcom/feelingk/iap/util/CommonString$Index;->ordinal()I

    move-result v1

    const/16 v2, 0x21

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_2a} :catch_e

    :goto_2b
    :try_start_2b
    sget-object v1, Lcom/feelingk/iap/util/CommonString$Index;->OCB_REGIST_SMALL:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-virtual {v1}, Lcom/feelingk/iap/util/CommonString$Index;->ordinal()I

    move-result v1

    const/16 v2, 0x22

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_2b} :catch_d

    :goto_2c
    :try_start_2c
    sget-object v1, Lcom/feelingk/iap/util/CommonString$Index;->RECEIVE_CODE:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-virtual {v1}, Lcom/feelingk/iap/util/CommonString$Index;->ordinal()I

    move-result v1

    const/16 v2, 0x34

    aput v2, v0, v1
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c .. :try_end_2c} :catch_c

    :goto_2d
    :try_start_2d
    sget-object v1, Lcom/feelingk/iap/util/CommonString$Index;->RETRY_ENTER_PASSWORD:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-virtual {v1}, Lcom/feelingk/iap/util/CommonString$Index;->ordinal()I

    move-result v1

    const/16 v2, 0x38

    aput v2, v0, v1
    :try_end_2d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d .. :try_end_2d} :catch_b

    :goto_2e
    :try_start_2e
    sget-object v1, Lcom/feelingk/iap/util/CommonString$Index;->T_STORE_INPUT_PASSWORD:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-virtual {v1}, Lcom/feelingk/iap/util/CommonString$Index;->ordinal()I

    move-result v1

    const/16 v2, 0x37

    aput v2, v0, v1
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_2e} :catch_a

    :goto_2f
    :try_start_2f
    sget-object v1, Lcom/feelingk/iap/util/CommonString$Index;->USE:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-virtual {v1}, Lcom/feelingk/iap/util/CommonString$Index;->ordinal()I

    move-result v1

    const/16 v2, 0x26

    aput v2, v0, v1
    :try_end_2f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f .. :try_end_2f} :catch_9

    :goto_30
    :try_start_30
    sget-object v1, Lcom/feelingk/iap/util/CommonString$Index;->USE_CANCEL:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-virtual {v1}, Lcom/feelingk/iap/util/CommonString$Index;->ordinal()I

    move-result v1

    const/16 v2, 0x28

    aput v2, v0, v1
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_30} :catch_8

    :goto_31
    :try_start_31
    sget-object v1, Lcom/feelingk/iap/util/CommonString$Index;->USING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-virtual {v1}, Lcom/feelingk/iap/util/CommonString$Index;->ordinal()I

    move-result v1

    const/16 v2, 0x27

    aput v2, v0, v1
    :try_end_31
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_31} :catch_7

    :goto_32
    :try_start_32
    sget-object v1, Lcom/feelingk/iap/util/CommonString$Index;->WARNING_PERMISSION:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-virtual {v1}, Lcom/feelingk/iap/util/CommonString$Index;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_32} :catch_6

    :goto_33
    :try_start_33
    sget-object v1, Lcom/feelingk/iap/util/CommonString$Index;->WON:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-virtual {v1}, Lcom/feelingk/iap/util/CommonString$Index;->ordinal()I

    move-result v1

    const/16 v2, 0x25

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_33} :catch_5

    :goto_34
    :try_start_34
    sget-object v1, Lcom/feelingk/iap/util/CommonString$Index;->WORK_AUTO_FORM_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-virtual {v1}, Lcom/feelingk/iap/util/CommonString$Index;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_34} :catch_4

    :goto_35
    :try_start_35
    sget-object v1, Lcom/feelingk/iap/util/CommonString$Index;->WORK_AUTO_PURCHASE_INFONAME:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-virtual {v1}, Lcom/feelingk/iap/util/CommonString$Index;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_35} :catch_3

    :goto_36
    :try_start_36
    sget-object v1, Lcom/feelingk/iap/util/CommonString$Index;->WORK_AUTO_PURCHASE_INFO_AGREE:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-virtual {v1}, Lcom/feelingk/iap/util/CommonString$Index;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_36
    .catch Ljava/lang/NoSuchFieldError; {:try_start_36 .. :try_end_36} :catch_2

    :goto_37
    :try_start_37
    sget-object v1, Lcom/feelingk/iap/util/CommonString$Index;->WORK_IMEIAUTH_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-virtual {v1}, Lcom/feelingk/iap/util/CommonString$Index;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_37
    .catch Ljava/lang/NoSuchFieldError; {:try_start_37 .. :try_end_37} :catch_1

    :goto_38
    :try_start_38
    sget-object v1, Lcom/feelingk/iap/util/CommonString$Index;->WORK_PROCESSING_STRING:Lcom/feelingk/iap/util/CommonString$Index;

    invoke-virtual {v1}, Lcom/feelingk/iap/util/CommonString$Index;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_38
    .catch Ljava/lang/NoSuchFieldError; {:try_start_38 .. :try_end_38} :catch_0

    :goto_39
    sput-object v0, Lcom/feelingk/iap/util/CommonStringEnglish;->$SWITCH_TABLE$com$feelingk$iap$util$CommonString$Index:[I

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto :goto_39

    :catch_1
    move-exception v1

    goto :goto_38

    :catch_2
    move-exception v1

    goto :goto_37

    :catch_3
    move-exception v1

    goto :goto_36

    :catch_4
    move-exception v1

    goto :goto_35

    :catch_5
    move-exception v1

    goto :goto_34

    :catch_6
    move-exception v1

    goto :goto_33

    :catch_7
    move-exception v1

    goto :goto_32

    :catch_8
    move-exception v1

    goto :goto_31

    :catch_9
    move-exception v1

    goto :goto_30

    :catch_a
    move-exception v1

    goto :goto_2f

    :catch_b
    move-exception v1

    goto/16 :goto_2e

    :catch_c
    move-exception v1

    goto/16 :goto_2d

    :catch_d
    move-exception v1

    goto/16 :goto_2c

    :catch_e
    move-exception v1

    goto/16 :goto_2b

    :catch_f
    move-exception v1

    goto/16 :goto_2a

    :catch_10
    move-exception v1

    goto/16 :goto_29

    :catch_11
    move-exception v1

    goto/16 :goto_28

    :catch_12
    move-exception v1

    goto/16 :goto_27

    :catch_13
    move-exception v1

    goto/16 :goto_26

    :catch_14
    move-exception v1

    goto/16 :goto_25

    :catch_15
    move-exception v1

    goto/16 :goto_24

    :catch_16
    move-exception v1

    goto/16 :goto_23

    :catch_17
    move-exception v1

    goto/16 :goto_22

    :catch_18
    move-exception v1

    goto/16 :goto_21

    :catch_19
    move-exception v1

    goto/16 :goto_20

    :catch_1a
    move-exception v1

    goto/16 :goto_1f

    :catch_1b
    move-exception v1

    goto/16 :goto_1e

    :catch_1c
    move-exception v1

    goto/16 :goto_1d

    :catch_1d
    move-exception v1

    goto/16 :goto_1c

    :catch_1e
    move-exception v1

    goto/16 :goto_1b

    :catch_1f
    move-exception v1

    goto/16 :goto_1a

    :catch_20
    move-exception v1

    goto/16 :goto_19

    :catch_21
    move-exception v1

    goto/16 :goto_18

    :catch_22
    move-exception v1

    goto/16 :goto_17

    :catch_23
    move-exception v1

    goto/16 :goto_16

    :catch_24
    move-exception v1

    goto/16 :goto_15

    :catch_25
    move-exception v1

    goto/16 :goto_14

    :catch_26
    move-exception v1

    goto/16 :goto_13

    :catch_27
    move-exception v1

    goto/16 :goto_12

    :catch_28
    move-exception v1

    goto/16 :goto_11

    :catch_29
    move-exception v1

    goto/16 :goto_10

    :catch_2a
    move-exception v1

    goto/16 :goto_f

    :catch_2b
    move-exception v1

    goto/16 :goto_e

    :catch_2c
    move-exception v1

    goto/16 :goto_d

    :catch_2d
    move-exception v1

    goto/16 :goto_c

    :catch_2e
    move-exception v1

    goto/16 :goto_b

    :catch_2f
    move-exception v1

    goto/16 :goto_a

    :catch_30
    move-exception v1

    goto/16 :goto_9

    :catch_31
    move-exception v1

    goto/16 :goto_8

    :catch_32
    move-exception v1

    goto/16 :goto_7

    :catch_33
    move-exception v1

    goto/16 :goto_6

    :catch_34
    move-exception v1

    goto/16 :goto_5

    :catch_35
    move-exception v1

    goto/16 :goto_4

    :catch_36
    move-exception v1

    goto/16 :goto_3

    :catch_37
    move-exception v1

    goto/16 :goto_2

    :catch_38
    move-exception v1

    goto/16 :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getString(Lcom/feelingk/iap/util/CommonString$Index;)Ljava/lang/String;
    .locals 2
    .param p0, "index"    # Lcom/feelingk/iap/util/CommonString$Index;

    .prologue
    .line 8
    invoke-static {}, Lcom/feelingk/iap/util/CommonStringEnglish;->$SWITCH_TABLE$com$feelingk$iap$util$CommonString$Index()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/feelingk/iap/util/CommonString$Index;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 391
    const-string v0, ""

    :goto_0
    return-object v0

    .line 10
    :pswitch_0
    const-string v0, "Check permissions"

    goto :goto_0

    .line 11
    :pswitch_1
    const-string v0, "Confirm"

    goto :goto_0

    .line 12
    :pswitch_2
    const-string v0, "Cancel"

    goto :goto_0

    .line 13
    :pswitch_3
    const-string v0, "Please enter your password again."

    goto :goto_0

    .line 14
    :pswitch_4
    const-string v0, "Please enter your password\nlocking setting T store."

    goto :goto_0

    .line 15
    :pswitch_5
    const-string v0, "Development"

    goto :goto_0

    .line 16
    :pswitch_6
    const-string v0, "Use"

    goto :goto_0

    .line 17
    :pswitch_7
    const-string v0, "Last Request"

    goto :goto_0

    .line 18
    :pswitch_8
    const-string v0, "Receive Code"

    goto :goto_0

    .line 19
    :pswitch_9
    const-string v0, "I do not use authentication services at the time of purchase"

    goto :goto_0

    .line 20
    :pswitch_a
    const-string v0, "Enter the identification number."

    goto :goto_0

    .line 21
    :pswitch_b
    const-string v0, "* Item for payment if the lock settings can be more secure payments."

    goto :goto_0

    .line 22
    :pswitch_c
    const-string v0, "* The amount of your mobile phone bill payments are charged to the sum (in the presence of deferred payments)."

    goto :goto_0

    .line 23
    :pswitch_d
    const-string v0, "* Your payment amount as payment \u321c danal phone bill is charged on the sum. (Deferred payment history if one exists)"

    goto :goto_0

    .line 24
    :pswitch_e
    const-string v0, "Monthly automatic payment product"

    goto :goto_0

    .line 25
    :pswitch_f
    const-string v0, "Change in Privacy Policy"

    goto :goto_0

    .line 26
    :pswitch_10
    const-string v0, "Please request authorization number"

    goto :goto_0

    .line 27
    :pswitch_11
    const-string v0, "Certification Number reclaimed"

    goto :goto_0

    .line 28
    :pswitch_12
    const-string v0, "Authorization Number Request"

    goto :goto_0

    .line 29
    :pswitch_13
    const-string v0, "Monthly automatic payment Product Information"

    goto :goto_0

    .line 30
    :pswitch_14
    const-string v0, "Delete Card"

    goto :goto_0

    .line 31
    :pswitch_15
    const-string v0, "Change Card"

    goto :goto_0

    .line 32
    :pswitch_16
    const-string v0, "OK cashbag Registration"

    goto :goto_0

    .line 33
    :pswitch_17
    const-string v0, "Registration"

    goto :goto_0

    .line 34
    :pswitch_18
    const-string v0, "Cancel"

    goto :goto_0

    .line 35
    :pswitch_19
    const-string v0, "Use"

    goto :goto_0

    .line 36
    :pswitch_1a
    const-string v0, "Inquiry"

    goto :goto_0

    .line 37
    :pswitch_1b
    const-string v0, "Inquiry"

    goto :goto_0

    .line 38
    :pswitch_1c
    const-string v0, "Inquiry"

    goto :goto_0

    .line 39
    :pswitch_1d
    const-string v0, " Won"

    goto :goto_0

    .line 40
    :pswitch_1e
    const-string v0, " EA"

    goto :goto_0

    .line 41
    :pswitch_1f
    const-string v0, "Is being processed."

    goto :goto_0

    .line 42
    :pswitch_20
    const-string v0, "Automatic monthly payment products"

    goto :goto_0

    .line 43
    :pswitch_21
    const-string v0, "Please agree to\nmonthly subscription\npayment"

    goto :goto_0

    .line 44
    :pswitch_22
    const-string v0, "<Monthly automatic payment Product Information>\n\n\uc6d4\ubcc4 \uc790\ub3d9\uacb0\uc81c \uc0c1\ud488\uc774\ub780,\n  \uc0c1\ud488 \uad6c\ub9e4 \uc2dc 1\ub144 \ub3d9\uc548 \ub9e4\uc6d4 \ucd08 \uc790\ub3d9 \uacb0\uc81c \ub418\uc5b4 \ud3b8\ub9ac\ud558\uac8c \uc774\uc6a9\ud558\uc2e4 \uc218 \uc788\ub294 \uc0c1\ud488\uc785\ub2c8\ub2e4.\n\n- \uc774\uc6a9\n1. \uc0c1\ud488 \uc774\uc6a9\uae30\uac04\uc740 \ub9e4\uc6d4 1\uc77c \uc624\uc804 00\uc2dc 00\ubd84\ubd80\ud130 \ub9e4\uc6d4 \ub9d0\uc77c \uc624\ud6c4 11\uc2dc 59\ubd84 \uae4c\uc9c0 \uc785\ub2c8\ub2e4.\n2. \ub9cc\ub8cc\uae30\uac04\uc740 \ucd5c\ub300 1\ub144\uc774\ubbc0\ub85c \ucd94\ud6c4 \uc11c\ube44\uc2a4\ub97c \uc774\uc6a9\ud558\uc2e4 \ubd84\uaed8\uc11c\ub294 \uc7ac \uad6c\ub9e4\ud558\uc2dc\uae38 \ubc14\ub78d\ub2c8\ub2e4.\n3. \ud55c \uc5b4\ud50c \ub2f9 2\uac1c \uc774\uc0c1\uc758 \uc6d4\ubcc4 \uc790\ub3d9 \uacb0\uc81c \uc0c1\ud488 \uad6c\uc785\uc740 \ubd88\uac00\ud569\ub2c8\ub2e4.\n4. \uacf5\uacf5\uae30\uad00 \ubc0f \ub2e8\uccb4, \ud2b9\uc218\uac1c\uc778, \ud2b9\uc218\uae30\uad00 \uba85\uc758\uc758 \ub2e8\ub9d0\uc740 \uc6d4\ubcc4 \uc790\ub3d9\uacb0\uc81c \uc0c1\ud488 \uc774\uc6a9\uc774 \ubd88\uac00\ub2a5 \ud569\ub2c8\ub2e4.\n\n\n- \uacb0\uc81c\n1. \uc6d4\ubcc4 \uc790\ub3d9\uacb0\uc81c \uc0c1\ud488 \uad6c\uc785 \uc2dc \uc989\uc2dc \uacb0\uc81c\ub418\uba70 \uc775\uc6d4\uc5d0 \uccad\uad6c\ub429\ub2c8\ub2e4.\n2. \uad6c\uc785 \uccab \ub2ec\uc740 \uc0c1\ud488 \uad6c\uc785 \uc2dc\uc810\ubd80\ud130 \ub2f9\uc6d4 \ub9d0 \uc77c\uae4c\uc9c0 \uc77c\ud560 \uacfc\uae08 \ubc0f \uccad\uad6c\ub418\uba70 \ub2e4\uc74c \ub2ec\ubd80\ud130\ub294 \ub9e4\uc6d4 1\uc77c\uc5d0 \uc790\ub3d9 \uc5f0\uc7a5 \ubc0f \uacb0\uc81c\uac00 \uc9c4\ud589\ub429\ub2c8\ub2e4.\n\n\n- \ud574\uc9c0\n1. \uc911\ub3c4 \ud574\uc9c0\uac00 \uac00\ub2a5\ud558\uba70 \ub2e4\uc74c \ub2ec 1\uc77c\uc774 \ub418\uae30 \uc804\uae4c\uc9c0 \ud574\uc9c0\uac00 \uac00\ub2a5\ud569\ub2c8\ub2e4.\n2. \uc911\ub3c4 \ud574\uc9c0 \uc2dc \ud574\ub2f9 \uc6d4 \ub9d0\uae4c\uc9c0 \uc774\uc6a9 \uac00\ub2a5\ud558\uba70 \ucd94\ud6c4 \uacb0\uc81c\uac00 \ub418\uc9c0 \uc54a\uc2b5\ub2c8\ub2e4.\n3. \uc911\ub3c4\ud574\uc9c0 \ud6c4 \ub2f9\uc6d4\uc5d0 \ub3d9\uc77c \uc0c1\ud488\uc744 \uc7ac \uad6c\ub9e4 \ud560 \uacbd\uc6b0 \uac00\uc785\ub9cc \ucc98\ub9ac\ub418\uba70 \uc775\uc6d4 1\uc77c\uc5d0 \uc815\uc0c1\uacb0\uc81c \ub429\ub2c8\ub2e4. \n\n\n- \ud574\uc9c0 \uc808\ucc28\n\uc6d4\ubcc4 \uc790\ub3d9\uacb0\uc81c \uc0c1\ud488 \ud574\uc9c0\ub294 T store \ub9c8\uc774 \ud398\uc774\uc9c0\uc758 \uc0c1\ud488 \ub0b4 \uad6c\ub9e4\ub0b4\uc5ed\uc774\ub098 \ud574\ub2f9 App. \ub0b4\uc5d0\uc11c \uac00\ub2a5\ud569\ub2c8\ub2e4.\n\n- \uc8fc\uc758\uc0ac\ud56d\n1. \uc544\ub798\uc640 \uac19\uc740 \uc0c1\ud669\uc5d0\uc11c \uc6d4\ubcc4 \uc790\ub3d9\uacb0\uc81c \uc0c1\ud488\uc774 \uc790\ub3d9 \ud574\uc9c0 \ub420 \uc218 \uc788\uc73c\ub2c8 \ucc38\uace0\ud558\uc2dc\uae38 \ubc14\ub78d\ub2c8\ub2e4.\n- T store \ud68c\uc6d0 \ud0c8\ud1f4\n- SKT \uc774\ub3d9\ud1b5\uc2e0 \uc11c\ube44\uc2a4 \ud574\uc9c0\n- \ubc88\ud638 \uc774\ub3d9\n- \uba85\uc758 \ubcc0\uacbd\n- \uae30\uae30\ubcc0\uacbd\n-  Appl.\uc9c0\uc6d0 \ubc0f \ub3d9\uc77c\ud55c AID\uc0c1\ud488\uc77c \uacbd\uc6b0\n- \uc5b4\ud50c \uc0ad\uc81c\n\n\n\ud574\ub2f9 \uc0ac\uc720\uc5d0 \ub300\ud574\uc11c\ub294 SK\ud50c\ub798\ub2db\uc758 \ucc45\uc784\uc774 \uc5c6\uc74c\uc744 \ubbf8\ub9ac \uc54c\ub9bd\ub2c8\ub2e4.\n\n\uac10\uc0ac\ud569\ub2c8\ub2e4.\n"

    goto :goto_0

    .line 97
    :pswitch_23
    const-string v0, "T store Privacy Policy \n\n- SK\ud50c\ub798\ub2db\uc8fc\uc2dd\ud68c\uc0ac(\uc774\ud558 \u201c\ud68c\uc0ac\u201d\ub77c \ud568)\uac00 \uc81c\uacf5\ud558\ub294 \ubaa8\ubc14\uc77c \ucee8\ud150\uce20 \uc804\uc790\uc0c1\uac70\ub798 \uc11c\ube44\uc2a4\uc778 T store \uc11c\ube44\uc2a4 (\uc774\ud558 \ubcf8 \uc11c\ube44\uc2a4\ub77c \ud569\ub2c8\ub2e4)\ub294 \uace0\uac1d\ub2d8\uc758 \uac1c\uc778\uc815\ubcf4\ubcf4\ud638\ub97c \uc18c\uc911\ud558\uac8c \uc0dd\uac01\ud558\uace0, \uace0\uac1d\ub2d8\uc758 \uac1c\uc778\uc815\ubcf4\ub97c \ubcf4\ud638\ud558\uae30 \uc704\ud558\uc5ec \ud56d\uc0c1 \ucd5c\uc120\uc744 \ub2e4\ud574 \ub178\ub825\ud558\uace0 \uc788\uc2b5\ub2c8\ub2e4.\n- \ubcf8 \uc11c\ube44\uc2a4\ub294 \u300c\uc815\ubcf4\ud1b5\uc2e0\ub9dd \uc774\uc6a9\ucd09\uc9c4 \ubc0f \uc815\ubcf4\ubcf4\ud638 \ub4f1\uc5d0 \uad00\ud55c \ubc95\ub960\u300d\uc744 \ube44\ub86f\ud55c \ubaa8\ub4e0 \uac1c\uc778\uc815\ubcf4\ubcf4\ud638 \uad00\ub828 \ubc95\ub960\uaddc\uc815\uc744 \uc900\uc218\ud558\uace0 \uc788\uc2b5\ub2c8\ub2e4.\n- \ubcf8 \uc11c\ube44\uc2a4\ub294 \u300c\uac1c\uc778\uc815\ubcf4 \ucde8\uae09\ubc29\uce68\u300d\uc744 \uc81c\uc815\ud558\uc5ec \uc774\ub97c \uc900\uc218\ud558\uace0 \uc788\uc73c\uba70, \uc774\ub97c \ubcf8 \uc11c\ube44\uc2a4 \uc778\ud130\ub137 \ud648\ud398\uc774\uc9c0(http://tstore.co.kr \uc774\ud558 \u201c\ud648\ud398\uc774\uc9c0\u201d\ub77c \ud568) \uccab \ud654\uba74\uc5d0 \uacf5\uac1c\ud558\uc5ec \uace0\uac1d\ub2d8\uc774 \uc5b8\uc81c\ub098 \uc6a9\uc774\ud558\uac8c \uc5f4\ub78c\ud560 \uc218 \uc788\ub3c4\ub85d \ud558\uace0 \uc788\uc2b5\ub2c8\ub2e4.\n- \ubcf8 \uc11c\ube44\uc2a4 \u300c\uac1c\uc778\uc815\ubcf4 \ucde8\uae09\ubc29\uce68\u300d\uc740 \uc544\ub798\uc640 \uac19\uc740 \ub0b4\uc6a9\uc744 \ub2f4\uace0 \uc788\uc2b5\ub2c8\ub2e4.\n\n\n\u3147 \ucd1d\uce59\n\u3147 \uac1c\uc778\uc815\ubcf4\uc758 \uc218\uc9d1 \ud56d\ubaa9\n\u3147 \uac1c\uc778\uc815\ubcf4\uc758 \uc218\uc9d1 \ubc0f \uc774\uc6a9 \ubaa9\uc801\n\u3147 \uac1c\uc778\uc815\ubcf4\uc758 \uc218\uc9d1\uc5d0 \ub300\ud55c \ub3d9\uc758\n\u3147 \uac1c\uc778\uc815\ubcf4\uc758 \uc218\uc9d1\ubc29\ubc95\n\u3147 \uc218\uc9d1\ud55c \uac1c\uc778\uc815\ubcf4\uc758 \uc774\uc6a9 \ubc0f \uc81c3\uc790 \uc81c\uacf5\n\u3147 \uac1c\uc778\uc815\ubcf4\ucde8\uae09 \uc5c5\ubb34\uc758 \uc704\ud0c1\n\u3147 \uac1c\uc778\uc815\ubcf4\uc758 \uc5f4\ub78c \ubc0f \uc815\uc815\n\u3147 \uac1c\uc778\uc815\ubcf4\uc758 \uc218\uc9d1, \uc774\uc6a9,\uc81c\uacf5\uc5d0 \ub300\ud55c \ub3d9\uc758\ucca0\ud68c\n\u3147 \uac1c\uc778\uc815\ubcf4\uc758 \ubcf4\uc720\uae30\uac04 \ubc0f \uc774\uc6a9\uae30\uac04\n\u3147 \uac1c\uc778\uc815\ubcf4 \ud30c\uae30\uc808\ucc28 \ubc0f \ubc29\ubc95\n\u3147 \uac1c\uc778\uc815\ubcf4 \ucde8\uae09\ubc29\uce68\uc758 \uace0\uc9c0 \ub610\ub294 \ud1b5\uc9c0\ubc29\ubc95\n\u3147 \uac1c\uc778\uc815\ubcf4\ubcf4\ud638\ub97c \uc704\ud55c \uae30\uc220 \ubc0f \uad00\ub9ac\uc801 \ub300\ucc45\n\u3147 \ub9c1\ud06c \uc0ac\uc774\ud2b8\n\u3147 \uac8c\uc2dc\ubb3c\n\u3147 \uac1c\uc778\uc815\ubcf4 \uc790\ub3d9\uc218\uc9d1\uc7a5\uce58\uc758 \uc124\uce58/ \uc6b4\uc601 \ubc0f \uadf8 \uac70\ubd80\uc5d0 \ub300\ud55c \uc0ac\ud56d\n\u3147 \uc774\uc6a9\uc790\uc758 \uad8c\ub9ac\uc640 \uc758\ubb34\n\u3147 \uc758\uacac\uc218\ub834 \ubc0f \ubd88\ub9cc\ucc98\ub9ac\n\u3147 \uac1c\uc778\uc815\ubcf4\uad00\ub9ac \ucc45\uc784\uc790 \ubc0f \ub2f4\ub2f9\uc790\n\u3147 \uad11\uace0\uc131 \uc815\ubcf4 \uc804\uc1a1\n\u3147 \uace0\uc9c0\uc758\ubb34\n\n\n\u3147 \ucd1d\uce59\n\n1. \uac1c\uc778\uc815\ubcf4\ub780 \uc0dd\uc874\ud558\uace0 \uc788\ub294 \uac1c\uc778\uc5d0 \uad00\ud55c \uc815\ubcf4\ub85c\uc11c \uc131\uba85, \uc8fc\ubbfc\ub4f1\ub85d\ubc88\ud638 \ub4f1\uc5d0 \uc758\ud558\uc5ec \ub2f9\ud574 \uac1c\uc778\uc744 \uc54c\uc544\ubcfc \uc218 \uc788\ub294 \ubd80\ud638,\ubb38\uc790,\uc74c\uc131,\uc74c\ud5a5 \ubc0f \uc601\uc0c1 \ub4f1\uc758 \uc815\ubcf4(\ub2f9\ud574 \uc815\ubcf4\ub9cc\uc73c\ub85c\ub294 \ud2b9\uc815 \uac1c\uc778\uc744 \uc54c\uc544\ubcfc \uc218 \uc5c6\ub294 \uacbd\uc6b0\uc5d0\ub3c4 \ub2e4\ub978 \uc815\ubcf4\uc640 \uc6a9\uc774\ud558\uac8c \uacb0\ud569\ud558\uc5ec \uc54c\uc544\ubcfc \uc218 \uc788\ub294 \uac83\uc744 \ud3ec\ud568)\ub97c \ub9d0\ud569\ub2c8\ub2e4.\n2. \ubcf8 \uc11c\ube44\uc2a4\ub294 \uace0\uac1d\uc815\ubcf4\ubcf4\ud638\ub97c \uac00\uc7a5 \uc18c\uc911\ud558\uac8c \uc0dd\uac01\ud558\uba70, \u300e\uc815\ubcf4\ud1b5\uc2e0\ub9dd \uc774\uc6a9\ucd09\uc9c4 \ubc0f \uc815\ubcf4\ubcf4\ud638 \ub4f1\uc5d0 \uad00\ud55c \ubc95\ub960\u300f\uc0c1\uc758 \uac1c\uc778\uc815\ubcf4 \ubcf4\ud638\uaddc\uc815 \ubc0f \ubc29\uc1a1\ud1b5\uc2e0\uc704\uc6d0\ud68c\uac00 \uc81c\uc815\ud55c \u300e\uac1c\uc778\uc815\ubcf4\ubcf4\ud638\uc9c0\uce68\u300f\uc744 \uc900\uc218\ud558\uace0 \uc788\uc2b5\ub2c8\ub2e4.\n3. \ubcf8 \uc11c\ube44\uc2a4\ub294 \ubcf8 \uac1c\uc778\uc815\ubcf4 \ucde8\uae09\ubc29\uce68\uc744 \ud1b5\ud558\uc5ec \uace0\uac1d\ub2d8\uc774 \uc81c\uacf5\ud558\ub294 \uac1c\uc778\uc815\ubcf4\uc758 \uc218\uc9d1\ubaa9\uc801 \ubc0f \uc774\uc6a9\ubaa9\uc801, \uac1c\uc778\uc815\ubcf4\ubcf4\ud638\ub97c \uc704\ud574 \ucde8\ud558\uace0 \uc788\ub294 \uc870\uce58 \ub4f1\uc744 \uc54c\ub824\ub4dc\ub9bd\ub2c8\ub2e4.\n4. \ubcf8 \uc11c\ube44\uc2a4\ub294 \ubcf8 \uac1c\uc778\uc815\ubcf4 \ucde8\uae09\ubc29\uce68\uc744 \ud648\ud398\uc774\uc9c0 \uccab \ud654\uba74\uc5d0 \uacf5\uac1c\ud568\uc73c\ub85c\uc368 \uace0\uac1d\ub2d8\uaed8\uc11c \uc5b8\uc81c\ub098 \uc6a9\uc774\ud558\uac8c \ubcf4\uc2e4 \uc218 \uc788\ub3c4\ub85d \uc870\uce58\ud558\uace0 \uc788\uc2b5\ub2c8\ub2e4.\n5. \ubcf8 \uc11c\ube44\uc2a4\ub294 \uac1c\uc778\uc815\ubcf4 \ucde8\uae09\ubc29\uce68\uc758 \uc9c0\uc18d\uc801\uc778 \uac1c\uc120\uc744 \uc704\ud558\uc5ec \uac1c\uc778\uc815\ubcf4 \ucde8\uae09\ubc29\uce68\uc744 \uac1c\uc815\ud558\ub294\ub370 \ud544\uc694\ud55c \uc808\ucc28\ub97c \uc815\ud558\uace0 \uc788\uc2b5\ub2c8\ub2e4. \n6. \ubcf8 \uc11c\ube44\uc2a4\uc758 \uac1c\uc778\uc815\ubcf4 \ucde8\uae09\ubc29\uce68\uc740 \uad00\ub828 \ubc95\ub960 \ubc0f \uc9c0\uce68\uc758 \ubcc0\uacbd \ub610\ub294 \ub0b4\ubd80 \uc6b4\uc601 \ubc29\uce68\uc758 \ubcc0\uacbd\uc5d0 \ub530\ub77c \ubcc0\uacbd\ub420 \uc218 \uc788\uc2b5\ub2c8\ub2e4. \uac1c\uc778\uc815\ubcf4 \ucde8\uae09\ubc29\uce68\uc774 \ubcc0\uacbd\ub420 \uacbd\uc6b0 \ubcc0\uacbd\ub41c \uc0ac\ud56d\uc744 \ud648\ud398\uc774\uc9c0\ub97c \ud1b5\ud558\uc5ec \uacf5\uc9c0\ud558\uc5ec \uac1c\uc815\ub41c \ub0b4\uc6a9\uc744 \uace0\uac1d\ub2d8\uaed8\uc11c \uc27d\uac8c \uc54c\uc544\ubcf4\uc2e4 \uc218 \uc788\ub3c4\ub85d \ud558\uace0 \uc788\uc2b5\ub2c8\ub2e4.\n\n\n\u3147 \uac1c\uc778\uc815\ubcf4\uc758 \uc218\uc9d1 \ud56d\ubaa9\n\n1. \ubcf8 \uc11c\ube44\uc2a4\ub294 \uae30\ubcf8\uc801\uc778 \uc11c\ube44\uc2a4 \uc81c\uacf5\uc744 \uc704\ud55c \uc815\ubcf4\uc640 \uace0\uac1d \uac01\uac01\uc758 \uae30\ud638\uc640 \ud544\uc694\uc5d0 \ub9de\ub294 \uc11c\ube44\uc2a4\ub97c \uc81c\uacf5\ud558\uae30 \uc704\ud55c \uc120\ud0dd \uc815\ubcf4\ub85c \uad6c\ubd84\ub418\uc5b4 \ub2e4\uc74c\uc758 \uc815\ubcf4\ub97c \uc218\uc9d1\ud558\uace0 \uc788\uc2b5\ub2c8\ub2e4. \uc120\ud0dd \uc815\ubcf4\ub97c \uc785\ub825\ud558\uc9c0 \uc54a\uc740 \uacbd\uc6b0\uc5d0\ub3c4 \uc11c\ube44\uc2a4 \uc774\uc6a9 \uc81c\ud55c\uc740 \uc5c6\uc2b5\ub2c8\ub2e4.\n2. \ubcf8 \uc11c\ube44\uc2a4\ub294 \uc774\uc6a9\uc790\uc758 \uae30\ubcf8\uc801 \uc778\uad8c \uce68\ud574\uc758 \uc6b0\ub824\uac00 \uc788\ub294 \ubbfc\uac10\ud55c \uac1c\uc778\uc815\ubcf4(\uc778\uc885 \ubc0f \ubbfc\uc871, \uc0ac\uc0c1 \ubc0f \uc2e0\uc870, \ucd9c\uc2e0\uc9c0 \ubc0f \ubcf8\uc801\uc9c0, \uc815\uce58\uc801 \uc131\ud5a5 \ubc0f \ubc94\uc8c4\uae30\ub85d, \uac74\uac15\uc0c1\ud0dc \ubc0f \uc131\uc0dd\ud65c \ub4f1)\ub294 \uc218\uc9d1\ud558\uc9c0 \uc54a\uc2b5\ub2c8\ub2e4.\n3. \ubcf8 \uc11c\ube44\uc2a4\ub294 \ub2e4\uc74c\uacfc \uac19\uc774 \uac1c\uc778\uc815\ubcf4\ub97c \uc218\uc9d1\ud558\uc5ec \uc774\uc6a9\ud569\ub2c8\ub2e4.\n- \uc131\uba85, \uc8fc\ubbfc\ub4f1\ub85d\ubc88\ud638, \uc544\uc774\ub514, \ube44\ubc00\ubc88\ud638, E-mail: \uc11c\ube44\uc2a4 \uc774\uc6a9\uc5d0 \ub530\ub978 \ubbfc\uc6d0\uc0ac\ud56d\uc758 \ucc98\ub9ac, \ubcf8\uc778\uc2dd\ubcc4, \uc5f0\ub839\uc81c\ud55c\uc11c\ube44\uc2a4 \uc81c\uacf5, \ubd88\ub7c9\ud68c\uc6d0\uc758 \ubd80\uc815\ud55c \uc774\uc6a9\ubc29\uc9c0 \ub4f1\n- \ub300\ud45c\uc790\uba85, \uc0ac\uc5c5\uc790\ub4f1\ub85d\ubc88\ud638, \uc0ac\uc5c5\uc790 \uc5f0\ub77d\ucc98: \uc0ac\uc5c5\uc790 \ud310\ub9e4\ud68c\uc6d0\uc758 \ud655\uc778 \ubc0f \uc11c\ube44\uc2a4 \uc81c\uacf5 \ub4f1\n- \ud734\ub300\ud3f0\ubc88\ud638, \ud734\ub300\ud3f0 \uae30\uc885, \ub300\uae30\ud654\uba74 \ubc0f T store \ud544\uc218 \ud504\ub85c\uadf8\ub7a8 \uc124\uce58 \uc815\ubcf4, IMEI: T store\uc758 \uc11c\ube44\uc2a4 \uc81c\uacf5 \ub4f1\n- \ud734\ub300\ud3f0 \uba85\uc758 \uc815\ubcf4, \uac00\uc785\uc694\uae08\uc81c(\uc694\uae08\uc81c \ud55c\ub3c4 \uc815\ubcf4, PPS\uc5ec\ubd80), \ubc88\ud638\ubcc0\uacbd/\uba85\uc758\ubcc0\uacbd/\uae30\uae30\ubcc0\uacbd/\ud574\uc9c0\uc815\ubcf4 \ub4f1 \ud734\ub300\ud3f0 \uad00\ub828 \uc815\ubcf4 \ubcc0\uacbd \uc2dc \ud574\ub2f9 \uc815\ubcf4, \uc11c\ube44\uc2a4\uad00\ub828 \uacfc\uae08\uccad\uad6c\uc815\ubcf4 : T store\uc758 \uc11c\ube44\uc2a4 \uc81c\uacf5 \ub4f1(SK\ud154\ub808\ucf64 \uac00\uc785\uc790\uc5d0\ub9cc \ud574\ub2f9) \n- \uc8fc\uc18c, \uc804\ud654\ubc88\ud638, \uc774\ub3d9\uc804\ud654\ubc88\ud638, E-mail: \ud68c\uc6d0\uac04 \uac70\ub798\uc758 \uc6d0\ud65c\ud55c \uc9c4\ud589, \ubcf8\uc778\uc758\uc0ac\uc758 \ud655\uc778, \ubd88\ub9cc\ucc98\ub9ac, \uc0c8\ub85c\uc6b4 \uc815\ubcf4\uc640 \uace0\uc9c0\uc0ac\ud56d\uc758 \uc548\ub0b4 \ub4f1\n- \uc2e0\uc6a9\uce74\ub4dc\uc815\ubcf4, \uc774\ub3d9\uc804\ud654\uc815\ubcf4: \ub300\uae08\uacb0\uc81c\uc11c\ube44\uc2a4\uc758 \uc81c\uacf5 \ub4f1\n- \uc8fc\uc18c, \uc804\ud654\ubc88\ud638, E-mail: \uc0c1\ud488\uacfc \uacbd\ud488 \ubc30\uc1a1 \uc2dc \ubc30\uc1a1\uc9c0 \uc8fc\uc18c \ubc0f \uc5f0\ub77d\ucc98 \ud655\uc778 \ub4f1\n- \uc0dd\uc77c, \uc9c1\uc5c5, \ucde8\ubbf8: \uace0\uac1d \uc0dd\uc77c \ucd95\ud558 \uba54\uc2dc\uc9c0 \uc804\ub2ec, \uace0\uac1d \uad00\uc2ec\uc0ac\uc5d0 \ubd80\ud569\ud558\ub294 \uc11c\ube44\uc2a4 \ubc0f \uc774\ubca4\ud2b8 \uae30\ud68d\uc5d0 \uc774\uc6a9. \uc774 \uc815\ubcf4\ub294 \uc120\ud0dd\uc801 \uae30\uc785 \uc815\ubcf4\ub85c\uc11c \uace0\uac1d\ub2d8\uaed8\uc11c \uc785\ub825\uc744 \ud558\uc9c0 \uc54a\uc73c\uc154\ub3c4 \uc11c\ube44\uc2a4 \uc774\uc6a9 \uc81c\ud55c\uc740 \uc5c6\uc2b5\ub2c8\ub2e4\n- IP address, \ubc29\ubb38 \uc77c\uc2dc: \ubd88\ub7c9\ud68c\uc6d0\uc758 \ubd80\uc815 \uc774\uc6a9\ubc29\uc9c0, \uc804\uc790\uae08\uc735\uac70\ub798\uae30\ub85d\ubcf4\uad00\n4. \uc11c\ube44\uc2a4 \uc774\uc6a9\uacfc\uc815\uc774\ub098 \uc0ac\uc5c5\ucc98\ub9ac\uacfc\uc815\uc5d0\uc11c \ub2e4\uc74c\uacfc \uac19\uc740 \uc815\ubcf4\ub4e4\uc774 \uc0dd\uc131\ub418\uc5b4 \uc218\uc9d1\ub420 \uc218 \uc788\uc2b5\ub2c8\ub2e4.\n- \uc11c\ube44\uc2a4 \uc774\uc6a9\uae30\ub85d, \uc694\uae08\uccad\uad6c \ubc0f \uacb0\uc81c\uae30\ub85d, \uc774\uc6a9\uc815\uc9c0 \uae30\ub85d, \uc774\uc6a9\ud574\uc9c0 \uae30\ub85d\n- \uc811\uc18d\ub85c\uadf8, \ucfe0\ud0a4, \uc811\uc18d IP\uc815\ubcf4\n5. \ubcf8 \uc11c\ube44\uc2a4\uc758 \uc774\uc6a9\uad00\ub828 \uace0\uac1d\uaed8\uc11c \u201cSK\ud50c\ub798\ub2db \uc720\ubb34\uc120\ud1b5\ud569ID\u201d\uc758 \uc0ac\uc6a9\uc5d0 \ub3d9\uc758\ud558\ub294 \uacbd\uc6b0 \ud1b5\ud569 ID\uac00 \ub2e4\uc74c\uacfc \uac19\uc774 \uc0ac\uc6a9\ub418\uace0, \uad00\ub828 \uac1c\uc778\uc815\ubcf4\uac00 \uacf5\uc720\ub420 \uc218 \uc788\uc2b5\ub2c8\ub2e4.\n- \u201cSK\ud50c\ub798\ub2db \uc720\ubb34\uc120\ud1b5\ud569ID\u201d\ub780, T Store \ub4f1\uc758 \uc11c\ube44\uc2a4\uc5d0 \uac00\uc785\ud558\uc2e0 \uacbd\uc6b0 \ub3d9\uc77c\ud55c \ud68c\uc6d0 \uc815\ubcf4\ub97c \uc0ac\uc6a9\ud558\uc5ec SK\ud50c\ub798\ub2db\uc774 \uc81c\uacf5\ud558\ub294 \uc11c\ube44\uc2a4\ub97c \uc774\uc6a9\ud558\uae30 \uc27d\uac8c \ud558\uae30 \uc704\ud55c ID\ub97c \ub9d0\ud569\ub2c8\ub2e4.\n- \uc544\uc774\ub514 \ubc0f \ube44\ubc00\ubc88\ud638\ub97c \ud3ec\ud568\ud558\uc5ec \uc785\ub825\ud558\uc2e0 \uace0\uac1d \uc815\ubcf4(e-mail, \uc8fc\uc18c, \uc131\ubcc4 \ub4f1)\ub294 \ud1b5\ud569 \uad00\ub9ac \ubc0f \uacf5\uc720\ub418\uba70, \ud68c\uc6d0 \uc815\ubcf4 \ubcc0\uacbd \uc2dc \uac01 \uc11c\ube44\uc2a4\uc5d0 \ud544\uc694\ud55c \uc815\ubcf4\ub4e4\uc740 \ub3d9\uc2dc \ubc18\uc601[i)\uac1c\uc778\uc815\ubcf4 \uc81c\uacf5/\uacf5\uc720 \ubc1b\ub294 \uc790: SK\ud50c\ub798\ub2db\u321c, ii)\uac1c\uc778\uc815\ubcf4\ub97c \uc81c\uacf5/\uacf5\uc720\ubc1b\ub294 \uc790\uc758 \uac1c\uc778\uc815\ubcf4 \uc774\uc6a9\ubaa9\uc801: SK\ud50c\ub798\ub2db\uc758 \ud604\uc7ac \uc81c\uacf5\uc911\uc778 \uc11c\ube44\uc2a4(T\uc2a4\ud1a0\uc5b4, \uc544\ubc14\ud0c0 \ub9c1, T\ud074\ub77c\uc6b0\ub529 \uc11c\ube44\uc2a4 \ub4f1) \ubc0f \uc7a5\ub798 \ucd9c\uc2dc \uc608\uc815\uc778 \uc11c\ube44\uc2a4\uc5d0 \ud65c\uc6a9, \u2172) \uc81c\uacf5/\uacf5\uc720\ud558\ub294 \uac1c\uc778\uc815\ubcf4\uc758 \ud56d\ubaa9: ID, \ube44\ubc00\ubc88\ud638, e-mail, \uc804\ud654\ubc88\ud638, iv) \uac1c\uc778\uc815\ubcf4\ub97c \uc81c\uacf5/\uacf5\uc720 \ubc1b\ub294 \uc790\uc758 \uac1c\uc778\uc815\ubcf4 \ubcf4\uc720(\uacf5\uc720) \ubc0f \uc774\uc6a9\uae30\uac04: \uc720\ubb34\uc120 \ud1b5\ud569 ID\uc0ac\uc6a9\uc2dc\uae4c\uc9c0(\ud574\ub2f9 \uc11c\ube44\uc2a4 \uc774\uc6a9\uc2dc\uae4c\uc9c0)]\n- \uc11c\ube44\uc2a4 \uac00\uc785 \uc2dc, \u201cSK\ud50c\ub798\ub2db \uc720\ubb34\uc120\ud1b5\ud569ID\u201d\uac00 \uc0dd\uc131\ub418\uba70, \uc774\ubbf8 \uac00\uc9c0\uace0 \uc788\ub294\uc9c0 \ud655\uc778\n- \uc11c\ube44\uc2a4 \ub85c\uadf8\uc778 \uc2dc, \u201cSK\ud50c\ub798\ub2db \uc720\ubb34\uc120\ud1b5\ud569ID\u201d\ub97c \ud65c\uc6a9\n\n\u3147 \uac1c\uc778\uc815\ubcf4\uc758 \uc218\uc9d1 \ubc0f \uc774\uc6a9 \ubaa9\uc801\n\n\ubcf8 \uc11c\ube44\uc2a4\uac00 \uace0\uac1d\ub2d8\uc758 \uac1c\uc778\uc815\ubcf4\ub97c \uc218\uc9d1 \uc774\uc6a9\ud558\ub294 \ubaa9\uc801\uc740 \ub2e4\uc74c\uacfc \uac19\uc2b5\ub2c8\ub2e4.\n1.\ud68c\uc6d0\uad00\ub9ac\n- \ud68c\uc6d0\uc81c \uc11c\ube44\uc2a4 \uc774\uc6a9\uc5d0 \ub530\ub978 \ubcf8\uc778\ud655\uc778, \uac1c\uc778\uc2dd\ubcc4\n- \ubd88\ub7c9\ud68c\uc6d0\uc758 \ubd80\uc815\uc774\uc6a9 \ubc29\uc9c0\uc640 \ube44\uc778\uac00 \uc0ac\uc6a9 \ubc29\uc9c0\n- \uac00\uc785\uc758\uc0ac \ud655\uc778, \uac00\uc785 \ubc0f \uac00\uc785\ud69f\uc218 \uc81c\ud55c\n- \ubbf8\uc131\ub144\uc790\uc758 \ud655\uc778\n- \uace0\uac1d\uc0c1\ub2f4, \uace0\uac1d\ubd88\ub9cc \uc811\uc218 \ubc0f \ucc98\ub9ac, \ubd84\uc7c1\uc870\uc815\uc744 \uc704\ud55c \uae30\ub85d\ubcf4\uc874\n- \uace0\uc9c0\uc0ac\ud56d \uc804\ub2ec\n2.\uc11c\ube44\uc2a4 \uc81c\uacf5\uc5d0 \uad00\ud55c \uacc4\uc57d\uc758 \uc774\ud589 \ubc0f \uc11c\ube44\uc2a4 \uc81c\uacf5\uc5d0 \ub530\ub978 \uc694\uae08\uc815\uc0b0\n- \ud68c\uc6d0\uac04\uc758 \uac70\ub798 \uc11c\ube44\uc2a4 \uc81c\uacf5\n- \ucee8\ud150\uce20 \uc81c\uacf5, \uc774\ubca4\ud2b8/\uacbd\ud488\ub2f9\ucca8 \uacb0\uacfc\uc548\ub0b4 \ubc0f \uc0c1\ud488\ubc30\uc1a1\n- \uad6c\ub9e4 \ubc0f \uc694\uae08\uacb0\uc81c, \uc694\uae08\ucd94\uc2ec\n3.\ub9c8\ucf00\ud305 \ubc0f \uad11\uace0\uc5d0 \ud65c\uc6a9\n- \uace0\uac1d\uc5d0\uac8c \ucd5c\uc801\ud654\ub41c \uc11c\ube44\uc2a4 \uc81c\uacf5\n- \uc2e0\uaddc \uc11c\ube44\uc2a4 \ub610\ub294 \uc0c1\ud488 \uac1c\ubc1c \ubc0f \ud2b9\ud654\n- \uc778\uad6c\ud1b5\uacc4\ud559\uc801 \ud2b9\uc131\uc5d0 \ub530\ub978 \uc11c\ube44\uc2a4 \uc81c\uacf5 \ubc0f \uad11\uace0 \uac8c\uc7ac\n- \uc6f9\ud398\uc774\uc9c0 \uc811\uc18d \ube48\ub3c4 \ud30c\uc545\n- \uc11c\ube44\uc2a4 \uc774\uc6a9\uc5d0 \ub300\ud55c \ud1b5\uacc4\n- \uc815\uae30 \uac04\ud589\ubb3c \ubc1c\uc1a1, \uc0c8\ub85c\uc6b4 \uc0c1\ud488 \ub610\ub294 \uc11c\ube44\uc2a4 \uc548\ub0b4\n- \uace0\uac1d \uad00\uc2ec\uc0ac\uc5d0 \ubd80\ud569\ud558\ub294 \uc6f9\uc11c\ube44\uc2a4 \ubc0f \uc774\ubca4\ud2b8 \uae30\ud68d\n- \uace0\uac1d \uae30\ub150\uc77c \ucd95\ud558 \uba54\uc2dc\uc9c0 \uc804\ub2ec\n- \uacbd\ud488\ud589\uc0ac, \uc774\ubca4\ud2b8 \ub4f1 \uad11\uace0\uc131 \uc815\ubcf4 \uc804\ub2ec \ub610\ub294 \ud68c\uc6d0 \ucc38\uc5ec\uacf5\uac04 \uc6b4\uc601\n- \uace0\uac1d\uc124\ubb38\uc870\uc0ac\n- \uc11c\ube44\uc2a4 \ubc0f \uc0c1\ud488 \uc548\ub0b4\n\n\n\u3147 \uac1c\uc778\uc815\ubcf4 \uc218\uc9d1\uc5d0 \ub300\ud55c \ub3d9\uc758\n\n\ubcf8 \uc11c\ube44\uc2a4\ub294 \uace0\uac1d\ub2d8\uaed8\uc11c \uac1c\uc778\uc815\ubcf4 \ucde8\uae09\ubc29\uce68 \ub610\ub294 \uc774\uc6a9\uc57d\uad00\uc758 \ub0b4\uc6a9\uc5d0 \ub300\ud574 \u300c\ub3d9\uc758\ud55c\ub2e4\u300d \ub610\ub294 \u300c\ub3d9\uc758\ud558\uc9c0 \uc54a\ub294\ub2e4\u300d \ubc84\ud2bc\uc744 \ud074\ub9ad\ud560 \uc218 \uc788\ub294 \uc808\ucc28\ub97c \ub9c8\ub828\ud558\uace0 \uc788\uc73c\uba70, \u300c\ub3d9\uc758\ud55c\ub2e4\u300d \ubc84\ud2bc\uc744 \ud074\ub9ad\ud558\uba74 \uac1c\uc778\uc815\ubcf4 \uc218\uc9d1\uc5d0 \ub300\ud574 \ub3d9\uc758\ud55c \uac83\uc73c\ub85c \ubd05\ub2c8\ub2e4.\n\n\n\u3147 \uac1c\uc778\uc815\ubcf4\uc758 \uc218\uc9d1 \ubc29\ubc95\n\n\ubcf8 \uc11c\ube44\uc2a4\ub294 \ud648\ud398\uc774\uc9c0 \ud68c\uc6d0\uac00\uc785 \uc808\ucc28, \uc0c1\ub2f4\uc808\ucc28, \uc774\ubca4\ud2b8\ub098 \uacbd\ud488 \ud589\uc0ac, \uc5c5\ubb34\uc704\ud0c1\uc0ac \ub610\ub294 \uc81c\ud734\uc0ac \ub4f1\uc73c\ub85c\ubd80\ud130\uc758 \uc218\uc9d1, \uc774\ub3d9 \uc804\ud654 \ubc0f \uc720,\ubb34\uc120 \uc778\ud130\ub137 \uc11c\ube44\uc2a4 \uc0ac\uc6a9\uc2dc \uc0dd\uc131\uc815\ubcf4 \uc218\uc9d1 \ud234\uc744 \ud1b5\ud55c \ubc29\ubc95(\ucfe0\ud0a4) \ub4f1\uc73c\ub85c \uac1c\uc778 \uc815\ubcf4\ub97c \uc218\uc9d1\ud569\ub2c8\ub2e4.\n\n\n\u3147 \uc218\uc9d1\ud55c \uac1c\uc778\uc815\ubcf4\uc758 \uc774\uc6a9 \ubc0f \uc81c3\uc790 \uc81c\uacf5\n\n1.\ubcf8 \uc11c\ube44\uc2a4\ub294 \uace0\uac1d\ub2d8\uc758 \uac1c\uc778\uc815\ubcf4\ub97c \uac00\uc785\uc2e0\uccad\uc11c, \uc11c\ube44\uc2a4\uc774\uc6a9\uc57d\uad00, \u300c\uac1c\uc778\uc815\ubcf4 \ucde8\uae09\ubc29\uce68\u300d\uc758\u300c\uac1c\uc778\uc815\ubcf4\uc758 \uc218\uc9d1 \ubc0f \uc774\uc6a9\ubaa9\uc801\u300d\uc5d0\uc11c \uace0\uc9c0\ud55c \ubc94\uc704 \ub0b4\uc5d0\uc11c \uc0ac\uc6a9\ud558\uba70, \ub3d9 \ubc94\uc704\ub97c \ucd08\uacfc\ud558\uc5ec \uc774\uc6a9\ud558\uac70\ub098 \ud0c0\uc778 \ub610\ub294 \ud0c0\uae30\uc5c5,\uae30\uad00\uc5d0 \uc81c\uacf5\ud558\uc9c0 \uc54a\uc2b5\ub2c8\ub2e4. \ub2e8, \ub2e4\uc74c\uc758 \uacbd\uc6b0\uc5d0\ub294 \uc8fc\uc758\ub97c \uae30\uc6b8\uc5ec \uac1c\uc778\uc815\ubcf4\ub97c \uc774\uc6a9 \ubc0f \uc81c\uacf5\ud560 \uc218 \uc788\uc2b5\ub2c8\ub2e4.\n- \uc81c\ud734\uad00\uacc4: \ubcf4\ub2e4 \ub098\uc740 \uc11c\ube44\uc2a4 \uc81c\uacf5\uc744 \uc704\ud558\uc5ec \uace0\uac1d\ub2d8\uc758 \uac1c\uc778\uc815\ubcf4\ub97c \uc81c\ud734\uc0ac\uc5d0\uac8c \uc81c\uacf5\ud558\uac70\ub098 \ub610\ub294 \uc81c\ud734\uc0ac\uc640 \uacf5\uc720\ud560 \uc218 \uc788\uc2b5\ub2c8\ub2e4. \uac1c\uc778\uc815\ubcf4\ub97c \uc81c\uacf5\ud558\uac70\ub098 \uacf5\uc720\ud560 \uacbd\uc6b0\uc5d0\ub294 \uc0ac\uc804\uc5d0 \uace0\uac1d\ub2d8\uaed8 \uc81c\ud734\uc0ac\uac00 \ub204\uad6c\uc778\uc9c0, \uc81c\uacf5 \ub610\ub294 \uacf5\uc720\ub418\ub294 \uac1c\uc778\uc815\ubcf4\ud56d\ubaa9\uc774 \ubb34\uc5c7\uc778\uc9c0, \uc65c \uadf8\ub7ec\ud55c \uac1c\uc778\uc815\ubcf4\uac00 \uc81c\uacf5\ub418\uac70\ub098 \uacf5\uc720\ub418\uc5b4\uc57c \ud558\ub294\uc9c0, \uadf8\ub9ac\uace0 \uc5b8\uc81c\uae4c\uc9c0 \uc5b4\ub5bb\uac8c \ubcf4\ud638,\uad00\ub9ac\ub418\ub294\uc9c0\uc5d0 \ub300\ud574 \uac1c\ubcc4\uc801\uc73c\ub85c \uc11c\uba74 \ub610\ub294 \uc804\uc790\uc6b0\ud3b8 \ub4f1\uc744 \ud1b5\ud574 \uace0\uc9c0\ud558\uc5ec \ub3d9\uc758\ub97c \uad6c\ud558\ub294 \uc808\ucc28\ub97c \uac70\uce58\uac8c \ub418\uba70, \uace0\uac1d\ub2d8\uaed8\uc11c \ub3d9\uc758\ud558\uc9c0 \uc54a\ub294 \uacbd\uc6b0\uc5d0\ub294 \uc81c\ud734\uc0ac\uc5d0\uac8c \uc81c\uacf5\ud558\uac70\ub098 \uc81c\ud734\uc0ac\uc640 \uacf5\uc720\ud558\uc9c0 \uc54a\uc2b5\ub2c8\ub2e4. \uc81c\ud734\uad00\uacc4\uc5d0 \ubcc0\ud654\uac00 \uc788\uac70\ub098 \uc81c\ud734\uad00\uacc4\uac00 \uc885\uacb0\ub420 \ub54c\ub3c4 \uac19\uc740 \uc808\ucc28\uc5d0 \uc758\ud558\uc5ec \uace0\uc9c0\ud558\uac70\ub098 \ub3d9\uc758\ub97c \uad6c\ud569\ub2c8\ub2e4.\n- \ub9e4\uac01,\uc778\uc218\ud569\ubcd1 \ub4f1: \uc601\uc5c5\uc758 \uc804\ubd80 \ub610\ub294 \uc77c\ubd80\ub97c \uc591\ub3c4\ud558\uac70\ub098, \ud569\ubcd1, \uc0c1\uc18d \ub4f1\uc73c\ub85c \uc11c\ube44\uc2a4\uc81c\uacf5\uc790\uc758 \uad8c\ub9ac,\uc758\ubb34\ub97c \uc774\uc804 \uc2b9\uacc4\ud558\ub294 \uacbd\uc6b0 \uac1c\uc778\uc815\ubcf4\ubcf4\ud638 \uad00\ub828 \uace0\uac1d\ub2d8\uc758 \uad8c\ub9ac\ub97c \ubcf4\uc7a5\ud558\uae30 \uc704\ud558\uc5ec \ubc18\ub4dc\uc2dc \uadf8 \uc0ac\uc2e4\uc744 \uace0\uac1d\ub2d8\uaed8 \ud1b5\uc9c0\ud569\ub2c8\ub2e4.\n2.\ubcf8 \uc11c\ube44\uc2a4\uc758 \uac1c\uc778\uc815\ubcf4\ub97c \uac1c\uc778\uc815\ubcf4 \uc218\uc9d1 \uc2dc \uace0\uac1d\ub2d8\uaed8 \uace0\uc9c0\ud558\uace0 \ub3d9\uc758\ub97c \uc5bb\uc740 \ubc94\uc704\ub97c \ub118\uc5b4 \uc774\uc6a9\ud558\uac70\ub098 \uc81c3\uc790\uc5d0\uac8c \uc81c\uacf5\ud558\uc9c0 \uc54a\uc2b5\ub2c8\ub2e4. \ub2e4\ub9cc, \uace0\uac1d\ub2d8\uc758 \ub3d9\uc758\uac00 \uc788\uac70\ub098 \ub2e4\uc74c\uc5d0 \ud574\ub2f9\ud558\ub294 \uacbd\uc6b0\uc5d0\ub294 \uc608\uc678\ub85c \ud569\ub2c8\ub2e4.\n- \uc11c\ube44\uc2a4\uc758 \uc81c\uacf5\uc5d0 \uad00\ud55c \uacc4\uc57d\uc758 \uc774\ud589\uc744 \uc704\ud558\uc5ec \ud544\uc694\ud55c \uac1c\uc778\uc815\ubcf4\ub85c\uc11c \uacbd\uc81c\uc801, \uae30\uc220\uc801\uc778 \uc0ac\uc720\ub85c \ud1b5\uc0c1\uc758 \ub3d9\uc758\ub97c \ubc1b\ub294 \uac83\uc774 \ud604\uc800\ud788 \uace4\ub780\ud55c \uacbd\uc6b0 \n- \uc11c\ube44\uc2a4 \uc81c\uacf5\uc5d0 \ub530\ub978 \uc694\uae08\uc815\uc0b0\uc744 \uc704\ud558\uc5ec \ud544\uc694\ud55c \uacbd\uc6b0 \n- \ud1b5\uc2e0\ube44\ubc00\ubcf4\ud638\ubc95, \uad6d\uc138\uae30\ubcf8\ubc95, \uc815\ubcf4\ud1b5\uc2e0\ub9dd \uc774\uc6a9\ucd09\uc9c4 \ubc0f \uc815\ubcf4\ubcf4\ud638 \ub4f1\uc5d0 \uad00\ud55c \ubc95\ub960, \uae08\uc735\uc2e4\uba85\uac70\ub798 \ubc0f \ube44\ubc00\ubcf4\uc7a5\uc5d0 \uad00\ud55c \ubc95\ub960, \uc2e0\uc6a9\uc815\ubcf4\uc758 \uc774\uc6a9 \ubc0f \ubcf4\ud638\uc5d0 \uad00\ud55c \ubc95\ub960, \uc804\uae30\ud1b5\uc2e0\uae30\ubcf8\ubc95, \uc804\uae30\ud1b5\uc2e0\uc0ac\uc5c5\ubc95, \uc9c0\ubc29\uc138\ubc95, \uc18c\ube44\uc790\uae30\ubcf8\ubc95, \ud55c\uad6d\uc740\ud589\ubc95, \ud615\uc0ac\uc18c\uc1a1\ubc95 \ub4f1 \ub2e4\ub978 \ubc95\ub960\uc5d0 \ud2b9\ubcc4\ud55c \uaddc\uc815\uc774 \uc788\ub294 \uacbd\uc6b0. \ub2e8, \'\ubc95\ub960\uc5d0 \ud2b9\ubcc4\ud55c \uaddc\uc815\uc774 \uc788\ub294 \uacbd\uc6b0\'\ub85c \ud589\uc815\ubaa9\uc801\uc774\ub098 \uc218\uc0ac\ubaa9\uc801\uc73c\ub85c \ud589\uc815\uad00\uccad \ub610\ub294 \uc218\uc0ac\uae30\uad00\uc774 \uc694\uad6c\ud574 \uc628 \uacbd\uc6b0\ub77c\ub3c4 \ubb34\uc870\uac74 \uace0\uac1d\ub2d8\uc758 \uac1c\uc778\uc815\ubcf4\ub97c \uc81c\uacf5\ud558\uc9c0 \uc54a\uc73c\uba70, \ubc95\ub960\uc5d0 \uaddc\uc815\ub41c \ubc14\uc5d0 \ub530\ub77c \uc601\uc7a5 \ub610\ub294 \uae30\uad00\uc7a5\uc758 \uc9c1\uc778\uc774 \ub0a0\uc778\ub41c \uc11c\uba74\uc5d0 \uc758\ud55c \uacbd\uc6b0 \ub4f1 \uc801\ubc95\ud55c \uc808\ucc28\uc5d0 \ub530\ub77c \uc81c\uacf5\ud569\ub2c8\ub2e4.\n- \ud1b5\uacc4\uc791\uc131/ \ud559\uc220\uc5f0\uad6c \ub610\ub294 \uc2dc\uc7a5\uc870\uc0ac\ub97c \uc704\ud558\uc5ec \ud544\uc694\ud55c \uacbd\uc6b0\ub85c\uc11c \ud2b9\uc815 \uac1c\uc778\uc744 \uc54c\uc544\ubcfc \uc218 \uc5c6\ub294 \ud615\ud0dc\ub85c \uac00\uacf5\ud558\uc5ec \uc81c\uacf5\ud558\ub294 \uacbd\uc6b0\n3.\ubcf8 \uc11c\ube44\uc2a4 \uc81c\uacf5\ud558\ub294 \uc11c\ube44\uc2a4\ub97c \ud1b5\ud574 \uac70\ub798\uac00 \uc131\uc0ac\ub41c \uacbd\uc6b0 \uc30d\ubc29 \ub2f9\uc0ac\uc790\uac04\uc5d0 \uc0c1\ud488\uac70\ub798\uc640 \uad00\ub828\ud55c \uc815\ubcf4\ub97c \ud544\uc694\ud55c \ubc94\uc704 \ub0b4\uc5d0\uc11c \uc30d\ubc29\ub2f9\uc0ac\uc790\uc5d0\uac8c \uc81c\uacf5\ud569\ub2c8\ub2e4.\n4.\uac1c\uc778\uc815\ubcf4 \uc81c\uacf5 \ud604\ud669 \n\ubcf8 \uac1c\uc778\uc815\ubcf4 \ucde8\uae09\ubc29\uce68\uc744 \ud655\uc778\ud558\uc2dc\ub294 \uc2dc\uc810\uc758 \uac1c\uc778\uc815\ubcf4 \uc81c\uacf5 \ud604\ud669\uc740 \uc544\ub798 \ub9c1\ud06c\ub97c \ud1b5\ud558\uc5ec \ud655\uc778\ud558\uc2e4 \uc218 \uc788\uc2b5\ub2c8\ub2e4. \uac1c\uc778\uc815\ubcf4 \uc81c\uacf5 \ud604\ud669\uc740 \uc81c\ud734\uad00\uacc4\uc758 \uac1c\uc2dc \ub610\ub294 \uc885\ub8cc\uc5d0 \ub530\ub77c \ubcc0\ub3d9\uc774 \uac00\ub2a5\ud558\uba70 \uac1c\uc778\uc815\ubcf4 \uc81c\uacf5\uacfc \ud568\uaed8 \ubaa9\ub85d\uc5d0 \uac8c\uc2dc\ub418\uace0 \uc81c\ud734\uad00\uacc4 \uc885\ub8cc \ub4f1\uc73c\ub85c \uc778\ud55c \uac1c\uc778\uc815\ubcf4\uc758 \ud30c\uae30\uc640 \ud568\uaed8 \ubaa9\ub85d\uc5d0\uc11c \uc0ad\uc81c\ub429\ub2c8\ub2e4.\n\n\n\u3147 \uac1c\uc778\uc815\ubcf4 \ucde8\uae09 \uc5c5\ubb34\uc758 \uc704\ud0c1\n\n1.\ubcf8 \uc11c\ube44\uc2a4\ub294 \uae30\ubcf8\uc801\uc778 \uc11c\ube44\uc2a4 \uc81c\uacf5, \ubcf4\ub2e4 \ub098\uc740 \uc11c\ube44\uc2a4 \uc81c\uacf5, \uace0\uac1d\ud3b8\uc758 \uc81c\uacf5 \ub4f1 \uc6d0\ud65c\ud55c \uc5c5\ubb34 \uc218\ud589\uc744 \uc704\ud558\uc5ec \ub2e4\uc74c\uacfc \uac19\uc774 \uac1c\uc778\uc815\ubcf4 \ucde8\uae09 \uc5c5\ubb34\ub97c \uc678\ubd80 \uc804\ubb38\uc5c5\uccb4\uc5d0 \uc704\ud0c1\ud558\uc5ec \uc6b4\uc601\ud558\uace0 \uc788\uc2b5\ub2c8\ub2e4\n\uc778\ud06c\ub85c\uc2a4\u321c: \uc11c\ube44\uc2a4 \uc6b4\uc601 \ubc0f \uace0\uac1d\uc0c1\ub2f4\uc5c5\ubb34 \uc704\ud0c1\uc6b4\uc601\n\uc2dc\uc2a4\ud15c \uad6c\ucd95 \ubc0f \uc720\uc9c0\ubcf4\uc218\nT store \uc5b4\ud50c\ub9ac\ucf00\uc774\uc158 \ub0b4 \uad11\uace0 \ud50c\ub7ab\ud3fc \uc81c\uacf5\n\ub9ac\uc5bc\ub124\ud2b8\uc6cd\uc2a4\uc544\uc2dc\uc544\ud37c\uc2dc\ud53d\u321c: \ud3f0\uafb8\ubbf8\uae30 \uc11c\ube44\uc2a4 \uc2dc\uc2a4\ud15c \uc6b4\uc601\n\uc720\uc9c0\ubcf4\uc218\n\uace0\uac1d\uc0c1\ub2f4\uc5c5\ubb34 \uc704\ud0c1 \uc6b4\uc601\n\ud55c\uad6d\uc2e0\uc6a9\uc815\ubcf4(\uc8fc): \uc2e4\uba85/\ubcf8\uc778\uc778\uc99d\n\u321c\ub2e4\ub0a0: \ud734\ub300\ud3f0 \uc18c\uc561 \uacb0\uc81c\n\uc774\ub2c8\uc2dc\uc2a4: \uc2e0\uc6a9\uce74\ub4dc \uacb0\uc81c\nSK Communications.: T store \uac80\uc0c9 \uac1c\ubc1c/\uc6b4\uc601\n2.\ubcf8 \uc11c\ube44\uc2a4\ub294 \uc704\ud0c1\uc5c5\ubb34\uacc4\uc57d\uc11c \ub4f1\uc744 \ud1b5\ud558\uc5ec \uac1c\uc778\uc815\ubcf4\ubcf4\ud638 \uad00\ub828 \ubc95\uaddc\uc758 \uc900\uc218, \uac1c\uc778\uc815\ubcf4\uc5d0 \uad00\ud55c \ube44\ubc00\uc720\uc9c0, \uc81c3\uc790 \uc81c\uacf5\uc5d0 \ub300\ud55c \uae08\uc9c0, \uc0ac\uace0\uc2dc\uc758 \ucc45\uc784 \ubd80\ub2f4, \uc704\ud0c1\uae30\uac04, \ucc98\ub9ac \uc885\ub8cc \ud6c4\uc758 \uac1c\uc778\uc815\ubcf4\uc758 \ubc18\ud658 \ub610\ub294 \ud30c\uae30\uc758\ubb34 \ub4f1\uc744 \uaddc\uc815\ud558\uace0, \uc774\ub97c \uc900\uc218\ud558\ub3c4\ub85d \uad00\ub9ac\ud558\uace0 \uc788\uc2b5\ub2c8\ub2e4\n\n\n\u3147 \uac1c\uc778\uc815\ubcf4\uc758 \uc5f4\ub78c \ubc0f \uc815\uc815\n\n1.\uace0\uac1d\ub2d8\uc740 \uc5b8\uc81c\ub4e0\uc9c0 \ub4f1\ub85d\ub418\uc5b4 \uc788\ub294 \uace0\uac1d\ub2d8\uc758 \uac1c\uc778\uc815\ubcf4\ub97c \uc5f4\ub78c\ud558\uac70\ub098 \uc815\uc815\ud558\uc2e4 \uc218 \uc788\uc2b5\ub2c8\ub2e4. \uac1c\uc778\uc815\ubcf4 \uc5f4\ub78c \ubc0f \uc815\uc815\uc744 \ud558\uace0\uc790 \ud560 \uacbd\uc6b0\uc5d0\ub294 \u300e\ud68c\uc6d0\uc815\ubcf4\ubcc0\uacbd\u300f\uc744 \ud074\ub9ad\ud558\uc5ec \uc9c1\uc811 \uc5f4\ub78c \ub610\ub294 \uc815\uc815\ud558\uac70\ub098, \uac1c\uc778\uc815\ubcf4\uad00\ub9ac\ucc45\uc784\uc790 \ubc0f \ub2f4\ub2f9\uc790\uc5d0\uac8c \uc11c\uba74, \uc804\ud654 \ub610\ub294 E-mail\ub85c \uc5f0\ub77d\ud558\uc2dc\uba74 \uc9c0\uccb4\uc5c6\uc774 \uc870\uce58\ud558\uaca0\uc2b5\ub2c8\ub2e4.\n2.\uace0\uac1d\ub2d8\uaed8\uc11c \uac1c\uc778\uc815\ubcf4\uc758 \uc624\ub958\uc5d0 \ub300\ud55c \uc815\uc815\uc744 \uc694\uccad\ud55c \uacbd\uc6b0, \uc815\uc815\uc744 \uc644\ub8cc\ud558\uae30 \uc804\uae4c\uc9c0 \ub2f9\ud574 \uac1c\uc778 \uc815\ubcf4\ub97c \uc774\uc6a9 \ub610\ub294 \uc81c\uacf5\ud558\uc9c0 \uc54a\uc2b5\ub2c8\ub2e4.\n3.\uc798\ubabb\ub41c \uac1c\uc778\uc815\ubcf4\ub97c \uc81c3\uc790\uc5d0\uac8c \uc774\ubbf8 \uc81c\uacf5\ud55c \uacbd\uc6b0\uc5d0\ub294 \uc815\uc815 \ucc98\ub9ac\uacb0\uacfc\ub97c \uc81c3\uc790\uc5d0\uac8c \uc9c0\uccb4\uc5c6\uc774 \ud1b5\uc9c0\ud558\uc5ec \uc815\uc815\ud558\ub3c4\ub85d \uc870\uce58\ud558\uaca0\uc2b5\ub2c8\ub2e4.\n\n\n\u3147 \uac1c\uc778\uc815\ubcf4\uc758 \uc218\uc9d1, \uc774\uc6a9,\uc81c\uacf5\uc5d0 \ub300\ud55c \ub3d9\uc758 \ucca0\ud68c\n\n1.\ud68c\uc6d0\uac00\uc785 \ub4f1\uc744 \ud1b5\ud574 \uac1c\uc778\uc815\ubcf4\uc758 \uc218\uc9d1, \uc774\uc6a9,\uc81c\uacf5\uc5d0 \ub300\ud574 \uace0\uac1d\ub2d8\uaed8\uc11c \ub3d9\uc758\ud558\uc2e0 \ub0b4\uc6a9\uc744 \uace0\uac1d\ub2d8\uaed8\uc11c\ub294 \uc5b8\uc81c\ub4e0\uc9c0 \ucca0\ud68c\ud558\uc2e4 \uc218 \uc788\uc2b5\ub2c8\ub2e4. \ub3d9\uc758 \ucca0\ud68c\ub294 \ud648\ud398\uc774\uc9c0 \uccab \ud654\uba74\uc758 \u300e\uc815\ubcf4\ubcc0\uacbd\u300f\uc5d0\uc11c \"\ud68c\uc6d0\ud0c8\ud1f4\"\ub97c \ud074\ub9ad\ud558\uac70\ub098 \uac1c\uc778\uc815\ubcf4\uad00\ub9ac\ucc45\uc784\uc790\uc5d0\uac8c \uc11c\uba74, \uc804\ud654, E-mail\ub4f1\uc73c\ub85c \uc5f0\ub77d\ud558\uc2dc\uba74 \uc9c0\uccb4\uc5c6\uc774 \ud68c\uc6d0\ud0c8\ud1f4\ub97c \uc704\ud574 \ud544\uc694\ud55c \uc870\uce58\ub97c \ucde8\ud569\ub2c8\ub2e4. \ub3d9\uc758 \ucca0\ud68c\ub97c \ud558\uace0 \uac1c\uc778\uc815\ubcf4\ub97c \ud30c\uae30\ud558\ub294 \ub4f1\uc758 \uc870\uce58\ub97c \ucde8\ud55c \uacbd\uc6b0\uc5d0\ub294 \uadf8 \uc0ac\uc2e4\uc744 \uace0\uac1d\ub2d8\uaed8 \uc9c0\uccb4\uc5c6\uc774 \ud1b5\uc9c0\ud558\ub3c4\ub85d \ud558\uaca0\uc2b5\ub2c8\ub2e4.\n2.\ubcf8 \uc11c\ube44\uc2a4\ub294 \uac1c\uc778\uc815\ubcf4\uc758 \uc218\uc9d1\uc5d0 \ub300\ud55c \ub3d9\uc758\ucca0\ud68c(\ud68c\uc6d0\ud0c8\ud1f4)\ub97c \uac1c\uc778\uc815\ubcf4\ub97c \uc218\uc9d1\ud558\ub294 \ubc29\ubc95\ubcf4\ub2e4 \uc27d\uac8c \ud560 \uc218 \uc788\ub3c4\ub85d \ud544\uc694\ud55c \uc870\uce58\ub97c \ucde8\ud569\ub2c8\ub2e4.\n\n\n\u3147 \uac1c\uc778\uc815\ubcf4\uc758 \ubcf4\uc720 \ubc0f \uc774\uc6a9\uae30\uac04\n\n1.\uace0\uac1d\ub2d8\uc758 \uac1c\uc778\uc815\ubcf4\ub294 \ubcf8 \uc11c\ube44\uc2a4 \uace0\uac1d\ub2d8\uaed8 \uc11c\ube44\uc2a4\ub97c \uc81c\uacf5\ud558\ub294 \uae30\uac04 \ub3d9\uc548\uc5d0 \ubcf4\uc720 \ubc0f \uc774\uc6a9\ub418\uace0, \ud68c\uc6d0 \ud0c8\ud1f4 \uc2dc \uc218\uc9d1\ub41c \uac1c\uc778\uc758 \uc815\ubcf4\uac00 \uc5f4\ub78c \ub610\ub294 \uc774\uc6a9\ub420 \uc218 \uc5c6\ub3c4\ub85d \ud30c\uae30 \ucc98\ub9ac\ub429\ub2c8\ub2e4. \ub2e4\ub9cc, \uad00\uacc4\ubc95\ub839\uc758 \uaddc\uc815\uc5d0 \uc758\ud558\uc5ec \ubcf4\uc874\ud560 \ud544\uc694\uc131\uc774 \uc788\ub294 \uacbd\uc6b0\uc5d0\ub294 \uad00\uacc4\ubc95\ub839\uc5d0 \ub530\ub77c \ubcf4\uc874\ud569\ub2c8\ub2e4.\n2.\uc0c1\ubc95 \ubc0f \u2018\uc804\uc790\uc0c1\uac70\ub798\ub4f1\uc5d0\uc11c \uc18c\ube44\uc790\ubcf4\ud638\uc5d0 \uad00\ud55c \ubc95\ub960\u2019, \uc804\uc790\uae08\uc735\uac70\ub798\ubc95, \uc5ec\uc2e0\uc804\ubb38\uae08\uc735\uc5c5\ubc95 \uad6d\uc138\uae30\ubcf8\ubc95, \ubc95\uc778\uc138\ubc95, \ubd80\uac00\uac00\uce58\uc138\ubc95 \ub4f1 \uad00\ub828 \ubc95\ub839\uc758 \uaddc\uc815\uc5d0 \uc758\ud558\uc5ec \ub2e4\uc74c\uacfc \uac19\uc774 \uac70\ub798 \uad00\ub828 \uad8c\ub9ac \uc758\ubb34 \uad00\uacc4\uc758 \ud655\uc778\uc744 \uc704\ud558\uc5ec \uc77c\uc815\uae30\uac04 \ubcf4\uc720\ud558\uc5ec\uc57c \ud560 \ud544\uc694\uac00 \uc788\uc744 \uacbd\uc6b0 \uac1c\uc778\uc815\ubcf4\ub294 \uc77c\uc815\uae30\uac04 \ubcf4\uc720\ub418\uba70, \uc774 \ub54c \ubcf4\uc720\ub418\ub294 \uac1c\uc778\uc815\ubcf4\uc758 \uc5f4\ub78c \ubc0f \uc774\uc6a9\uc740 \ud574\ub2f9 \uc0ac\uc720\ub85c \uad6d\ud55c\ub418\uba70, \uc0ac\uc804\uc5d0 \ubcf4\uc720\ubaa9\uc801, \uae30\uac04 \ubc0f \ubcf4\uc720\ud558\ub294 \uac1c\uc778\uc815\ubcf4 \ud56d\ubaa9\uc744 \uba85\uc2dc\ud558\uc5ec\uc57c \ud569\ub2c8\ub2e4.\n- \uace0\uac1d\ub2d8\uaed8 \ubbf8\ub9ac \uace0\uc9c0\ud558\uace0 \uadf8 \ubcf4\uc720\uae30\uac04\uc774 \uacbd\uacfc\ud558\uc9c0 \uc544\ub2c8\ud55c \uacbd\uc6b0\uc640 \uac1c\ubcc4\uc801\uc73c\ub85c \uace0\uac1d\ub2d8\uc758 \ub3d9\uc758\ub97c \ubc1b\uc740 \uacbd\uc6b0\uc5d0\ub294 \uc57d\uc18d\ud55c \ubcf4\uc720\uae30\uac04\n- \uacc4\uc57d \ub610\ub294 \uccad\uc57d\ucca0\ud68c \ub4f1\uc5d0 \uad00\ud55c \uae30\ub85d: 5\ub144\n- \ub300\uae08\uacb0\uc81c \ubc0f \uc7ac\ud654 \ub4f1\uc758 \uacf5\uae09\uc5d0 \uad00\ud55c \uae30\ub85d: 5\ub144\n- \uc18c\ube44\uc790\uc758 \ubd88\ub9cc \ub610\ub294 \ubd84\uc7c1\ucc98\ub9ac\uc5d0 \uad00\ud55c \uae30\ub85d: 3\ub144\n3.\uace0\uac1d\ub2d8\uc758 \ub3d9\uc758\ub97c \ubc1b\uc544 \ubcf4\uc720\ud558\uace0 \uc788\ub294 \uac70\ub798\uc815\ubcf4\uc5d0 \ub300\ud574 \uace0\uac1d\ub2d8\uaed8\uc11c \uc5f4\ub78c\uc744 \uc694\uad6c\ud558\ub294 \uacbd\uc6b0\uc5d0\ub294 \uc9c0\uccb4\uc5c6\uc774 \ud574\ub2f9 \uc815\ubcf4\ub97c \uc5f4\ub78c/ \ud655\uc778\ud560 \uc218 \uc788\ub3c4\ub85d \uc870\uce58\ud569\ub2c8\ub2e4.\n4.\ud68c\uc6d0\uc774 \uc790\ubc1c\uc801\uc73c\ub85c \ud68c\uc6d0 \ud0c8\ud1f4\ud55c \uacbd\uc6b0 \ud68c\uc6d0 \uc7ac\uac00\uc785, \uc784\uc758 \ud574\uc9c0 \ub4f1\uc744 \ubc18\ubcf5\uc801\uc73c\ub85c \ud589\ud568\uc73c\ub85c\uc368 \ubcf8 \uc11c\ube44\uc2a4\uac00 \uc81c\uacf5\ud558\ub294 \ud560\uc778\ucfe0\ud3f0, \uc774\ubca4\ud2b8 \ud61c\ud0dd \ub4f1\uc758 \uacbd\uc81c\uc0c1\uc758 \uc774\uc775\uc744 \ubd88\ubc95 \ud3b8\ubc95\uc801\uc73c\ub85c \uc218\ucde8\ud558\uac70\ub098 \uc774 \uacfc\uc815\uc5d0\uc11c \uba85\uc758\ub3c4\uc6a9 \ub4f1\uc758 \ud589\uc704\uac00 \ubc1c\uc0dd\ud558\ub294 \uac83\uc744 \ubc29\uc9c0\ud558\uae30 \uc704\ud55c \ubaa9\uc801\uc73c\ub85c \ud68c\uc6d0 \ud0c8\ud1f4 \ud6c4 1\uac1c\uc6d4 \ub3d9\uc548 \ud68c\uc6d0\uc758 \uc131\uba85, \uc8fc\ubbfc\ub4f1\ub85d\ubc88\ud638, \uc544\uc774\ub514, \ube44\ubc00\ubc88\ud638, E-mail \uc2dd\ubcc4\uc815\ubcf4\ub97c \ubcf4\uad00\ud569\ub2c8\ub2e4.\n\n\n\u3147 \uac1c\uc778\uc815\ubcf4 \ud30c\uae30 \uc808\ucc28 \ubc0f \ubc29\ubc95\n\n\ubcf8 \uc11c\ube44\uc2a4\ub294 \uc218\uc9d1\ud55c \uac1c\uc778\uc815\ubcf4\uc758 \uc774\uc6a9\ubaa9\uc801\uc774 \ub2ec\uc131\ub41c \ud6c4\uc5d0\ub294 \ubcf4\uad00\uae30\uac04 \ubc0f \uc774\uc6a9\uae30\uac04\uc5d0 \ub530\ub77c \ud574\ub2f9 \uc815\ubcf4\ub97c \uc9c0\uccb4\uc5c6\uc774 \ud30c\uae30\ud569\ub2c8\ub2e4. \ud30c\uae30\uc808\ucc28, \ubc29\ubc95, \uc2dc\uc810\uc740 \ub2e4\uc74c\uacfc \uac19\uc2b5\ub2c8\ub2e4.\n- \ud30c\uae30\uc808\ucc28 \ubc0f \uc2dc\uc810: \uace0\uac1d\ub2d8\uc774 \uc11c\ube44\uc2a4 \uac00\uc785 \ub4f1\uc744 \uc704\ud574 \uae30\uc7ac\ud55c \uac1c\uc778\uc815\ubcf4\ub294 \uc11c\ube44\uc2a4 \ud574\uc9c0 \ub4f1 \uc774\uc6a9\ubaa9\uc801\uc774 \ub2ec\uc131\ub41c \ud6c4 \ub0b4\ubd80 \ubc29\uce68 \ubc0f \uae30\ud0c0 \uad00\ub828 \ubc95\ub839\uc5d0 \uc758\ud55c \uc815\ubcf4\ubcf4\ud638 \uc0ac\uc720(\uc704 \uac1c\uc778\uc815\ubcf4\uc758 \ubcf4\uc720 \ubc0f \uc774\uc6a9\uae30\uac04 \ucc38\uc870)\uc5d0 \ub530\ub978 \ubcf4\uc720\uae30\uac04\uc774 \uacbd\uacfc\ud55c \ud6c4\uc5d0 \uc0ad\uc81c\ub418\uac70\ub098 \ud30c\uae30\ud569\ub2c8\ub2e4. \uc77c\ubc18\uc801\uc73c\ub85c \uc794\uc874\ud558\ub294 \ucc44\uad8c,\ucc44\ubb34 \uad00\uacc4\uac00 \uc5c6\ub294 \uacbd\uc6b0 \ubcf8 \uc11c\ube44\uc2a4 \ud68c\uc6d0\uac00\uc785 \uc2dc \uc218\uc9d1\ub418\uc5b4 \uc804\uc790\uc801 \ud30c\uc77c\ud615\ud0dc\ub85c \uad00\ub9ac\ud558\ub294 \uac1c\uc778\uc815\ubcf4\ub294 \ud68c\uc6d0 \ud0c8\ud1f4 \uc2dc\uc810\uc5d0 \ubc14\ub85c \uc0ad\uc81c \ub429\ub2c8\ub2e4. \n- \ud30c\uae30\ubc29\ubc95: \uc885\uc774\uc5d0 \ucd9c\ub825\ub41c \uac1c\uc778\uc815\ubcf4\ub294 \ubd84\uc1c4\uae30\ub85c \ubd84\uc1c4 \ub610\ub294 \uc18c\uac01\ud558\uac70\ub098 \ud654\ud559\uc57d\ud488 \ucc98\ub9ac\ub97c \ud558\uc5ec \uc6a9\ud574\ud558\uc5ec \ud30c\uae30\ud558\uace0, \uc804\uc790\uc801 \ud30c\uc77c\ud615\ud0dc\ub85c \uc800\uc7a5\ub41c \uac1c\uc778\uc815\ubcf4\ub294 \uae30\ub85d\uc744 \uc7ac\uc0dd\ud560 \uc218 \uc5c6\ub294 \uae30\uc220\uc801 \ubc29\ubc95\uc744 \uc0ac\uc6a9\ud558\uc5ec \uc0ad\uc81c\ud569\ub2c8\ub2e4.\n\n\n\u3147 \uac1c\uc778\uc815\ubcf4 \ucde8\uae09\ubc29\uce68\uc758 \uace0\uc9c0 \ub610\ub294 \ud1b5\uc9c0\ubc29\ubc95\n\n1.\ubcf8 \uc11c\ube44\uc2a4\ub294 \uace0\uac1d\ub2d8\uc774 \ub3d9\uc758\ud55c \ubc94\uc704\ub97c \ub118\uc5b4 \uace0\uac1d\ub2d8\uc758 \uac1c\uc778\uc815\ubcf4\ub97c \uc774\uc6a9\ud558\uac70\ub098 \uc81c3\uc790\uc5d0\uac8c \uc81c\uacf5\ud558\uae30 \uc704\ud574 \uace0\uac1d\ub2d8\uc758 \ucd94\uac00\uc801\uc778 \ub3d9\uc758\ub97c \uc5bb\uace0\uc790 \ud558\ub294 \ub54c\uc5d0\ub294 \ubbf8\ub9ac \uace0\uac1d\ub2d8\uaed8 \uac1c\ubcc4\uc801\uc73c\ub85c \uc11c\uba74, \uc804\uc790\uc6b0\ud3b8, \uc804\ud654 \ub4f1\uc73c\ub85c \ud574\ub2f9\uc0ac\ud56d\uc744 \uace0\uc9c0\ud569\ub2c8\ub2e4.\n2.\ud0c0\uc778\uc5d0\uac8c \uace0\uac1d\ub2d8\uc758 \uac1c\uc778\uc815\ubcf4\uc758 \uc218\uc9d1,\ubcf4\uad00,\ucc98\ub9ac,\uc774\uc6a9,\uc81c\uacf5,\uad00\ub9ac,\ud30c\uae30 \ub4f1\uc744 \uc704\ud0c1\ud558\ub294 \uacbd\uc6b0\uc5d0\ub294 \uac00\uc785\ud654\uba74, \uc11c\ube44\uc2a4\uc774\uc6a9\uc57d\uad00, \ud648\ud398\uc774\uc9c0\uc758 \uac1c\uc778\uc815\ubcf4 \ucde8\uae09\ubc29\uce68 \ub4f1\uc744 \ud1b5\ud558\uc5ec \uadf8 \uc0ac\uc2e4\uc744 \uace0\uac1d\ub2d8\uaed8 \uace0\uc9c0\ud558\uace0 \ub3d9\uc758\ub97c \uc5bb\uc2b5\ub2c8\ub2e4.\n3.\ubcf8 \uc11c\ube44\uc2a4\uac00 \uc601\uc5c5\uc758 \uc804\ubd80 \ub610\ub294 \uc77c\ubd80\ub97c \uc591\ub3c4\ud558\uac70\ub098 \ud569\ubcd1, \uc0c1\uc18d \ub4f1\uc73c\ub85c \uadf8 \uad8c\ub9ac,\uc758\ubb34\ub97c \uc774\uc804\ud558\ub294 \uacbd\uc6b0 \uc11c\uba74,\uc804\uc790\uc6b0\ud3b8 \ub4f1\uc744 \ud1b5\ud558\uc5ec \uace0\uac1d\ub2d8\uaed8 \uac1c\ubcc4\uc801\uc73c\ub85c \ud1b5\uc9c0\ud568\uacfc \ub3d9\uc2dc\uc5d0 \ud648\ud398\uc774\uc9c0 \uccab \ud654\uba74\uc5d0\uc11c \uc2dd\ubcc4\ud560 \uc218 \uc788\ub3c4\ub85d \ud45c\uae30\ud558\uc5ec 30\uc77c \uc774\uc0c1 \uadf8 \uc0ac\uc2e4\uc744 \uacf5\uc9c0\ud569\ub2c8\ub2e4. \ub2e4\ub9cc, \uc11c\uba74,\uc804\uc790\uc6b0\ud3b8 \uae30\ud0c0\uc758 \ubc29\ubc95\uc5d0 \uc758\ud55c \ud1b5\uc9c0\ub294 \uacfc\uc2e4 \uc5c6\uc774 \uace0\uac1d\ub2d8\uc758 \uc5f0\ub77d\ucc98\ub97c \uc54c\uc9c0 \ubabb\ud558\uac70\ub098 \ucc9c\uc7ac, \uc9c0\ubcc0 \uae30\ud0c0 \ud1b5\uc9c0\ud560 \uc218 \uc5c6\ub294 \uc815\ub2f9\ud55c \uc774\uc720\uac00 \uc788\ub294 \uacbd\uc6b0\uc5d0\ub294 2\uacf3 \uc774\uc0c1\uc758 \uc911\uc559\uc77c\uac04\uc9c0(\uace0\uac1d\ub2d8\uc758 \ub300\ubd80\ubd84\uc774 \ud2b9\uc815 \uc9c0\uc5ed\uc5d0 \uac70\uc8fc\ud558\ub294 \uacbd\uc6b0\uc5d0\ub294 \uadf8 \uc9c0\uc5ed\uc744 \ubcf4\uae09\uad6c\uc5ed\uc73c\ub85c \ud558\ub294 \uc77c\uac04\uc9c0\ub85c \ud560 \uc218 \uc788\uc2b5\ub2c8\ub2e4)\uc5d0 1\ud68c \uc774\uc0c1 \uacf5\uace0\ud558\ub294 \uac83\uc73c\ub85c \uac08\uc74c\ud569\ub2c8\ub2e4.\n\n\n\u3147 \uac1c\uc778\uc815\ubcf4\ubcf4\ud638\ub97c \uc704\ud55c \uae30\uc220 \ubc0f \uad00\ub9ac\uc801 \ub300\ucc45\n\n\ubcf8 \uc11c\ube44\uc2a4\uc5d0\uc11c\ub294 \uace0\uac1d\ub2d8\uc758 \uac1c\uc778\uc815\ubcf4\ub97c \ubcf4\ud638\ud558\uae30 \uc704\ud574 \uae30\uc220\uc801 \ub300\ucc45\uacfc \uad00\ub9ac\uc801 \ub300\ucc45\uc744 \ub9c8\ub828\ud558\uace0 \uc788\uc73c\uba70, \uc774\ub97c \uc801\uc6a9\ud558\uace0 \uc788\uc2b5\ub2c8\ub2e4.\n1.\uae30\uc220\uc801 \ub300\ucc45\n\ubcf8 \uc11c\ube44\uc2a4\ub294 \uace0\uac1d\ub2d8\uc758 \uac1c\uc778\uc815\ubcf4\ub97c \ucde8\uae09\ud568\uc5d0 \uc788\uc5b4 \uac1c\uc778\uc815\ubcf4\uac00 \ubd84\uc2e4, \ub3c4\ub09c, \ub204\ucd9c, \ubcc0\uc870 \ub610\ub294 \ud6fc\uc190\ub418\uc9c0 \uc54a\ub3c4\ub85d \uc548\uc804\uc131 \ud655\ubcf4\ub97c \uc704\ud558\uc5ec \ub2e4\uc74c\uacfc \uac19\uc740 \uae30\uc220\uc801 \ub300\ucc45\uc744 \uac15\uad6c\ud558\uace0 \uc788\uc2b5\ub2c8\ub2e4.\n\u2460\uace0\uac1d\ub2d8\uc758 \uac1c\uc778\uc815\ubcf4\ub294 \ube44\ubc00\ubc88\ud638\uc5d0 \uc758\ud574 \ubcf4\ud638\ub418\uba70 \ud30c\uc77c \ubc0f \uc804\uc1a1\ub370\uc774\ud130\ub97c \uc554\ud638\ud654\ud558\uac70\ub098 \ud30c\uc77c \uc7a0\uae08\uae30\ub2a5 (Lock)\uc744 \uc0ac\uc6a9\ud558\uc5ec \uc911\uc694\ud55c \ub370\uc774\ud130\ub294 \ubcc4\ub3c4\uc758 \ubcf4\uc548\uae30\ub2a5\uc744 \ud1b5\ud574 \ubcf4\ud638\ub418\uace0 \uc788\uc2b5\ub2c8\ub2e4.\n\u2461\ubcf8 \uc11c\ube44\uc2a4\ub294 \ubc31\uc2e0\ud504\ub85c\uadf8\ub7a8\uc744 \uc774\uc6a9\ud558\uc5ec \ucef4\ud4e8\ud130 \ubc14\uc774\ub7ec\uc2a4\uc5d0 \uc758\ud55c \ud53c\ud574\ub97c \ubc29\uc9c0\ud558\uae30 \uc704\ud55c \uc870\uce58\ub97c \ucde8\ud558\uace0 \uc788\uc2b5\ub2c8\ub2e4. \ubc31\uc2e0\ud504\ub85c\uadf8\ub7a8\uc740 \uc8fc\uae30\uc801\uc73c\ub85c \uc5c5\ub370\uc774\ud2b8\ub418\uba70 \uac11\uc791\uc2a4\ub7f0 \ubc14\uc774\ub7ec\uc2a4\uac00 \ucd9c\ud604\ud560 \uacbd\uc6b0 \ubc31\uc2e0\uc774 \ub098\uc624\ub294 \uc9c0\uccb4\uc5c6\uc774 \uc774\ub97c \uc81c\uacf5\ud568\uc73c\ub85c\uc368 \uac1c\uc778\uc815\ubcf4\uac00 \uce68\ud574\ub418\ub294 \uac83\uc744 \ubc29\uc9c0\ud558\uace0 \uc788\uc2b5\ub2c8\ub2e4.\n\u2462\ubcf8 \uc11c\ube44\uc2a4\ub294 \uc554\ud638\uc54c\uace0\ub9ac\uc998\uc744 \uc774\uc6a9\ud558\uc5ec \ub124\ud2b8\uc6cc\ud06c \uc0c1\uc758 \uac1c\uc778\uc815\ubcf4\ub97c \uc548\uc804\ud558\uac8c \uc804\uc1a1\ud560 \uc218 \uc788\ub294 \ubcf4\uc548\uc7a5\uce58(SSL \ub610\ub294 SET)\ub97c \ucc44\ud0dd\ud558\uace0 \uc788\uc2b5\ub2c8\ub2e4.\n\u2463\ud574\ud0b9 \ub4f1 \uc678\ubd80\uce68\uc785\uc5d0 \ub300\ube44\ud558\uc5ec \uac01 \uc11c\ubc84\ub9c8\ub2e4 \uce68\uc785\ucc28\ub2e8\uc2dc\uc2a4\ud15c \ubc0f \ucde8\uc57d\uc810 \ubd84\uc11d\uc2dc\uc2a4\ud15c \ub4f1\uc744 \uc774\uc6a9\ud558\uc5ec \ubcf4\uc548\uc5d0 \ub9cc\uc804\uc744 \uae30\ud558\uace0 \uc788\uc2b5\ub2c8\ub2e4.\n2.\uad00\ub9ac\uc801 \ub300\ucc45\n\u2460\ubcf8 \uc11c\ube44\uc2a4\ub294 \uace0\uac1d\ub2d8\uc758 \uac1c\uc778\uc815\ubcf4\uc5d0 \ub300\ud55c \uc811\uadfc\uad8c\ud55c\uc744 \ucd5c\uc18c\ud55c\uc758 \uc778\uc6d0\uc73c\ub85c \uc81c\ud55c\ud558\uace0 \uc788\uc2b5\ub2c8\ub2e4. \uadf8 \ucd5c\uc18c\ud55c\uc758 \uc778\uc6d0\uc5d0 \ud574\ub2f9\ud558\ub294 \uc790\ub294 \ub2e4\uc74c\uacfc \uac19\uc2b5\ub2c8\ub2e4. \n- \uc774\uc6a9\uc790\ub97c \uc9c1\uc811 \uc0c1\ub300\ub85c \ud558\uc5ec \ub9c8\ucf00\ud305 \uc5c5\ubb34\ub97c \uc218\ud589\ud558\ub294 \uc790\n- \uac1c\uc778\uc815\ubcf4\uad00\ub9ac\ucc45\uc784\uc790 \ubc0f \ub2f4\ub2f9\uc790 \ub4f1 \uac1c\uc778\uc815\ubcf4\uad00\ub9ac\uc5c5\ubb34\ub97c \uc218\ud589\ud558\ub294 \uc790\n- \uae30\ud0c0 \uc5c5\ubb34\uc0c1 \uac1c\uc778\uc815\ubcf4\uc758 \ucde8\uae09\uc774 \ubd88\uac00\ud53c\ud55c \uc790\n\u2461\ubcf8 \uc11c\ube44\uc2a4\ub294 \uace0\uac1d\ub2d8\uc758 \uac1c\uc778\uc815\ubcf4\uc5d0 \ub300\ud55c \uc811\uadfc \ubc0f \uad00\ub9ac\uc5d0 \ud544\uc694\ud55c \uc808\ucc28 \ub4f1\uc744 \ub9c8\ub828\ud558\uc5ec \uc18c\uc18d \uc9c1\uc6d0\uc73c\ub85c \ud558\uc5ec\uae08 \uc774\ub97c \uc219\uc9c0\ud558\uace0 \uc900\uc218\ud558\ub3c4\ub85d \ud558\uace0 \uc788\uc73c\uba70, \uac1c\uc778\uc815\ubcf4\ub97c \ucde8\uae09\ud558\ub294 \uc9c1\uc6d0\uc744 \ub300\uc0c1\uc73c\ub85c \uc0c8\ub85c\uc6b4 \ubcf4\uc548 \uae30\uc220 \uc2b5\ub4dd \ubc0f \uac1c\uc778\uc815\ubcf4\ubcf4\ud638 \uc758\ubb34 \ub4f1\uc5d0 \uad00\ud574 \uc815\uae30\uc801\uc778 \uc0ac\ub0b4 \uad50\uc721 \ubc0f \uc678\ubd80 \uc704\ud0c1\uad50\uc721\uc744 \uc2e4\uc2dc\ud558\uace0 \uc788\uc2b5\ub2c8\ub2e4.\n\u2462\uac1c\uc778\uc815\ubcf4 \uad00\ub828 \ucde8\uae09\uc790\uc758 \uc5c5\ubb34 \uc778\uc218\uc778\uacc4\ub294 \ubcf4\uc548\uc774 \uc720\uc9c0\ub41c \uc0c1\ud0dc\uc5d0\uc11c \ucca0\uc800\ud558\uac8c \uc774\ub904\uc9c0\uace0 \uc788\uc73c\uba70 \uc785\uc0ac \ubc0f \ud1f4\uc0ac \ud6c4 \uac1c\uc778\uc815\ubcf4 \uc0ac\uace0\uc5d0 \ub300\ud55c \ucc45\uc784\uc744 \uba85\ud655\ud788 \ud558\uace0 \uc788\uc2b5\ub2c8\ub2e4.\n\u2463\uc804\uc0b0\uc2e4 \ubc0f \uc790\ub8cc \ubcf4\uad00\uc2e4 \ub4f1\uc744 \ud2b9\ubcc4 \ubcf4\ud638\uad6c\uc5ed\uc73c\ub85c \uc124\uc815\ud558\uc5ec \ucd9c\uc785\uc744 \ud1b5\uc81c\ud558\uace0 \uc788\uc2b5\ub2c8\ub2e4.\n\u2464\ubcf8 \uc11c\ube44\uc2a4\ub294 \ucef4\ud4e8\ud130\ub97c \uc774\uc6a9\ud558\uc5ec \uace0\uac1d\ub2d8\uc758 \uac1c\uc778\uc815\ubcf4\ub97c \ucc98\ub9ac\ud558\ub294 \uacbd\uc6b0 \uac1c\uc778\uc815\ubcf4\uc5d0 \ub300\ud55c \uc811\uadfc\uad8c\ud55c\uc744 \uac00\uc9c4 \ub2f4\ub2f9\uc790\ub97c \uc9c0\uc815\ud558\uc5ec \uc2dd\ubcc4\ubd80\ud638(ID) \ubc0f \ube44\ubc00\ubc88\ud638\ub97c \ubd80\uc5ec\ud558\uace0, \ud574\ub2f9 \ube44\ubc00\ubc88\ud638\ub97c \uc815\uae30\uc801\uc73c\ub85c \uac31\uc2e0\ud558\uace0 \uc788\uc2b5\ub2c8\ub2e4.\n\u2465\ubcf8 \uc11c\ube44\uc2a4\ub294 \uc2e0\uaddc\uc9c1\uc6d0 \ucc44\uc6a9 \uc2dc \uc815\ubcf4\ubcf4\ud638\uc11c\uc57d\uc11c \ub610\ub294 \uac1c\uc778\uc815\ubcf4\ubcf4\ud638\uc11c\uc57d\uc11c\uc5d0 \uc11c\uba85\ud568\uc73c\ub85c \uc9c1\uc6d0\uc5d0 \uc758\ud55c \uc815\ubcf4\uc720\ucd9c\uc744 \uc0ac\uc804\uc5d0 \ubc29\uc9c0\ud558\uace0 \uac1c\uc778\uc815\ubcf4 \ucde8\uae09\ubc29\uce68\uc5d0 \ub300\ud55c \uc774\ud589\uc0ac\ud56d \ubc0f \uc9c1\uc6d0\uc758 \uc900\uc218\uc5ec\ubd80\ub97c \uac10\uc0ac\ud558\uae30 \uc704\ud55c \ub0b4\ubd80\uc808\ucc28\ub97c \ub9c8\ub828\ud558\uc5ec \uc9c0\uc18d\uc801\uc73c\ub85c \uc2dc\ud589\ud558\uace0 \uc788\uc2b5\ub2c8\ub2e4.\n\u2466\ubcf8 \uc11c\ube44\uc2a4\ub294 \uc9c1\uc6d0 \ud1f4\uc9c1 \uc2dc \ube44\ubc00\uc720\uc9c0\uc11c\uc57d\uc11c\uc5d0 \uc11c\uba85\ud568\uc73c\ub85c \ud68c\uc6d0\uc758 \uac1c\uc778\uc815\ubcf4\ub97c \ucde8\uae09\ud558\uc600\ub358 \uc790\uac00 \uc9c1\ubb34\uc0c1 \uc54c\uac8c \ub41c \uac1c\uc778\uc815\ubcf4\ub97c \ud6fc\uc190/ \uce68\ud574 \ub610\ub294 \ub204\uc124\ud558\uc9c0 \uc54a\ub3c4\ub85d \ud558\uace0 \uc788\uc2b5\ub2c8\ub2e4.\n\u2467\uc11c\ube44\uc2a4\uc774\uc6a9\uacc4\uc57d\uccb4\uacb0 \ub610\ub294 \uc11c\ube44\uc2a4\uc81c\uacf5\uc744 \uc704\ud558\uc5ec \uace0\uac1d\ub2d8\uc758 \uc2e0\uc6a9\uce74\ub4dc\ubc88\ud638, \uc740\ud589\uacb0\uc81c\uacc4\uc88c \ub4f1 \ub300\uae08\uacb0\uc81c\uc5d0 \uad00\ud55c \uc815\ubcf4\ub97c \uc218\uc9d1\ud558\uac70\ub098 \uace0\uac1d\ub2d8\uaed8 \uc81c\uacf5\ud558\ub294 \uacbd\uc6b0 \ub2f9\ud574 \uace0\uac1d\ub2d8\uc774 \ubcf8\uc778\uc784\uc744 \ud655\uc778\ud558\uae30 \uc704\ud558\uc5ec \ud544\uc694\ud55c \uc870\uce58\ub97c \ucde8\ud558\uace0 \uc788\uc2b5\ub2c8\ub2e4.\n\u2468\ubcf8 \uc11c\ube44\uc2a4\ub294 \uace0\uac1d\ub2d8 \uac1c\uc778\uc758 \uc2e4\uc218\ub098 \uae30\ubcf8\uc801\uc778 \uc778\ud130\ub137\uc758 \uc704\ud5d8\uc131 \ub54c\ubb38\uc5d0 \uc77c\uc5b4\ub098\ub294 \uc77c\ub4e4\uc5d0 \ub300\ud574 \ucc45\uc784\uc744 \uc9c0\uc9c0 \uc54a\uc2b5\ub2c8\ub2e4. \ud68c\uc6d0\uc758 \uacbd\uc6b0 \uac1c\uac1c\uc778\uc774 \ubcf8\uc778\uc758 \uac1c\uc778\uc815\ubcf4\ub97c \ubcf4\ud638\ud558\uae30 \uc704\ud574\uc11c \uc790\uc2e0\uc758 ID \uc640 \ud328\uc2a4\uc6cc\ub4dc\ub97c \uc801\uc808\ud558\uac8c \uad00\ub9ac\ud558\uace0 \uc5ec\uae30\uc5d0 \ub300\ud55c \ucc45\uc784\uc744 \uc838\uc57c \ud569\ub2c8\ub2e4.\n\u2469\uacf5\ub3d9\uc73c\ub85c \uc0ac\uc6a9\ud558\ub294 PC\uc5d0\uc11c \uc800\ud76c \ud648\ud398\uc774\uc9c0\ub97c \uc811\uc18d\ud558\uc5ec \ub85c\uadf8\uc778 \ud55c \uc0c1\ud0dc\uc5d0\uc11c \ub2e4\ub978 \uc0ac\uc774\ud2b8\ub85c \uc774\ub3d9\ud558\ub294 \uacbd\uc6b0, \uc11c\ube44\uc2a4 \uc774\uc6a9\uc744 \uc885\ub8cc\ud558\ub294 \uacbd\uc6b0\uc5d0\ub294 \ubc18\ub4dc\uc2dc \ub85c\uadf8\uc544\uc6c3 \ucc98\ub9ac \ud6c4 \ud574\ub2f9 \ud648\ud398\uc774\uc9c0\ub97c \uc885\ub8cc\ud558\uc2dc\uae30 \ubc14\ub78d\ub2c8\ub2e4. \uadf8\ub807\uc9c0 \uc54a\uc744 \uacbd\uc6b0, \ud574\ub2f9 \ube0c\ub77c\uc6b0\uc800\ub97c \ud1b5\ud574 ID, \ube44\ubc00\ubc88\ud638 \ub4f1 \uace0\uac1d\ub2d8\uc758 \uc815\ubcf4\uac00 \ud0c0\uc778\uc5d0\uac8c \uc27d\uac8c \uc720\ucd9c\ub420 \uc704\ud5d8\uc774 \uc788\uc2b5\ub2c8\ub2e4.\n\u246a\uadf8 \uc678 \ub0b4\ubd80 \uad00\ub9ac\uc790\uc758 \uc2e4\uc218\ub098 \uae30\uc220\uad00\ub9ac \uc0c1\uc758 \uc0ac\uace0\ub85c \uc778\ud574 \uac1c\uc778\uc815\ubcf4\uc758 \uc0c1\uc2e4, \uc720\ucd9c, \ubcc0\uc870, \ud6fc\uc190\uc774 \uc720\ubc1c\ub420 \uacbd\uc6b0 \ubcf8 \uc11c\ube44\uc2a4\ub294 \uc9c0\uccb4\uc5c6\uc774 \uace0\uac1d\ub2d8\uaed8 \uc0ac\uc2e4\uc744 \uc54c\ub9ac\uace0 \uc801\uc808\ud55c \ub300\ucc45\uacfc \ubcf4\uc0c1\uc744 \uac15\uad6c\ud560 \uac83\uc785\ub2c8\ub2e4. \n\n\n\n\u3147 \ub9c1\ud06c\uc0ac\uc774\ud2b8\n\n1.\ubcf8 \uc11c\ube44\uc2a4\ub294 \ud68c\uc6d0\uc5d0\uac8c \ub2e4\ub978 \ud68c\uc0ac\uc758 \uc0ac\uc774\ud2b8 \ub610\ub294 \uc790\ub8cc\uc5d0 \ub300\ud55c \ub9c1\ud06c\ub97c \uc81c\uacf5\ud560 \uc218 \uc788\uc2b5\ub2c8\ub2e4. \uc774 \uacbd\uc6b0 \ubcf8 \uc11c\ube44\uc2a4\ub294 \uc678\ubd80\uc0ac\uc774\ud2b8 \ubc0f \uc790\ub8cc\uc5d0 \ub300\ud55c \uc544\ubb34\ub7f0 \ud1b5\uc81c\uad8c\uc774 \uc5c6\uc73c\ubbc0\ub85c \uadf8\ub85c\ubd80\ud130 \uc81c\uacf5\ubc1b\ub294 \uc11c\ube44\uc2a4\ub098 \uc790\ub8cc\uc758 \uc9c4\uc2e4\uc131, \uc720\uc6a9\uc131 \ub4f1\uc5d0 \ub300\ud574 \ucc45\uc784\uc9c0\uc9c0 \uc54a\uc73c\uba70, \uc5b4\ub5a0\ud55c \ubcf4\uc99d\ub3c4 \ud558\uc9c0 \uc54a\uc2b5\ub2c8\ub2e4.\n2.\ubcf8 \uc11c\ube44\uc2a4\uac00 \ud3ec\ud568\ud558\uace0 \uc788\ub294 \ub9c1\ud06c\ub97c \ud074\ub9ad(click)\ud558\uc5ec \ud0c0 \uc0ac\uc774\ud2b8(site)\uc758 \ud398\uc774\uc9c0\ub85c \uc62e\uaca8\uac08 \uacbd\uc6b0 \ud574\ub2f9 \uc0ac\uc774\ud2b8\uc758 \uac1c\uc778\uc815\ubcf4 \ucde8\uae09\ubc29\uce68\uc740 \ubcf8 \uc11c\ube44\uc2a4\uc640 \ubb34\uad00\ud558\ubbc0\ub85c \uc0c8\ub85c \ubc29\ubb38\ud55c \uc0ac\uc774\ud2b8\uc758 \uc815\ucc45\uc744 \ubc18\ub4dc\uc2dc \uac80\ud1a0\ud574 \ubcf4\uc2dc\uae30 \ubc14\ub78d\ub2c8\ub2e4.\n\n\n\u3147 \uac8c\uc2dc\ubb3c\n\n1.\uac8c\uc2dc\ubb3c\uc5d0 \uad00\ub828\ub41c \uc81c\ubc18 \uad8c\ub9ac\uc640 \ucc45\uc784\uc740 \uc791\uc131\uc790 \uac1c\uc778\uc5d0\uac8c \uc788\uc2b5\ub2c8\ub2e4. \ub610\ud55c \uac8c\uc2dc\ubb3c\uc744 \ud1b5\ud574 \uc790\ubc1c\uc801\uc73c\ub85c \uacf5\uac1c\ub41c \uc815\ubcf4\ub294 \ubcf4\ud638\ubc1b\uae30 \uc5b4\ub824\uc6b0\ubbc0\ub85c \uc815\ubcf4 \uacf5\uac1c \uc804\uc5d0 \uc2ec\uc0ac\uc219\uace0\ud55c \ud6c4 \uc11c\ube44\uc2a4\ub97c \uc774\uc6a9\ud558\uc5ec\uc57c \ud569\ub2c8\ub2e4.\n2.\ubcf8 \uc11c\ube44\uc2a4\ub294 \uace0\uac1d\ub2d8\uc758 \uac8c\uc2dc\ubb3c\uc744 \uc18c\uc911\ud558\uac8c \uc0dd\uac01\ud558\uba70 \ubcc0\uc870, \ud6fc\uc190, \uc0ad\uc81c\ub418\uc9c0 \uc54a\ub3c4\ub85d \ucd5c\uc120\uc744 \ub2e4\ud558\uc5ec \ubcf4\ud638\ud569\ub2c8\ub2e4. \uadf8\ub7ec\ub098 \ub2e4\uc74c\uc758 \uacbd\uc6b0\ub294 \uba85\uc2dc\uc801 \ub610\ub294 \uac1c\ubcc4\uc801\uc778 \uacbd\uace0 \ud6c4 \uc0ad\uc81c \ub610\ub294 \uc218\uc815 \uc870\uce58\ud560 \uc218 \uc788\uc2b5\ub2c8\ub2e4.\n- \uc2a4\ud338(spam)\uc131 \uac8c\uc2dc\ubb3c (\uc608: \ud589\uc6b4\uc758 \ud3b8\uc9c0, \ud2b9\uc815\uc0ac\uc774\ud2b8\uc5d0 \ub300\ud55c \uad11\uace0, \ud0c0 \uc0ac\uc774\ud2b8\ub85c\uc758 \uc720\ub3c4 \uad11\uace0 \ubc0f \ub9c1\ud06c \ub4f1)\n- \ud0c0\uc778\uc744 \ube44\ubc29\ud560 \ubaa9\uc801\uc73c\ub85c \ud5c8\uc704 \uc0ac\uc2e4\uc744 \uc720\ud3ec\ud558\uc5ec \ud0c0\uc778\uc758 \uba85\uc608\ub97c \ud6fc\uc190\ud558\ub294 \uac8c\uc2dc\ubb3c\n- \ub3d9\uc758 \uc5c6\ub294 \ud0c0\uc778\uc758 \uc2e0\uc0c1\uacf5\uac1c, \ubcf8 \uc11c\ube44\uc2a4\uc758 \uc800\uc791\uad8c, \uc81c3\uc790\uc758 \uc9c0\uc801\uc7ac\uc0b0\uad8c \ub4f1 \uad8c\ub9ac\ub97c \uce68\ud574\ud558\ub294 \ub0b4\uc6a9, \uae30\ud0c0 \uac8c\uc2dc\ud310 \uc8fc\uc81c\uc640 \ub2e4\ub978 \ub0b4\uc6a9\uc758 \uac8c\uc2dc\ubb3c\n- \uae30\ud0c0 \ubcf8 \uc11c\ube44\uc2a4 \uc774\uc6a9\uc57d\uad00 \ub610\ub294 \uac01\uc885 \uc9c0\uce68, \uc6b4\uc601\uc6d0\uce59\uc5d0 \ubc18\ud558\ub294 \uac8c\uc2dc\ubb3c\n3.\ub2e4\ub978 \uc8fc\uc81c\uc758 \uac8c\uc2dc\ud310\uc73c\ub85c \uc774\ub3d9 \uac00\ub2a5\ud55c \ub0b4\uc6a9\uc77c \uacbd\uc6b0 \ud574\ub2f9 \uac8c\uc2dc\ubb3c\uc5d0 \uc774\ub3d9 \uacbd\ub85c\ub97c \ubc1d\ud600 \uc624\ud574\uac00 \uc5c6\ub3c4\ub85d \ud558\uace0 \uc788\uc2b5\ub2c8\ub2e4.\n\n\n\u3147 \uac1c\uc778\uc815\ubcf4 \uc790\ub3d9\uc218\uc9d1\uc7a5\uce58\uc758 \uc124\uce58,\uc6b4\uc601 \ubc0f \uadf8 \uac70\ubd80\uc5d0 \ub300\ud55c \uc0ac\ud56d\n\n1.\ubcf8 \uc11c\ube44\uc2a4\ub97c \ud1b5\ud558\uc5ec \uace0\uac1d\ub2d8\uc758 \uc815\ubcf4\ub97c \uc800\uc7a5\ud558\uace0 \uc218\uc2dc\ub85c \ucc3e\uc544\ub0b4\ub294 \ucfe0\ud0a4(cookie)\ub97c \uc124\uce58/ \uc6b4\uc6a9\ud560 \uacbd\uc6b0\ub3c4 \uc788\uc2b5\ub2c8\ub2e4. \ucfe0\ud0a4\ub780 \uc6f9 \uc11c\ubc84\uac00 \uc6f9 \ube0c\ub77c\uc6b0\uc800\uc5d0 \ubcf4\ub0b4\uc5b4 \uc800\uc7a5\ud588\ub2e4\uac00 \uc11c\ubc84\uc758 \ubd80\uac00\uc801\uc778 \uc694\uccad\uc774 \uc788\uc744 \ub54c \ub2e4\uc2dc \uc11c\ubc84\ub85c \ubcf4\ub0b4\uc8fc\ub294 \ubb38\uc790\uc5f4 \uc815\ubcf4\ub97c \ub9d0\ud569\ub2c8\ub2e4. \uace0\uac1d\uc774 \ud648\ud398\uc774\uc9c0\uc5d0 \uc811\uc18d\uc744 \ud558\uba74 \uace0\uac1d\uc758 \ube0c\ub77c\uc6b0\uc800\uc5d0 \uc788\ub294 \ucfe0\ud0a4\uc758 \ub0b4\uc6a9\uc744 \uc77d\uace0, \ucd94\uac00\uc815\ubcf4\ub97c \ucc3e\uc544 \uc811\uc18d\uc5d0 \ub530\ub978 \uc131\uba85 \ub4f1\uc758 \ucd94\uac00 \uc785\ub825 \uc5c6\uc774 \uc11c\ube44\uc2a4\ub97c \uc81c\uacf5\ud560 \uc218 \uc788\uc2b5\ub2c8\ub2e4. \ubcf8 \uc11c\ube44\uc2a4\uc758 \ucfe0\ud0a4\ub97c \ud1b5\ud574 \uc218\uc9d1\ud558\ub294 \uc815\ubcf4\ub294 \ud68c\uc6d0\uc758 \uc544\uc774\ub514(ID)\uc5d0 \ud55c\ud558\uba70, \uadf8 \uc678\uc758 \ub2e4\ub978 \uc815\ubcf4\ub294 \uc218\uc9d1\ud558\uc9c0 \uc54a\uc2b5\ub2c8\ub2e4. \ubcf8 \uc11c\ube44\uc2a4\uc758 \ucfe0\ud0a4(cookie)\ub97c \ud1b5\ud574 \uc218\uc9d1\ud55c \ud68c\uc6d0\uc758 \uc544\uc774\ub514(ID)\ub294 \uac1c\uc778\uc758 \uad00\uc2ec \ubd84\uc57c\uc5d0 \ub530\ub77c \ucc28\ubcc4\ud654\ub41c \uc815\ubcf4\ub97c \uc81c\uacf5\ud68c\uc6d0\uacfc \ube44\ud68c\uc6d0\uc758 \uc811\uc18d\ube48\ub3c4 \ub610\ub294 \uba38\ubb38 \uc2dc\uac04 \ub4f1\uc744 \ubd84\uc11d\ud558\uc5ec \uc774\uc6a9\uc790\uc758 \ucde8\ud5a5\uacfc \uad00\uc2ec\ubd84\uc57c\ub97c \ud30c\uc545\ud558\uc5ec \ud0c0\uac9f(target)\ub9c8\ucf00\ud305\uc5d0 \ud65c\uc6a9\uad00\uc2ec \uc788\uac8c \ub458\ub7ec\ubcf8 \ub0b4\uc6a9\ub4e4\uc5d0 \ub300\ud55c \uc790\ucde8\ub97c \ucd94\uc801\ud558\uc5ec \ub2e4\uc74c \ubc88 \uc811\uc18d \ub54c \uac1c\uc778\ub9de\ucda4\uc11c\ube44\uc2a4\ub97c \uc81c\uacf5\uc720\ub8cc\uc11c\ube44\uc2a4 \uc774\uc6a9 \uc2dc \uc774\uc6a9\uae30\uac04 \uc548\ub0b4\ud68c\uc6d0\ub4e4\uc758 \uc2b5\uad00\uc744 \ubd84\uc11d\ud558\uc5ec \uc11c\ube44\uc2a4 \uac1c\ud3b8 \ub4f1\uc758 \ucc99\ub3c4\ub85c \ud65c\uc6a9\ud558\uae30 \uc704\ud574 \uc0ac\uc6a9\ub420 \uc218 \uc788\uc2b5\ub2c8\ub2e4.\n2.\uace0\uac1d\uc740 \ucfe0\ud0a4 \uc124\uce58\uc5d0 \ub300\ud55c \uc120\ud0dd\uad8c\uc744 \uac00\uc9c0\uace0 \uc788\uc2b5\ub2c8\ub2e4. \uc6f9 \ube0c\ub77c\uc6b0\uc800 \uc0c1\ub2e8\uc758 \u201c\ub3c4\uad6c > \uc778\ud130\ub137\uc635\uc158 > \uac1c\uc778\uc815\ubcf4 > \uace0\uae09\u201d\uc5d0\uc11c \ubaa8\ub4e0 \ucfe0\ud0a4\ub97c \ub2e4 \ubc1b\uc544\ub4e4\uc774\uac70\ub098, \ucfe0\ud0a4\uac00 \uc124\uce58\ub420 \ub54c \ud1b5\uc9c0\ub97c \ubcf4\ub0b4\ub3c4\ub85d \ud558\uac70\ub098, \uc544\ub2c8\uba74 \ubaa8\ub4e0 \ucfe0\ud0a4\ub97c \uac70\ubd80\ud560 \uc218 \uc788\uc2b5\ub2c8\ub2e4. \ub2e8, \uace0\uac1d\uc774 \ucfe0\ud0a4 \uc124\uce58\ub97c \uac70\ubd80\ud558\uc600\uc744 \uacbd\uc6b0 \uc11c\ube44\uc2a4 \uc774\uc6a9\uc5d0 \ubd88\ud3b8\uc774 \uc788\uac70\ub098, \uc11c\ube44\uc2a4 \uc81c\uacf5\uc5d0 \uc5b4\ub824\uc6c0\uc774 \uc788\uc744 \uc218 \uc788\uc2b5\ub2c8\ub2e4.\n3.\ucfe0\ud0a4\ub294 \ube0c\ub77c\uc6b0\uc800\uc758 \uc885\ub8cc \uc2dc\ub098 \ub85c\uadf8 \uc544\uc6c3 \uc2dc \ub9cc\ub8cc\ub429\ub2c8\ub2e4.\n\n\n\u3147 \uc774\uc6a9\uc790\uc758 \uad8c\ub9ac\uc640 \uc758\ubb34\n\n1.\ubcf8 \uc11c\ube44\uc2a4\ub294 \uace0\uac1d\ub2d8\uc758 \uc758\uacac\uc744 \ub9e4\uc6b0 \uc18c\uc911\ud558\uac8c \uc0dd\uac01\ud558\uba70, \uace0\uac1d\ub2d8\uc740 \uc758\ubb38\uc0ac\ud56d\uc73c\ub85c\ubd80\ud130 \uc5b8\uc81c\ub098 \uc131\uc2e4\ud55c \ub2f5\ubcc0\uc744 \ubc1b\uc744 \uad8c\ub9ac\uac00 \uc788\uc2b5\ub2c8\n2.\uace0\uac1d\ub2d8\uc758 \uac1c\uc778\uc815\ubcf4\ub97c \ucd5c\uc2e0\uc758 \uc0c1\ud0dc\ub85c \uc815\ud655\ud558\uac8c \uc785\ub825\ud558\uc5ec \ubd88\uc758\uc758 \uc0ac\uace0\ub97c \uc608\ubc29\ud574 \uc8fc\uc2dc\uae30 \ubc14\ub78d\ub2c8\ub2e4. \uc785\ub825\ud55c \ubd80\uc815\ud655\ud55c \uc815\ubcf4\ub85c \uc778\ud574 \ubc1c\uc0dd\ud558\ub294 \uc0ac\uace0\uc758 \ucc45\uc784\uc740 \uace0\uac1d\ub2d8\uaed8 \uc788\uc73c\uba70 \ud0c0\uc778 \uc815\ubcf4\uc758 \ub3c4\uc6a9 \ub4f1 \ud5c8\uc704\uc815\ubcf4\ub97c \uc785\ub825\ud560 \uacbd\uc6b0 \ud68c\uc6d0\uc790\uaca9\uc774 \uc0c1\uc2e4\ub420 \uc218 \uc788\uc2b5\ub2c8\ub2e4.\n3.\uc758\ubb34\ub3c4 \uac00\uc9c0\uace0 \uc788\uc2b5\ub2c8\ub2e4. \ud328\uc2a4\uc6cc\ub4dc\ub97c \ud3ec\ud568\ud55c \uace0\uac1d\ub2d8\uc758 \uac1c\uc778\uc815\ubcf4\uac00 \uc720\ucd9c\ub418\uc9c0 \uc54a\ub3c4\ub85d \uc870\uc2ec\ud558\uc2dc\uace0 \uac8c\uc2dc\ubb3c\uc744 \ud3ec\ud568\ud55c \ud0c0\uc778\uc758 \uac1c\uc778\uc815\ubcf4\ub97c \ud6fc\uc190\ud558\uc9c0 \uc54a\ub3c4\ub85d \uc720\uc758\ud574 \uc8fc\uc2ed\uc2dc\uc624. \ub9cc\uc57d \uc774 \uac19\uc740 \ucc45\uc784\uc744 \ub2e4\ud558\uc9c0 \ubabb\ud558\uace0 \ud0c0\uc778\uc758 \uc815\ubcf4\ub97c \ud6fc\uc190\ud560 \uc2dc\uc5d0\ub294\u300e\uc815\ubcf4\ud1b5\uc2e0\ub9dd \uc774\uc6a9\ucd09\uc9c4 \ubc0f \uc815\ubcf4\ubcf4\ud638 \ub4f1\uc5d0 \uad00\ud55c \ubc95\ub960\u300f\ub4f1\uc5d0 \uc758\ud574 \ucc98\ubc8c\ubc1b\uc744 \uc218 \uc788\uc2b5\ub2c8\ub2e4.\n\n\n\u3147 \uc758\uacac\uc218\ub834 \ubc0f \ubd88\ub9cc \ucc98\ub9ac\n\n1.\ubcf8 \uc11c\ube44\uc2a4\ub294 \uace0\uac1d\ub2d8\uacfc\uc758 \uc6d0\ud65c\ud55c \uc758\uc0ac\uc18c\ud1b5\uc744 \uc704\ud574 \uace0\uac1d\uc13c\ud130 \ub4f1 \uace0\uac1d\uc0c1\ub2f4\ucc3d\uad6c\ub97c \uc6b4\uc601\ud558\uace0 \uc788\uc73c\uba70 \uace0\uac1d\ub2d8\uaed8\uc11c \ubb38\uc758\uc0ac\ud56d\uc774 \uc788\uc744 \uacbd\uc6b0 \uc544\ub798\uc758 \uc5f0\ub77d\ucc98\ub85c \ubb38\uc758\ud558\uc2dc\uba74 \uc5b8\uc81c\ub4e0 \uc131\uc2e4\ud55c \ub2f5\ubcc0\uc744 \ubc1b\uc73c\uc2e4 \uc218 \uc788\uc2b5\ub2c8\ub2e4.\n\u2460\uac1c\uc778\uc815\ubcf4 \uad00\ub828 \uace0\uac1d\uc13c\ud130\n- \uac1c\uc778\uc815\ubcf4\ucc98\ub9ac\ub2f4\ub2f9\uc790 : cscenter@tstore.co.kr\n- \uc804\ud654\ubc88\ud638 : \uc774\ub3d9\uc804\ud654 114(\ubb34\ub8cc), (\uad6d\ubc88\uc5c6\uc774) 1599-0011(\uc720\ub8cc)\n\u2461\uc0ac\uc774\ubc84\uc0c1\ub2f4: \ubcf8 \uc11c\ube44\uc2a4\uc5d0 \uc811\uc18d\ud558\uc2e0 \ud6c4 \uace0\uac1d\uc13c\ud130 \uba54\ub274\uc758 Q&A \ucf54\ub108\uc0c1\ub2f4/\uc548\ub0b4\uc5d0\uc11c \uc0ac\uc774\ubc84 \uc0c1\ub2f4\uc6d0\uc5d0\uac8c \uc9c8\ubb38\uc744 \ud558\uc2e4 \uc218 \uc788\uc2b5\ub2c8\ub2e4. \n\n2.E-mail\uc774\ub098 \ud329\uc2a4 \ubc0f \uc6b0\ud3b8\uc744 \uc774\uc6a9\ud55c \uc0c1\ub2f4\uc740 \uc811\uc218 \ud6c4 24\uc2dc\uac04 \uc774\ub0b4\uc5d0 \ub2f5\ubcc0\uc774 \ub420 \uc218 \uc788\ub3c4\ub85d \ub178\ub825\ud558\uaca0\uc2b5\ub2c8\ub2e4.\n3.\uae30\ud0c0 \uac1c\uc778\uc815\ubcf4 \uce68\ud574\uc5d0 \uad00\ud55c \uc0c1\ub2f4\uc774 \ud544\uc694\ud55c \uacbd\uc6b0\uc5d0\ub294 \ud55c\uad6d\uc815\ubcf4\ubcf4\ud638\uc9c4\ud765\uc6d0 \uac1c\uc778\uc815\ubcf4\uce68\ud574\uc2e0\uace0\uc13c\ud130, \uacbd\ucc30\uccad \uc0ac\uc774\ubc84\ud14c\ub7ec\ub300\uc751\uc13c\ud130 \ub4f1\uc73c\ub85c \ubb38\uc758\ud558\uc2e4 \uc218 \uc788\uc2b5\ub2c8\ub2e4. \n\u2460\uac1c\uc778\uc815\ubcf4\uce68\ud574\uc2e0\uace0\uc13c\ud130\n- \uc804\ud654: 1336\n- URL: http://www.cyberprivacy.or.kr \n\u2461\uacbd\ucc30\uccad \uc0ac\uc774\ubc84\ud14c\ub7ec\ub300\uc751\uc13c\ud130\n- \uc804\ud654: 02 - 3939 - 112\n- URL: http://www.netan.go.kr \n\n\n\n\u3147 \uac1c\uc778\uc815\ubcf4\uad00\ub9ac \ucc45\uc784\uc790 \ubc0f \ub2f4\ub2f9\uc790\n\n1.\ubcf8 \uc11c\ube44\uc2a4\ub294 \uace0\uac1d\ub2d8\uc758 \uac1c\uc778\uc815\ubcf4\ubcf4\ud638\ub97c \ub9e4\uc6b0 \uc18c\uc911\ud558\uac8c \uc0dd\uac01\ud558\uba70, \uace0\uac1d\ub2d8\uc758 \uac1c\uc778\uc815\ubcf4\uac00 \ud6fc\uc190, \uce68\ud574 \ub610\ub294 \ub204\uc124\ub418\uc9c0 \uc54a\ub3c4\ub85d \ucd5c\uc120\uc744 \ub2e4\ud558\uace0 \uc788\uc2b5\ub2c8\ub2e4. \uadf8\ub7ec\ub098 \uae30\uc220\uc801\uc778 \ubcf4\uc644\uc870\uce58\ub97c \ud588\uc74c\uc5d0\ub3c4 \ubd88\uad6c\ud558\uace0, \ud574\ud0b9 \ub4f1 \uae30\ubcf8\uc801\uc778 \ub124\ud2b8\uc6cc\ud06c\uc0c1\uc758 \uc704\ud5d8\uc131\uc5d0 \uc758\ud574 \ubc1c\uc0dd\ud558\ub294 \uc608\uae30\uce58 \ubabb\ud55c \uc0ac\uace0\ub85c \uc778\ud55c \uc815\ubcf4\uc758 \ud6fc\uc190 \ubc0f \ubc29\ubb38\uc790\uac00 \uc791\uc131\ud55c \uac8c\uc2dc\ubb3c\uc5d0 \uc758\ud55c \uac01\uc885 \ubd84\uc7c1\uc5d0 \uad00\ud574\uc11c\ub294 \ucc45\uc784\uc774 \uc5c6\uc2b5\ub2c8\ub2e4.\n2.\uace0\uac1d\ub2d8\uc758 \uac1c\uc778\uc815\ubcf4\ubcf4\ud638 \uad00\ub828 \ubb38\uc758 \uc2dc \uace0\uac1d\uc13c\ud130\uc5d0\uc11c \uc2e0\uc18d\ud558\uace0 \uc131\uc2e4\ud558\uac8c \ub2f5\ubcc0\uc744 \ub4dc\ub9ac\ub3c4\ub85d \ud558\uace0 \uc788\uc2b5\ub2c8\ub2e4. \ub610\ud55c \uace0\uac1d\ub2d8\uc774 \ubcf8 \uc11c\ube44\uc2a4\uc758 \uac1c\uc778\uc815\ubcf4\ubcf4\ud638 \ub2f4\ub2f9\uc790\uc640 \uc5f0\ub77d\uc744 \uc6d0\ud558\uc2e4 \uacbd\uc6b0 \uc544\ub798\uc758 \uc5f0\ub77d\ucc98 \ub610\ub294 E-mail\ub85c \uc5f0\ub77d\uc744 \uc8fc\uc2dc\uba74 \uac1c\uc778\uc815\ubcf4 \uad00\ub828 \ubb38\uc758\uc0ac\ud56d\uc5d0 \ub300\ud558\uc5ec \uc2e0\uc18d\ud558\uace0 \uc131\uc2e4\ud558\uac8c \ub2f5\ubcc0\ud574 \ub4dc\ub9ac\uaca0\uc2b5\ub2c8\ub2e4.\n- \uac1c\uc778\uc815\ubcf4\uad00\ub9ac \ucc45\uc784\uc790 : \uc774\uc9c4\uc6b0 \ub300\uc678\ud611\ub825\uc2e4\uc7a5\n- \uac1c\uc778\uc815\ubcf4\uad00\ub9ac\ub2f4\ub2f9\uc790 : \uc774\uc0c1\uc775 \ub9e4\ub2c8\uc800\n- \uc18c\uc18d\ubd80\uc11c : SK\ud50c\ub798\ub2db \ub300\uc678\ud611\ub825\uc2e4 BR&C\ud300\n- \uc804\ud654\ubc88\ud638 : \uc774\ub3d9\uc804\ud654 114(\ubb34\ub8cc), (\uad6d\ubc88\uc5c6\uc774)1599-0011(\uc720\ub8cc)\n- \uc774\uba54\uc77c : privacy.skp@skplanet.co.kr\n\n\n\n\u3147 \uad11\uace0\uc131 \uc815\ubcf4 \uc804\uc1a1\n\n\ubcf8 \uc11c\ube44\uc2a4\ub294 \uace0\uac1d\ub2d8\uc758 \uba85\uc2dc\uc801\uc778 \uc218\uc2e0\uac70\ubd80 \uc758\uc0ac\uc5d0 \ubc18\ud558\uc5ec \uc601\ub9ac\ubaa9\uc801\uc758 \uad11\uace0\uc131 \uc815\ubcf4\ub97c \uc804\uc1a1\ud558\uc9c0 \uc54a\uc2b5\ub2c8\ub2e4\n\n\n\u3147 \uace0\uc9c0\uc758\ubb34\n\n\ud604 \uac1c\uc778\uc815\ubcf4 \ucde8\uae09\ubc29\uce68\uc740 2009\ub144 6\uc6d4 30\uc77c\uc5d0 \uc81c\uc815\ub418\uc5c8\uc73c\uba70 \uc815\ubd80\uc758 \uc815\ucc45 \ub610\ub294 \ubcf4\uc548\uae30\uc220\uc758 \ubcc0\uacbd\uc5d0 \ub530\ub77c \ub0b4\uc6a9\uc758 \ucd94\uac00, \uc0ad\uc81c \ubc0f \uc218\uc815\uc774 \uc788\uc744 \uacbd\uc6b0\uc5d0\ub294 \uac1c\uc815 \ucd5c\uc18c 7\uc77c \uc804\ubd80\ud130 \ud648\ud398\uc774\uc9c0\uc758 \'\uacf5\uc9c0\'\ub780\uc744 \ud1b5\ud574 \uace0\uc9c0\ud560 \uac83\ub2e4.\n\n\ubd80\uce59\n(\uc2dc\ud589\uc77c) \ubcf8 \uc57d\uad00\uc740 2011\ub144 10\uc6d4 1\uc77c\ubd80\ud130 \uc2dc\ud589\ud569\ub2c8\ub2e4.\n"

    goto :goto_0

    .line 370
    :pswitch_24
    const-string v0, "Please check your network connection."

    goto :goto_0

    .line 371
    :pswitch_25
    const-string v0, "Transit network is an error."

    goto :goto_0

    .line 372
    :pswitch_26
    const-string v0, "Billing errors"

    goto :goto_0

    .line 373
    :pswitch_27
    const-string v0, "[Billing error] \n callback listener onItemQueryComplete () return value is false or null. must be returned to true."

    goto :goto_0

    .line 374
    :pswitch_28
    const-string v0, "Network is not connected."

    goto :goto_0

    .line 375
    :pswitch_29
    const-string v0, "Please check the status of USIM."

    goto :goto_0

    .line 376
    :pswitch_2a
    const-string v0, "Please check back on social security number."

    goto/16 :goto_0

    .line 377
    :pswitch_2b
    const-string v0, "The content of this fee when using your T store Register is required. Do you want to proceed?"

    goto/16 :goto_0

    .line 378
    :pswitch_2c
    const-string v0, "Your trial version of this content is currently being used. Do you want to switch to the final version?"

    goto/16 :goto_0

    .line 379
    :pswitch_2d
    const-string v0, "Error is not defined."

    goto/16 :goto_0

    .line 380
    :pswitch_2e
    const-string v0, "This product as a monthly automatic payment product will be available gogaeknimman SKT."

    goto/16 :goto_0

    .line 381
    :pswitch_2f
    const-string v0, "Would you like to cancel \na subscription?"

    goto/16 :goto_0

    .line 382
    :pswitch_30
    const-string v0, "** CAUTION ** Even if the early withdrawal, you can use the service by the end of this. It is possible to re-apply for the next month if you would like to continue to use after this."

    goto/16 :goto_0

    .line 383
    :pswitch_31
    const-string v0, "Cancellation Complete for this subscription.\nYou can use this app. until the end of this month.\nThank you."

    goto/16 :goto_0

    .line 384
    :pswitch_32
    const-string v0, "After installation, the T store using the service please. Thank you."

    goto/16 :goto_0

    .line 385
    :pswitch_33
    const-string v0, "Please wait. \n Authorization Number 3 minutes after sending retransmissions can be retransmitted. \n \n"

    goto/16 :goto_0

    .line 386
    :pswitch_34
    const-string v0, "Requesting authorization number has been sent."

    goto/16 :goto_0

    .line 387
    :pswitch_35
    const-string v0, "Requesting authorization number has been sent. Please wait a moment."

    goto/16 :goto_0

    .line 388
    :pswitch_36
    const-string v0, "You are not  a related member of\nNate/Cyworld.\nIf you change a related member of\nNate/Cyworld,\nyou can use Dotori."

    goto/16 :goto_0

    .line 389
    :pswitch_37
    const-string v0, "Do you want to delete \n OK Cashbag card information?"

    goto/16 :goto_0

    .line 390
    :pswitch_38
    const-string v0, "Dotori can be used at the time of purchase of the product is up to 1000. Please use means other discounts."

    goto/16 :goto_0

    .line 8
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_1e
        :pswitch_1b
        :pswitch_38
        :pswitch_1a
        :pswitch_37
        :pswitch_1c
        :pswitch_16
        :pswitch_17
        :pswitch_15
        :pswitch_14
        :pswitch_1d
        :pswitch_19
        :pswitch_6
        :pswitch_18
        :pswitch_13
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
