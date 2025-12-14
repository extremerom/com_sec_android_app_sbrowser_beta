.class public final Lorg/chromium/network/mojom/SharedDictionaryError;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/network/mojom/SharedDictionaryError$EnumType;
    }
.end annotation


# static fields
.field public static final MAX_VALUE:I = 0x17

.field public static final MIN_VALUE:I = 0x0

.field public static final USE_ERROR_CROSS_ORIGIN_NO_CORS_REQUEST:I = 0x0

.field public static final USE_ERROR_DICTIONARY_LOAD_FAILURE:I = 0x1

.field public static final USE_ERROR_MATCHING_DICTIONARY_NOT_USED:I = 0x2

.field public static final USE_ERROR_UNEXPECTED_CONTENT_DICTIONARY_HEADER:I = 0x3

.field public static final WRITE_ERROR_ALREADY_REGISTERED:I = 0x4

.field public static final WRITE_ERROR_COSS_ORIGIN_NO_CORS_REQUEST:I = 0x5

.field public static final WRITE_ERROR_DISALLOWED_BY_SETTINGS:I = 0x6

.field public static final WRITE_ERROR_EXPIRED_RESPONSE:I = 0x7

.field public static final WRITE_ERROR_FEATURE_DISABLED:I = 0x8

.field public static final WRITE_ERROR_INSUFFICIENT_RESOURCES:I = 0x9

.field public static final WRITE_ERROR_INVALID_MATCH_FIELD:I = 0xa

.field public static final WRITE_ERROR_INVALID_STRUCTURED_HEADER:I = 0xb

.field public static final WRITE_ERROR_NAVIGATION_REQUEST:I = 0xc

.field public static final WRITE_ERROR_NON_LIST_MATCH_DEST_FIELD:I = 0xe

.field public static final WRITE_ERROR_NON_SECURE_CONTEXT:I = 0xf

.field public static final WRITE_ERROR_NON_STRING_ID_FIELD:I = 0x10

.field public static final WRITE_ERROR_NON_STRING_IN_MATCH_DEST_LIST:I = 0x11

.field public static final WRITE_ERROR_NON_STRING_MATCH_FIELD:I = 0x12

.field public static final WRITE_ERROR_NON_TOKEN_TYPE_FIELD:I = 0x13

.field public static final WRITE_ERROR_NO_MATCH_FIELD:I = 0xd

.field public static final WRITE_ERROR_REQUEST_ABORTED:I = 0x14

.field public static final WRITE_ERROR_SHUTTING_DOWN:I = 0x15

.field public static final WRITE_ERROR_TOO_LONG_ID_FIELD:I = 0x16

.field public static final WRITE_ERROR_UNSUPPORTED_TYPE:I = 0x17


# direct methods
.method public static isKnownValue(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0x17

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

    invoke-static {p0}, Lorg/chromium/network/mojom/SharedDictionaryError;->isKnownValue(I)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string v0, "Invalid enum value."

    invoke-direct {p0, v0}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
