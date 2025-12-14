.class public final Lorg/chromium/media/mojom/SpeechRecognitionErrorCode;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/mojom/SpeechRecognitionErrorCode$EnumType;
    }
.end annotation


# static fields
.field public static final ABORTED:I = 0x2

.field public static final AUDIO_CAPTURE:I = 0x3

.field public static final BAD_GRAMMAR:I = 0x7

.field public static final DEFAULT_VALUE:I = 0x0

.field public static final LANGUAGE_NOT_SUPPORTED:I = 0x8

.field public static final MAX_VALUE:I = 0xa

.field public static final MIN_VALUE:I = 0x0

.field public static final NETWORK:I = 0x4

.field public static final NONE:I = 0x0

.field public static final NOT_ALLOWED:I = 0x5

.field public static final NO_MATCH:I = 0x9

.field public static final NO_SPEECH:I = 0x1

.field public static final RECOGNITION_CONTEXT_NOT_SUPPORTED:I = 0xa

.field public static final SERVICE_NOT_ALLOWED:I = 0x6


# direct methods
.method public static isKnownValue(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0xa

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

    invoke-static {p0}, Lorg/chromium/media/mojom/SpeechRecognitionErrorCode;->isKnownValue(I)Z

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
