.class public final Lorg/chromium/payments/mojom/PaymentEventResponseType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/payments/mojom/PaymentEventResponseType$EnumType;
    }
.end annotation


# static fields
.field public static final MAX_VALUE:I = 0x14

.field public static final MIN_VALUE:I = 0x0

.field public static final PAYER_EMAIL_EMPTY:I = 0x1

.field public static final PAYER_NAME_EMPTY:I = 0x0

.field public static final PAYER_PHONE_EMPTY:I = 0x2

.field public static final PAYMENT_DETAILS_ABSENT:I = 0x3

.field public static final PAYMENT_DETAILS_NOT_OBJECT:I = 0x4

.field public static final PAYMENT_DETAILS_STRINGIFY_ERROR:I = 0x5

.field public static final PAYMENT_EVENT_BROWSER_ERROR:I = 0x6

.field public static final PAYMENT_EVENT_INTERNAL_ERROR:I = 0x7

.field public static final PAYMENT_EVENT_NO_RESPONSE:I = 0x8

.field public static final PAYMENT_EVENT_REJECT:I = 0x9

.field public static final PAYMENT_EVENT_SERVICE_WORKER_ERROR:I = 0xa

.field public static final PAYMENT_EVENT_SUCCESS:I = 0xb

.field public static final PAYMENT_EVENT_TIMEOUT:I = 0xc

.field public static final PAYMENT_HANDLER_ACTIVITY_DIED:I = 0xd

.field public static final PAYMENT_HANDLER_FAIL_TO_LOAD_MAIN_FRAME:I = 0xe

.field public static final PAYMENT_HANDLER_INSECURE_NAVIGATION:I = 0xf

.field public static final PAYMENT_HANDLER_INSTALL_FAILED:I = 0x10

.field public static final PAYMENT_HANDLER_WINDOW_CLOSING:I = 0x11

.field public static final PAYMENT_METHOD_NAME_EMPTY:I = 0x12

.field public static final SHIPPING_ADDRESS_INVALID:I = 0x13

.field public static final SHIPPING_OPTION_EMPTY:I = 0x14


# direct methods
.method public static isKnownValue(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0x14

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static toKnownValue(I)I
    .locals 0

    return p0
.end method

.method public static validate(I)V
    .locals 1

    invoke-static {p0}, Lorg/chromium/payments/mojom/PaymentEventResponseType;->isKnownValue(I)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string v0, "Invalid enum value."

    invoke-direct {p0, v0}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
