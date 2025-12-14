.class public final Lorg/chromium/blink/mojom/EventType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/EventType$EnumType;
    }
.end annotation


# static fields
.field public static final CHAR:I = 0xa

.field public static final CONTEXT_MENU:I = 0x5

.field public static final GESTURE_BEGIN:I = 0x13

.field public static final GESTURE_DOUBLE_TAP:I = 0x1e

.field public static final GESTURE_END:I = 0x1f

.field public static final GESTURE_EXTRA_LONG_PRESS:I = 0x1a

.field public static final GESTURE_FLING_CANCEL:I = 0xf

.field public static final GESTURE_FLING_START:I = 0xe

.field public static final GESTURE_LONG_PRESS:I = 0x19

.field public static final GESTURE_LONG_TAP:I = 0x1b

.field public static final GESTURE_PINCH_BEGIN:I = 0x10

.field public static final GESTURE_PINCH_END:I = 0x11

.field public static final GESTURE_PINCH_TYPE_FIRST:I = 0x10

.field public static final GESTURE_PINCH_TYPE_LAST:I = 0x12

.field public static final GESTURE_PINCH_UPDATE:I = 0x12

.field public static final GESTURE_SCROLL_BEGIN:I = 0xb

.field public static final GESTURE_SCROLL_END:I = 0xc

.field public static final GESTURE_SCROLL_UPDATE:I = 0xd

.field public static final GESTURE_SHORT_PRESS:I = 0x18

.field public static final GESTURE_SHOW_PRESS:I = 0x15

.field public static final GESTURE_TAP:I = 0x16

.field public static final GESTURE_TAP_CANCEL:I = 0x17

.field public static final GESTURE_TAP_DOWN:I = 0x14

.field public static final GESTURE_TAP_UNCONFIRMED:I = 0x1d

.field public static final GESTURE_TWO_FINGER_TAP:I = 0x1c

.field public static final GESTURE_TYPE_FIRST:I = 0xb

.field public static final GESTURE_TYPE_LAST:I = 0x1f

.field public static final KEYBOARD_TYPE_FIRST:I = 0x7

.field public static final KEYBOARD_TYPE_LAST:I = 0xa

.field public static final KEY_DOWN:I = 0x8

.field public static final KEY_UP:I = 0x9

.field public static final MAX_VALUE:I = 0x2a

.field public static final MIN_VALUE:I = -0x1

.field public static final MOUSE_DOWN:I = 0x0

.field public static final MOUSE_ENTER:I = 0x3

.field public static final MOUSE_LEAVE:I = 0x4

.field public static final MOUSE_MOVE:I = 0x2

.field public static final MOUSE_TYPE_FIRST:I = 0x0

.field public static final MOUSE_TYPE_LAST:I = 0x5

.field public static final MOUSE_UP:I = 0x1

.field public static final MOUSE_WHEEL:I = 0x6

.field public static final POINTER_CANCEL:I = 0x29

.field public static final POINTER_CAUSED_UA_ACTION:I = 0x2a

.field public static final POINTER_DOWN:I = 0x25

.field public static final POINTER_MOVE:I = 0x27

.field public static final POINTER_RAW_UPDATE:I = 0x28

.field public static final POINTER_TYPE_FIRST:I = 0x25

.field public static final POINTER_TYPE_LAST:I = 0x2a

.field public static final POINTER_UP:I = 0x26

.field public static final RAW_KEY_DOWN:I = 0x7

.field public static final TOUCH_CANCEL:I = 0x23

.field public static final TOUCH_END:I = 0x22

.field public static final TOUCH_MOVE:I = 0x21

.field public static final TOUCH_SCROLL_STARTED:I = 0x24

.field public static final TOUCH_START:I = 0x20

.field public static final TOUCH_TYPE_FIRST:I = 0x20

.field public static final TOUCH_TYPE_LAST:I = 0x24

.field public static final TYPE_FIRST:I = -0x1

.field public static final TYPE_LAST:I = 0x2a

.field public static final UNDEFINED:I = -0x1


# direct methods
.method public static isKnownValue(I)Z
    .locals 1

    const/4 v0, -0x1

    if-lt p0, v0, :cond_0

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
    .locals 0

    return p0
.end method

.method public static validate(I)V
    .locals 1

    invoke-static {p0}, Lorg/chromium/blink/mojom/EventType;->isKnownValue(I)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string v0, "Invalid enum value."

    invoke-direct {p0, v0}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
