.class public final Lorg/chromium/ax/mojom/FloatAttribute;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/ax/mojom/FloatAttribute$EnumType;
    }
.end annotation


# static fields
.field public static final CHILD_TREE_SCALE:I = 0x8

.field public static final DEFAULT_VALUE:I = 0x0

.field public static final FONT_SIZE:I = 0x5

.field public static final FONT_WEIGHT:I = 0x6

.field public static final MAX_VALUE:I = 0x8

.field public static final MAX_VALUE_FOR_RANGE:I = 0x3

.field public static final MIN_VALUE:I = 0x0

.field public static final MIN_VALUE_FOR_RANGE:I = 0x2

.field public static final NONE:I = 0x0

.field public static final STEP_VALUE_FOR_RANGE:I = 0x4

.field public static final TEXT_INDENT:I = 0x7

.field public static final VALUE_FOR_RANGE:I = 0x1


# direct methods
.method public static isKnownValue(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0x8

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

    invoke-static {p0}, Lorg/chromium/ax/mojom/FloatAttribute;->isKnownValue(I)Z

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
