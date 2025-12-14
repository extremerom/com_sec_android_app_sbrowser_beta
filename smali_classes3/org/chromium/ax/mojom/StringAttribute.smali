.class public final Lorg/chromium/ax/mojom/StringAttribute;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/ax/mojom/StringAttribute$EnumType;
    }
.end annotation


# static fields
.field public static final ACCESS_KEY:I = 0x1

.field public static final APP_ID:I = 0x2

.field public static final ARIA_BRAILLE_LABEL:I = 0x21

.field public static final ARIA_BRAILLE_ROLE_DESCRIPTION:I = 0x22

.field public static final ARIA_CELL_COLUMN_INDEX_TEXT:I = 0x27

.field public static final ARIA_CELL_ROW_INDEX_TEXT:I = 0x28

.field public static final ARIA_INVALID_VALUE_DEPRECATED:I = 0x3

.field public static final ARIA_NOTIFICATION_ANNOUNCEMENT_DEPRECATED:I = 0x24

.field public static final ARIA_NOTIFICATION_ID_DEPRECATED:I = 0x25

.field public static final AUTO_COMPLETE:I = 0x4

.field public static final CHECKED_STATE_DESCRIPTION:I = 0x5

.field public static final CHILD_TREE_ID:I = 0x6

.field public static final CHILD_TREE_NODE_APP_ID:I = 0x7

.field public static final CLASS_NAME:I = 0x8

.field public static final CONTAINER_LIVE_RELEVANT:I = 0x9

.field public static final CONTAINER_LIVE_STATUS:I = 0xa

.field public static final DATE_TIME:I = 0x29

.field public static final DEFAULT_VALUE:I = 0x0

.field public static final DESCRIPTION:I = 0xb

.field public static final DISPLAY:I = 0xc

.field public static final DO_DEFAULT_LABEL:I = 0x1f

.field public static final FONT_FAMILY:I = 0xd

.field public static final HTML_ID:I = 0x26

.field public static final HTML_INPUT_NAME:I = 0x2a

.field public static final HTML_TAG:I = 0xe

.field public static final IMAGE_ANNOTATION:I = 0xf

.field public static final IMAGE_DATA_URL:I = 0x10

.field public static final INPUT_TYPE:I = 0x12

.field public static final KEY_SHORTCUTS:I = 0x13

.field public static final LANGUAGE:I = 0x14

.field public static final LINK_TARGET:I = 0x23

.field public static final LIVE_RELEVANT:I = 0x16

.field public static final LIVE_STATUS:I = 0x17

.field public static final LONG_CLICK_LABEL:I = 0x20

.field public static final MATH_CONTENT:I = 0x11

.field public static final MAX_VALUE:I = 0x2a

.field public static final MIN_VALUE:I = 0x0

.field public static final NAME:I = 0x15

.field public static final NONE:I = 0x0

.field public static final PLACEHOLDER:I = 0x18

.field public static final ROLE:I = 0x19

.field public static final ROLE_DESCRIPTION:I = 0x1a

.field public static final TOOLTIP:I = 0x1b

.field public static final URL:I = 0x1c

.field public static final VALUE:I = 0x1d

.field public static final VIRTUAL_CONTENT:I = 0x1e


# direct methods
.method public static isKnownValue(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0x2a

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

    invoke-static {p0}, Lorg/chromium/ax/mojom/StringAttribute;->isKnownValue(I)Z

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
