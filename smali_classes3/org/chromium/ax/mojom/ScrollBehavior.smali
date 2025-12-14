.class public final Lorg/chromium/ax/mojom/ScrollBehavior;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/ax/mojom/ScrollBehavior$EnumType;
    }
.end annotation


# static fields
.field public static final DEFAULT_VALUE:I = 0x0

.field public static final DO_NOT_SCROLL_IF_VISIBLE:I = 0x1

.field public static final MAX_VALUE:I = 0x2

.field public static final MIN_VALUE:I = 0x0

.field public static final NONE:I = 0x0

.field public static final SCROLL_IF_VISIBLE:I = 0x2


# direct methods
.method public static isKnownValue(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const/4 v0, 0x2

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

    invoke-static {p0}, Lorg/chromium/ax/mojom/ScrollBehavior;->isKnownValue(I)Z

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
