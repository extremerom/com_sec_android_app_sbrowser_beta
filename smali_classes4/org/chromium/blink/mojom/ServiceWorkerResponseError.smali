.class public final Lorg/chromium/blink/mojom/ServiceWorkerResponseError;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/ServiceWorkerResponseError$EnumType;
    }
.end annotation


# static fields
.field public static final BODY_LOCKED:I = 0xa

.field public static final BODY_USED:I = 0x7

.field public static final DATA_PIPE_CREATION_FAILED:I = 0xc

.field public static final DEFAULT_PREVENTED:I = 0x2

.field public static final DISALLOWED_BY_CORP:I = 0xf

.field public static final MAX_VALUE:I = 0x10

.field public static final MIN_VALUE:I = 0x0

.field public static final NO_V8_INSTANCE:I = 0x3

.field public static final PROMISE_REJECTED:I = 0x1

.field public static final REDIRECTED_RESPONSE_FOR_NOT_FOLLOW_REQUEST:I = 0xb

.field public static final REQUEST_BODY_UNUSABLE:I = 0x10

.field public static final RESPONSE_BODY_BROKEN:I = 0xe

.field public static final RESPONSE_TYPE_CORS_FOR_REQUEST_MODE_SAME_ORIGIN:I = 0xd

.field public static final RESPONSE_TYPE_ERROR:I = 0x4

.field public static final RESPONSE_TYPE_NOT_BASIC_OR_DEFAULT:I = 0x6

.field public static final RESPONSE_TYPE_OPAQUE:I = 0x5

.field public static final RESPONSE_TYPE_OPAQUE_FOR_CLIENT_REQUEST:I = 0x8

.field public static final RESPONSE_TYPE_OPAQUE_REDIRECT:I = 0x9

.field public static final UNKNOWN:I


# direct methods
.method public static isKnownValue(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0x10

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

    invoke-static {p0}, Lorg/chromium/blink/mojom/ServiceWorkerResponseError;->isKnownValue(I)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string v0, "Invalid enum value."

    invoke-direct {p0, v0}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
