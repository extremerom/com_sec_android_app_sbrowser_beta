.class public final Lorg/chromium/blink/mojom/CanCreateTranslatorResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/CanCreateTranslatorResult$EnumType;
    }
.end annotation


# static fields
.field public static final AFTER_DOWNLOAD_LANGUAGE_PACK_NOT_READY:I = 0x2

.field public static final AFTER_DOWNLOAD_LIBRARY_AND_LANGUAGE_PACK_NOT_READY:I = 0x3

.field public static final AFTER_DOWNLOAD_LIBRARY_NOT_READY:I = 0x1

.field public static final AFTER_DOWNLOAD_TRANSLATOR_CREATION_REQUIRED:I = 0x4

.field public static final MAX_VALUE:I = 0xa

.field public static final MIN_VALUE:I = 0x0

.field public static final NO_ACCEPT_LANGUAGES_CHECK_FAILED:I = 0x6

.field public static final NO_DISALLOWED_BY_POLICY:I = 0x9

.field public static final NO_EXCEEDS_LANGUAGE_PACK_COUNT_LIMITATION:I = 0x7

.field public static final NO_EXCEEDS_SERVICE_COUNT_LIMITATION:I = 0xa

.field public static final NO_NOT_SUPPORTED_LANGUAGE:I = 0x5

.field public static final NO_SERVICE_CRASHED:I = 0x8

.field public static final READILY:I


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
    .locals 0

    return p0
.end method

.method public static validate(I)V
    .locals 1

    invoke-static {p0}, Lorg/chromium/blink/mojom/CanCreateTranslatorResult;->isKnownValue(I)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string v0, "Invalid enum value."

    invoke-direct {p0, v0}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
