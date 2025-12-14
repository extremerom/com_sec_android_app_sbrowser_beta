.class public final Lorg/chromium/ax/mojom/IntAttribute;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/ax/mojom/IntAttribute$EnumType;
    }
.end annotation


# static fields
.field public static final ACTIVEDESCENDANT_ID:I = 0x1f

.field public static final ARIA_CELL_COLUMN_INDEX:I = 0xb

.field public static final ARIA_CELL_COLUMN_SPAN:I = 0xc

.field public static final ARIA_CELL_ROW_INDEX:I = 0xe

.field public static final ARIA_CELL_ROW_SPAN:I = 0xf

.field public static final ARIA_COLUMN_COUNT:I = 0xa

.field public static final ARIA_CURRENT_STATE:I = 0x2a

.field public static final ARIA_NOTIFICATION_INTERRUPT_DEPRECATED:I = 0x40

.field public static final ARIA_NOTIFICATION_PRIORITY_DEPRECATED:I = 0x41

.field public static final ARIA_ROW_COUNT:I = 0xd

.field public static final BACKGROUND_COLOR:I = 0x2b

.field public static final CHECKED_STATE:I = 0x30

.field public static final COLOR:I = 0x2c

.field public static final COLOR_VALUE:I = 0x29

.field public static final DEFAULT_ACTION_VERB:I = 0x1

.field public static final DEFAULT_VALUE:I = 0x0

.field public static final DESCRIPTION_FROM:I = 0x1e

.field public static final DETAILS_FROM:I = 0x42

.field public static final DOM_NODE_ID_DEPRECATED:I = 0x3c

.field public static final DROPEFFECT_DEPRECATED:I = 0x3b

.field public static final ERRORMESSAGE_ID_DEPRECATED:I = 0x20

.field public static final HAS_POPUP:I = 0x2d

.field public static final HIERARCHICAL_LEVEL:I = 0x1c

.field public static final IMAGE_ANNOTATION_STATUS:I = 0x2e

.field public static final INVALID_STATE:I = 0x2f

.field public static final IN_PAGE_LINK_TARGET_ID:I = 0x21

.field public static final IS_POPUP:I = 0x3d

.field public static final LIST_STYLE:I = 0x31

.field public static final MAX_LENGTH:I = 0x43

.field public static final MAX_VALUE:I = 0x43

.field public static final MEMBER_OF_ID:I = 0x22

.field public static final MIN_VALUE:I = 0x0

.field public static final NAME_FROM:I = 0x1d

.field public static final NEXT_FOCUS_ID:I = 0x3a

.field public static final NEXT_ON_LINE_ID:I = 0x23

.field public static final NEXT_WINDOW_FOCUS_ID:I = 0x3e

.field public static final NONE:I = 0x0

.field public static final POPUP_FOR_ID:I = 0x24

.field public static final POS_IN_SET:I = 0x28

.field public static final PREVIOUS_FOCUS_ID:I = 0x39

.field public static final PREVIOUS_ON_LINE_ID:I = 0x25

.field public static final PREVIOUS_WINDOW_FOCUS_ID:I = 0x3f

.field public static final RESTRICTION:I = 0x26

.field public static final SCROLL_X:I = 0x2

.field public static final SCROLL_X_MAX:I = 0x4

.field public static final SCROLL_X_MIN:I = 0x3

.field public static final SCROLL_Y:I = 0x5

.field public static final SCROLL_Y_MAX:I = 0x7

.field public static final SCROLL_Y_MIN:I = 0x6

.field public static final SET_SIZE:I = 0x27

.field public static final SORT_DIRECTION:I = 0x1b

.field public static final TABLE_CELL_COLUMN_INDEX:I = 0x17

.field public static final TABLE_CELL_COLUMN_SPAN:I = 0x18

.field public static final TABLE_CELL_ROW_INDEX:I = 0x19

.field public static final TABLE_CELL_ROW_SPAN:I = 0x1a

.field public static final TABLE_COLUMN_COUNT:I = 0x11

.field public static final TABLE_COLUMN_HEADER_ID:I = 0x16

.field public static final TABLE_COLUMN_INDEX:I = 0x15

.field public static final TABLE_HEADER_ID:I = 0x12

.field public static final TABLE_ROW_COUNT:I = 0x10

.field public static final TABLE_ROW_HEADER_ID:I = 0x14

.field public static final TABLE_ROW_INDEX:I = 0x13

.field public static final TEXT_ALIGN:I = 0x32

.field public static final TEXT_DIRECTION:I = 0x33

.field public static final TEXT_OVERLINE_STYLE:I = 0x36

.field public static final TEXT_POSITION:I = 0x34

.field public static final TEXT_SEL_END:I = 0x9

.field public static final TEXT_SEL_START:I = 0x8

.field public static final TEXT_STRIKETHROUGH_STYLE:I = 0x37

.field public static final TEXT_STYLE:I = 0x35

.field public static final TEXT_UNDERLINE_STYLE:I = 0x38


# direct methods
.method public static isKnownValue(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0x43

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

    invoke-static {p0}, Lorg/chromium/ax/mojom/IntAttribute;->isKnownValue(I)Z

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
