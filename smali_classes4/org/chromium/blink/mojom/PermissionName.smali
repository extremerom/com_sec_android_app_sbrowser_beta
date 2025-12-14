.class public final Lorg/chromium/blink/mojom/PermissionName;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/PermissionName$EnumType;
    }
.end annotation


# static fields
.field public static final AUDIO_CAPTURE:I = 0x5

.field public static final BACKGROUND_FETCH:I = 0xc

.field public static final BACKGROUND_SYNC:I = 0x7

.field public static final CAPTURED_SURFACE_CONTROL:I = 0x17

.field public static final CLIPBOARD_READ:I = 0x9

.field public static final CLIPBOARD_WRITE:I = 0xa

.field public static final DISPLAY_CAPTURE:I = 0x15

.field public static final DURABLE_STORAGE:I = 0x4

.field public static final FULLSCREEN:I = 0x1b

.field public static final GEOLOCATION:I = 0x0

.field public static final IDLE_DETECTION:I = 0xd

.field public static final KEYBOARD_LOCK:I = 0x19

.field public static final LOCAL_FONTS:I = 0x14

.field public static final LOCAL_NETWORK_ACCESS:I = 0x1d

.field public static final MAX_VALUE:I = 0x1d

.field public static final MIDI:I = 0x2

.field public static final MIN_VALUE:I = 0x0

.field public static final NFC:I = 0x11

.field public static final NOTIFICATIONS:I = 0x1

.field public static final PAYMENT_HANDLER:I = 0xb

.field public static final PERIODIC_BACKGROUND_SYNC:I = 0xe

.field public static final POINTER_LOCK:I = 0x1a

.field public static final PROTECTED_MEDIA_IDENTIFIER:I = 0x3

.field public static final SCREEN_WAKE_LOCK:I = 0xf

.field public static final SENSORS:I = 0x8

.field public static final SPEAKER_SELECTION:I = 0x18

.field public static final STORAGE_ACCESS:I = 0x12

.field public static final SYSTEM_WAKE_LOCK:I = 0x10

.field public static final TOP_LEVEL_STORAGE_ACCESS:I = 0x16

.field public static final VIDEO_CAPTURE:I = 0x6

.field public static final WEB_APP_INSTALLATION:I = 0x1c

.field public static final WINDOW_MANAGEMENT:I = 0x13


# direct methods
.method public static isKnownValue(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0x1d

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

    invoke-static {p0}, Lorg/chromium/blink/mojom/PermissionName;->isKnownValue(I)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string v0, "Invalid enum value."

    invoke-direct {p0, v0}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
