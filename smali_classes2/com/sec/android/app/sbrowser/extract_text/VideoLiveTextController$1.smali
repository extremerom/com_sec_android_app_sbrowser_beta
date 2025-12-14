.class Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel$VideoLiveTextControllerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;->startRecognize(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;

.field final synthetic val$bitmapRect:Landroid/graphics/Rect;

.field final synthetic val$imageBitmap:Landroid/graphics/Bitmap;

.field final synthetic val$isScale:Z


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;Landroid/graphics/Bitmap;ZLandroid/graphics/Rect;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController$1;->this$0:Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController$1;->val$imageBitmap:Landroid/graphics/Bitmap;

    iput-boolean p3, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController$1;->val$isScale:Z

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController$1;->val$bitmapRect:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$BlockInfo;)Z
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController$1;->lambda$onRecognitionComplete$0(Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$BlockInfo;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$onRecognitionComplete$0(Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$BlockInfo;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$BlockInfo;->getString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public onRecognitionCancelled()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController$1;->this$0:Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;->g(Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;Z)V

    return-void
.end method

.method public onRecognitionComplete(Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;)V
    .locals 5

    const/4 v0, 0x0

    const-string v1, "VideoLiveTextController"

    if-nez p1, :cond_0

    const-string p1, " [Video Live Text] Recognition ocrResult failed ocrResult null"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController$1;->this$0:Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;->g(Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;Z)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;->getBlockInfoList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-interface {v2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/sbrowser/extract_text/b;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcom/sec/android/app/sbrowser/extract_text/b;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController$1;->this$0:Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;->a(Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/utils/LiveTextUtil;->getTextExtractionDrawHelper(Landroid/content/Context;)Lcom/samsung/android/app/sdk/deepsky/textextraction/selectionui/TextExtractionDrawHelper;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;->f(Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;Lcom/samsung/android/app/sdk/deepsky/textextraction/selectionui/TextExtractionDrawHelper;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController$1;->this$0:Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;->d(Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;)Lcom/samsung/android/app/sdk/deepsky/textextraction/selectionui/TextExtractionDrawHelper;

    move-result-object v2

    if-nez v2, :cond_2

    const-string p1, " [Video Live Text] Recognition getVisionTextDrawHelper failed"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController$1;->this$0:Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;->g(Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;Z)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController$1;->this$0:Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;->b(Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;)Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController$1;->this$0:Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;->d(Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;)Lcom/samsung/android/app/sdk/deepsky/textextraction/selectionui/TextExtractionDrawHelper;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;->initialize(Lcom/samsung/android/app/sdk/deepsky/textextraction/selectionui/TextExtractionDrawHelper;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController$1;->this$0:Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;->d(Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;)Lcom/samsung/android/app/sdk/deepsky/textextraction/selectionui/TextExtractionDrawHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController$1;->val$imageBitmap:Landroid/graphics/Bitmap;

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController$1;->val$isScale:Z

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/sdk/deepsky/textextraction/selectionui/TextExtractionDrawHelper;->setBitmap(Landroid/graphics/Bitmap;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController$1;->this$0:Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;->d(Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;)Lcom/samsung/android/app/sdk/deepsky/textextraction/selectionui/TextExtractionDrawHelper;

    move-result-object v0

    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController$1;->val$bitmapRect:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/selectionui/TextExtractionDrawHelper;->setBitmapRect(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController$1;->this$0:Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;->d(Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;)Lcom/samsung/android/app/sdk/deepsky/textextraction/selectionui/TextExtractionDrawHelper;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/selectionui/TextExtractionDrawHelper;->setOcrResult(Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController$1;->this$0:Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;->b(Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;)Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController$1$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController$1$1;-><init>(Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController$1;)V

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;->setLiveTextControllerDelegate(Lcom/sec/android/app/sbrowser/extract_text/LiveTextView$LiveTextControllerDelegate;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController$1;->this$0:Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;->e(Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController$1;->this$0:Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;->c(Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;)Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController$TextRecognizerListener;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController$1;->this$0:Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;->c(Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;)Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController$TextRecognizerListener;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController$TextRecognizerListener;->onTextRecognizerResultReceived(Ljava/lang/Boolean;)V

    :cond_3
    return-void

    :cond_4
    :goto_0
    const-string p1, " [Video Live Text] Recognition ocrResult failed"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController$1;->this$0:Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;->g(Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;Z)V

    return-void
.end method
