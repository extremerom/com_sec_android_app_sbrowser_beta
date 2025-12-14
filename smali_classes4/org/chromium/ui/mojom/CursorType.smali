.class public final Lorg/chromium/ui/mojom/CursorType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/ui/mojom/CursorType$EnumType;
    }
.end annotation


# static fields
.field public static final ALIAS:I = 0x21

.field public static final CELL:I = 0x1f

.field public static final COLUMN_RESIZE:I = 0x12

.field public static final CONTEXT_MENU:I = 0x20

.field public static final COPY:I = 0x24

.field public static final CROSS:I = 0x1

.field public static final CUSTOM:I = 0x2d

.field public static final DND_COPY:I = 0x30

.field public static final DND_LINK:I = 0x31

.field public static final DND_MOVE:I = 0x2f

.field public static final DND_NONE:I = 0x2e

.field public static final EAST_PANNING:I = 0x15

.field public static final EAST_RESIZE:I = 0x6

.field public static final EAST_WEST_NO_RESIZE:I = 0x32

.field public static final EAST_WEST_RESIZE:I = 0xf

.field public static final GRAB:I = 0x29

.field public static final GRABBING:I = 0x2a

.field public static final HAND:I = 0x2

.field public static final HELP:I = 0x5

.field public static final I_BEAM:I = 0x3

.field public static final MAX_VALUE:I = 0x35

.field public static final MIDDLE_PANNING:I = 0x14

.field public static final MIDDLE_PANNING_HORIZONTAL:I = 0x2c

.field public static final MIDDLE_PANNING_VERTICAL:I = 0x2b

.field public static final MIN_VALUE:I = -0x1

.field public static final MOVE:I = 0x1d

.field public static final NONE:I = 0x25

.field public static final NORTH_EAST_PANNING:I = 0x17

.field public static final NORTH_EAST_RESIZE:I = 0x8

.field public static final NORTH_EAST_SOUTH_WEST_NO_RESIZE:I = 0x34

.field public static final NORTH_EAST_SOUTH_WEST_RESIZE:I = 0x10

.field public static final NORTH_PANNING:I = 0x16

.field public static final NORTH_RESIZE:I = 0x7

.field public static final NORTH_SOUTH_NO_RESIZE:I = 0x33

.field public static final NORTH_SOUTH_RESIZE:I = 0xe

.field public static final NORTH_WEST_PANNING:I = 0x18

.field public static final NORTH_WEST_RESIZE:I = 0x9

.field public static final NORTH_WEST_SOUTH_EAST_NO_RESIZE:I = 0x35

.field public static final NORTH_WEST_SOUTH_EAST_RESIZE:I = 0x11

.field public static final NOT_ALLOWED:I = 0x26

.field public static final NO_DROP:I = 0x23

.field public static final NULL:I = -0x1

.field public static final POINTER:I = 0x0

.field public static final PROGRESS:I = 0x22

.field public static final ROW_RESIZE:I = 0x13

.field public static final SOUTH_EAST_PANNING:I = 0x1a

.field public static final SOUTH_EAST_RESIZE:I = 0xb

.field public static final SOUTH_PANNING:I = 0x19

.field public static final SOUTH_RESIZE:I = 0xa

.field public static final SOUTH_WEST_PANNING:I = 0x1b

.field public static final SOUTH_WEST_RESIZE:I = 0xc

.field public static final VERTICAL_TEXT:I = 0x1e

.field public static final WAIT:I = 0x4

.field public static final WEST_PANNING:I = 0x1c

.field public static final WEST_RESIZE:I = 0xd

.field public static final ZOOM_IN:I = 0x27

.field public static final ZOOM_OUT:I = 0x28


# direct methods
.method public static isKnownValue(I)Z
    .locals 1

    const/4 v0, -0x1

    if-lt p0, v0, :cond_0

    const/16 v0, 0x35

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

    invoke-static {p0}, Lorg/chromium/ui/mojom/CursorType;->isKnownValue(I)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string v0, "Invalid enum value."

    invoke-direct {p0, v0}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
