.class public Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordBase;
.super Lcom/sec/android/app/sbrowser/scloud/sync/common/records/AbstractJSON;
.source "SourceFile"


# instance fields
.field protected mKey:Ljava/lang/String;

.field protected mTimeStamp:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/AbstractJSON;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordBase;->mKey:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordBase;->mTimeStamp:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    return-void
.end method

.method public fromJSON(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lorg/json/JSONObject;

    const-string v0, "key"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordBase;->mKey:Ljava/lang/String;

    :cond_0
    const-string v0, "timestamp"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordBase;->mTimeStamp:Ljava/lang/Long;

    :cond_1
    return-void
.end method

.method public getKEY()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordBase;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public getTimeStamp()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordBase;->mTimeStamp:Ljava/lang/Long;

    return-object p0
.end method

.method public toJSON()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordBase;->mKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordBase;->mTimeStamp:Ljava/lang/Long;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "key"

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordBase;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "timestamp"

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordBase;->mTimeStamp:Ljava/lang/Long;

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0

    :cond_0
    new-instance p0, Lorg/json/JSONException;

    const-string v0, "RecordItemWithResponse :Input parsing error"

    invoke-direct {p0, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
