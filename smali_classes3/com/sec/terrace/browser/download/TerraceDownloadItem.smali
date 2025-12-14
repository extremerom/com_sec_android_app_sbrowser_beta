.class public Lcom/sec/terrace/browser/download/TerraceDownloadItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mDownloadId:J

.field private mDownloadInfo:Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

.field private mEndTime:J

.field private mHasBeenExternallyRemoved:Z

.field private mStartTime:J


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->mDownloadId:J

    iput-object p1, p0, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->mDownloadInfo:Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    return-void
.end method

.method private static createDownloadItem(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;JJZ)Lcom/sec/terrace/browser/download/TerraceDownloadItem;
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lcom/sec/terrace/browser/download/TerraceDownloadItem;

    invoke-direct {v0, p0}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;-><init>(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;)V

    invoke-virtual {v0, p1, p2}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->setStartTime(J)V

    invoke-virtual {v0, p3, p4}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->setEndTime(J)V

    invoke-virtual {v0, p5}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->setHasBeenExternallyRemoved(Z)V

    return-object v0
.end method


# virtual methods
.method public getDownloadInfo()Lcom/sec/terrace/browser/download/TerraceDownloadInfo;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->mDownloadInfo:Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->mDownloadInfo:Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    invoke-virtual {p0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getDownloadGuid()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStartTime()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->mStartTime:J

    return-wide v0
.end method

.method public getSystemDownloadId()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->mDownloadId:J

    return-wide v0
.end method

.method public hasBeenExternallyRemoved()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->mHasBeenExternallyRemoved:Z

    return p0
.end method

.method public isIndeterminate()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->getDownloadInfo()Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getPercentCompleted()I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setDownloadInfo(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->mDownloadInfo:Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    return-void
.end method

.method public setEndTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->mEndTime:J

    return-void
.end method

.method public setHasBeenExternallyRemoved(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->mHasBeenExternallyRemoved:Z

    return-void
.end method

.method public setStartTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->mStartTime:J

    return-void
.end method

.method public setSystemDownloadId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->mDownloadId:J

    return-void
.end method
