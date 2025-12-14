.class public final Lorg/chromium/on_device_model/mojom/SafetyFeature;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/on_device_model/mojom/SafetyFeature$EnumType;
    }
.end annotation


# static fields
.field public static final AUDIO_SUMMARY_REQUEST:I = 0x1

.field public static final AUDIO_SUMMARY_RESPONSE:I = 0x3

.field public static final AUDIO_SUMMARY_RESPONSE_V2:I = 0x5

.field public static final AUDIO_TITLE_REQUEST:I = 0x2

.field public static final AUDIO_TITLE_RESPONSE:I = 0x4

.field public static final AUDIO_TITLE_RESPONSE_V2:I = 0x6

.field public static final DEFAULT_VALUE:I = 0x0

.field public static final GENERAL:I = 0x0

.field public static final MAX_VALUE:I = 0x6

.field public static final MIN_VALUE:I


# direct methods
.method public static isKnownValue(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const/4 v0, 0x6

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

    invoke-static {p0}, Lorg/chromium/on_device_model/mojom/SafetyFeature;->isKnownValue(I)Z

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
