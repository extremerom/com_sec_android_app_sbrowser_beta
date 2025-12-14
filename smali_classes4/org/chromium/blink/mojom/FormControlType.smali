.class public final Lorg/chromium/blink/mojom/FormControlType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/FormControlType$EnumType;
    }
.end annotation


# static fields
.field public static final BUTTON_BUTTON:I = 0x0

.field public static final BUTTON_POPOVER:I = 0x3

.field public static final BUTTON_RESET:I = 0x2

.field public static final BUTTON_SUBMIT:I = 0x1

.field public static final FIELDSET:I = 0x4

.field public static final INPUT_BUTTON:I = 0x5

.field public static final INPUT_CHECKBOX:I = 0x6

.field public static final INPUT_COLOR:I = 0x7

.field public static final INPUT_DATE:I = 0x8

.field public static final INPUT_DATETIME_LOCAL:I = 0x9

.field public static final INPUT_EMAIL:I = 0xa

.field public static final INPUT_FILE:I = 0xb

.field public static final INPUT_HIDDEN:I = 0xc

.field public static final INPUT_IMAGE:I = 0xd

.field public static final INPUT_MONTH:I = 0xe

.field public static final INPUT_NUMBER:I = 0xf

.field public static final INPUT_PASSWORD:I = 0x10

.field public static final INPUT_RADIO:I = 0x11

.field public static final INPUT_RANGE:I = 0x12

.field public static final INPUT_RESET:I = 0x13

.field public static final INPUT_SEARCH:I = 0x14

.field public static final INPUT_SUBMIT:I = 0x15

.field public static final INPUT_TELEPHONE:I = 0x16

.field public static final INPUT_TEXT:I = 0x17

.field public static final INPUT_TIME:I = 0x18

.field public static final INPUT_URL:I = 0x19

.field public static final INPUT_WEEK:I = 0x1a

.field public static final MAX_VALUE:I = 0x1e

.field public static final MIN_VALUE:I = 0x0

.field public static final OUTPUT:I = 0x1b

.field public static final SELECT_MULTIPLE:I = 0x1d

.field public static final SELECT_ONE:I = 0x1c

.field public static final TEXT_AREA:I = 0x1e


# direct methods
.method public static isKnownValue(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0x1e

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

    invoke-static {p0}, Lorg/chromium/blink/mojom/FormControlType;->isKnownValue(I)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string v0, "Invalid enum value."

    invoke-direct {p0, v0}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
