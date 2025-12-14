.class public final Lorg/chromium/shape_detection/mojom/BarcodeFormat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/shape_detection/mojom/BarcodeFormat$EnumType;
    }
.end annotation


# static fields
.field public static final AZTEC:I = 0x0

.field public static final CODABAR:I = 0x4

.field public static final CODE_128:I = 0x1

.field public static final CODE_39:I = 0x2

.field public static final CODE_93:I = 0x3

.field public static final DATA_MATRIX:I = 0x5

.field public static final EAN_13:I = 0x6

.field public static final EAN_8:I = 0x7

.field public static final ITF:I = 0x8

.field public static final MAX_VALUE:I = 0xd

.field public static final MIN_VALUE:I = 0x0

.field public static final PDF417:I = 0x9

.field public static final QR_CODE:I = 0xa

.field public static final UNKNOWN:I = 0xb

.field public static final UPC_A:I = 0xc

.field public static final UPC_E:I = 0xd


# direct methods
.method public static isKnownValue(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0xd

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

    invoke-static {p0}, Lorg/chromium/shape_detection/mojom/BarcodeFormat;->isKnownValue(I)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string v0, "Invalid enum value."

    invoke-direct {p0, v0}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
