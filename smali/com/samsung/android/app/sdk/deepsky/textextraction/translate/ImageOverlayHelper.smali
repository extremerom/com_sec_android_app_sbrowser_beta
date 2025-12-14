.class public interface abstract Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelper$ConcurrentImageOverlayResultCallback;,
        Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelper$ImageOverlayResultCallback;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008f\u0018\u00002\u00020\u0001:\u0002\'(J\u001d\u0010\u0006\u001a\u00020\u00052\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H&\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0017\u0010\n\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u0008H&\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0017\u0010\r\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u000cH&\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u001b\u0010\u0011\u001a\u00020\u00052\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000fH&\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0017\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u0013H&\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u0013H&\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0005H&\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u0013H&\u00a2\u0006\u0004\u0008\u001b\u0010\u0018J\u000f\u0010\u001c\u001a\u00020\u0005H&\u00a2\u0006\u0004\u0008\u001c\u0010\u001aJ\'\u0010#\u001a\u00020\u00052\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010\"\u001a\u00020!H\'\u00a2\u0006\u0004\u0008#\u0010$J\u0017\u0010%\u001a\u00020\u00132\u0006\u0010\"\u001a\u00020!H\'\u00a2\u0006\u0004\u0008%\u0010&\u00a8\u0006)"
    }
    d2 = {
        "Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelper;",
        "",
        "",
        "Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/data/BaseTranslationRequest;",
        "translationRequestList",
        "Ldb/r;",
        "initConcurrent",
        "(Ljava/util/List;)V",
        "Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelper$ImageOverlayResultCallback;",
        "callback",
        "doImageOverlay",
        "(Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelper$ImageOverlayResultCallback;)V",
        "Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelper$ConcurrentImageOverlayResultCallback;",
        "doConcurrentImageOverlay",
        "(Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelper$ConcurrentImageOverlayResultCallback;)V",
        "",
        "language",
        "setTargetLanguage",
        "(Ljava/lang/String;)V",
        "",
        "value",
        "setNeedToDownloadLangPack",
        "(Z)V",
        "isProcessing",
        "()Z",
        "cancelCurrentTask",
        "()V",
        "isProcessingConcurrent",
        "cancelConcurrentTask",
        "Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/TranslationTokenInfo;",
        "tokenInfo",
        "Landroid/graphics/Bitmap;",
        "bitmap",
        "Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;",
        "ocrResult",
        "init",
        "(Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/TranslationTokenInfo;Landroid/graphics/Bitmap;Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;)V",
        "isAvailable",
        "(Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;)Z",
        "ImageOverlayResultCallback",
        "ConcurrentImageOverlayResultCallback",
        "deepsky-sdk-textextraction-8.5.6_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract cancelConcurrentTask()V
.end method

.method public abstract cancelCurrentTask()V
.end method

.method public abstract doConcurrentImageOverlay(Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelper$ConcurrentImageOverlayResultCallback;)V
    .param p1    # Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelper$ConcurrentImageOverlayResultCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract doImageOverlay(Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelper$ImageOverlayResultCallback;)V
    .param p1    # Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelper$ImageOverlayResultCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract init(Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/TranslationTokenInfo;Landroid/graphics/Bitmap;Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;)V
    .param p1    # Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/TranslationTokenInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
    .end annotation
.end method

.method public abstract initConcurrent(Ljava/util/List;)V
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/data/BaseTranslationRequest;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract isAvailable(Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;)Z
    .param p1    # Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
    .end annotation
.end method

.method public abstract isProcessing()Z
.end method

.method public abstract isProcessingConcurrent()Z
.end method

.method public abstract setNeedToDownloadLangPack(Z)V
.end method

.method public abstract setTargetLanguage(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method
