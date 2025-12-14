.class Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$1;->this$0:Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$1;->this$0:Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->m(Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$1;->this$0:Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->m(Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$ImgOverlayInfo;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$1;->this$0:Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$ImgOverlayInfo;->getScaledBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$ImgOverlayInfo;->getOcrResult()Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$ImgOverlayInfo;->getIsAvailable()Z

    move-result v4

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$ImgOverlayInfo;->getTargetLang()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$ImgOverlayInfo;->getBitmapInfo()Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;->runImageOverlayOperation(Landroid/graphics/Bitmap;Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;ZLjava/lang/String;Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator$BitmapInfo;)V

    return-void
.end method
