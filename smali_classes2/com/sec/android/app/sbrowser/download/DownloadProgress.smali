.class Lcom/sec/android/app/sbrowser/download/DownloadProgress;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field mCanDownloadWhileMetered:Z

.field mDownloadItem:Lcom/sec/terrace/browser/download/TerraceDownloadItem;

.field mDownloadStatus:I

.field mIsAutoResumable:Z

.field mIsInterceptDownload:Z

.field mIsSupportedMimeType:Z

.field mIsUpdated:Z

.field final mStartTimeInMillis:J


# direct methods
.method public constructor <init>(JZLcom/sec/terrace/browser/download/TerraceDownloadItem;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadProgress;->mStartTimeInMillis:J

    iput-boolean p3, p0, Lcom/sec/android/app/sbrowser/download/DownloadProgress;->mCanDownloadWhileMetered:Z

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/download/DownloadProgress;->mDownloadItem:Lcom/sec/terrace/browser/download/TerraceDownloadItem;

    iput p5, p0, Lcom/sec/android/app/sbrowser/download/DownloadProgress;->mDownloadStatus:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadProgress;->mIsAutoResumable:Z

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/download/DownloadProgress;->mIsUpdated:Z

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadProgress;->mIsInterceptDownload:Z

    return-void
.end method
