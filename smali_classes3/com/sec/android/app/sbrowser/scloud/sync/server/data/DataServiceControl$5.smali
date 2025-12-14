.class Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl$5;
.super Lcom/sec/android/app/sbrowser/scloud/sync/network/SCHttpResponseHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl;->deleteItem(Ljava/util/List;Ljava/lang/String;Ljava/util/List;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl;

.field final synthetic val$failList:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl$5;->this$0:Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl$5;->val$failList:Ljava/util/List;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleSCloudResponse(ILorg/json/JSONObject;)V
    .locals 3

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "deleteItem Finished - "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl$5;->this$0:Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl;->a(Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DataServiceControl"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string p1, "failed_records"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge p2, v0, :cond_1

    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "rcode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const v2, 0x3d1327

    if-ne v1, v2, :cond_0

    const-string v1, "record_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/data/DataServiceControl$5;->val$failList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void

    :catch_0
    new-instance p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object p1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_PARSE:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;)V

    throw p0
.end method
