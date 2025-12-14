.class public final Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelperImpl$createImageTranslateListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageTranslateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelperImpl;->createImageTranslateListener(Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelper$ImageOverlayResultCallback;)Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageTranslateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "com/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelperImpl$createImageTranslateListener$1",
        "Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageTranslateListener;",
        "Ldb/r;",
        "onImageTranslateSuccess",
        "()V",
        "Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/data/ImageTranslationResult$Error;",
        "error",
        "onImageTranslateFail",
        "(Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/data/ImageTranslationResult$Error;)V",
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


# instance fields
.field final synthetic $callback:Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelper$ImageOverlayResultCallback;

.field final synthetic this$0:Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelperImpl;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelperImpl;Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelper$ImageOverlayResultCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelperImpl$createImageTranslateListener$1;->this$0:Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelperImpl;

    iput-object p2, p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelperImpl$createImageTranslateListener$1;->$callback:Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelper$ImageOverlayResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageTranslateFail(Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/data/ImageTranslationResult$Error;)V
    .locals 2

    const-string v0, "error"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "doImageOverlay failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImageOverlayHelper"

    invoke-static {v1, v0}, Lcom/samsung/android/app/sdk/deepsky/textextraction/logger/LibLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelperImpl$createImageTranslateListener$1;->$callback:Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelper$ImageOverlayResultCallback;

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/data/ImageTranslationResult$Error;->getCode()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelper$ImageOverlayResultCallback;->onFail(I)V

    return-void
.end method

.method public onImageTranslateSuccess()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelperImpl$createImageTranslateListener$1;->this$0:Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelperImpl;

    invoke-static {v0}, Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelperImpl;->access$getImageTranslator$p(Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelperImpl;)Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageTranslator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageTranslator;->getRenderedBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelperImpl$createImageTranslateListener$1;->$callback:Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelper$ImageOverlayResultCallback;

    sget-object v1, Lcom/samsung/android/app/sdk/deepsky/textextraction/logger/LogUtil;->INSTANCE:Lcom/samsung/android/app/sdk/deepsky/textextraction/logger/LogUtil;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/sdk/deepsky/textextraction/logger/LogUtil;->logString(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "doImageOverlay success: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImageOverlayHelper"

    invoke-static {v2, v1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/logger/LibLogger;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p0, v0}, Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelper$ImageOverlayResultCallback;->onSuccess(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
