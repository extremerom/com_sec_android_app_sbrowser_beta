.class Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel$ExtractTextOnBitmap;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "StaticFieldLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExtractTextOnBitmap"
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
.field private mRecognizer:Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel$ExtractTextOnBitmap;->this$0:Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel$ExtractTextOnBitmap;->mRecognizer:Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel$ExtractTextOnBitmap;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel$ExtractTextOnBitmap;->lambda$onPostExecute$1()V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel$ExtractTextOnBitmap;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel$ExtractTextOnBitmap;->lambda$onCancelled$0()V

    return-void
.end method

.method private synthetic lambda$onCancelled$0()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel$ExtractTextOnBitmap;->this$0:Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;->c(Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;)Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel$LiveTextControllerDelegate;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel$LiveTextControllerDelegate;->onExtractionComplete(Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;)V

    return-void
.end method

.method private synthetic lambda$onPostExecute$1()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel$ExtractTextOnBitmap;->this$0:Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;->c(Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;)Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel$LiveTextControllerDelegate;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel$ExtractTextOnBitmap;->this$0:Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;->d(Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;)Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel$LiveTextControllerDelegate;->onExtractionComplete(Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;)V

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 4

    const-string p1, "Recognizer error "

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel$ExtractTextOnBitmap;->this$0:Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;->b(Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    const-string v1, "LiveTextModel"

    const-string v2, "Triggered extract Text operation"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel$ExtractTextOnBitmap;->this$0:Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel$ExtractTextOnBitmap;->mRecognizer:Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;->a(Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;->extractText(Landroid/graphics/Bitmap;)Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;->e(Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception v1

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel$ExtractTextOnBitmap;->mRecognizer:Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel$ExtractTextOnBitmap;->this$0:Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;

    invoke-static {p0, v2}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;->e(Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;)V

    const-string p0, "LiveTextModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    monitor-exit v0

    return-object p0

    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel$ExtractTextOnBitmap;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public onCancelled()V
    .locals 3

    const-string v0, "LiveTextModel"

    const-string v1, "Extraction task is interrupted !"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/extract_text/e;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/extract_text/e;-><init>(Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel$ExtractTextOnBitmap;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPostExecute(Ljava/lang/Boolean;)V
    .locals 2

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/extract_text/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/extract_text/e;-><init>(Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel$ExtractTextOnBitmap;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel$ExtractTextOnBitmap;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
