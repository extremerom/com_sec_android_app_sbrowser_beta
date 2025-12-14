.class Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelper$ConcurrentImageOverlayResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->runImageOverlayOperationMultiple(Ljava/util/List;ZLjava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;

.field final synthetic val$idToBitmapInfoMap:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$3;->this$0:Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$3;->val$idToBitmapInfoMap:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$3;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/sec/terrace/browser/image_text_translation/TerraceImageTextTranslationCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$3;->lambda$onSuccess$0(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/sec/terrace/browser/image_text_translation/TerraceImageTextTranslationCallback;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$3;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$3;->lambda$onSuccess$1()V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$3;Ljava/lang/String;Lcom/sec/terrace/browser/image_text_translation/TerraceImageTextTranslationCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$3;->lambda$onFail$2(Ljava/lang/String;Lcom/sec/terrace/browser/image_text_translation/TerraceImageTextTranslationCallback;)V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$3;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$3;->lambda$onFail$3()V

    return-void
.end method

.method private synthetic lambda$onFail$2(Ljava/lang/String;Lcom/sec/terrace/browser/image_text_translation/TerraceImageTextTranslationCallback;)V
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$3;->this$0:Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;

    const-string v0, "{}"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->sendWordAttributes(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/sec/terrace/browser/image_text_translation/TerraceImageTextTranslationCallback;)V

    return-void
.end method

.method private synthetic lambda$onFail$3()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$3;->this$0:Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->processMultipleImageOverlayQueue()V

    return-void
.end method

.method private synthetic lambda$onSuccess$0(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/sec/terrace/browser/image_text_translation/TerraceImageTextTranslationCallback;)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$3;->this$0:Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;

    invoke-static {}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslatorUtil;->createSuccessJsonObject()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->sendWordAttributes(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/sec/terrace/browser/image_text_translation/TerraceImageTextTranslationCallback;)V

    return-void
.end method

.method private synthetic lambda$onSuccess$1()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$3;->this$0:Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->processMultipleImageOverlayQueue()V

    return-void
.end method


# virtual methods
.method public onFail(II)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$3;->val$idToBitmapInfoMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;

    const-string v1, "Image overlay failure for id: "

    const-string v2, "ImageTextTranslator"

    invoke-static {p1, v1, v2}, Lt/b;->x(ILjava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_0

    const-string p0, " fail and info is null id="

    invoke-static {p1, p0, v2}, Lt/b;->x(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "overlay failed with resultCode= "

    const-string v3, " :"

    invoke-static {p2, v1, v3}, Lt/b;->l(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;->getElementClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " requestID: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$3;->this$0:Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->j(Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;)Ljava/util/HashMap;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;->getElementClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;->getAssociatedCallback()Lcom/sec/terrace/browser/image_text_translation/TerraceImageTextTranslationCallback;

    move-result-object p2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$3;->this$0:Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->l(Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/image_text_translation/e;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0, p2, p1}, Lcom/sec/android/app/sbrowser/image_text_translation/e;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$3;->this$0:Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->l(Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/sec/android/app/sbrowser/image_text_translation/f;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/sec/android/app/sbrowser/image_text_translation/f;-><init>(Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$3;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSuccess(ILandroid/graphics/Bitmap;)V
    .locals 4
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$3;->this$0:Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->n(Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$3;->val$idToBitmapInfoMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;

    const-string v1, "Image overlay success for id: "

    const-string v2, "ImageTextTranslator"

    invoke-static {p1, v1, v2}, Lt/b;->x(ILjava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_0

    const-string p0, "success but info is null id = "

    invoke-static {p1, p0, v2}, Lt/b;->x(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "overlay success :"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;->getElementClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " requestID: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$3;->this$0:Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->j(Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;->getElementClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;->getAssociatedCallback()Lcom/sec/terrace/browser/image_text_translation/TerraceImageTextTranslationCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$3;->this$0:Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->l(Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/image_text_translation/g;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/image_text_translation/g;-><init>(Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$3;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/sec/terrace/browser/image_text_translation/TerraceImageTextTranslationCallback;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$3;->this$0:Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->l(Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/sec/android/app/sbrowser/image_text_translation/f;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, Lcom/sec/android/app/sbrowser/image_text_translation/f;-><init>(Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$3;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
