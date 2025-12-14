.class public final Lorg/chromium/network/mojom/TrustTokenOperationStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/network/mojom/TrustTokenOperationStatus$EnumType;
    }
.end annotation


# static fields
.field public static final ALREADY_EXISTS:I = 0x5

.field public static final BAD_RESPONSE:I = 0x8

.field public static final FAILED_PRECONDITION:I = 0x3

.field public static final INTERNAL_ERROR:I = 0x9

.field public static final INVALID_ARGUMENT:I = 0x1

.field public static final MAX_VALUE:I = 0xc

.field public static final MIN_VALUE:I = 0x0

.field public static final MISSING_ISSUER_KEYS:I = 0x2

.field public static final OK:I = 0x0

.field public static final OPERATION_SUCCESSFULLY_FULFILLED_LOCALLY:I = 0xb

.field public static final RESOURCE_EXHAUSTED:I = 0x4

.field public static final RESOURCE_LIMITED:I = 0x6

.field public static final SITE_ISSUER_LIMIT:I = 0xc

.field public static final UNAUTHORIZED:I = 0x7

.field public static final UNKNOWN_ERROR:I = 0xa


# direct methods
.method public static isKnownValue(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0xc

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

    invoke-static {p0}, Lorg/chromium/network/mojom/TrustTokenOperationStatus;->isKnownValue(I)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string v0, "Invalid enum value."

    invoke-direct {p0, v0}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
