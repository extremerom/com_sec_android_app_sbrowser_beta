.class public final Lorg/chromium/ui/mojom/MenuSourceType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/ui/mojom/MenuSourceType$EnumType;
    }
.end annotation


# static fields
.field public static final ADJUST_SELECTION:I = 0x9

.field public static final ADJUST_SELECTION_RESET:I = 0xa

.field public static final DEFAULT_VALUE:I = 0x0

.field public static final KEYBOARD:I = 0x2

.field public static final LONG_PRESS:I = 0x5

.field public static final LONG_TAP:I = 0x6

.field public static final MAX_VALUE:I = 0xb

.field public static final MIN_VALUE:I = 0x0

.field public static final MOUSE:I = 0x1

.field public static final NONE:I = 0x0

.field public static final SELECT_ALL:I = 0xb

.field public static final STYLUS:I = 0x8

.field public static final TOUCH:I = 0x3

.field public static final TOUCH_EDIT_MENU:I = 0x4

.field public static final TOUCH_HANDLE:I = 0x7


# direct methods
.method public static isKnownValue(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0xb

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

    invoke-static {p0}, Lorg/chromium/ui/mojom/MenuSourceType;->isKnownValue(I)Z

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
