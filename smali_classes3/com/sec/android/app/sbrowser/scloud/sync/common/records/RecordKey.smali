.class public final Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordKey;
.super Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordBaseKeyItem;
.source "SourceFile"


# instance fields
.field mSize:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Long;JZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p5}, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordBaseKeyItem;-><init>(Ljava/lang/String;Ljava/lang/Long;Z)V

    iput-wide p3, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordKey;->mSize:J

    return-void
.end method


# virtual methods
.method public fromJSON(Ljava/lang/Object;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordBaseKeyItem;->fromJSON(Ljava/lang/Object;)V

    check-cast p1, Lorg/json/JSONObject;

    const-string v0, "size"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordKey;->mSize:J

    :cond_0
    return-void
.end method

.method public getSize()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordKey;->mSize:J

    return-wide v0
.end method

.method public toJSON()Ljava/lang/Object;
    .locals 4

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordBaseKeyItem;->toJSON()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v1, "size"

    iget-wide v2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordKey;->mSize:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    return-object v0
.end method
