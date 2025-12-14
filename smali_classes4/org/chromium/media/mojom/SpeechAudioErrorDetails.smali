.class public final Lorg/chromium/media/mojom/SpeechAudioErrorDetails;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/mojom/SpeechAudioErrorDetails$EnumType;
    }
.end annotation


# static fields
.field public static final DEFAULT_VALUE:I = 0x0

.field public static final MAX_VALUE:I = 0x1

.field public static final MIN_VALUE:I = 0x0

.field public static final NONE:I = 0x0

.field public static final NO_MIC:I = 0x1


# direct methods
.method public static isKnownValue(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const/4 v0, 0x1

    if-gt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static toKnownValue(I)I
    .locals 1

    invoke-static {p0}, Lorg/chromium/media/mojom/SpeechAudioErrorDetails;->isKnownValue(I)Z

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
