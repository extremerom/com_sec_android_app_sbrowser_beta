.class Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel$RecognizeTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "StaticFieldLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecognizeTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mOcrResult:Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;

.field private mRecognizer:Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;

.field private final mTextExtraction:Lcom/samsung/android/app/sdk/deepsky/textextraction/TextExtraction;

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel$RecognizeTask;->this$0:Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;->a(Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/LiveTextUtil;->getTextExtraction(Landroid/content/Context;)Lcom/samsung/android/app/sdk/deepsky/textextraction/TextExtraction;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel$RecognizeTask;->mTextExtraction:Lcom/samsung/android/app/sdk/deepsky/textextraction/TextExtraction;

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 4

    const-string p1, "VideoLiveTextModel"

    const-string v0, "[Video Live Text] Recognize error "

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "[Video Live Text] Triggered text recognize"

    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel$RecognizeTask;->this$0:Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;->b(Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel$RecognizeTask;->mTextExtraction:Lcom/samsung/android/app/sdk/deepsky/textextraction/TextExtraction;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/samsung/android/app/sdk/deepsky/textextraction/TextExtraction;->getRecognizer()Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel$RecognizeTask;->mRecognizer:Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel$RecognizeTask;->mRecognizer:Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;

    sget-object v3, Lcom/samsung/android/app/sdk/deepsky/textextraction/ocrwrapper/TextExtractionOCRLanguage;->All:Lcom/samsung/android/app/sdk/deepsky/textextraction/ocrwrapper/TextExtractionOCRLanguage;

    invoke-virtual {v3}, Lcom/samsung/android/app/sdk/deepsky/textextraction/ocrwrapper/TextExtractionOCRLanguage;->getId()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;->initialize(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel$RecognizeTask;->mRecognizer:Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel$RecognizeTask;->this$0:Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;->b(Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;->detectText(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel$RecognizeTask;->mRecognizer:Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel$RecognizeTask;->this$0:Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;->b(Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;->extractText(Landroid/graphics/Bitmap;)Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel$RecognizeTask;->mOcrResult:Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel$RecognizeTask;->mRecognizer:Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;->release()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel$RecognizeTask;->mRecognizer:Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel$RecognizeTask;->this$0:Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;->b(Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel$RecognizeTask;->this$0:Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;->b(Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel$RecognizeTask;->this$0:Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;->b(Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel$RecognizeTask;->this$0:Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;->d(Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;)V

    :cond_1
    return-object p1

    :catchall_0
    move-exception v2

    goto :goto_1

    :cond_2
    :try_start_1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel$RecognizeTask;->mRecognizer:Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;->release()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel$RecognizeTask;->mRecognizer:Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel$RecognizeTask;->this$0:Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;->b(Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel$RecognizeTask;->this$0:Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;->b(Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel$RecognizeTask;->this$0:Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;->b(Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel$RecognizeTask;->this$0:Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;->d(Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;)V

    :cond_4
    return-object p1

    :cond_5
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel$RecognizeTask;->mRecognizer:Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;->release()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel$RecognizeTask;->mRecognizer:Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;

    :cond_6
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel$RecognizeTask;->this$0:Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;->b(Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel$RecognizeTask;->this$0:Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;->b(Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_8

    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel$RecognizeTask;->this$0:Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;->b(Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel$RecognizeTask;->this$0:Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;->d(Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;)V

    goto :goto_2

    :goto_1
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel$RecognizeTask;->mRecognizer:Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;->release()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel$RecognizeTask;->mRecognizer:Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;

    :cond_7
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel$RecognizeTask;->this$0:Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;->b(Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel$RecognizeTask;->this$0:Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;->b(Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    :goto_2
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :catchall_1
    move-exception p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel$RecognizeTask;->mRecognizer:Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;->release()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel$RecognizeTask;->mRecognizer:Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;

    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel$RecognizeTask;->this$0:Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;->b(Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel$RecognizeTask;->this$0:Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;->b(Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel$RecognizeTask;->this$0:Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;->b(Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel$RecognizeTask;->this$0:Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;->d(Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;)V

    :cond_a
    throw p1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel$RecognizeTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public onCancelled()V
    .locals 2

    const-string v0, "VideoLiveTextModel"

    const-string v1, " [Video Live Text] Recognize task is interrupted !"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel$RecognizeTask;->this$0:Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;->c(Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;)Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel$VideoLiveTextControllerDelegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel$VideoLiveTextControllerDelegate;->onRecognitionCancelled()V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Boolean;)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel$RecognizeTask;->this$0:Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;->c(Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;)Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel$VideoLiveTextControllerDelegate;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel$RecognizeTask;->mOcrResult:Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel$VideoLiveTextControllerDelegate;->onRecognitionComplete(Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;)V

    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel$RecognizeTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
