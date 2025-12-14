.class public final Lorg/chromium/network/mojom/CorsError;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/network/mojom/CorsError$EnumType;
    }
.end annotation


# static fields
.field public static final ALLOW_ORIGIN_MISMATCH:I = 0x6

.field public static final CORS_DISABLED_SCHEME:I = 0x8

.field public static final DISALLOWED_BY_MODE:I = 0x0

.field public static final HEADER_DISALLOWED_BY_PREFLIGHT_RESPONSE:I = 0x16

.field public static final INSECURE_PRIVATE_NETWORK:I = 0x18

.field public static final INVALID_ALLOW_CREDENTIALS:I = 0x7

.field public static final INVALID_ALLOW_HEADERS_PREFLIGHT_RESPONSE:I = 0x14

.field public static final INVALID_ALLOW_METHODS_PREFLIGHT_RESPONSE:I = 0x13

.field public static final INVALID_ALLOW_ORIGIN_VALUE:I = 0x5

.field public static final INVALID_PRIVATE_NETWORK_ACCESS:I = 0x19

.field public static final INVALID_RESPONSE:I = 0x1

.field public static final LOCAL_NETWORK_ACCESS_PERMISSION_DENIED:I = 0x1f

.field public static final MAX_VALUE:I = 0x1f

.field public static final METHOD_DISALLOWED_BY_PREFLIGHT_RESPONSE:I = 0x15

.field public static final MIN_VALUE:I = 0x0

.field public static final MISSING_ALLOW_ORIGIN_HEADER:I = 0x3

.field public static final MULTIPLE_ALLOW_ORIGIN_VALUES:I = 0x4

.field public static final PREFLIGHT_ALLOW_ORIGIN_MISMATCH:I = 0xf

.field public static final PREFLIGHT_DISALLOWED_REDIRECT:I = 0xa

.field public static final PREFLIGHT_INVALID_ALLOW_CREDENTIALS:I = 0x10

.field public static final PREFLIGHT_INVALID_ALLOW_ORIGIN_VALUE:I = 0xe

.field public static final PREFLIGHT_INVALID_ALLOW_PRIVATE_NETWORK:I = 0x12

.field public static final PREFLIGHT_INVALID_STATUS:I = 0x9

.field public static final PREFLIGHT_MISSING_ALLOW_ORIGIN_HEADER:I = 0xc

.field public static final PREFLIGHT_MISSING_ALLOW_PRIVATE_NETWORK:I = 0x11

.field public static final PREFLIGHT_MISSING_PRIVATE_NETWORK_ACCESS_ID:I = 0x1b

.field public static final PREFLIGHT_MISSING_PRIVATE_NETWORK_ACCESS_NAME:I = 0x1c

.field public static final PREFLIGHT_MULTIPLE_ALLOW_ORIGIN_VALUES:I = 0xd

.field public static final PREFLIGHT_WILDCARD_ORIGIN_NOT_ALLOWED:I = 0xb

.field public static final PRIVATE_NETWORK_ACCESS_PERMISSION_DENIED:I = 0x1e

.field public static final PRIVATE_NETWORK_ACCESS_PERMISSION_UNAVAILABLE:I = 0x1d

.field public static final REDIRECT_CONTAINS_CREDENTIALS:I = 0x17

.field public static final UNEXPECTED_PRIVATE_NETWORK_ACCESS:I = 0x1a

.field public static final WILDCARD_ORIGIN_NOT_ALLOWED:I = 0x2


# direct methods
.method public static isKnownValue(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0x1f

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

    invoke-static {p0}, Lorg/chromium/network/mojom/CorsError;->isKnownValue(I)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string v0, "Invalid enum value."

    invoke-direct {p0, v0}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
