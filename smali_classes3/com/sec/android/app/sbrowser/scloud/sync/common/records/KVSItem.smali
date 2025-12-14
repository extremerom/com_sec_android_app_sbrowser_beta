.class public Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mDeleted:Z

.field private mId:J

.field private mSize:J

.field private mTimeStamp:J

.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(JZJLjava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSItem;->mId:J

    iput-boolean p3, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSItem;->mDeleted:Z

    iput-wide p4, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSItem;->mTimeStamp:J

    iput-object p6, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSItem;->mValue:Ljava/lang/String;

    iput-wide p7, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSItem;->mSize:J

    return-void
.end method


# virtual methods
.method public getID()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSItem;->mId:J

    return-wide v0
.end method

.method public getSize()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSItem;->mSize:J

    return-wide v0
.end method

.method public getTimeStamp()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSItem;->mTimeStamp:J

    return-wide v0
.end method

.method public isDeleted()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSItem;->mDeleted:Z

    return p0
.end method

.method public setID(J)V
    .locals 0

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/KVSItem;->mId:J

    return-void
.end method
