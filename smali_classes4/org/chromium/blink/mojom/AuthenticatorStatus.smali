.class public final Lorg/chromium/blink/mojom/AuthenticatorStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/AuthenticatorStatus$EnumType;
    }
.end annotation


# static fields
.field public static final ABORT_ERROR:I = 0xd

.field public static final ALGORITHM_UNSUPPORTED:I = 0x9

.field public static final ANDROID_NOT_SUPPORTED_ERROR:I = 0xb

.field public static final BAD_RELYING_PARTY_ID:I = 0x10

.field public static final BAD_RELYING_PARTY_ID_ATTEMPTED_FETCH:I = 0x11

.field public static final BAD_RELYING_PARTY_ID_JSON_PARSE_ERROR:I = 0x13

.field public static final BAD_RELYING_PARTY_ID_NO_JSON_MATCH:I = 0x14

.field public static final BAD_RELYING_PARTY_ID_NO_JSON_MATCH_HIT_LIMITS:I = 0x15

.field public static final BAD_RELYING_PARTY_ID_WRONG_CONTENT_TYPE:I = 0x12

.field public static final CANNOT_READ_AND_WRITE_LARGE_BLOB:I = 0x16

.field public static final CERTIFICATE_ERROR:I = 0x1b

.field public static final CREDENTIAL_EXCLUDED:I = 0x4

.field public static final DEVICE_PUBLIC_KEY_ATTESTATION_REJECTED:I = 0x1a

.field public static final EMPTY_ALLOW_CREDENTIALS:I = 0xa

.field public static final ERROR_WITH_DOM_EXCEPTION_DETAILS:I = 0x1c

.field public static final FAILED_TO_SAVE_CREDENTIAL_ID_FOR_PAYMENT_EXTENSION:I = 0x18

.field public static final IMMEDIATE_NOT_FOUND:I = 0x1d

.field public static final INVALID_ALLOW_CREDENTIALS_FOR_LARGE_BLOB:I = 0x17

.field public static final INVALID_DOMAIN:I = 0x3

.field public static final INVALID_PROTOCOL:I = 0xf

.field public static final MAX_VALUE:I = 0x1e

.field public static final MIN_VALUE:I = 0x0

.field public static final NOT_ALLOWED_ERROR:I = 0x2

.field public static final NOT_FOCUSED:I = 0x6

.field public static final NOT_IMPLEMENTED:I = 0x5

.field public static final OPAQUE_DOMAIN:I = 0xe

.field public static final PENDING_REQUEST:I = 0x1

.field public static final PROTECTION_POLICY_INCONSISTENT:I = 0xc

.field public static final REMOTE_DESKTOP_CLIENT_OVERRIDE_NOT_AUTHORIZED:I = 0x19

.field public static final RESIDENT_CREDENTIALS_UNSUPPORTED:I = 0x7

.field public static final SUCCESS:I = 0x0

.field public static final UNKNOWN_ERROR:I = 0x1e

.field public static final USER_VERIFICATION_UNSUPPORTED:I = 0x8


# direct methods
.method public static isKnownValue(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0x1e

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

    invoke-static {p0}, Lorg/chromium/blink/mojom/AuthenticatorStatus;->isKnownValue(I)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string v0, "Invalid enum value."

    invoke-direct {p0, v0}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
