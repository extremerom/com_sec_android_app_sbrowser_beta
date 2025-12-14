.class public Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordBaseKeyItem;
.super Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordBase;
.source "SourceFile"


# instance fields
.field mDeleted:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Long;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordBase;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    iput-boolean p3, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordBaseKeyItem;->mDeleted:Z

    return-void
.end method


# virtual methods
.method public fromJSON(Ljava/lang/Object;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordBase;->fromJSON(Ljava/lang/Object;)V

    check-cast p1, Lorg/json/JSONObject;

    const-string v0, "deleted"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordBaseKeyItem;->mDeleted:Z

    :cond_0
    return-void
.end method

.method public isDeleted()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordBaseKeyItem;->mDeleted:Z

    return p0
.end method

.method public toJSON()Ljava/lang/Object;
    .locals 2

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordBase;->toJSON()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v1, "deleted"

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordBaseKeyItem;->mDeleted:Z

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    return-object v0
.end method
