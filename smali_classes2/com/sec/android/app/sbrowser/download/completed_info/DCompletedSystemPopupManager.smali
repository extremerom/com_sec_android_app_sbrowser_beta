.class public Lcom/sec/android/app/sbrowser/download/completed_info/DCompletedSystemPopupManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/download/completed_info/DownloadCompletedPopup;


# instance fields
.field private mCount:I

.field private final mDuration:I

.field private mPreviousBar:Lcom/sec/android/app/sbrowser/download/completed_info/DownloadSnackbar;

.field private mSnackbarStartTime:J

.field private mTimerHandler:Landroid/os/Handler;

.field private mTimerRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DCompletedSystemPopupManager;->mCount:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DCompletedSystemPopupManager;->mSnackbarStartTime:J

    const/16 v0, 0xabe

    iput v0, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DCompletedSystemPopupManager;->mDuration:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DCompletedSystemPopupManager;->mTimerHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/android/app/sbrowser/download/b;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/download/b;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DCompletedSystemPopupManager;->mTimerRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/download/completed_info/DCompletedSystemPopupManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/completed_info/DCompletedSystemPopupManager;->lambda$new$0()V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DCompletedSystemPopupManager;->mCount:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DCompletedSystemPopupManager;->mPreviousBar:Lcom/sec/android/app/sbrowser/download/completed_info/DownloadSnackbar;

    return-void
.end method


# virtual methods
.method public recreateSnackbar(Landroid/app/Activity;Lcom/sec/terrace/browser/download/TerraceDownloadItem;ZIJ)V
    .locals 3
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DCompletedSystemPopupManager;->mCount:I

    if-lez v0, :cond_0

    iget-wide v1, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DCompletedSystemPopupManager;->mSnackbarStartTime:J

    sub-long/2addr p5, v1

    const-wide/16 v1, 0x230

    cmp-long p5, p5, v1

    if-gez p5, :cond_0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DCompletedSystemPopupManager;->mCount:I

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/download/completed_info/DCompletedSystemPopupManager;->showView(Landroid/app/Activity;Lcom/sec/terrace/browser/download/TerraceDownloadItem;ZI)V

    :cond_0
    return-void
.end method

.method public showView(Landroid/app/Activity;Lcom/sec/terrace/browser/download/TerraceDownloadItem;ZI)V
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DCompletedSystemPopupManager;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DCompletedSystemPopupManager;->mCount:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DCompletedSystemPopupManager;->mTimerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DCompletedSystemPopupManager;->mTimerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DCompletedSystemPopupManager;->mPreviousBar:Lcom/sec/android/app/sbrowser/download/completed_info/DownloadSnackbar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadSnackbar;->hide()V

    :cond_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DCompletedSystemPopupManager;->mCount:I

    invoke-static {p1, p2, p3, v0, p4}, Lcom/sec/android/app/sbrowser/download/completed_info/DCompletedSystemPopupCreator;->createSystemPopup(Landroid/app/Activity;Lcom/sec/terrace/browser/download/TerraceDownloadItem;ZII)Lcom/sec/android/app/sbrowser/download/completed_info/DownloadSnackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadSnackbar;->isCreated()Z

    move-result p2

    if-eqz p2, :cond_1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DCompletedSystemPopupManager;->mPreviousBar:Lcom/sec/android/app/sbrowser/download/completed_info/DownloadSnackbar;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DCompletedSystemPopupManager;->mTimerHandler:Landroid/os/Handler;

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DCompletedSystemPopupManager;->mTimerRunnable:Ljava/lang/Runnable;

    iget p4, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DCompletedSystemPopupManager;->mDuration:I

    int-to-long v0, p4

    invoke-virtual {p2, p3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DCompletedSystemPopupManager;->mSnackbarStartTime:J

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadSnackbar;->show()V

    goto :goto_0

    :cond_1
    const-string p1, "DCompletedSystemPopupManager"

    const-string p2, "Failed to show snack bar"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    iput p1, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DCompletedSystemPopupManager;->mCount:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DCompletedSystemPopupManager;->mPreviousBar:Lcom/sec/android/app/sbrowser/download/completed_info/DownloadSnackbar;

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DCompletedSystemPopupManager;->mSnackbarStartTime:J

    :goto_0
    return-void
.end method
