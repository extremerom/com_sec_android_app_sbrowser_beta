.class public final Lorg/chromium/blink/mojom/ModelStreamingResponseStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/ModelStreamingResponseStatus$EnumType;
    }
.end annotation


# static fields
.field public static final COMPLETE:I = 0x1

.field public static final ERROR_CANCELLED:I = 0xc

.field public static final ERROR_DISABLED:I = 0xb

.field public static final ERROR_FILTERED:I = 0xa

.field public static final ERROR_GENERIC_FAILURE:I = 0x6

.field public static final ERROR_INPUT_TOO_LARGE:I = 0xe

.field public static final ERROR_INVALID_REQUEST:I = 0x3

.field public static final ERROR_NON_RETRYABLE_ERROR:I = 0x8

.field public static final ERROR_PERMISSION_DENIED:I = 0x5

.field public static final ERROR_REQUEST_THROTTLED:I = 0x4

.field public static final ERROR_RESPONSE_LOW_QUALITY:I = 0xf

.field public static final ERROR_RETRYABLE_ERROR:I = 0x7

.field public static final ERROR_SESSION_DESTROYED:I = 0xd

.field public static final ERROR_UNKNOWN:I = 0x2

.field public static final ERROR_UNSUPPORTED_LANGUAGE:I = 0x9

.field public static final MAX_VALUE:I = 0xf

.field public static final MIN_VALUE:I

.field public static final ONGOING:I


# direct methods
.method public static isKnownValue(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0xf

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

    invoke-static {p0}, Lorg/chromium/blink/mojom/ModelStreamingResponseStatus;->isKnownValue(I)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string v0, "Invalid enum value."

    invoke-direct {p0, v0}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
