.class public Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;,
        Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Type;
    }
.end annotation


# static fields
.field private static final SIZE_FORMAT:Ljava/text/DecimalFormat;


# instance fields
.field private final mAppName:Ljava/lang/String;

.field private final mNotificationId:I

.field private final mPackageName:Ljava/lang/String;

.field private final mPercentCompleted:I

.field private final mReceivedBytes:J

.field private final mStartTime:J

.field private final mTotalBytes:J

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;->SIZE_FORMAT:Ljava/text/DecimalFormat;

    return-void
.end method

.method private constructor <init>(Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;->h(Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;->mType:I

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;->c(Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;->mPackageName:Ljava/lang/String;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;->a(Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;->mAppName:Ljava/lang/String;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;->f(Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;->mStartTime:J

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;->e(Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;->mReceivedBytes:J

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;->g(Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;->mTotalBytes:J

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;->d(Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;->mPercentCompleted:I

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;->b(Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;->mNotificationId:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;-><init>(Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo$Builder;)V

    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;->mAppName:Ljava/lang/String;

    return-object p0
.end method

.method public getCurrentProgress()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;->mReceivedBytes:J

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;->getMegaBytesFromBytes(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;->mTotalBytes:J

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;->getMegaBytesFromBytes(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getHumanReadablePercentage()Ljava/lang/String;
    .locals 3

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;->mPercentCompleted:I

    int-to-float p0, p0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p0, v1

    float-to-double v1, p0

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMegaBytesFromBytes(J)Ljava/lang/String;
    .locals 3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;->SIZE_FORMAT:Ljava/text/DecimalFormat;

    long-to-double p1, p1

    const-wide/high16 v1, 0x4130000000000000L    # 1048576.0

    div-double/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "MB"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNotificationId()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;->mNotificationId:I

    return p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getPercentCompleted()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;->mPercentCompleted:I

    return p0
.end method

.method public getReceivedBytes()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;->mReceivedBytes:J

    return-wide v0
.end method

.method public getStartTime()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;->mStartTime:J

    return-wide v0
.end method

.method public getTotalBytes()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;->mTotalBytes:J

    return-wide v0
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/download/ApkDownloadNotificationInfo;->mType:I

    return p0
.end method
