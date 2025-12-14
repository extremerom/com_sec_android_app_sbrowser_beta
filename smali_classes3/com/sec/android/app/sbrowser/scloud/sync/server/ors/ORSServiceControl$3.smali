.class Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$3;
.super Lcom/sec/android/app/sbrowser/scloud/sync/network/SCHttpResponseHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->list(ZILcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;Ljava/util/Map;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;

.field final synthetic val$item:Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;

.field final synthetic val$serverFileMap:Ljava/util/Map;

.field final synthetic val$version:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;ILcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$3;->this$0:Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;

    iput p2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$3;->val$version:I

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$3;->val$item:Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$3;->val$serverFileMap:Ljava/util/Map;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/scloud/sync/network/SCHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleSCloudResponse(ILorg/json/JSONObject;)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    const-string v3, "ServerItem , invalid value : "

    const-string v4, ") : ServerItem , invalid value : "

    const-string v5, "path"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "revision"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    iget v10, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$3;->val$version:I

    const/4 v11, 0x0

    const-string v12, "]("

    const-string v13, "["

    const-string v14, "ORSServiceControl"

    if-nez v10, :cond_0

    iget-object v10, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$3;->this$0:Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;

    invoke-static {v10}, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->e(Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;)Ljava/util/Map;

    move-result-object v10

    iget-object v15, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$3;->val$item:Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;

    invoke-virtual {v15}, Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;->getSyncKey()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v10, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [I

    aget v10, v10, v11

    if-eq v10, v8, :cond_0

    iget-object v10, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$3;->this$0:Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;

    invoke-static {v10}, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->c(Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;)Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;

    move-result-object v10

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$3;->this$0:Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->d(Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;)Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$3;->this$0:Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->b(Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") : ServerItem , revision update "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$3;->val$item:Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", rev : "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$3;->this$0:Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->e(Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;)Ljava/util/Map;

    move-result-object v2

    iget-object v11, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$3;->val$item:Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;

    invoke-virtual {v11}, Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;->getSyncKey()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    const/4 v11, 0x0

    aget v2, v2, v11

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "->"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v10, v14, v2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;->checkAndLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$3;->this$0:Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->e(Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;)Ljava/util/Map;

    move-result-object v2

    iget-object v10, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$3;->val$item:Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;->getSyncKey()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    const/4 v10, 0x0

    aput v8, v2, v10

    :cond_0
    const-string v2, "children"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v11, 0x0

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v11, v2, :cond_4

    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    :try_start_0
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    const/4 v10, 0x1

    add-int/lit8 v15, v9, 0x1

    invoke-virtual {v8, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    const-string v15, "content.sync"

    invoke-virtual {v8, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v15
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 p2, v0

    const-string v0, ", json : "

    if-eqz v15, :cond_1

    :try_start_2
    iget-object v15, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$3;->this$0:Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;

    invoke-static {v15}, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->c(Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;)Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;

    move-result-object v15

    move-object/from16 v16, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v17, v6

    iget-object v6, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$3;->this$0:Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;

    invoke-static {v6}, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->d(Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;)Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;

    move-result-object v6

    invoke-interface {v6}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$3;->this$0:Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;

    invoke-static {v6}, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->b(Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ") : ServerItem , Content file - Name : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v15, v14, v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;->checkAndLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$3;->this$0:Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->e(Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;)Ljava/util/Map;

    move-result-object v0

    iget-object v5, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$3;->val$item:Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/scloud/sync/data/SyncItem;->getSyncKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const/4 v5, 0x1

    aput v10, v0, v5
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    move-object/from16 v20, v3

    move-object/from16 v18, v7

    move/from16 v19, v9

    const/4 v0, 0x1

    const/4 v7, 0x0

    goto/16 :goto_5

    :catch_0
    move-exception v0

    move-object/from16 v20, v3

    goto/16 :goto_6

    :catch_1
    move-exception v0

    move-object v5, v3

    goto/16 :goto_7

    :catch_2
    move-exception v0

    move-object v5, v3

    goto/16 :goto_8

    :cond_1
    move-object/from16 v16, v5

    move-object/from16 v17, v6

    :try_start_3
    const-string v5, "tag"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    const-string v15, "deleted"

    invoke-virtual {v2, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v15

    move-object/from16 v18, v7

    iget-object v7, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$3;->this$0:Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;

    invoke-static {v7}, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->c(Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;)Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;

    move-result-object v7

    move/from16 v19, v9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0

    move-object/from16 v20, v3

    :try_start_4
    iget-object v3, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$3;->this$0:Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->d(Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;)Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$3;->this$0:Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->b(Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") : ServerItem , Attachment file - Name : "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v14, v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;->checkAndLog(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v15, :cond_2

    iget-object v0, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$3;->val$serverFileMap:Ljava/util/Map;

    int-to-long v9, v10

    const/4 v3, 0x2

    new-array v3, v3, [J

    const/4 v7, 0x0

    aput-wide v5, v3, v7

    const/4 v5, 0x1

    aput-wide v9, v3, v5

    invoke-interface {v0, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_3

    :goto_1
    const/4 v0, 0x1

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_6

    :catch_4
    move-exception v0

    :goto_2
    move-object/from16 v5, v20

    goto/16 :goto_7

    :catch_5
    move-exception v0

    :goto_3
    move-object/from16 v5, v20

    goto/16 :goto_8

    :cond_2
    :goto_4
    const/4 v7, 0x0

    goto :goto_1

    :catch_6
    move-exception v0

    move-object/from16 v20, v3

    goto :goto_2

    :catch_7
    move-exception v0

    move-object/from16 v20, v3

    goto :goto_3

    :cond_3
    move-object/from16 p2, v0

    move-object/from16 v20, v3

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    move/from16 v19, v9

    goto :goto_4

    :goto_5
    add-int/2addr v11, v0

    move-object/from16 v0, p2

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    move/from16 v9, v19

    move-object/from16 v3, v20

    goto/16 :goto_0

    :goto_6
    iget-object v3, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$3;->this$0:Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->c(Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;)Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$3;->this$0:Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;

    invoke-static {v6}, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->d(Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;)Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;

    move-result-object v6

    invoke-interface {v6}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$3;->this$0:Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->b(Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v14, v1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;->checkAndLog(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "IndexOutOfBoundsException err : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object v3, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_JSON:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v5, v20

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v2, v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :goto_7
    iget-object v3, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$3;->this$0:Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->c(Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;)Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$3;->this$0:Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;

    invoke-static {v7}, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->d(Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;)Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;

    move-result-object v7

    invoke-interface {v7}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$3;->this$0:Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->b(Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v14, v1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;->checkAndLog(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "NumberFormatException err : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object v3, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_JSON:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v2, v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :goto_8
    iget-object v3, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$3;->this$0:Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->c(Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;)Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$3;->this$0:Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;

    invoke-static {v7}, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->d(Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;)Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;

    move-result-object v7

    invoke-interface {v7}, Lcom/sec/android/app/sbrowser/scloud/sync/server/IModel;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl$3;->this$0:Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;->b(Lcom/sec/android/app/sbrowser/scloud/sync/server/ors/ORSServiceControl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v14, v1}, Lcom/sec/android/app/sbrowser/scloud/sync/common/IStatusListener;->checkAndLog(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "JSONException err : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object v3, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_JSON:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v2, v0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    return-void
.end method
