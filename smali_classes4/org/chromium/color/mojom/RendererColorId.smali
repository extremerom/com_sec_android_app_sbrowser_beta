.class public final Lorg/chromium/color/mojom/RendererColorId;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/color/mojom/RendererColorId$EnumType;
    }
.end annotation


# static fields
.field public static final COLOR_CSS_SYSTEM_BTN_FACE:I = 0x0

.field public static final COLOR_CSS_SYSTEM_BTN_TEXT:I = 0x1

.field public static final COLOR_CSS_SYSTEM_FIELD:I = 0x2

.field public static final COLOR_CSS_SYSTEM_FIELD_TEXT:I = 0x3

.field public static final COLOR_CSS_SYSTEM_GRAY_TEXT:I = 0x4

.field public static final COLOR_CSS_SYSTEM_HIGHLIGHT:I = 0x5

.field public static final COLOR_CSS_SYSTEM_HIGHLIGHT_TEXT:I = 0x6

.field public static final COLOR_CSS_SYSTEM_HOTLIGHT:I = 0x7

.field public static final COLOR_CSS_SYSTEM_MENU_HILIGHT:I = 0x8

.field public static final COLOR_CSS_SYSTEM_SCROLLBAR:I = 0x9

.field public static final COLOR_CSS_SYSTEM_WINDOW:I = 0xa

.field public static final COLOR_CSS_SYSTEM_WINDOW_TEXT:I = 0xb

.field public static final COLOR_MENU_BACKGROUND:I = 0xc

.field public static final COLOR_MENU_ITEM_BACKGROUND_SELECTED:I = 0xd

.field public static final COLOR_MENU_SEPARATOR:I = 0xe

.field public static final COLOR_OVERLAY_SCROLLBAR_FILL:I = 0xf

.field public static final COLOR_OVERLAY_SCROLLBAR_FILL_HOVERED:I = 0x10

.field public static final COLOR_OVERLAY_SCROLLBAR_STROKE:I = 0x11

.field public static final COLOR_OVERLAY_SCROLLBAR_STROKE_HOVERED:I = 0x12

.field public static final COLOR_WEB_NATIVE_CONTROL_ACCENT:I = 0x13

.field public static final COLOR_WEB_NATIVE_CONTROL_ACCENT_DISABLED:I = 0x14

.field public static final COLOR_WEB_NATIVE_CONTROL_ACCENT_HOVERED:I = 0x15

.field public static final COLOR_WEB_NATIVE_CONTROL_ACCENT_PRESSED:I = 0x16

.field public static final COLOR_WEB_NATIVE_CONTROL_AUTO_COMPLETE_BACKGROUND:I = 0x17

.field public static final COLOR_WEB_NATIVE_CONTROL_BACKGROUND:I = 0x18

.field public static final COLOR_WEB_NATIVE_CONTROL_BACKGROUND_DISABLED:I = 0x19

.field public static final COLOR_WEB_NATIVE_CONTROL_BORDER:I = 0x1a

.field public static final COLOR_WEB_NATIVE_CONTROL_BORDER_DISABLED:I = 0x1b

.field public static final COLOR_WEB_NATIVE_CONTROL_BORDER_HOVERED:I = 0x1c

.field public static final COLOR_WEB_NATIVE_CONTROL_BORDER_PRESSED:I = 0x1d

.field public static final COLOR_WEB_NATIVE_CONTROL_BUTTON_BORDER:I = 0x1e

.field public static final COLOR_WEB_NATIVE_CONTROL_BUTTON_BORDER_DISABLED:I = 0x1f

.field public static final COLOR_WEB_NATIVE_CONTROL_BUTTON_BORDER_HOVERED:I = 0x20

.field public static final COLOR_WEB_NATIVE_CONTROL_BUTTON_BORDER_PRESSED:I = 0x21

.field public static final COLOR_WEB_NATIVE_CONTROL_BUTTON_FILL:I = 0x22

.field public static final COLOR_WEB_NATIVE_CONTROL_BUTTON_FILL_DISABLED:I = 0x23

.field public static final COLOR_WEB_NATIVE_CONTROL_BUTTON_FILL_HOVERED:I = 0x24

.field public static final COLOR_WEB_NATIVE_CONTROL_BUTTON_FILL_PRESSED:I = 0x25

.field public static final COLOR_WEB_NATIVE_CONTROL_FILL:I = 0x26

.field public static final COLOR_WEB_NATIVE_CONTROL_FILL_DISABLED:I = 0x27

.field public static final COLOR_WEB_NATIVE_CONTROL_FILL_HOVERED:I = 0x28

.field public static final COLOR_WEB_NATIVE_CONTROL_FILL_PRESSED:I = 0x29

.field public static final COLOR_WEB_NATIVE_CONTROL_LIGHTEN_LAYER:I = 0x2a

.field public static final COLOR_WEB_NATIVE_CONTROL_PROGRESS_VALUE:I = 0x2b

.field public static final COLOR_WEB_NATIVE_CONTROL_SCROLLBAR_ARROW_BACKGROUND_HOVERED:I = 0x2c

.field public static final COLOR_WEB_NATIVE_CONTROL_SCROLLBAR_ARROW_BACKGROUND_PRESSED:I = 0x2d

.field public static final COLOR_WEB_NATIVE_CONTROL_SCROLLBAR_ARROW_FOREGROUND:I = 0x2e

.field public static final COLOR_WEB_NATIVE_CONTROL_SCROLLBAR_ARROW_FOREGROUND_PRESSED:I = 0x2f

.field public static final COLOR_WEB_NATIVE_CONTROL_SCROLLBAR_CORNER:I = 0x30

.field public static final COLOR_WEB_NATIVE_CONTROL_SCROLLBAR_THUMB:I = 0x31

.field public static final COLOR_WEB_NATIVE_CONTROL_SCROLLBAR_THUMB_HOVERED:I = 0x32

.field public static final COLOR_WEB_NATIVE_CONTROL_SCROLLBAR_THUMB_INACTIVE:I = 0x33

.field public static final COLOR_WEB_NATIVE_CONTROL_SCROLLBAR_THUMB_OVERLAY_MINIMAL_MODE:I = 0x34

.field public static final COLOR_WEB_NATIVE_CONTROL_SCROLLBAR_THUMB_PRESSED:I = 0x35

.field public static final COLOR_WEB_NATIVE_CONTROL_SCROLLBAR_TRACK:I = 0x36

.field public static final COLOR_WEB_NATIVE_CONTROL_SLIDER:I = 0x37

.field public static final COLOR_WEB_NATIVE_CONTROL_SLIDER_DISABLED:I = 0x38

.field public static final COLOR_WEB_NATIVE_CONTROL_SLIDER_HOVERED:I = 0x39

.field public static final COLOR_WEB_NATIVE_CONTROL_SLIDER_PRESSED:I = 0x3a

.field public static final MAX_VALUE:I = 0x3a

.field public static final MIN_VALUE:I


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
    .locals 0

    return p0
.end method

.method public static validate(I)V
    .locals 1

    invoke-static {p0}, Lorg/chromium/color/mojom/RendererColorId;->isKnownValue(I)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string v0, "Invalid enum value."

    invoke-direct {p0, v0}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
