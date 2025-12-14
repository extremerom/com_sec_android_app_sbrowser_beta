.class public final Lorg/chromium/ax/mojom/BoolAttribute;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/ax/mojom/BoolAttribute$EnumType;
    }
.end annotation


# static fields
.field public static final BUSY:I = 0x1

.field public static final CANVAS_HAS_FALLBACK:I = 0x8

.field public static final CLICKABLE:I = 0xa

.field public static final CLIPS_CHILDREN:I = 0xb

.field public static final CONTAINER_LIVE_ATOMIC:I = 0x3

.field public static final CONTAINER_LIVE_BUSY:I = 0x4

.field public static final DEFAULT_VALUE:I = 0x0

.field public static final GRABBED_DEPRECATED:I = 0x10

.field public static final HAS_ARIA_ATTRIBUTE:I = 0x13

.field public static final HAS_HIDDEN_OFFSCREEN_NODES:I = 0x16

.field public static final IS_LINE_BREAKING_OBJECT:I = 0x11

.field public static final IS_PAGE_BREAKING_OBJECT:I = 0x12

.field public static final LIVE_ATOMIC:I = 0x5

.field public static final LONG_CLICKABLE:I = 0x15

.field public static final MAX_VALUE:I = 0x16

.field public static final MIN_VALUE:I = 0x0

.field public static final MODAL:I = 0x6

.field public static final NONE:I = 0x0

.field public static final NON_ATOMIC_TEXT_FIELD_ROOT:I = 0x2

.field public static final NOT_USER_SELECTABLE_STYLE:I = 0xc

.field public static final SCROLLABLE:I = 0x9

.field public static final SELECTED:I = 0xd

.field public static final SELECTED_FROM_FOCUS:I = 0xe

.field public static final SUPPORTS_TEXT_LOCATION:I = 0xf

.field public static final TOUCH_PASSTHROUGH_DEPRECATED:I = 0x14

.field public static final UPDATE_LOCATION_ONLY:I = 0x7


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
    .locals 1

    invoke-static {p0}, Lorg/chromium/ax/mojom/BoolAttribute;->isKnownValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static validate(I)V
    .locals 0

    return-void
.end method
