.class public final Lorg/chromium/ax/mojom/Action;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/ax/mojom/Action$EnumType;
    }
.end annotation


# static fields
.field public static final ANNOTATE_PAGE_IMAGES:I = 0x1

.field public static final BLUR:I = 0x2

.field public static final CLEAR_ACCESSIBILITY_FOCUS:I = 0x3

.field public static final COLLAPSE:I = 0x4

.field public static final CUSTOM_ACTION:I = 0x5

.field public static final DECREMENT:I = 0x6

.field public static final DEFAULT_VALUE:I = 0x0

.field public static final DO_DEFAULT:I = 0x7

.field public static final EXPAND:I = 0x8

.field public static final FOCUS:I = 0x9

.field public static final GET_IMAGE_DATA:I = 0xa

.field public static final GET_TEXT_LOCATION:I = 0xb

.field public static final HIDE_TOOLTIP:I = 0xc

.field public static final HIT_TEST:I = 0xd

.field public static final INCREMENT:I = 0xe

.field public static final INTERNAL_INVALIDATE_TREE:I = 0xf

.field public static final LOAD_INLINE_TEXT_BOXES:I = 0x10

.field public static final LONG_CLICK:I = 0x26

.field public static final MAX_VALUE:I = 0x28

.field public static final MIN_VALUE:I = 0x0

.field public static final NONE:I = 0x0

.field public static final REPLACE_SELECTED_TEXT:I = 0x11

.field public static final RESUME_MEDIA:I = 0x22

.field public static final SCROLL_BACKWARD:I = 0x12

.field public static final SCROLL_DOWN:I = 0x13

.field public static final SCROLL_FORWARD:I = 0x14

.field public static final SCROLL_LEFT:I = 0x15

.field public static final SCROLL_RIGHT:I = 0x16

.field public static final SCROLL_TO_MAKE_VISIBLE:I = 0x18

.field public static final SCROLL_TO_POINT:I = 0x19

.field public static final SCROLL_TO_POSITION_AT_ROW_COLUMN:I = 0x27

.field public static final SCROLL_UP:I = 0x17

.field public static final SET_ACCESSIBILITY_FOCUS:I = 0x1a

.field public static final SET_SCROLL_OFFSET:I = 0x1b

.field public static final SET_SELECTION:I = 0x1c

.field public static final SET_SEQUENTIAL_FOCUS_NAVIGATION_STARTING_POINT:I = 0x1d

.field public static final SET_VALUE:I = 0x1e

.field public static final SHOW_CONTEXT_MENU:I = 0x1f

.field public static final SHOW_TOOLTIP:I = 0x21

.field public static final SIGNAL_END_OF_TEST:I = 0x20

.field public static final START_DUCKING_MEDIA:I = 0x23

.field public static final STITCH_CHILD_TREE:I = 0x28

.field public static final STOP_DUCKING_MEDIA:I = 0x24

.field public static final SUSPEND_MEDIA:I = 0x25


# direct methods
.method public static isKnownValue(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0x28

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

    invoke-static {p0}, Lorg/chromium/ax/mojom/Action;->isKnownValue(I)Z

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
