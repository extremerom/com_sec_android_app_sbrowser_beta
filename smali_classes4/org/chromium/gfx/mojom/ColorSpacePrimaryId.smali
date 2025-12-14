.class public final Lorg/chromium/gfx/mojom/ColorSpacePrimaryId;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/gfx/mojom/ColorSpacePrimaryId$EnumType;
    }
.end annotation


# static fields
.field public static final ADOBE_RGB:I = 0xc

.field public static final APPLE_GENERIC_RGB:I = 0xd

.field public static final BT2020:I = 0x7

.field public static final BT470BG:I = 0x3

.field public static final BT470M:I = 0x2

.field public static final BT709:I = 0x1

.field public static final CUSTOM:I = 0xf

.field public static final EBU_3213_E:I = 0x10

.field public static final FILM:I = 0x6

.field public static final INVALID:I = 0x0

.field public static final MAX_VALUE:I = 0x10

.field public static final MIN_VALUE:I = 0x0

.field public static final P3:I = 0xa

.field public static final SMPTE170M:I = 0x4

.field public static final SMPTE240M:I = 0x5

.field public static final SMPTEST428_1:I = 0x8

.field public static final SMPTEST431_2:I = 0x9

.field public static final WIDE_GAMUT_COLOR_SPIN:I = 0xe

.field public static final XYZ_D50:I = 0xb


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

    invoke-static {p0}, Lorg/chromium/gfx/mojom/ColorSpacePrimaryId;->isKnownValue(I)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string v0, "Invalid enum value."

    invoke-direct {p0, v0}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
