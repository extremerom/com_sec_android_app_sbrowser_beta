.class public final Lorg/chromium/gfx/mojom/BufferFormat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/gfx/mojom/BufferFormat$EnumType;
    }
.end annotation


# static fields
.field public static final BGRA_1010102:I = 0x9

.field public static final BGRA_8888:I = 0xb

.field public static final BGRX_8888:I = 0x8

.field public static final BGR_565:I = 0x4

.field public static final MAX_VALUE:I = 0x10

.field public static final MIN_VALUE:I = 0x0

.field public static final P010:I = 0x10

.field public static final RGBA_1010102:I = 0xa

.field public static final RGBA_4444:I = 0x5

.field public static final RGBA_8888:I = 0x7

.field public static final RGBA_F16:I = 0xc

.field public static final RGBX_8888:I = 0x6

.field public static final RG_1616:I = 0x3

.field public static final RG_88:I = 0x2

.field public static final R_16:I = 0x1

.field public static final R_8:I = 0x0

.field public static final YUVA_420_TRIPLANAR:I = 0xf

.field public static final YUV_420_BIPLANAR:I = 0xe

.field public static final YVU_420:I = 0xd


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

    invoke-static {p0}, Lorg/chromium/gfx/mojom/BufferFormat;->isKnownValue(I)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string v0, "Invalid enum value."

    invoke-direct {p0, v0}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
