.class public interface abstract annotation Lorg/chromium/components/autofill/SuggestionType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE_USE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# static fields
.field public static final ACCOUNT_STORAGE_PASSWORD_ENTRY:I = 0x1b

.field public static final ADDRESS_ENTRY:I = 0x1

.field public static final ADDRESS_ENTRY_ON_TYPING:I = 0x3f

.field public static final ADDRESS_FIELD_BY_FIELD_FILLING:I = 0x7

.field public static final ALL_SAVED_PASSWORDS_ENTRY:I = 0x16

.field public static final AUTOCOMPLETE_ENTRY:I = 0x0

.field public static final BNPL_ENTRY:I = 0x3d

.field public static final COMPOSE_DISABLE:I = 0x11

.field public static final COMPOSE_GO_TO_SETTINGS:I = 0x12

.field public static final COMPOSE_NEVER_SHOW_ON_THIS_SITE_AGAIN:I = 0x13

.field public static final COMPOSE_PROACTIVE_NUDGE:I = 0xe

.field public static final COMPOSE_RESUME_NUDGE:I = 0xf

.field public static final COMPOSE_SAVED_STATE_NOTIFICATION:I = 0x10

.field public static final CREATE_NEW_PLUS_ADDRESS:I = 0x27

.field public static final CREATE_NEW_PLUS_ADDRESS_INLINE:I = 0x34

.field public static final CREDIT_CARD_ENTRY:I = 0x21

.field public static final DATALIST_ENTRY:I = 0x14

.field public static final DEVTOOLS_TEST_ADDRESSES:I = 0x31

.field public static final DEVTOOLS_TEST_ADDRESS_BY_COUNTRY:I = 0x33

.field public static final DEVTOOLS_TEST_ADDRESS_ENTRY:I = 0x32

.field public static final FETCH_PASSWORD_DATA_FROM_SPASS_WITHOUT_RELOAD:I = 0x45

.field public static final FILL_AUTOFILL_AI:I = 0x37

.field public static final FILL_EXISTING_PLUS_ADDRESS:I = 0x28

.field public static final FILL_PASSWORD:I = 0x1f

.field public static final GENERATE_PASSWORD_ENTRY:I = 0x17

.field public static final IBAN_ENTRY:I = 0x26

.field public static final IDENTITY_CREDENTIAL:I = 0x42

.field public static final INSECURE_CONTEXT_PAYMENT_DISABLED_MESSAGE:I = 0x22

.field public static final LOYALTY_CARD_ENTRY:I = 0x43

.field public static final MANAGE_ADDRESS:I = 0xa

.field public static final MANAGE_AUTOFILL_AI:I = 0x40

.field public static final MANAGE_CREDIT_CARD:I = 0xb

.field public static final MANAGE_IBAN:I = 0xc

.field public static final MANAGE_LOYALTY_CARD:I = 0x44

.field public static final MANAGE_PLUS_ADDRESS:I = 0xd

.field public static final MAX_VALUE:I = 0x47

.field public static final MERCHANT_PROMO_CODE_ENTRY:I = 0x29

.field public static final MIXED_FORM_MESSAGE:I = 0x30

.field public static final OTP_ENTRY:I = 0x46

.field public static final PASSWORD_ENTRY:I = 0x15

.field public static final PASSWORD_FIELD_BY_FIELD_FILLING:I = 0x1e

.field public static final PENDING_STATE_SIGNIN:I = 0x41

.field public static final PLUS_ADDRESS_ERROR:I = 0x39

.field public static final SAVE_AND_FILL_CREDIT_CARD_ENTRY:I = 0x3e

.field public static final SCAN_CREDIT_CARD:I = 0x23

.field public static final SEE_PROMO_CODE_DETAILS:I = 0x2a

.field public static final SEPARATOR:I = 0x2e

.field public static final TITLE:I = 0x2d

.field public static final UNDO_OR_CLEAR:I = 0x2f

.field public static final VIEW_PASSWORD_DETAILS:I = 0x20

.field public static final VIRTUAL_CREDIT_CARD_ENTRY:I = 0x24

.field public static final VIRTUAL_CREDIT_CARD_ENTRY_FROM_SPAY:I = 0x47

.field public static final WEBAUTHN_CREDENTIAL:I = 0x2b

.field public static final WEBAUTHN_SIGN_IN_WITH_ANOTHER_DEVICE:I = 0x2c
