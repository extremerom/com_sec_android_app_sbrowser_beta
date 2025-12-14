.class public final Lorg/chromium/cc/mojom/LayerType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/cc/mojom/LayerType$EnumType;
    }
.end annotation


# static fields
.field public static final HEADS_UP_DISPLAY:I = 0x7

.field public static final INTERACTIVE_SOLID_COLOR_SCROLLBAR:I = 0x10

.field public static final LAYER:I = 0x0

.field public static final MAX_VALUE:I = 0x10

.field public static final MIN_VALUE:I = 0x0

.field public static final MIRROR:I = 0x6

.field public static final NINE_PATCH:I = 0x9

.field public static final NINE_PATCH_THUMB_SCROLLBAR:I = 0xc

.field public static final PAINTED_SCROLLBAR:I = 0xb

.field public static final PICTURE:I = 0x4

.field public static final SOLID_COLOR:I = 0x1

.field public static final SOLID_COLOR_SCROLLBAR:I = 0xa

.field public static final SURFACE:I = 0x3

.field public static final TEXTURE:I = 0x2

.field public static final TILE_DISPLAY:I = 0x5

.field public static final UI_RESOURCE:I = 0x8

.field public static final UI_RESOURCE_SCROLLBAR:I = 0xf

.field public static final VIDEO:I = 0xd

.field public static final VIEW_TRANSITION_CONTENT:I = 0xe


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

    invoke-static {p0}, Lorg/chromium/cc/mojom/LayerType;->isKnownValue(I)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string v0, "Invalid enum value."

    invoke-direct {p0, v0}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
