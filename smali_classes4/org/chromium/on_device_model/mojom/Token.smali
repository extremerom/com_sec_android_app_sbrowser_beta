.class public final Lorg/chromium/on_device_model/mojom/Token;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/on_device_model/mojom/Token$EnumType;
    }
.end annotation


# static fields
.field public static final DEFAULT_VALUE:I = 0x3

.field public static final END:I = 0x3

.field public static final MAX_VALUE:I = 0x3

.field public static final MIN_VALUE:I = 0x0

.field public static final MODEL:I = 0x1

.field public static final SYSTEM:I = 0x0

.field public static final USER:I = 0x2


# direct methods
.method public static isKnownValue(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const/4 v0, 0x3

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

    invoke-static {p0}, Lorg/chromium/on_device_model/mojom/Token;->isKnownValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return p0

    :cond_0
    const/4 p0, 0x3

    return p0
.end method

.method public static validate(I)V
    .locals 0

    return-void
.end method
