.class public Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel$VideoLiveTextControllerDelegate;,
        Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel$RecognizeTask;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mImageBitmap:Landroid/graphics/Bitmap;

.field private mRecognizeTask:Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel$RecognizeTask;

.field private mVideoLiveTextControllerDelegate:Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel$VideoLiveTextControllerDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;->mImageBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;->mImageBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;)Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel$VideoLiveTextControllerDelegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;->mVideoLiveTextControllerDelegate:Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel$VideoLiveTextControllerDelegate;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;->mImageBitmap:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public setVideoLiveTextControllerDelegate(Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel$VideoLiveTextControllerDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;->mVideoLiveTextControllerDelegate:Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel$VideoLiveTextControllerDelegate;

    return-void
.end method

.method public startRecognize()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel$RecognizeTask;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel$RecognizeTask;-><init>(Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;->mRecognizeTask:Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel$RecognizeTask;

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public stopRecognizeIfInProgress()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;->mRecognizeTask:Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel$RecognizeTask;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;->mRecognizeTask:Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel$RecognizeTask;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    return-void
.end method
