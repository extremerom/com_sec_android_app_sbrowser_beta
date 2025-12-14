.class public Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel$LiveTextControllerDelegate;,
        Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel$ExtractTextOnBitmap;,
        Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel$DetectTextOnBitmap;
    }
.end annotation


# instance fields
.field private mDetectTextOnBitmapTask:Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel$DetectTextOnBitmap;

.field private mExtractTextOnBitmapTask:Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel$ExtractTextOnBitmap;

.field private mImageBitmap:Landroid/graphics/Bitmap;

.field private final mImageBitmapLock:Ljava/lang/Object;

.field private mLiveTextControllerDelegate:Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel$LiveTextControllerDelegate;

.field private mOcrResult:Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;->mImageBitmapLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;->mImageBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;->mImageBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;->mImageBitmapLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;)Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel$LiveTextControllerDelegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;->mLiveTextControllerDelegate:Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel$LiveTextControllerDelegate;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;)Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;->mOcrResult:Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;->mOcrResult:Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;

    return-void
.end method


# virtual methods
.method public cancelExtraction()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;->isExtractionInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;->mExtractTextOnBitmapTask:Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel$ExtractTextOnBitmap;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    return-void
.end method

.method public isDetectionInProgress()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;->mDetectTextOnBitmapTask:Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel$DetectTextOnBitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;->mDetectTextOnBitmapTask:Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel$DetectTextOnBitmap;

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isExtractionInProgress()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;->mExtractTextOnBitmapTask:Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel$ExtractTextOnBitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;->mExtractTextOnBitmapTask:Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel$ExtractTextOnBitmap;

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public recycleBitmapIfNeeded()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;->mImageBitmapLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;->mImageBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;->mImageBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;->mImageBitmap:Landroid/graphics/Bitmap;

    const-string p0, "LiveTextModel"

    const-string v1, "Bitmap recycled."

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setLiveTextControllerDelegate(Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel$LiveTextControllerDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;->mLiveTextControllerDelegate:Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel$LiveTextControllerDelegate;

    return-void
.end method

.method public startDetection(Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;->stopDetectionIfInProgress()V

    new-instance v0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel$DetectTextOnBitmap;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel$DetectTextOnBitmap;-><init>(Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;->mDetectTextOnBitmapTask:Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel$DetectTextOnBitmap;

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public startExtraction(Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;->cancelExtraction()V

    new-instance v0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel$ExtractTextOnBitmap;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel$ExtractTextOnBitmap;-><init>(Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;->mExtractTextOnBitmapTask:Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel$ExtractTextOnBitmap;

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public stopDetectionIfInProgress()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;->isDetectionInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;->mDetectTextOnBitmapTask:Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel$DetectTextOnBitmap;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    return-void
.end method
