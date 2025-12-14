.class public Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAppName:Ljava/lang/String;

.field private mNotificationId:I

.field private mPackageName:Ljava/lang/String;

.field private mPercentCompleted:I

.field private mReceivedBytes:J

.field private mStartTime:J

.field private mTotalBytes:J

.field private mType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;->mAppName:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;->mNotificationId:I

    return p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;->mPercentCompleted:I

    return p0
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;->mReceivedBytes:J

    return-wide v0
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;->mStartTime:J

    return-wide v0
.end method

.method public static fromDownloadNotificationInfo(Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;)Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;
    .locals 4

    new-instance v0, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;->setType(I)Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;->setPackageName(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;->setAppName(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;->getStartTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;->setStartTime(J)Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;->getReceivedBytes()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;->setReceivedBytes(J)Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;->getTotalBytes()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;->setTotalBytes(J)Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;->getPercentCompleted()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;->setPercentCompleted(I)Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;->getNotificationId()I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;->setNotificationId(I)Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;

    return-object v0
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;->mTotalBytes:J

    return-wide v0
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;->mType:I

    return p0
.end method


# virtual methods
.method public build()Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;-><init>(Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;I)V

    return-object v0
.end method

.method public setAppName(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;->mAppName:Ljava/lang/String;

    return-object p0
.end method

.method public setNotificationId(I)Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;->mNotificationId:I

    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public setPercentCompleted(I)Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;->mPercentCompleted:I

    return-object p0
.end method

.method public setReceivedBytes(J)Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;->mReceivedBytes:J

    return-object p0
.end method

.method public setStartTime(J)Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;->mStartTime:J

    return-object p0
.end method

.method public setTotalBytes(J)Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;->mTotalBytes:J

    return-object p0
.end method

.method public setType(I)Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;->mType:I

    return-object p0
.end method
