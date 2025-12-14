.class public final Lorg/chromium/gfx/mojom/ColorSpaceTransferId;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/gfx/mojom/ColorSpaceTransferId$EnumType;
    }
.end annotation


# static fields
.field public static final BT1361_ECG:I = 0xd

.field public static final BT2020_10:I = 0xf

.field public static final BT2020_12:I = 0x10

.field public static final BT709:I = 0x1

.field public static final BT709_APPLE:I = 0x2

.field public static final CUSTOM:I = 0x16

.field public static final CUSTOM_HDR:I = 0x17

.field public static final GAMMA18:I = 0x3

.field public static final GAMMA22:I = 0x4

.field public static final GAMMA24:I = 0x5

.field public static final GAMMA28:I = 0x6

.field public static final HLG:I = 0x13

.field public static final IEC61966_2_4:I = 0xc

.field public static final INVALID:I = 0x0

.field public static final LINEAR:I = 0x9

.field public static final LINEAR_HDR:I = 0x15

.field public static final LOG:I = 0xa

.field public static final LOG_SQRT:I = 0xb

.field public static final MAX_VALUE:I = 0x18

.field public static final MIN_VALUE:I = 0x0

.field public static final PQ:I = 0x11

.field public static final SCRGB_LINEAR_80_NITS:I = 0x18

.field public static final SMPTE170M:I = 0x7

.field public static final SMPTE240M:I = 0x8

.field public static final SMPTEST428_1:I = 0x12

.field public static final SRGB:I = 0xe

.field public static final SRGB_HDR:I = 0x14


# direct methods
.method public static isKnownValue(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0x18

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

    invoke-static {p0}, Lorg/chromium/gfx/mojom/ColorSpaceTransferId;->isKnownValue(I)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string v0, "Invalid enum value."

    invoke-direct {p0, v0}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
