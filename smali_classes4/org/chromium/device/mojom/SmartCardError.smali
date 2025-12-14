.class public final Lorg/chromium/device/mojom/SmartCardError;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/device/mojom/SmartCardError$EnumType;
    }
.end annotation


# static fields
.field public static final CANCELLED:I = 0xc

.field public static final COMM_ERROR:I = 0x18

.field public static final INSUFFICIENT_BUFFER:I = 0xd

.field public static final INTERNAL_ERROR:I = 0x19

.field public static final INVALID_HANDLE:I = 0xe

.field public static final INVALID_PARAMETER:I = 0xf

.field public static final INVALID_VALUE:I = 0x10

.field public static final MAX_VALUE:I = 0x1f

.field public static final MIN_VALUE:I = 0x0

.field public static final NOT_READY:I = 0xb

.field public static final NOT_TRANSACTED:I = 0x7

.field public static final NO_MEMORY:I = 0x11

.field public static final NO_READERS_AVAILABLE:I = 0x15

.field public static final NO_SERVICE:I = 0x17

.field public static final NO_SMARTCARD:I = 0x8

.field public static final PERMISSION_DENIED:I = 0x1f

.field public static final PROTO_MISMATCH:I = 0x9

.field public static final READER_UNAVAILABLE:I = 0x5

.field public static final REMOVED_CARD:I = 0x0

.field public static final RESET_CARD:I = 0x1

.field public static final SERVER_TOO_BUSY:I = 0x1b

.field public static final SERVICE_STOPPED:I = 0x16

.field public static final SHARING_VIOLATION:I = 0x6

.field public static final SHUTDOWN:I = 0x1d

.field public static final SYSTEM_CANCELLED:I = 0xa

.field public static final TIMEOUT:I = 0x12

.field public static final UNEXPECTED:I = 0x1c

.field public static final UNKNOWN:I = 0x1e

.field public static final UNKNOWN_ERROR:I = 0x1a

.field public static final UNKNOWN_READER:I = 0x13

.field public static final UNPOWERED_CARD:I = 0x2

.field public static final UNRESPONSIVE_CARD:I = 0x3

.field public static final UNSUPPORTED_CARD:I = 0x4

.field public static final UNSUPPORTED_FEATURE:I = 0x14


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

    invoke-static {p0}, Lorg/chromium/device/mojom/SmartCardError;->isKnownValue(I)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string v0, "Invalid enum value."

    invoke-direct {p0, v0}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
