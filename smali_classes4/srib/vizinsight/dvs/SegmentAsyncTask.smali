.class public Lsrib/vizinsight/dvs/SegmentAsyncTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DVS_SegmentAyncTask"


# instance fields
.field mContext:Landroid/content/Context;

.field mCurrentIndex:I

.field mDvsGifConfig:Lsrib/vizinsight/dvs/DVSGIFConfig;

.field mListener:Lsrib/vizinsight/dvs/SegmentResultFileCreared;

.field mResultPath:Ljava/lang/String;

.field mResultSaved:Ljava/lang/Boolean;

.field mTouchX:F

.field mTouchY:F

.field mUri:Landroid/net/Uri;

.field vfd:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lsrib/vizinsight/dvs/DVSGIFConfig;Ljava/lang/Boolean;Lsrib/vizinsight/dvs/SegmentResultFileCreared;)V
    .locals 3

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lsrib/vizinsight/dvs/SegmentAsyncTask;->mResultSaved:Ljava/lang/Boolean;

    const/4 v1, 0x0

    iput-object v1, p0, Lsrib/vizinsight/dvs/SegmentAsyncTask;->vfd:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;

    iput-object p1, p0, Lsrib/vizinsight/dvs/SegmentAsyncTask;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lsrib/vizinsight/dvs/DVSGIFConfig;->getTouchX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2}, Lsrib/vizinsight/dvs/DVSGIFConfig;->getScreenWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lsrib/vizinsight/dvs/SegmentAsyncTask;->mTouchX:F

    invoke-virtual {p2}, Lsrib/vizinsight/dvs/DVSGIFConfig;->getTouchY()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2}, Lsrib/vizinsight/dvs/DVSGIFConfig;->getScreenHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lsrib/vizinsight/dvs/SegmentAsyncTask;->mTouchY:F

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-nez p3, :cond_0

    invoke-virtual {p2}, Lsrib/vizinsight/dvs/DVSGIFConfig;->getTouchX()I

    move-result p3

    const/4 v1, -0x1

    if-ne p3, v1, :cond_1

    invoke-virtual {p2}, Lsrib/vizinsight/dvs/DVSGIFConfig;->getTouchY()I

    move-result p3

    if-ne p3, v1, :cond_1

    :cond_0
    const/high16 p3, -0x40800000    # -1.0f

    iput p3, p0, Lsrib/vizinsight/dvs/SegmentAsyncTask;->mTouchX:F

    iput p3, p0, Lsrib/vizinsight/dvs/SegmentAsyncTask;->mTouchY:F

    :cond_1
    invoke-virtual {p2}, Lsrib/vizinsight/dvs/DVSGIFConfig;->getUrl()Landroid/net/Uri;

    move-result-object p3

    iput-object p3, p0, Lsrib/vizinsight/dvs/SegmentAsyncTask;->mUri:Landroid/net/Uri;

    invoke-virtual {p2}, Lsrib/vizinsight/dvs/DVSGIFConfig;->getCurrentIndex()I

    move-result p3

    iput p3, p0, Lsrib/vizinsight/dvs/SegmentAsyncTask;->mCurrentIndex:I

    invoke-virtual {p2}, Lsrib/vizinsight/dvs/DVSGIFConfig;->getSavePath()Ljava/lang/String;

    move-result-object p3

    const-string v1, ""

    invoke-virtual {p3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-virtual {p2}, Lsrib/vizinsight/dvs/DVSGIFConfig;->getUrl()Landroid/net/Uri;

    move-result-object p3

    invoke-static {p1, p3}, Lsrib/vizinsight/dvs/Utils;->getResultFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lsrib/vizinsight/dvs/SegmentAsyncTask;->mResultPath:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lsrib/vizinsight/dvs/DVSGIFConfig;->getSavePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lsrib/vizinsight/dvs/SegmentAsyncTask;->mResultPath:Ljava/lang/String;

    const-string p3, "SHARAD"

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/io/File;

    iget-object v1, p0, Lsrib/vizinsight/dvs/SegmentAsyncTask;->mResultPath:Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    :goto_0
    iput-object p4, p0, Lsrib/vizinsight/dvs/SegmentAsyncTask;->mListener:Lsrib/vizinsight/dvs/SegmentResultFileCreared;

    iput-object p2, p0, Lsrib/vizinsight/dvs/SegmentAsyncTask;->mDvsGifConfig:Lsrib/vizinsight/dvs/DVSGIFConfig;

    iput-object v0, p0, Lsrib/vizinsight/dvs/SegmentAsyncTask;->mResultSaved:Ljava/lang/Boolean;

    return-void
.end method

.method private synthetic lambda$doInBackground$0(Ljava/util/ArrayList;Landroid/util/Size;JLcom/samsung/android/media/SemAsyncVideoFrameDecoder;)V
    .locals 2

    const-string v0, "onInitCompletingForward"

    const-string v1, "DVS_SegmentAyncTask"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-direct {p0, p5, p1, p2}, Lsrib/vizinsight/dvs/SegmentAsyncTask;->startSemVideoDecoder(Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;Ljava/util/ArrayList;Landroid/util/Size;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "VFD onInitCompletedForward IllegalStateException"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "onInitCompletedForward. Time taken : "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, p3

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static synthetic lambda$doInBackground$1(Ljava/util/concurrent/BlockingDeque;JLcom/samsung/android/media/SemAsyncVideoFrameDecoder;Landroid/graphics/Bitmap;II)V
    .locals 1

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "onVideoFrameForward. bitmap width("

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "), height("

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "), requestedTimeMs("

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, "), frameTimeMs("

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, ")"

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p5, "DVS_SegmentAyncTask"

    invoke-static {p5, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p0, p4}, Ljava/util/concurrent/BlockingDeque;->add(Ljava/lang/Object;)Z

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p3, "onVideoFrameForward. Time taken for decode until this frame : "

    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    sub-long/2addr p3, p1

    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic lambda$doInBackground$2(Ljava/util/ArrayList;Landroid/util/Size;JLcom/samsung/android/media/SemAsyncVideoFrameDecoder;)V
    .locals 2

    const-string v0, "onInitCompletingBackward"

    const-string v1, "DVS_SegmentAyncTask"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-direct {p0, p5, p1, p2}, Lsrib/vizinsight/dvs/SegmentAsyncTask;->startSemVideoDecoder(Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;Ljava/util/ArrayList;Landroid/util/Size;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "VFD onInitCompletingBackward IllegalStateException"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "onInitCompletedBackward. Time taken : "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, p3

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static synthetic lambda$doInBackground$3(Ljava/util/Stack;JLcom/samsung/android/media/SemAsyncVideoFrameDecoder;Landroid/graphics/Bitmap;II)V
    .locals 1

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "onVideoFrameForwardBackward. bitmap width("

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "), height("

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "), requestedTimeMs("

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, "), frameTimeMs("

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, ")"

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p5, "DVS_SegmentAyncTask"

    invoke-static {p5, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p3, "onVideoFrameForwardBackward. Time taken for decode until this frame : "

    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    sub-long/2addr p3, p1

    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic lambda$doInBackground$4(Ljava/util/ArrayList;Landroid/util/Size;JLcom/samsung/android/media/SemAsyncVideoFrameDecoder;)V
    .locals 2

    const-string v0, "onInitCompletingBackward1"

    const-string v1, "DVS_SegmentAyncTask"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-direct {p0, p5, p1, p2}, Lsrib/vizinsight/dvs/SegmentAsyncTask;->startSemVideoDecoder(Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;Ljava/util/ArrayList;Landroid/util/Size;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "VFD onInitCompletingBackward1 IllegalStateException"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "onInitCompletedBackward1. Time taken : "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, p3

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static synthetic lambda$doInBackground$5(Ljava/util/Stack;JLcom/samsung/android/media/SemAsyncVideoFrameDecoder;Landroid/graphics/Bitmap;II)V
    .locals 1

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "onVideoFrameForwardBackward1. bitmap width("

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "), height("

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "), requestedTimeMs("

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, "), frameTimeMs("

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, ")"

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p5, "DVS_SegmentAyncTask"

    invoke-static {p5, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p3, "onVideoFrameForwardBackward1. Time taken for decode until this frame : "

    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    sub-long/2addr p3, p1

    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static synthetic lambda$doInBackground$6(Ljava/util/concurrent/CountDownLatch;Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onDecodingCompletionBackward1. decoded frame count("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "DVS_SegmentAyncTask"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->reset()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "VFD onDecodingCompletionBackward1 IllegalStateException"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {p1}, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->release()V

    return-void
.end method

.method private synthetic lambda$doInBackground$7(Ljava/util/concurrent/CountDownLatch;Ljava/util/ArrayList;Ljava/util/concurrent/CountDownLatch;Landroid/util/Size;JLjava/util/Stack;Ljava/io/File;ZLcom/samsung/android/motionphoto/utils/ex/g;Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;I)V
    .locals 0

    const-string p0, "FD 3"

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "onDecodingCompletionBackward. decoded frame count("

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, ")"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string p5, "DVS_SegmentAyncTask"

    invoke-static {p5, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :try_start_0
    invoke-virtual {p11}, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->reset()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    new-instance p1, Lsrib/vizinsight/dvs/a;

    invoke-direct {p1}, Lsrib/vizinsight/dvs/a;-><init>()V

    invoke-virtual {p11, p1}, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->setOnInitCompleteListener(Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$OnInitCompleteListener;)V

    new-instance p1, Lsrib/vizinsight/dvs/b;

    invoke-direct {p1}, Lsrib/vizinsight/dvs/b;-><init>()V

    invoke-virtual {p11, p1}, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->setOnVideoFrameListener(Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$OnVideoFrameListener;)V

    new-instance p1, Lsrib/vizinsight/dvs/c;

    invoke-direct {p1}, Lsrib/vizinsight/dvs/c;-><init>()V

    invoke-virtual {p11, p1}, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->setOnDecodingCompleteListener(Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$OnDecodingCompleteListener;)V

    :try_start_1
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, p8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p7

    const-string p2, "onInitStartingBackward1"

    invoke-static {p5, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", is valid - "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7}, Ljava/io/FileDescriptor;->valid()Z

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz p9, :cond_1

    :try_start_2
    invoke-virtual {p11, p7}, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->init(Ljava/io/FileDescriptor;)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    invoke-virtual {p10}, Lcom/samsung/android/motionphoto/utils/ex/g;->b()J

    move-result-wide p8

    invoke-virtual {p10}, Lcom/samsung/android/motionphoto/utils/ex/g;->a()J

    move-result-wide p2

    move-object p6, p11

    move-wide p10, p2

    invoke-virtual/range {p6 .. p11}, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->init(Ljava/io/FileDescriptor;JJ)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_1
    :try_start_3
    const-string p0, "VFD onInitStartingBackward1 IllegalStateException"

    invoke-static {p5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string p0, "onInitStartedBackward1"

    invoke-static {p5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    return-void

    :goto_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    const-string p0, "VFD onDecodingCompletionBackward IllegalStateException"

    invoke-static {p5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic lambda$doInBackground$8([ILjava/util/ArrayList;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/CountDownLatch;Landroid/util/Size;JLjava/util/Stack;Ljava/util/ArrayList;Ljava/util/Stack;Ljava/io/File;ZLcom/samsung/android/motionphoto/utils/ex/g;Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;I)V
    .locals 0

    const-string p0, "FD 2"

    new-instance p5, Ljava/lang/StringBuilder;

    const-string p6, "onDecodingCompletionForward. decoded frame count("

    invoke-direct {p5, p6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p6, ")"

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    const-string p6, "DVS_SegmentAyncTask"

    invoke-static {p6, p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p5, 0x0

    aput p15, p1, p5

    :try_start_0
    invoke-virtual {p14}, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->reset()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    invoke-virtual {p4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    new-instance p1, Lsrib/vizinsight/dvs/a;

    invoke-direct {p1}, Lsrib/vizinsight/dvs/a;-><init>()V

    invoke-virtual {p14, p1}, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->setOnInitCompleteListener(Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$OnInitCompleteListener;)V

    new-instance p1, Lsrib/vizinsight/dvs/b;

    invoke-direct {p1}, Lsrib/vizinsight/dvs/b;-><init>()V

    invoke-virtual {p14, p1}, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->setOnVideoFrameListener(Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$OnVideoFrameListener;)V

    new-instance p1, Lsrib/vizinsight/dvs/c;

    invoke-direct {p1}, Lsrib/vizinsight/dvs/c;-><init>()V

    invoke-virtual {p14, p1}, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->setOnDecodingCompleteListener(Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$OnDecodingCompleteListener;)V

    :try_start_1
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, p11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p8

    const-string p2, "onInitStartingBackward"

    invoke-static {p6, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", is valid - "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p8}, Ljava/io/FileDescriptor;->valid()Z

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz p12, :cond_1

    :try_start_2
    invoke-virtual {p14, p8}, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->init(Ljava/io/FileDescriptor;)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    invoke-virtual {p13}, Lcom/samsung/android/motionphoto/utils/ex/g;->b()J

    move-result-wide p9

    invoke-virtual {p13}, Lcom/samsung/android/motionphoto/utils/ex/g;->a()J

    move-result-wide p11

    move-object p7, p14

    invoke-virtual/range {p7 .. p12}, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->init(Ljava/io/FileDescriptor;JJ)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_1
    :try_start_3
    const-string p0, "VFD onInitStartingBackward IllegalStateException"

    invoke-static {p6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string p0, "onInitStartedBackward"

    invoke-static {p6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    return-void

    :goto_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    const-string p0, "VFD onDecodingCompletionForward IllegalStateException"

    invoke-static {p6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private startSemVideoDecoder(Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;Ljava/util/ArrayList;Landroid/util/Size;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/Size;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1, p2}, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->setTargetFrameTimeList(Ljava/util/List;)V

    const/4 p0, 0x3

    invoke-virtual {p1, p0}, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->setSeekOption(I)V

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->setPreferredCodec(I)V

    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result p2

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result p3

    invoke-virtual {p1, p2, p3, p0}, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->setOutputImageSize(IIZ)V

    invoke-virtual {p1}, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->start()V

    return-void
.end method

.method private stopDecoder(Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;Ljava/lang/String;)V
    .locals 1

    const-string p0, "DVS_SegmentAyncTask"

    invoke-static {p0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "decoder stop called"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p2, "Video decode not running."

    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {p1}, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->release()V

    :cond_0
    sget-object p0, Lsrib/vizinsight/dvs/DVSegmenter;->cancellationFinished:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lsrib/vizinsight/dvs/SegmentAsyncTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 31

    move-object/from16 v1, p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "DVSGenerateGIF URL : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Lsrib/vizinsight/dvs/SegmentAsyncTask;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " touchX: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lsrib/vizinsight/dvs/SegmentAsyncTask;->mTouchX:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " touchY :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lsrib/vizinsight/dvs/SegmentAsyncTask;->mTouchY:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " currentFrameIndex : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lsrib/vizinsight/dvs/SegmentAsyncTask;->mCurrentIndex:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DVS_SegmentAyncTask"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "DVSGenerateGIF screenWidth : "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lsrib/vizinsight/dvs/SegmentAsyncTask;->mDvsGifConfig:Lsrib/vizinsight/dvs/DVSGIFConfig;

    invoke-virtual {v3}, Lsrib/vizinsight/dvs/DVSGIFConfig;->getScreenWidth()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " screenHeight : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lsrib/vizinsight/dvs/SegmentAsyncTask;->mDvsGifConfig:Lsrib/vizinsight/dvs/DVSGIFConfig;

    invoke-virtual {v3}, Lsrib/vizinsight/dvs/DVSGIFConfig;->getScreenHeight()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    new-instance v0, Lsrib/vizinsight/dvs/DVSConfig;

    invoke-direct {v0}, Lsrib/vizinsight/dvs/DVSConfig;-><init>()V

    invoke-static {v0}, Lsrib/vizinsight/dvs/DVSegmenter;->getSegmenter(Lsrib/vizinsight/dvs/DVSConfig;)Lsrib/vizinsight/dvs/DVS;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    iget-object v0, v1, Lsrib/vizinsight/dvs/SegmentAsyncTask;->vfd:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;

    const-string v2, "Task is cancelled, not starting task."

    invoke-direct {v1, v0, v2}, Lsrib/vizinsight/dvs/SegmentAsyncTask;->stopDecoder(Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;Ljava/lang/String;)V

    return-object v6

    :cond_0
    iget-object v5, v1, Lsrib/vizinsight/dvs/SegmentAsyncTask;->mDvsGifConfig:Lsrib/vizinsight/dvs/DVSGIFConfig;

    invoke-virtual {v5}, Lsrib/vizinsight/dvs/DVSGIFConfig;->getMax_resolution()I

    move-result v5

    invoke-virtual {v0, v5}, Lsrib/vizinsight/dvs/DVS;->DVSSetMaxResolution(I)V

    invoke-virtual {v0}, Lsrib/vizinsight/dvs/DVS;->reset_frame_counter()Z

    :try_start_0
    iget-object v5, v1, Lsrib/vizinsight/dvs/SegmentAsyncTask;->mContext:Landroid/content/Context;

    iget-object v7, v1, Lsrib/vizinsight/dvs/SegmentAsyncTask;->mUri:Landroid/net/Uri;

    invoke-static {v5, v7}, Lsrib/vizinsight/dvs/Utils;->getFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v7
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_c

    if-eqz v7, :cond_2

    :cond_1
    move-object v1, v6

    goto/16 :goto_20

    :cond_2
    const/16 v7, 0x2e

    invoke-virtual {v5, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    const/4 v8, 0x1

    if-lez v7, :cond_3

    add-int/2addr v7, v8

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_3
    const-string v7, ""

    :goto_0
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "File Extension is : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "DVSGenerateGIF : filePath : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "URI Parse : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_1
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v10}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v15
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "FD 0"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", is valid - "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/io/FileDescriptor;->valid()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v14, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v14}, Landroid/media/MediaMetadataRetriever;-><init>()V

    new-instance v12, Landroid/media/MediaExtractor;

    invoke-direct {v12}, Landroid/media/MediaExtractor;-><init>()V

    const-string v11, "mov"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    const/4 v8, 0x0

    if-nez v11, :cond_5

    const-string v11, "mp4"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_1

    :cond_4
    move v7, v8

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v7, 0x1

    :goto_2
    const-wide/16 v17, 0x3e8

    const-string v11, "durationUs"

    if-eqz v7, :cond_6

    invoke-virtual {v14, v15}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V

    :try_start_2
    invoke-virtual {v12, v15}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;)V

    invoke-virtual {v12, v8}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    div-long v11, v11, v17
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    long-to-int v5, v11

    move-wide/from16 v23, v3

    move-object/from16 v19, v6

    move-object v3, v13

    move-object v4, v14

    goto/16 :goto_5

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_6
    invoke-static {v9}, Lcom/samsung/android/motionphoto/utils/ex/i;->a(Ljava/io/File;)Lcom/samsung/android/motionphoto/utils/ex/g;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v6, "VideoInfo object : "

    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v19, :cond_7

    const/4 v6, 0x0

    return-object v6

    :cond_7
    :try_start_3
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lsrib/vizinsight/dvs/Utils;->getSEFDataPosition(Ljava/io/File;)Lcom/samsung/android/motionphoto/utils/ex/f;

    move-result-object v5

    if-nez v5, :cond_8

    const-string v0, "Motion photo info null.Invalid MP"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    const/4 v1, 0x0

    return-object v1

    :catch_1
    move-exception v0

    const/4 v1, 0x0

    goto/16 :goto_1f

    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "isMotionPhotoV2: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/motionphoto/utils/ex/g;->c()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/motionphoto/utils/ex/g;->a()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/motionphoto/utils/ex/g;->b()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_4
    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/motionphoto/utils/ex/g;->b()J

    move-result-wide v5

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/motionphoto/utils/ex/g;->a()J

    move-result-wide v20

    move-object v8, v11

    move-object v11, v14

    move-object/from16 v22, v12

    move-object v12, v15

    move-wide/from16 v23, v3

    move-object v3, v13

    move-object v4, v14

    move-wide v13, v5

    move-object v5, v15

    move-wide/from16 v15, v20

    invoke-virtual/range {v11 .. v16}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    const-string v6, "data source set for retriever"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/motionphoto/utils/ex/g;->b()J

    move-result-wide v13

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/motionphoto/utils/ex/g;->a()J

    move-result-wide v15

    move-object/from16 v11, v22

    move-object v12, v5

    invoke-virtual/range {v11 .. v16}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    const-string v5, "data source set for extractor"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v22 .. v22}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v5

    const/4 v6, 0x0

    const/4 v11, 0x0

    :goto_3
    if-ge v11, v5, :cond_a

    move-object/from16 v12, v22

    invoke-virtual {v12, v11}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v13

    const-string v14, "mime"

    invoke-virtual {v13, v14}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "video/"

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_9

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Track format: "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v13, v8}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v13

    div-long v13, v13, v17
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    long-to-int v6, v13

    goto :goto_4

    :catch_2
    move-exception v0

    goto/16 :goto_1e

    :cond_9
    :goto_4
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v22, v12

    goto :goto_3

    :cond_a
    move v5, v6

    :goto_5
    const/16 v6, 0x20

    :try_start_5
    invoke-virtual {v4, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/16 v8, 0x9

    invoke-virtual {v4, v8}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    const/16 v12, 0x13

    invoke-virtual {v4, v12}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    const/16 v13, 0x12

    invoke-virtual {v4, v13}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    const/16 v14, 0x18

    invoke-virtual {v4, v14}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_a

    int-to-float v15, v13

    int-to-float v8, v12

    move-object/from16 v17, v0

    iget-object v0, v1, Lsrib/vizinsight/dvs/SegmentAsyncTask;->mDvsGifConfig:Lsrib/vizinsight/dvs/DVSGIFConfig;

    invoke-virtual {v0}, Lsrib/vizinsight/dvs/DVSGIFConfig;->getMax_resolution()I

    move-result v0

    invoke-static {v15, v8, v14, v0}, Lsrib/vizinsight/dvs/Utils;->getLowerResolution(FFII)Landroid/util/Size;

    move-result-object v0

    :try_start_6
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V

    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_9

    move v4, v7

    int-to-double v7, v6

    move-object v10, v3

    move v15, v4

    int-to-double v3, v5

    const-wide v20, 0x408f400000000000L    # 1000.0

    div-double v3, v3, v20

    div-double v3, v7, v3

    double-to-int v3, v3

    iget-object v4, v1, Lsrib/vizinsight/dvs/SegmentAsyncTask;->mDvsGifConfig:Lsrib/vizinsight/dvs/DVSGIFConfig;

    invoke-virtual {v4}, Lsrib/vizinsight/dvs/DVSGIFConfig;->getFps()I

    move-result v4

    move/from16 v18, v15

    const/4 v15, -0x1

    move-object/from16 v20, v10

    const/4 v10, 0x3

    if-ne v4, v15, :cond_c

    :cond_b
    const/4 v4, 0x0

    goto :goto_6

    :cond_c
    iget-object v4, v1, Lsrib/vizinsight/dvs/SegmentAsyncTask;->mDvsGifConfig:Lsrib/vizinsight/dvs/DVSGIFConfig;

    invoke-virtual {v4}, Lsrib/vizinsight/dvs/DVSGIFConfig;->getFps()I

    move-result v4

    mul-int/2addr v4, v10

    if-le v6, v4, :cond_b

    const/4 v4, 0x1

    :goto_6
    if-eqz v4, :cond_d

    int-to-float v15, v6

    move-object/from16 v22, v9

    iget-object v9, v1, Lsrib/vizinsight/dvs/SegmentAsyncTask;->mDvsGifConfig:Lsrib/vizinsight/dvs/DVSGIFConfig;

    invoke-virtual {v9}, Lsrib/vizinsight/dvs/DVSGIFConfig;->getFps()I

    move-result v9

    mul-int/2addr v9, v10

    sub-int v9, v6, v9

    int-to-float v9, v9

    div-float/2addr v15, v9

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v9

    goto :goto_7

    :cond_d
    move-object/from16 v22, v9

    const/4 v9, -0x1

    :goto_7
    if-eqz v4, :cond_e

    int-to-float v15, v6

    add-int/lit8 v10, v9, -0x1

    int-to-float v10, v10

    move-object/from16 v25, v0

    int-to-float v0, v9

    div-float/2addr v10, v0

    mul-float/2addr v10, v15

    float-to-int v0, v10

    goto :goto_8

    :cond_e
    move-object/from16 v25, v0

    move v0, v6

    :goto_8
    iget v10, v1, Lsrib/vizinsight/dvs/SegmentAsyncTask;->mCurrentIndex:I

    invoke-static {v10, v6, v5}, Lsrib/vizinsight/dvs/Utils;->getIndexFromTime(III)I

    move-result v10

    iput v10, v1, Lsrib/vizinsight/dvs/SegmentAsyncTask;->mCurrentIndex:I

    const-wide/high16 v26, 0x4014000000000000L    # 5.0

    div-double v7, v7, v26

    const-wide/high16 v26, 0x4010000000000000L    # 4.0

    mul-double v7, v7, v26

    double-to-int v7, v7

    if-lt v10, v7, :cond_f

    const/4 v8, 0x1

    goto :goto_9

    :cond_f
    const/4 v8, 0x0

    :goto_9
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v15, "DECODE-CONFIG : skip = "

    invoke-direct {v10, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v15, "DECODE-CONFIG : skip multiple = "

    invoke-direct {v10, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v15, "DECODE-CONFIG : frames to process = "

    invoke-direct {v10, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v15, "DECODE-CONFIG : selected index = "

    invoke-direct {v10, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v15, v1, Lsrib/vizinsight/dvs/SegmentAsyncTask;->mCurrentIndex:I

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v15, "DECODE-CONFIG : number of frames = "

    invoke-direct {v10, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v15, "DECODE-CONFIG : split index = "

    invoke-direct {v10, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v15, "DECODE-CONFIG : using second stack = "

    invoke-direct {v10, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v15, "DECODE-CONFIG : duration from retriever = "

    invoke-direct {v10, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "DECODE-CONFIG : duration from extractor = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "DECODE-CONFIG : frame rate = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "DECODE-CONFIG : height = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "DECODE-CONFIG : width = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "DECODE-CONFIG : orientation = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "DECODE-CONFIG : smaller size = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v11, v25

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v10, 0x5a

    if-gt v6, v10, :cond_10

    move v10, v6

    :goto_a
    const/4 v12, 0x0

    goto :goto_b

    :cond_10
    iget v11, v1, Lsrib/vizinsight/dvs/SegmentAsyncTask;->mCurrentIndex:I

    add-int/lit8 v12, v11, -0x2d

    add-int/lit8 v13, v11, 0x2d

    if-gez v12, :cond_11

    goto :goto_a

    :cond_11
    if-le v13, v6, :cond_12

    sub-int v12, v6, v11

    sub-int/2addr v10, v12

    sub-int v10, v11, v10

    move v12, v10

    move v10, v6

    goto :goto_b

    :cond_12
    sub-int v10, v11, v12

    add-int/2addr v10, v11

    :goto_b
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v13, "leftIndex - "

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", rightIndex - "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iget v15, v1, Lsrib/vizinsight/dvs/SegmentAsyncTask;->mCurrentIndex:I

    :goto_c
    if-ge v15, v10, :cond_14

    move/from16 v25, v10

    if-eqz v4, :cond_13

    iget v10, v1, Lsrib/vizinsight/dvs/SegmentAsyncTask;->mCurrentIndex:I

    sub-int v10, v15, v10

    const/16 v26, 0x1

    add-int/lit8 v10, v10, 0x1

    rem-int/2addr v10, v9

    if-nez v10, :cond_13

    goto :goto_d

    :cond_13
    invoke-static {v15, v6, v5, v3}, Lsrib/vizinsight/dvs/Utils;->getTimeFromIndex(IIII)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_d
    add-int/lit8 v15, v15, 0x1

    move/from16 v10, v25

    goto :goto_c

    :cond_14
    :goto_e
    iget v10, v1, Lsrib/vizinsight/dvs/SegmentAsyncTask;->mCurrentIndex:I

    if-ge v12, v10, :cond_18

    if-eqz v4, :cond_15

    sub-int v10, v12, v10

    const/4 v15, 0x1

    add-int/2addr v10, v15

    rem-int/2addr v10, v9

    if-nez v10, :cond_15

    goto :goto_10

    :cond_15
    if-eqz v8, :cond_17

    if-lt v12, v7, :cond_16

    goto :goto_f

    :cond_16
    invoke-static {v12, v6, v5, v3}, Lsrib/vizinsight/dvs/Utils;->getTimeFromIndex(IIII)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_17
    :goto_f
    invoke-static {v12, v6, v5, v3}, Lsrib/vizinsight/dvs/Utils;->getTimeFromIndex(IIII)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_10
    add-int/lit8 v12, v12, 0x1

    goto :goto_e

    :cond_18
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DECODE-CONFIG : forward list size - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DECODE-CONFIG : first backward list size - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DECODE-CONFIG : second backward list size - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_19

    iget-object v0, v1, Lsrib/vizinsight/dvs/SegmentAsyncTask;->vfd:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;

    const-string v2, "Task is cancelled, not starting selected frame decoding."

    invoke-direct {v1, v0, v2}, Lsrib/vizinsight/dvs/SegmentAsyncTask;->stopDecoder(Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;Ljava/lang/String;)V

    const/4 v1, 0x0

    return-object v1

    :cond_19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    new-instance v3, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;

    invoke-direct {v3}, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;-><init>()V

    iput-object v3, v1, Lsrib/vizinsight/dvs/SegmentAsyncTask;->vfd:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;

    const/4 v3, -0x1

    filled-new-array {v3}, [I

    move-result-object v4

    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    const/4 v6, 0x1

    invoke-direct {v3, v6}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v7, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v7, v6}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v6, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    new-instance v8, Ljava/util/Stack;

    invoke-direct {v8}, Ljava/util/Stack;-><init>()V

    new-instance v9, Ljava/util/Stack;

    invoke-direct {v9}, Ljava/util/Stack;-><init>()V

    iget-object v10, v1, Lsrib/vizinsight/dvs/SegmentAsyncTask;->vfd:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;

    new-instance v11, Lsrib/vizinsight/dvs/a;

    invoke-direct {v11}, Lsrib/vizinsight/dvs/a;-><init>()V

    invoke-virtual {v10, v11}, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->setOnInitCompleteListener(Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$OnInitCompleteListener;)V

    iget-object v10, v1, Lsrib/vizinsight/dvs/SegmentAsyncTask;->vfd:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;

    new-instance v11, Lsrib/vizinsight/dvs/b;

    invoke-direct {v11}, Lsrib/vizinsight/dvs/b;-><init>()V

    invoke-virtual {v10, v11}, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->setOnVideoFrameListener(Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$OnVideoFrameListener;)V

    iget-object v10, v1, Lsrib/vizinsight/dvs/SegmentAsyncTask;->vfd:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;

    new-instance v11, Lsrib/vizinsight/dvs/c;

    invoke-direct {v11}, Lsrib/vizinsight/dvs/c;-><init>()V

    invoke-virtual {v10, v11}, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->setOnDecodingCompleteListener(Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$OnDecodingCompleteListener;)V

    :try_start_7
    new-instance v10, Ljava/io/FileInputStream;

    move-object/from16 v11, v22

    invoke-direct {v10, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v10}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v11

    const-string v12, "onInitStartingForward"

    invoke-static {v2, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "FD 1"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v13, v20

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/io/FileDescriptor;->valid()Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    if-eqz v18, :cond_1a

    :try_start_8
    iget-object v12, v1, Lsrib/vizinsight/dvs/SegmentAsyncTask;->vfd:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;

    invoke-virtual {v12, v11}, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->init(Ljava/io/FileDescriptor;)V

    goto :goto_11

    :catch_3
    move-exception v0

    goto/16 :goto_1d

    :cond_1a
    iget-object v12, v1, Lsrib/vizinsight/dvs/SegmentAsyncTask;->vfd:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/motionphoto/utils/ex/g;->b()J

    move-result-wide v27

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/motionphoto/utils/ex/g;->a()J

    move-result-wide v29

    move-object/from16 v25, v12

    move-object/from16 v26, v11

    invoke-virtual/range {v25 .. v30}, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->init(Ljava/io/FileDescriptor;JJ)V
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_11

    :catch_4
    :try_start_9
    const-string v11, "VFD onInitStartingForward IllegalStateException"

    invoke-static {v2, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_11
    const-string v11, "onInitStartedForward"

    invoke-static {v2, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    invoke-virtual/range {p0 .. p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v11

    if-eqz v11, :cond_1b

    iget-object v0, v1, Lsrib/vizinsight/dvs/SegmentAsyncTask;->vfd:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;

    const-string v2, "Task is cancelled, not starting forward loop."

    invoke-direct {v1, v0, v2}, Lsrib/vizinsight/dvs/SegmentAsyncTask;->stopDecoder(Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;Ljava/lang/String;)V

    const/4 v1, 0x0

    return-object v1

    :cond_1b
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_12
    aget v14, v4, v11

    move-object v15, v4

    move v11, v5

    const-string v4, "Too many missing frames in a row. Stopping."

    const/4 v5, -0x1

    if-eq v14, v5, :cond_1c

    if-ge v12, v14, :cond_1f

    :cond_1c
    const/4 v14, 0x3

    if-le v13, v14, :cond_1d

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    :cond_1d
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v5, "Running forward loop for index - "

    invoke-direct {v14, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_1e

    iget-object v0, v1, Lsrib/vizinsight/dvs/SegmentAsyncTask;->vfd:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;

    const-string v2, "Task is cancelled, breaking forward loop before decode."

    invoke-direct {v1, v0, v2}, Lsrib/vizinsight/dvs/SegmentAsyncTask;->stopDecoder(Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;Ljava/lang/String;)V

    const/4 v1, 0x0

    return-object v1

    :cond_1e
    mul-int/lit8 v5, v12, 0x64

    int-to-float v5, v5

    int-to-float v14, v0

    div-float/2addr v5, v14

    float-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    :try_start_a
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v20, v15

    const-wide/16 v14, 0x1

    invoke-virtual {v6, v14, v15, v5}, Ljava/util/concurrent/LinkedBlockingDeque;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    if-nez v5, :cond_30

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Video frame forward decoding timeout for index : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_8

    :cond_1f
    :goto_13
    invoke-virtual/range {p0 .. p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_20

    iget-object v0, v1, Lsrib/vizinsight/dvs/SegmentAsyncTask;->vfd:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;

    const-string v2, "Task is cancelled, not waiting for stack to fill."

    invoke-direct {v1, v0, v2}, Lsrib/vizinsight/dvs/SegmentAsyncTask;->stopDecoder(Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;Ljava/lang/String;)V

    const/4 v1, 0x0

    return-object v1

    :cond_20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    :try_start_b
    sget-object v13, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v14, 0x2

    invoke-virtual {v3, v14, v15, v13}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_7

    move-object/from16 v14, v17

    const/4 v3, 0x0

    invoke-virtual {v14, v3}, Lsrib/vizinsight/dvs/DVS;->reset_frame_counter(Z)Z

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v13, "Backward stack wait time : "

    invoke-direct {v3, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    sub-long v5, v20, v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_21

    iget-object v0, v1, Lsrib/vizinsight/dvs/SegmentAsyncTask;->vfd:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;

    const-string v2, "Task is cancelled, not starting backward loop."

    invoke-direct {v1, v0, v2}, Lsrib/vizinsight/dvs/SegmentAsyncTask;->stopDecoder(Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;Ljava/lang/String;)V

    const/4 v1, 0x0

    return-object v1

    :cond_21
    const/4 v3, 0x0

    :goto_14
    invoke-virtual {v8}, Ljava/util/Stack;->empty()Z

    move-result v5

    if-nez v5, :cond_22

    const/4 v5, 0x3

    if-le v3, v5, :cond_23

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    move/from16 v22, v11

    goto/16 :goto_16

    :cond_23
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Running backward loop for index - "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_24

    iget-object v0, v1, Lsrib/vizinsight/dvs/SegmentAsyncTask;->vfd:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;

    const-string v2, "Task is cancelled, breaking backward loop before decode."

    invoke-direct {v1, v0, v2}, Lsrib/vizinsight/dvs/SegmentAsyncTask;->stopDecoder(Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;Ljava/lang/String;)V

    const/4 v1, 0x0

    return-object v1

    :cond_24
    mul-int/lit8 v5, v12, 0x64

    int-to-float v5, v5

    int-to-float v6, v0

    div-float/2addr v5, v6

    float-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v8}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/Bitmap;

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v17, v8

    const-string v8, "Frame to Bitmap backward decode time : "

    invoke-direct {v15, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    sub-long v5, v20, v5

    invoke-virtual {v15, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_25

    iget-object v0, v1, Lsrib/vizinsight/dvs/SegmentAsyncTask;->vfd:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;

    const-string v2, "Task is cancelled, breaking backward loop before segmentation."

    invoke-direct {v1, v0, v2}, Lsrib/vizinsight/dvs/SegmentAsyncTask;->stopDecoder(Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;Ljava/lang/String;)V

    const/4 v1, 0x0

    return-object v1

    :cond_25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget v8, v1, Lsrib/vizinsight/dvs/SegmentAsyncTask;->mTouchX:F

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    int-to-float v15, v15

    mul-float/2addr v8, v15

    float-to-int v8, v8

    iget v15, v1, Lsrib/vizinsight/dvs/SegmentAsyncTask;->mTouchY:F

    move/from16 v22, v11

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v15, v11

    float-to-int v11, v15

    const/4 v15, 0x1

    invoke-virtual {v14, v13, v8, v11, v15}, Lsrib/vizinsight/dvs/DVS;->DVSGetSegment(Landroid/graphics/Bitmap;IIZ)Z

    move-result v8

    if-eqz v8, :cond_26

    const/4 v3, 0x0

    goto :goto_15

    :cond_26
    add-int/lit8 v3, v3, 0x1

    :goto_15
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v11, "Frame backward Segment time : "

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    sub-long v5, v20, v5

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v8, v17

    move/from16 v11, v22

    goto/16 :goto_14

    :goto_16
    invoke-virtual/range {p0 .. p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_27

    iget-object v0, v1, Lsrib/vizinsight/dvs/SegmentAsyncTask;->vfd:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;

    const-string v2, "Task is cancelled, not waiting for stack 2 to fill."

    invoke-direct {v1, v0, v2}, Lsrib/vizinsight/dvs/SegmentAsyncTask;->stopDecoder(Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;Ljava/lang/String;)V

    const/4 v1, 0x0

    return-object v1

    :cond_27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    :try_start_c
    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move v13, v12

    const-wide/16 v11, 0x1

    invoke-virtual {v7, v11, v12, v8}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Backward stack 2 wait time : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v5

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_28

    iget-object v0, v1, Lsrib/vizinsight/dvs/SegmentAsyncTask;->vfd:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;

    const-string v2, "Task is cancelled, not starting backward 2 loop."

    invoke-direct {v1, v0, v2}, Lsrib/vizinsight/dvs/SegmentAsyncTask;->stopDecoder(Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;Ljava/lang/String;)V

    const/4 v1, 0x0

    return-object v1

    :cond_28
    move v12, v13

    :goto_17
    invoke-virtual {v9}, Ljava/util/Stack;->empty()Z

    move-result v5

    if-nez v5, :cond_2d

    const/4 v8, 0x3

    if-le v3, v8, :cond_29

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_19

    :cond_29
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Running backward 2 loop for index - "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_2a

    iget-object v0, v1, Lsrib/vizinsight/dvs/SegmentAsyncTask;->vfd:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;

    const-string v2, "Task is cancelled, breaking backward 2 loop before decode."

    invoke-direct {v1, v0, v2}, Lsrib/vizinsight/dvs/SegmentAsyncTask;->stopDecoder(Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;Ljava/lang/String;)V

    const/4 v1, 0x0

    return-object v1

    :cond_2a
    mul-int/lit8 v5, v12, 0x64

    int-to-float v5, v5

    int-to-float v6, v0

    div-float/2addr v5, v6

    float-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v9}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v13, "Frame to Bitmap backward 2 decode time : "

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    sub-long v5, v17, v5

    invoke-virtual {v11, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_2b

    iget-object v0, v1, Lsrib/vizinsight/dvs/SegmentAsyncTask;->vfd:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;

    const-string v2, "Task is cancelled, breaking backward 2 loop before segmentation."

    invoke-direct {v1, v0, v2}, Lsrib/vizinsight/dvs/SegmentAsyncTask;->stopDecoder(Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;Ljava/lang/String;)V

    const/4 v1, 0x0

    return-object v1

    :cond_2b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget v11, v1, Lsrib/vizinsight/dvs/SegmentAsyncTask;->mTouchX:F

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v11, v13

    float-to-int v11, v11

    iget v13, v1, Lsrib/vizinsight/dvs/SegmentAsyncTask;->mTouchY:F

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    int-to-float v15, v15

    mul-float/2addr v13, v15

    float-to-int v13, v13

    const/4 v15, 0x1

    invoke-virtual {v14, v7, v11, v13, v15}, Lsrib/vizinsight/dvs/DVS;->DVSGetSegment(Landroid/graphics/Bitmap;IIZ)Z

    move-result v7

    if-eqz v7, :cond_2c

    const/4 v3, 0x0

    goto :goto_18

    :cond_2c
    add-int/lit8 v11, v3, 0x1

    move v3, v11

    :goto_18
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v11, "Frame backward 2 Segment time : "

    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    sub-long v5, v17, v5

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_17

    :cond_2d
    :goto_19
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Number of total frames processed - "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_d
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, " Segment processing time : "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v3, v3, v23

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "doInBackground : mResultPath : "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lsrib/vizinsight/dvs/SegmentAsyncTask;->mResultPath:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v11, 0x1

    if-le v12, v11, :cond_2e

    move/from16 v15, v22

    int-to-float v0, v15

    sub-int/2addr v12, v11

    int-to-float v5, v12

    const/high16 v6, 0x41200000    # 10.0f

    mul-float/2addr v5, v6

    div-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v8

    goto :goto_1a

    :cond_2e
    const/16 v8, 0x9

    :goto_1a
    const-string v0, "CSPF : "

    invoke-static {v8, v0, v2}, Lt/b;->x(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lsrib/vizinsight/dvs/SegmentAsyncTask;->mResultPath:Ljava/lang/String;

    invoke-virtual {v14, v0, v8}, Lsrib/vizinsight/dvs/DVS;->DVSQuramGenerateGIF(Ljava/lang/String;I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lsrib/vizinsight/dvs/SegmentAsyncTask;->mResultSaved:Ljava/lang/Boolean;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, " GIF Creation time : "

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long/2addr v5, v3

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, v1, Lsrib/vizinsight/dvs/SegmentAsyncTask;->vfd:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;

    const-string v2, "Task is cancelled, but GIF is generated."

    invoke-direct {v1, v0, v2}, Lsrib/vizinsight/dvs/SegmentAsyncTask;->stopDecoder(Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;Ljava/lang/String;)V

    const/4 v1, 0x0

    return-object v1

    :cond_2f
    const/4 v1, 0x0

    return-object v1

    :catch_5
    move-exception v0

    move-object v1, v0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_6
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_7
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_8
    move-exception v0

    goto/16 :goto_1c

    :cond_30
    move v15, v11

    move-object/from16 v14, v17

    const/4 v11, 0x1

    move-object/from16 v17, v8

    const/4 v8, 0x3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "Frame to Bitmap forward decode time : "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move v8, v12

    sub-long v11, v18, v25

    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_31

    iget-object v0, v1, Lsrib/vizinsight/dvs/SegmentAsyncTask;->vfd:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;

    const-string v2, "Task is cancelled, breaking forward loop before segmentation."

    invoke-direct {v1, v0, v2}, Lsrib/vizinsight/dvs/SegmentAsyncTask;->stopDecoder(Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;Ljava/lang/String;)V

    const/4 v1, 0x0

    return-object v1

    :cond_31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iget v4, v1, Lsrib/vizinsight/dvs/SegmentAsyncTask;->mTouchX:F

    move/from16 v18, v0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v4, v0

    float-to-int v0, v4

    iget v4, v1, Lsrib/vizinsight/dvs/SegmentAsyncTask;->mTouchY:F

    move-object/from16 v19, v3

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v4, v3

    float-to-int v3, v4

    const/4 v4, 0x0

    invoke-virtual {v14, v5, v0, v3, v4}, Lsrib/vizinsight/dvs/DVS;->DVSGetSegment(Landroid/graphics/Bitmap;IIZ)Z

    move-result v0

    if-eqz v0, :cond_32

    move v13, v4

    goto :goto_1b

    :cond_32
    add-int/lit8 v13, v13, 0x1

    :goto_1b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Frame forward Segment time : "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    sub-long v11, v25, v11

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v12, v8, 0x1

    move v11, v4

    move v5, v15

    move-object/from16 v8, v17

    move/from16 v0, v18

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    move-object/from16 v17, v14

    goto/16 :goto_12

    :goto_1c
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :goto_1d
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_9
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_a
    move-exception v0

    iget-object v2, v1, Lsrib/vizinsight/dvs/SegmentAsyncTask;->vfd:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error in getting video metadata from MediaMetadataRetriever: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lsrib/vizinsight/dvs/SegmentAsyncTask;->stopDecoder(Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;Ljava/lang/String;)V

    const/4 v1, 0x0

    return-object v1

    :goto_1e
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Extractor error:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v3, v2}, Landroidx/recyclerview/widget/P;->s(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v0, v1, Lsrib/vizinsight/dvs/SegmentAsyncTask;->vfd:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;

    const-string v2, "Error in getting video metadata from MediaMetadataRetriever"

    invoke-direct {v1, v0, v2}, Lsrib/vizinsight/dvs/SegmentAsyncTask;->stopDecoder(Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;Ljava/lang/String;)V

    const/4 v1, 0x0

    return-object v1

    :goto_1f
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "MotionPhotoInfo error:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v3, v2}, Landroidx/recyclerview/widget/P;->s(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-object v1

    :catch_b
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_c
    move-exception v0

    goto :goto_21

    :goto_20
    return-object v1

    :goto_21
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lsrib/vizinsight/dvs/SegmentAsyncTask;->onCancelled(Ljava/lang/Void;)V

    return-void
.end method

.method public onCancelled(Ljava/lang/Void;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    const-string p0, "DVS_SegmentAyncTask"

    const-string p1, "onCancelled"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lsrib/vizinsight/dvs/SegmentAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Void;)V
    .locals 2

    const-string v0, "DVS_SegmentAyncTask"

    const-string v1, "onPostExecute"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    new-instance p1, Lsrib/vizinsight/dvs/ResultInfo;

    invoke-direct {p1}, Lsrib/vizinsight/dvs/ResultInfo;-><init>()V

    iget-object v0, p0, Lsrib/vizinsight/dvs/SegmentAsyncTask;->mResultPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lsrib/vizinsight/dvs/ResultInfo;->setGifPath(Ljava/lang/String;)V

    iget-object v0, p0, Lsrib/vizinsight/dvs/SegmentAsyncTask;->mResultSaved:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lsrib/vizinsight/dvs/ResultInfo;->setResult(Z)V

    iget-object p0, p0, Lsrib/vizinsight/dvs/SegmentAsyncTask;->mListener:Lsrib/vizinsight/dvs/SegmentResultFileCreared;

    invoke-interface {p0, p1}, Lsrib/vizinsight/dvs/SegmentResultFileCreared;->onResultFileCreated(Lsrib/vizinsight/dvs/ResultInfo;)V

    return-void
.end method

.method public varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 1

    iget-object p0, p0, Lsrib/vizinsight/dvs/SegmentAsyncTask;->mListener:Lsrib/vizinsight/dvs/SegmentResultFileCreared;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-interface {p0, p1}, Lsrib/vizinsight/dvs/SegmentResultFileCreared;->onProgressUpdate(Ljava/lang/Integer;)V

    return-void
.end method

.method public bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lsrib/vizinsight/dvs/SegmentAsyncTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
