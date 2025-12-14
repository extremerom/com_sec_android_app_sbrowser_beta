.class public final Lorg/chromium/blink/mojom/MediaStreamRequestResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/MediaStreamRequestResult$EnumType;
    }
.end annotation


# static fields
.field public static final CAPTURE_FAILURE:I = 0x8

.field public static final CONSTRAINT_NOT_SATISFIED:I = 0x9

.field public static final DEVICE_IN_USE:I = 0x10

.field public static final FAILED_DUE_TO_SHUTDOWN:I = 0xd

.field public static final INVALID_SECURITY_ORIGIN:I = 0x5

.field public static final INVALID_STATE:I = 0x3

.field public static final KILL_SWITCH_ON:I = 0xe

.field public static final MAX_VALUE:I = 0x13

.field public static final MIN_VALUE:I = 0x0

.field public static final NOT_SUPPORTED:I = 0xc

.field public static final NO_HARDWARE:I = 0x4

.field public static final NUM_MEDIA_REQUEST_RESULTS:I = 0x13

.field public static final OK:I = 0x0

.field public static final PERMISSION_DENIED:I = 0x1

.field public static final PERMISSION_DISMISSED:I = 0x2

.field public static final REQUEST_CANCELLED:I = 0x11

.field public static final SCREEN_CAPTURE_FAILURE:I = 0x7

.field public static final START_TIMEOUT:I = 0x12

.field public static final SYSTEM_PERMISSION_DENIED:I = 0xf

.field public static final TAB_CAPTURE_FAILURE:I = 0x6

.field public static final TRACK_START_FAILURE_AUDIO:I = 0xa

.field public static final TRACK_START_FAILURE_VIDEO:I = 0xb


# direct methods
.method public static isKnownValue(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0x13

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

    invoke-static {p0}, Lorg/chromium/blink/mojom/MediaStreamRequestResult;->isKnownValue(I)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string v0, "Invalid enum value."

    invoke-direct {p0, v0}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
