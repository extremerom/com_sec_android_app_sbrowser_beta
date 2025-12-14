.class public abstract Lcom/sec/android/app/sbrowser/download/DownloadImageHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sInstance:Lcom/sec/android/app/sbrowser/download/DownloadImageHelper;


# instance fields
.field protected mIsTest:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/DownloadImageHelper;->mIsTest:Z

    return-void
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/download/DownloadImageHelper;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/download/DownloadImageHelper;->sInstance:Lcom/sec/android/app/sbrowser/download/DownloadImageHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/download/DownloadImageHelper;->sInstance:Lcom/sec/android/app/sbrowser/download/DownloadImageHelper;

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/download/DownloadImageHelper;->sInstance:Lcom/sec/android/app/sbrowser/download/DownloadImageHelper;

    return-object v0
.end method


# virtual methods
.method public abstract checkPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract getPendingSaveAllDownloadsMap()Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract maintainPendingSaveAllDownloadsMap(Lcom/sec/android/app/sbrowser/download/data_models/ImageDownloadInfo;Z)V
.end method

.method public abstract resumeAfterRestart(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public setIsTest(Z)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadImageHelper;->mIsTest:Z

    return-void
.end method

.method public abstract stopProcessForRetry()V
.end method

.method public abstract triggerDownload(Lcom/sec/terrace/Terrace;Ljava/util/List;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/terrace/Terrace;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method
