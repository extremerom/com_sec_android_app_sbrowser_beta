.class public Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView$OnFrameAvailable;,
        Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView$OnAnimationStop;,
        Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView$OnAnimationStart;
    }
.end annotation


# instance fields
.field private mAnimStartCallback:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView$OnAnimationStart;

.field private mAnimStopCallback:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView$OnAnimationStop;

.field private mAnimationThread:Ljava/lang/Thread;

.field private final mCleanUpRunnable:Ljava/lang/Runnable;

.field private mFrameCallback:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView$OnFrameAvailable;

.field private mFramesDisplayDuration:J

.field private mGifDecoder:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;

.field private final mHandler:Landroid/os/Handler;

.field private mIsAnimating:Z

.field private mIsRenderFrame:Z

.field private mShouldClear:Z

.field private mTmpBitmap:Landroid/graphics/Bitmap;

.field private final mUpdateResults:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView;->mFramesDisplayDuration:J

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView;->mFrameCallback:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView$OnFrameAvailable;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView;->mAnimStopCallback:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView$OnAnimationStop;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView;->mAnimStartCallback:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView$OnAnimationStart;

    new-instance p1, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView$1;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView$1;-><init>(Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView;->mUpdateResults:Ljava/lang/Runnable;

    new-instance p1, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView$2;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView$2;-><init>(Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView;->mCleanUpRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView;->mTmpBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView;->mAnimationThread:Ljava/lang/Thread;

    return-void
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView;->mGifDecoder:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;

    return-void
.end method

.method private canStart()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView;->mIsAnimating:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView;->mIsRenderFrame:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView;->mGifDecoder:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView;->mAnimationThread:Ljava/lang/Thread;

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView;->mShouldClear:Z

    return-void
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView;->mTmpBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method private startAnimationThread()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView;->canStart()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView;->mAnimationThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView;->mIsAnimating:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView;->mIsRenderFrame:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView;->mShouldClear:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView;->stopAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView;->mCleanUpRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getFrameCount()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView;->mGifDecoder:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->getFrameCount()I

    move-result p0

    return p0
.end method

.method public getFramesDisplayDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView;->mFramesDisplayDuration:J

    return-wide v0
.end method

.method public getGifHeight()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView;->mGifDecoder:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->getHeight()I

    move-result p0

    return p0
.end method

.method public getGifWidth()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView;->mGifDecoder:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->getWidth()I

    move-result p0

    return p0
.end method

.method public getOnAnimationStop()Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView$OnAnimationStop;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView;->mAnimStopCallback:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView$OnAnimationStop;

    return-object p0
.end method

.method public getOnFrameAvailable()Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView$OnFrameAvailable;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView;->mFrameCallback:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView$OnFrameAvailable;

    return-object p0
.end method

.method public gotoFrame(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView;->mGifDecoder:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->getCurrentFrameIndex()I

    move-result v0

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView;->mGifDecoder:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->setFrameIndex(I)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView;->mIsAnimating:Z

    if-nez p1, :cond_2

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView;->mIsRenderFrame:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView;->startAnimationThread()V

    :cond_2
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView;->clear()V

    return-void
.end method

.method public resetAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView;->mGifDecoder:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->resetLoopIndex()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView;->gotoFrame(I)V

    return-void
.end method

.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView;->mAnimStartCallback:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView$OnAnimationStart;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView$OnAnimationStart;->onAnimationStart()V

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView;->mIsAnimating:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView;->mIsRenderFrame:Z

    if-nez v0, :cond_1

    goto/16 :goto_5

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView;->mGifDecoder:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->advance()Z

    move-result v0

    const-wide/16 v1, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView;->mGifDecoder:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->getNextFrame()Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView;->mTmpBitmap:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView;->mFrameCallback:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView$OnFrameAvailable;

    if-eqz v6, :cond_2

    invoke-interface {v6, v5}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView$OnFrameAvailable;->onFrameAvailable(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView;->mTmpBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    :catch_0
    move-exception v3

    move-wide v5, v1

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long/2addr v5, v3

    const-wide/32 v3, 0xf4240

    div-long/2addr v5, v3
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView;->mUpdateResults:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v3

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "run() : "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GifImageView"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView;->mIsRenderFrame:Z

    iget-boolean v4, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView;->mIsAnimating:Z

    if-eqz v4, :cond_6

    if-nez v0, :cond_3

    goto :goto_4

    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView;->mGifDecoder:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->getNextDelay()I

    move-result v0

    int-to-long v3, v0

    sub-long/2addr v3, v5

    long-to-int v0, v3

    if-lez v0, :cond_5

    iget-wide v3, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView;->mFramesDisplayDuration:J

    cmp-long v1, v3, v1

    if-lez v1, :cond_4

    goto :goto_3

    :cond_4
    int-to-long v3, v0

    :goto_3
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_5
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView;->mIsAnimating:Z

    if-nez v0, :cond_0

    goto :goto_5

    :cond_6
    :goto_4
    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView;->mIsAnimating:Z

    :goto_5
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView;->mShouldClear:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView;->mCleanUpRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView;->mAnimationThread:Ljava/lang/Thread;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView;->mAnimStopCallback:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView$OnAnimationStop;

    if-eqz p0, :cond_8

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView$OnAnimationStop;->onAnimationStop()V

    :cond_8
    return-void
.end method

.method public setBytes([B)V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView;->mGifDecoder:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;

    :try_start_0
    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;->read([B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView;->mIsAnimating:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView;->startAnimationThread()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView;->gotoFrame(I)V

    :goto_0
    return-void

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView;->mGifDecoder:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifDecoder;

    const-string p0, "GifImageView"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public setFramesDisplayDuration(J)V
    .locals 0

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView;->mFramesDisplayDuration:J

    return-void
.end method

.method public setOnAnimationStart(Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView$OnAnimationStart;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView;->mAnimStartCallback:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView$OnAnimationStart;

    return-void
.end method

.method public setOnAnimationStop(Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView$OnAnimationStop;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView;->mAnimStopCallback:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView$OnAnimationStop;

    return-void
.end method

.method public setOnFrameAvailable(Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView$OnFrameAvailable;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView;->mFrameCallback:Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView$OnFrameAvailable;

    return-void
.end method

.method public startAnimation()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView;->mIsAnimating:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView;->startAnimationThread()V

    return-void
.end method

.method public stopAnimation()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView;->mIsAnimating:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView;->mAnimationThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/gif/GifImageView;->mAnimationThread:Ljava/lang/Thread;

    :cond_0
    return-void
.end method
