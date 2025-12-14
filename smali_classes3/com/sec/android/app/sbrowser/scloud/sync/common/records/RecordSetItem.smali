.class public final Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordSetItem;
.super Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordBase;
.source "SourceFile"


# instance fields
.field mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordBase;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordSetItem;->mValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public fromJSON(Ljava/lang/Object;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordBase;->fromJSON(Ljava/lang/Object;)V

    check-cast p1, Lorg/json/JSONObject;

    const-string v0, "value"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordSetItem;->mValue:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public toJSON()Ljava/lang/Object;
    .locals 2

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordBase;->toJSON()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v1, "value"

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/records/RecordSetItem;->mValue:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
