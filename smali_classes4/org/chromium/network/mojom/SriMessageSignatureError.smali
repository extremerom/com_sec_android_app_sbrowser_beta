.class public final Lorg/chromium/network/mojom/SriMessageSignatureError;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/network/mojom/SriMessageSignatureError$EnumType;
    }
.end annotation


# static fields
.field public static final INVALID_SIGNATURE_HEADER:I = 0x2

.field public static final INVALID_SIGNATURE_INPUT_HEADER:I = 0x3

.field public static final MAX_VALUE:I = 0x14

.field public static final MIN_VALUE:I = 0x0

.field public static final MISSING_SIGNATURE_HEADER:I = 0x0

.field public static final MISSING_SIGNATURE_INPUT_HEADER:I = 0x1

.field public static final SIGNATURE_HEADER_VALUE_IS_INCORRECT_LENGTH:I = 0x6

.field public static final SIGNATURE_HEADER_VALUE_IS_NOT_BYTE_SEQUENCE:I = 0x4

.field public static final SIGNATURE_HEADER_VALUE_IS_PARAMETERIZED:I = 0x5

.field public static final SIGNATURE_INPUT_HEADER_INVALID_COMPONENT_NAME:I = 0xb

.field public static final SIGNATURE_INPUT_HEADER_INVALID_COMPONENT_TYPE:I = 0xa

.field public static final SIGNATURE_INPUT_HEADER_INVALID_DERIVED_COMPONENT_PARAMETER:I = 0xd

.field public static final SIGNATURE_INPUT_HEADER_INVALID_HEADER_COMPONENT_PARAMETER:I = 0xc

.field public static final SIGNATURE_INPUT_HEADER_INVALID_PARAMETER:I = 0xf

.field public static final SIGNATURE_INPUT_HEADER_KEY_ID_LENGTH:I = 0xe

.field public static final SIGNATURE_INPUT_HEADER_MISSING_LABEL:I = 0x7

.field public static final SIGNATURE_INPUT_HEADER_MISSING_REQUIRED_PARAMETERS:I = 0x10

.field public static final SIGNATURE_INPUT_HEADER_VALUE_MISSING_COMPONENTS:I = 0x9

.field public static final SIGNATURE_INPUT_HEADER_VALUE_NOT_INNER_LIST:I = 0x8

.field public static final VALIDATION_FAILED_INTEGRITY_MISMATCH:I = 0x14

.field public static final VALIDATION_FAILED_INVALID_LENGTH:I = 0x12

.field public static final VALIDATION_FAILED_SIGNATURE_EXPIRED:I = 0x11

.field public static final VALIDATION_FAILED_SIGNATURE_MISMATCH:I = 0x13


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

    invoke-static {p0}, Lorg/chromium/network/mojom/SriMessageSignatureError;->isKnownValue(I)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string v0, "Invalid enum value."

    invoke-direct {p0, v0}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
