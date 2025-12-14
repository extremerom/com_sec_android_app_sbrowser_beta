.class public final Lorg/chromium/ax/mojom/Event;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/ax/mojom/Event$EnumType;
    }
.end annotation


# static fields
.field public static final ACTIVE_DESCENDANT_CHANGED:I = 0x1

.field public static final ALERT:I = 0x2

.field public static final ARIA_ATTRIBUTE_CHANGED_DEPRECATED:I = 0x3

.field public static final AUTOCORRECTION_OCCURED:I = 0x4

.field public static final BLUR:I = 0x5

.field public static final CHECKED_STATE_CHANGED:I = 0x6

.field public static final CHILDREN_CHANGED:I = 0x7

.field public static final CLICKED:I = 0x8

.field public static final CONTROLS_CHANGED:I = 0x9

.field public static final DEFAULT_VALUE:I = 0x0

.field public static final DOCUMENT_SELECTION_CHANGED:I = 0xa

.field public static final DOCUMENT_TITLE_CHANGED:I = 0xb

.field public static final END_OF_TEST:I = 0xc

.field public static final EXPANDED_CHANGED:I = 0xd

.field public static final FOCUS:I = 0xe

.field public static final FOCUS_AFTER_MENU_CLOSE:I = 0xf

.field public static final FOCUS_CONTEXT:I = 0x10

.field public static final HIDE:I = 0x11

.field public static final HIT_TEST_RESULT:I = 0x12

.field public static final HOVER:I = 0x13

.field public static final IMAGE_FRAME_UPDATED:I = 0x14

.field public static final LAYOUT_COMPLETE:I = 0x15

.field public static final LIVE_REGION_CHANGED:I = 0x17

.field public static final LIVE_REGION_CREATED:I = 0x16

.field public static final LOAD_COMPLETE:I = 0x18

.field public static final LOAD_START:I = 0x19

.field public static final LOCATION_CHANGED:I = 0x1a

.field public static final MAX_VALUE:I = 0x3a

.field public static final MEDIA_STARTED_PLAYING:I = 0x1b

.field public static final MEDIA_STOPPED_PLAYING:I = 0x1c

.field public static final MENU_END:I = 0x1d

.field public static final MENU_LIST_VALUE_CHANGED_DEPRECATED:I = 0x1e

.field public static final MENU_POPUP_END:I = 0x1f

.field public static final MENU_POPUP_START:I = 0x20

.field public static final MENU_START:I = 0x21

.field public static final MIN_VALUE:I = 0x0

.field public static final MOUSE_CANCELED:I = 0x22

.field public static final MOUSE_DRAGGED:I = 0x23

.field public static final MOUSE_MOVED:I = 0x24

.field public static final MOUSE_PRESSED:I = 0x25

.field public static final MOUSE_RELEASED:I = 0x26

.field public static final NONE:I = 0x0

.field public static final ROW_COLLAPSED:I = 0x27

.field public static final ROW_COUNT_CHANGED:I = 0x28

.field public static final ROW_EXPANDED:I = 0x29

.field public static final SCROLLED_TO_ANCHOR:I = 0x2b

.field public static final SCROLL_POSITION_CHANGED:I = 0x2a

.field public static final SELECTED_CHILDREN_CHANGED:I = 0x2c

.field public static final SELECTION:I = 0x2d

.field public static final SELECTION_ADD:I = 0x2e

.field public static final SELECTION_REMOVE:I = 0x2f

.field public static final SHOW:I = 0x30

.field public static final STATE_CHANGED:I = 0x31

.field public static final TEXT_CHANGED:I = 0x32

.field public static final TEXT_SELECTION_CHANGED:I = 0x33

.field public static final TOOLTIP_CLOSED:I = 0x34

.field public static final TOOLTIP_OPENED:I = 0x35

.field public static final TREE_CHANGED:I = 0x36

.field public static final VALUE_CHANGED:I = 0x37

.field public static final WINDOW_ACTIVATED:I = 0x38

.field public static final WINDOW_DEACTIVATED:I = 0x39

.field public static final WINDOW_VISIBILITY_CHANGED:I = 0x3a


# direct methods
.method public static isKnownValue(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0x3a

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

    invoke-static {p0}, Lorg/chromium/ax/mojom/Event;->isKnownValue(I)Z

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
