.class public final Lorg/chromium/viz/mojom/FilterType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/viz/mojom/FilterType$EnumType;
    }
.end annotation


# static fields
.field public static final ALPHA_THRESHOLD:I = 0xe

.field public static final BLUR:I = 0x8

.field public static final BRIGHTNESS:I = 0x5

.field public static final COLOR_MATRIX:I = 0xa

.field public static final CONTRAST:I = 0x6

.field public static final DROP_SHADOW:I = 0x9

.field public static final FILTER_TYPE_LAST:I = 0xf

.field public static final GRAYSCALE:I = 0x0

.field public static final HUE_ROTATE:I = 0x3

.field public static final INVERT:I = 0x4

.field public static final MAX_VALUE:I = 0xf

.field public static final MIN_VALUE:I = 0x0

.field public static final OFFSET:I = 0xf

.field public static final OPACITY:I = 0x7

.field public static final REFERENCE:I = 0xc

.field public static final SATURATE:I = 0x2

.field public static final SATURATING_BRIGHTNESS:I = 0xd

.field public static final SEPIA:I = 0x1

.field public static final ZOOM:I = 0xb


# direct methods
.method public static isKnownValue(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0xf

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

    invoke-static {p0}, Lorg/chromium/viz/mojom/FilterType;->isKnownValue(I)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string v0, "Invalid enum value."

    invoke-direct {p0, v0}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
