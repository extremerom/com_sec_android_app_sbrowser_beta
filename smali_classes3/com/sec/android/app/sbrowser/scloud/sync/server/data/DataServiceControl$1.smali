.class Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl$1;
.super Lcom/sec/android/app/sbrowser/scloud/sync/network/SCHttpResponseHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl;->getKeys(Ljava/lang/String;JLjava/lang/String;Ljava/util/HashMap;Landroid/content/ContentValues;Z)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl;

.field final synthetic val$clientInfo:Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl$ClientInfo;

.field final synthetic val$nextKey:Landroid/content/ContentValues;

.field final synthetic val$outServerChanges:Ljava/util/HashMap;

.field final synthetic val$serverTime:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl;Landroid/content/ContentValues;Landroid/content/ContentValues;Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl$ClientInfo;Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl$1;->this$0:Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl$1;->val$nextKey:Landroid/content/ContentValues;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl$1;->val$serverTime:Landroid/content/ContentValues;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl$1;->val$clientInfo:Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl$ClientInfo;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl$1;->val$outServerChanges:Ljava/util/HashMap;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleSCloudResponse(ILorg/json/JSONObject;)V
    .locals 11

    const-string p1, "meta"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getKeys Finished - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl$1;->this$0:Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl;->a(Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DataServiceControl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl$1;->val$nextKey:Landroid/content/ContentValues;

    const-string v3, "key"

    const-string v4, "next_offset"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl$1;->this$0:Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl$1;->val$serverTime:Landroid/content/ContentValues;

    const-string v4, "synced_timestamp"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl;->c(Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl;Landroid/content/ContentValues;J)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_3

    :cond_0
    :goto_0
    const-string v0, "records"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    if-eqz p2, :cond_3

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v4, "record_id"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "modified_time"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v5, "deleted"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    move v9, v3

    goto :goto_2

    :cond_1
    move v9, v0

    :goto_2
    new-instance v3, Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl$1;->val$clientInfo:Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl$ClientInfo;

    iget-object v10, v5, Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl$ClientInfo;->mTableName:Ljava/lang/String;

    move-object v5, v3

    move-object v6, v4

    invoke-direct/range {v5 .. v10}, Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;-><init>(Ljava/lang/String;JZLjava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl$1;->this$0:Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl;

    invoke-static {v6}, Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl;->b(Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl;)Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;

    move-result-object v6

    invoke-interface {v6}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl$1;->this$0:Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl;

    invoke-static {v6}, Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl;->a(Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ") : ServerItem - key : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;->getServerRecordId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", timestamp : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;->getTimeStamp()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", deleted : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/scloud/sync/data/RecordItem;->isDeleted()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl$1;->val$outServerChanges:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "getKeys error : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->B(Lorg/json/JSONException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_3
    return-void
.end method
