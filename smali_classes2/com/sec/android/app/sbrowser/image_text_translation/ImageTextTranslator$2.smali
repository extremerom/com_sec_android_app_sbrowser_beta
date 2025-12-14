.class Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelper$ImageOverlayResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->runImageOverlayOperation(Landroid/graphics/Bitmap;Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;ZLjava/lang/String;Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;

.field final synthetic val$bitmapInfo:Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;

.field final synthetic val$scaledBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;Landroid/graphics/Bitmap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$2;->this$0:Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$2;->val$bitmapInfo:Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$2;->val$scaledBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$2;Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$2;->lambda$onFail$1(Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$2;Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$2;->lambda$onSuccess$0(Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private synthetic lambda$onFail$1(Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;)V
    .locals 3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$2;->this$0:Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;->getElementClassName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;->getAssociatedCallback()Lcom/sec/terrace/browser/image_text_translation/TerraceImageTextTranslationCallback;

    move-result-object p1

    const-string v2, "{}"

    invoke-virtual {p0, v2, v0, v1, p1}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->sendWordAttributes(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/sec/terrace/browser/image_text_translation/TerraceImageTextTranslationCallback;)V

    return-void
.end method

.method private synthetic lambda$onSuccess$0(Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$2;->this$0:Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;

    invoke-static {}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslatorUtil;->createSuccessJsonObject()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;->getElementClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;->getAssociatedCallback()Lcom/sec/terrace/browser/image_text_translation/TerraceImageTextTranslationCallback;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p2, p1}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->sendWordAttributes(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/sec/terrace/browser/image_text_translation/TerraceImageTextTranslationCallback;)V

    return-void
.end method


# virtual methods
.method public onFail(I)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ImgTrans:processTranslation:onFail"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$2;->val$bitmapInfo:Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;->getElementClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/terrace/TerraceTraceEvent;->begin(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "overlay failed with resultCode= "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " :"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$2;->val$bitmapInfo:Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;->getElementClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImageTextTranslator"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$2;->val$bitmapInfo:Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;->getElementClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/terrace/TerraceTraceEvent;->end(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$2;->this$0:Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->k(Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$2;->val$scaledBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$2;->val$bitmapInfo:Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;->getElementClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslatorUtil;->saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$2;->val$scaledBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$2;->val$scaledBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$2;->this$0:Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->m(Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;)Ljava/util/Queue;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$2;->this$0:Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->m(Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;)Ljava/util/Queue;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$ImgOverlayInfo;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$2;->val$bitmapInfo:Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;->getElementClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$ImgOverlayInfo;->getBitmapInfo()Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;->getElementClassName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$2;->this$0:Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->l(Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$2;->val$bitmapInfo:Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;

    new-instance v1, Lcom/sec/android/app/sbrowser/image_text_translation/c;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v0, v2}, Lcom/sec/android/app/sbrowser/image_text_translation/c;-><init>(Ljava/lang/Object;Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;I)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$2;->this$0:Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->m(Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;)Ljava/util/Queue;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$2;->this$0:Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->m(Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;)Ljava/util/Queue;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$2;->this$0:Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->m(Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;)Ljava/util/Queue;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$ImgOverlayInfo;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$ImgOverlayInfo;->getProcessingStatus()Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$ImgOverlayStatus;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$ImgOverlayStatus;->NONE:Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$ImgOverlayStatus;

    if-ne v0, v1, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$2;->this$0:Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$ImgOverlayInfo;->getScaledBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$ImgOverlayInfo;->getOcrResult()Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$ImgOverlayInfo;->getIsAvailable()Z

    move-result v5

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$ImgOverlayInfo;->getTargetLang()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$ImgOverlayInfo;->getBitmapInfo()Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->runImageOverlayOperation(Landroid/graphics/Bitmap;Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;ZLjava/lang/String;Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;)V

    :cond_4
    return-void
.end method

.method public onSuccess(Landroid/graphics/Bitmap;)V
    .locals 8
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ImgTrans:processTranslation:onSuccess"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$2;->val$bitmapInfo:Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;->getElementClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/terrace/TerraceTraceEvent;->begin(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "overlay success :"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$2;->val$bitmapInfo:Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;->getElementClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImageTextTranslator"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$2;->val$bitmapInfo:Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;->getElementClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/terrace/TerraceTraceEvent;->end(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$2;->val$scaledBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$2;->val$scaledBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$2;->this$0:Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->n(Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$2;->this$0:Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->m(Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$2;->this$0:Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->m(Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$ImgOverlayInfo;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$2;->val$bitmapInfo:Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;->getElementClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$ImgOverlayInfo;->getBitmapInfo()Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;->getElementClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$2;->this$0:Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->l(Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$2;->val$bitmapInfo:Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;

    new-instance v2, Lcom/sec/android/app/sbrowser/image_text_translation/e;

    invoke-direct {v2, p0, v1, p1}, Lcom/sec/android/app/sbrowser/image_text_translation/e;-><init>(Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$2;Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$2;->this$0:Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->m(Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;)Ljava/util/Queue;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$2;->this$0:Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->m(Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;)Ljava/util/Queue;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$2;->this$0:Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->m(Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;)Ljava/util/Queue;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$ImgOverlayInfo;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$ImgOverlayInfo;->getProcessingStatus()Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$ImgOverlayStatus;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$ImgOverlayStatus;->NONE:Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$ImgOverlayStatus;

    if-ne v0, v1, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$2;->this$0:Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$ImgOverlayInfo;->getScaledBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$ImgOverlayInfo;->getOcrResult()Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$ImgOverlayInfo;->getIsAvailable()Z

    move-result v5

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$ImgOverlayInfo;->getTargetLang()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$ImgOverlayInfo;->getBitmapInfo()Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->runImageOverlayOperation(Landroid/graphics/Bitmap;Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;ZLjava/lang/String;Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;)V

    :cond_3
    return-void
.end method
