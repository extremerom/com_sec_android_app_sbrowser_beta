.class Lcom/sec/android/app/sbrowser/extract_text/LiveTextController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel$LiveTextControllerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->prepareForExtractTextOnImage(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;

.field final synthetic val$bitmapRect:Landroid/graphics/Rect;

.field final synthetic val$imageBitmapForProcessing:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController$1;->this$0:Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController$1;->val$imageBitmapForProcessing:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController$1;->val$bitmapRect:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$BlockInfo;)Z
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController$1;->lambda$onExtractionComplete$0(Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$BlockInfo;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$onExtractionComplete$0(Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$BlockInfo;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult$BlockInfo;->getString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public onDetectionCancelled()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController$1;->this$0:Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->f(Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController$1;->this$0:Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->recycleBitmapIfNeeded()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController$1;->this$0:Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->j(Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;)V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController$1;->this$0:Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->k(Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;)V

    return-void
.end method

.method public onDetectionComplete(Z)V
    .locals 2

    const-string v0, "isTextDetected="

    const-string v1, "LiveTextController"

    invoke-static {v0, v1, p1}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController$1;->this$0:Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->c(Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;)Lcom/sec/android/app/sbrowser/extract_text/LiveTextController$TextDetectionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController$1;->this$0:Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->c(Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;)Lcom/sec/android/app/sbrowser/extract_text/LiveTextController$TextDetectionListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController$TextDetectionListener;->onTextDetectionResultReceived(Z)V

    :cond_0
    return-void
.end method

.method public onExtractionComplete(Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;)V
    .locals 3

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController$1;->this$0:Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->g(Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;)Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController$1;->this$0:Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->g(Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;)Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer;->getTextExtraction()Lcom/samsung/android/app/sdk/deepsky/textextraction/TextExtraction;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;->getBlockInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/extract_text/b;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sec/android/app/sbrowser/extract_text/b;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController$1;->this$0:Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->l(Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController$1;->this$0:Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->d(Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;)Lcom/sec/android/app/sbrowser/extract_text/LiveTextController$Delegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController$Delegate;->onExtractTextSuccess()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController$1;->this$0:Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->g(Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;)Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer;->getTextExtraction()Lcom/samsung/android/app/sdk/deepsky/textextraction/TextExtraction;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController$1;->this$0:Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->b(Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;)Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/TextExtraction;->getTextExtractionDrawHelper(Landroid/content/Context;)Lcom/samsung/android/app/sdk/deepsky/textextraction/selectionui/TextExtractionDrawHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController$1;->this$0:Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->h(Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;)Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;->initialize(Lcom/samsung/android/app/sdk/deepsky/textextraction/selectionui/TextExtractionDrawHelper;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController$1;->val$imageBitmapForProcessing:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/sdk/deepsky/textextraction/selectionui/TextExtractionDrawHelper;->setBitmap(Landroid/graphics/Bitmap;Z)V

    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController$1;->val$bitmapRect:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/selectionui/TextExtractionDrawHelper;->setBitmapRect(Landroid/graphics/RectF;)V

    invoke-interface {v0, p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/selectionui/TextExtractionDrawHelper;->setOcrResult(Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController$1;->this$0:Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->o(Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;)V

    return-void

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController$1;->this$0:Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->b(Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    const v0, 0x7f14051d

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/SnackbarUtil;->show(Landroid/app/Activity;II)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController$1;->this$0:Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->b(Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;)Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController$1;->this$0:Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->b(Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;)Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController$1;->this$0:Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->b(Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;->getScreenID()Ljava/lang/String;

    move-result-object p1

    const-string v0, "8518"

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController$1;->this$0:Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->n(Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController$1;->this$0:Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->resetAndClearExtractTextInfo()V

    return-void

    :cond_4
    :goto_1
    const-string p1, "LiveTextController"

    const-string v0, "Extraction failed"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController$1;->this$0:Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->n(Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController$1;->this$0:Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->resetAndClearExtractTextInfo()V

    return-void
.end method
