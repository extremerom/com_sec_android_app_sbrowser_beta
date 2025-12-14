.class public Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mDeleted:Z

.field private mIsNew:Z

.field private mLocalId:Ljava/lang/String;

.field private mSyncKey:Ljava/lang/String;

.field private mTag:Ljava/lang/String;

.field private mTimeStamp:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;->mSyncKey:Ljava/lang/String;

    iput-wide p2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;->mTimeStamp:J

    iput-boolean p4, p0, Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;->mDeleted:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;->mIsNew:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;->mLocalId:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;->mSyncKey:Ljava/lang/String;

    iput-wide p3, p0, Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;->mTimeStamp:J

    iput-boolean p5, p0, Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;->mDeleted:Z

    if-nez p2, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;->mIsNew:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public getLocalId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;->mLocalId:Ljava/lang/String;

    return-object p0
.end method

.method public getSyncKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;->mSyncKey:Ljava/lang/String;

    return-object p0
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method public getTimeStamp()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;->mTimeStamp:J

    return-wide v0
.end method

.method public isDeleted()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;->mDeleted:Z

    return p0
.end method

.method public isNew()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;->mIsNew:Z

    return p0
.end method

.method public setIsNew(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;->mIsNew:Z

    return-void
.end method

.method public setLocalId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;->mLocalId:Ljava/lang/String;

    return-void
.end method

.method public setSyncKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;->mSyncKey:Ljava/lang/String;

    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;->mTag:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SyncItem - localId : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;->mLocalId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", syncKey : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", timeStamp : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;->mTimeStamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", deleted : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;->mDeleted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isNew : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;->mIsNew:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
