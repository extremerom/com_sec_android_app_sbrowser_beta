.class Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel$DetectTextOnBitmap;
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
    name = "DetectTextOnBitmap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel$DetectTextOnBitmap;->this$0:Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel$DetectTextOnBitmap;->mRecognizer:Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel$DetectTextOnBitmap;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel$DetectTextOnBitmap;->lambda$onCancelled$0()V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel$DetectTextOnBitmap;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel$DetectTextOnBitmap;->lambda$onPostExecute$1(Ljava/lang/Boolean;)V

    return-void
.end method

.method private synthetic lambda$onCancelled$0()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel$DetectTextOnBitmap;->this$0:Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;->c(Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;)Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel$LiveTextControllerDelegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel$LiveTextControllerDelegate;->onDetectionCancelled()V

    return-void
.end method

.method private synthetic lambda$onPostExecute$1(Ljava/lang/Boolean;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel$DetectTextOnBitmap;->this$0:Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;->c(Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;)Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel$LiveTextControllerDelegate;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel$LiveTextControllerDelegate;->onDetectionComplete(Z)V

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3

    const-string p1, "Recognizer error "

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel$DetectTextOnBitmap;->this$0:Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;->b(Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel$DetectTextOnBitmap;->this$0:Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;->a(Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel$DetectTextOnBitmap;->this$0:Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;->a(Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "LiveTextModel"

    const-string v2, "Triggered text detection"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel$DetectTextOnBitmap;->mRecognizer:Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel$DetectTextOnBitmap;->this$0:Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;->a(Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;->detectText(Landroid/graphics/Bitmap;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catchall_1
    move-exception v1

    goto :goto_1

    :cond_1
    :goto_0
    :try_start_2
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    monitor-exit v0

    return-object p0

    :goto_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel$DetectTextOnBitmap;->mRecognizer:Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;

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

    :goto_2
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel$DetectTextOnBitmap;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public onCancelled()V
    .locals 3

    const-string v0, "LiveTextModel"

    const-string v1, "Detection task is interrupted !"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/extract_text/c;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/extract_text/c;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPostExecute(Ljava/lang/Boolean;)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/extract_text/d;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/sbrowser/extract_text/d;-><init>(Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel$DetectTextOnBitmap;Ljava/lang/Boolean;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel$DetectTextOnBitmap;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
