.class public final Lorg/chromium/ax/mojom/InputEventType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/ax/mojom/InputEventType$EnumType;
    }
.end annotation


# static fields
.field public static final DEFAULT_VALUE:I = 0x0

.field public static final DELETE_BY_CUT:I = 0x15

.field public static final DELETE_BY_DRAG:I = 0x16

.field public static final DELETE_CONTENT_BACKWARD:I = 0x13

.field public static final DELETE_CONTENT_FORWARD:I = 0x14

.field public static final DELETE_HARD_LINE_BACKWARD:I = 0x11

.field public static final DELETE_HARD_LINE_FORWARD:I = 0x12

.field public static final DELETE_SOFT_LINE_BACKWARD:I = 0xf

.field public static final DELETE_SOFT_LINE_FORWARD:I = 0x10

.field public static final DELETE_WORD_BACKWARD:I = 0xd

.field public static final DELETE_WORD_FORWARD:I = 0xe

.field public static final FORMAT_BOLD:I = 0x19

.field public static final FORMAT_INDENT:I = 0x23

.field public static final FORMAT_ITALIC:I = 0x1a

.field public static final FORMAT_JUSTIFY_CENTER:I = 0x1f

.field public static final FORMAT_JUSTIFY_FULL:I = 0x20

.field public static final FORMAT_JUSTIFY_LEFT:I = 0x22

.field public static final FORMAT_JUSTIFY_RIGHT:I = 0x21

.field public static final FORMAT_OUTDENT:I = 0x24

.field public static final FORMAT_REMOVE:I = 0x25

.field public static final FORMAT_SET_BLOCK_TEXT_DIRECTION:I = 0x26

.field public static final FORMAT_STRIKE_THROUGH:I = 0x1c

.field public static final FORMAT_SUBSCRIPT:I = 0x1e

.field public static final FORMAT_SUPERSCRIPT:I = 0x1d

.field public static final FORMAT_UNDERLINE:I = 0x1b

.field public static final HISTORY_REDO:I = 0x18

.field public static final HISTORY_UNDO:I = 0x17

.field public static final INSERT_COMPOSITION_TEXT:I = 0xc

.field public static final INSERT_FROM_DROP:I = 0x8

.field public static final INSERT_FROM_PASTE:I = 0x7

.field public static final INSERT_FROM_YANK:I = 0x9

.field public static final INSERT_HORIZONTAL_RULE:I = 0x6

.field public static final INSERT_LINE_BREAK:I = 0x2

.field public static final INSERT_LINK:I = 0x27

.field public static final INSERT_ORDERED_LIST:I = 0x4

.field public static final INSERT_PARAGRAPH:I = 0x3

.field public static final INSERT_REPLACEMENT_TEXT:I = 0xb

.field public static final INSERT_TEXT:I = 0x1

.field public static final INSERT_TRANSPOSE:I = 0xa

.field public static final INSERT_UNORDERED_LIST:I = 0x5

.field public static final MAX_VALUE:I = 0x27

.field public static final MIN_VALUE:I

.field public static final NONE:I


# direct methods
.method public static isKnownValue(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0x27

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

    invoke-static {p0}, Lorg/chromium/ax/mojom/InputEventType;->isKnownValue(I)Z

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
