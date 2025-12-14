.class public Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mDeleted:Z

.field private mIsNew:Z

.field private mLocalRecordId:J

.field private mServerRecordId:Ljava/lang/String;

.field private mTableName:Ljava/lang/String;

.field private mTimeStamp:J


# direct methods
.method public constructor <init>(JLjava/lang/String;JZLjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;->mIsNew:Z

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;->mLocalRecordId:J

    if-nez p3, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;->mIsNew:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;->generateServerRecordId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;->mServerRecordId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object p3, p0, Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;->mServerRecordId:Ljava/lang/String;

    :goto_0
    iput-wide p4, p0, Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;->mTimeStamp:J

    iput-boolean p6, p0, Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;->mDeleted:Z

    iput-object p7, p0, Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;->mTableName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;->mServerRecordId:Ljava/lang/String;

    iput-wide p2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;->mTimeStamp:J

    iput-boolean p4, p0, Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;->mDeleted:Z

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;->mTableName:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;->mIsNew:Z

    return-void
.end method

.method private generateServerRecordId()Ljava/lang/String;
    .locals 0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getLocalRecordId()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;->mLocalRecordId:J

    return-wide v0
.end method

.method public getServerRecordId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;->mServerRecordId:Ljava/lang/String;

    return-object p0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;->mTableName:Ljava/lang/String;

    return-object p0
.end method

.method public getTimeStamp()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;->mTimeStamp:J

    return-wide v0
.end method

.method public isDeleted()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;->mDeleted:Z

    return p0
.end method

.method public isNew()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;->mIsNew:Z

    return p0
.end method

.method public setIsDeleted(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;->mDeleted:Z

    return-void
.end method

.method public setIsNew(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;->mIsNew:Z

    return-void
.end method

.method public setLocalRecordId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;->mLocalRecordId:J

    return-void
.end method
