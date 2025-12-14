.class public final Lorg/chromium/blink/mojom/ViewTransitionPropertyId;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/ViewTransitionPropertyId$EnumType;
    }
.end annotation


# static fields
.field public static final BACKDROP_FILTER:I = 0x0

.field public static final BACKGROUND:I = 0xd

.field public static final BORDER_BOTTOM:I = 0xb

.field public static final BORDER_IMAGE:I = 0x12

.field public static final BORDER_LEFT:I = 0xc

.field public static final BORDER_RADIUS:I = 0xe

.field public static final BORDER_RIGHT:I = 0xa

.field public static final BORDER_TOP:I = 0x9

.field public static final BOX_SHADOW:I = 0xf

.field public static final BOX_SIZING:I = 0x10

.field public static final CLIP_PATH:I = 0x6

.field public static final COLOR_SCHEME:I = 0x1

.field public static final CONTAIN:I = 0x16

.field public static final FILTER:I = 0x7

.field public static final MASK:I = 0x8

.field public static final MAX_VALUE:I = 0x16

.field public static final MIN_VALUE:I = 0x0

.field public static final MIX_BLEND_MODE:I = 0x2

.field public static final OPACITY:I = 0x5

.field public static final OUTLINE:I = 0x11

.field public static final OVERFLOW:I = 0x14

.field public static final OVERFLOW_CLIP_MARGIN:I = 0x15

.field public static final PADDING:I = 0x13

.field public static final TEXT_ORIENTATION:I = 0x3

.field public static final WRITING_MODE:I = 0x4


# direct methods
.method public static isKnownValue(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0x16

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

    invoke-static {p0}, Lorg/chromium/blink/mojom/ViewTransitionPropertyId;->isKnownValue(I)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string v0, "Invalid enum value."

    invoke-direct {p0, v0}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
