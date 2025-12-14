.class public final Lorg/chromium/on_device_model/mojom/PlatformModelState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/on_device_model/mojom/PlatformModelState$EnumType;
    }
.end annotation


# static fields
.field public static final DEFAULT_VALUE:I = 0x0

.field public static final INSTALLED_ON_DISK:I = 0x1

.field public static final INVALID_BASE_MODEL_DESCRIPTOR:I = 0x9

.field public static final INVALID_DLC_CLIENT:I = 0x3

.field public static final INVALID_DLC_INSTALL:I = 0x6

.field public static final INVALID_DLC_PACKAGE:I = 0x4

.field public static final INVALID_DLC_VERIFIED_STATE:I = 0x5

.field public static final INVALID_MODEL_DESCRIPTOR:I = 0x8

.field public static final INVALID_MODEL_FORMAT:I = 0x7

.field public static final INVALID_UUID:I = 0x2

.field public static final MAX_VALUE:I = 0x9

.field public static final MIN_VALUE:I

.field public static final UNKNOWN_STATE:I


# direct methods
.method public static isKnownValue(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0x9

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

    invoke-static {p0}, Lorg/chromium/on_device_model/mojom/PlatformModelState;->isKnownValue(I)Z

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
