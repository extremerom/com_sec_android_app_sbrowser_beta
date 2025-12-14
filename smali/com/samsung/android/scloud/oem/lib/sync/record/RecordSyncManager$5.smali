.class Lcom/samsung/android/scloud/oem/lib/sync/record/RecordSyncManager$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LP8/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/scloud/oem/lib/sync/record/RecordSyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleServiceAction(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 30

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    const-string v2, "--"

    const-string v3, "\r\n"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "GET_LOCAL_FILES : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "RecordSyncManager"

    invoke-static {v5, v4}, LK8/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "local_id"

    invoke-virtual {v1, v4}, Landroid/os/BaseBundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v4

    const-string v6, "server_id"

    invoke-virtual {v1, v6}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const-string v7, "deleted"

    invoke-virtual {v1, v7}, Landroid/os/BaseBundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v7

    const-string v8, "table_name"

    invoke-virtual {v1, v8}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const-string v9, "cid_table_index"

    invoke-virtual {v1, v9}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    const/4 v10, 0x0

    const-string v11, "is_success"

    const/4 v12, 0x0

    if-nez v1, :cond_0

    const-string v0, "index is null..."

    invoke-static {v10, v5, v0}, LK8/b;->b(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v11, v12}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v9

    :cond_0
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    array-length v14, v1

    new-array v14, v14, [Ljava/lang/String;

    array-length v15, v1

    new-array v15, v15, [Ljava/lang/String;

    array-length v12, v1

    new-array v12, v12, [Ljava/lang/String;

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v16, v3

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v17, v2

    move-object/from16 v2, p2

    check-cast v2, Lcom/samsung/android/scloud/oem/lib/sync/record/IRecordSyncClient;

    move-object/from16 v18, v10

    if-eqz v4, :cond_3

    const/4 v0, 0x0

    :goto_0
    array-length v10, v4

    move-object/from16 v27, v12

    if-ge v0, v10, :cond_2

    move-object v10, v13

    aget-wide v12, v4, v0

    aget-boolean v25, v7, v0

    move-object/from16 v28, v4

    aget-object v4, v8, v0

    if-eqz v25, :cond_1

    invoke-interface {v2, v4, v12, v13}, Lcom/samsung/android/scloud/oem/lib/sync/record/IRecordSyncClient;->deleteRecord(Ljava/lang/String;J)V

    move-object/from16 v29, v7

    goto :goto_1

    :cond_1
    move-object/from16 v29, v7

    new-instance v7, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordItem;

    aget-object v22, v6, v0

    const-wide/16 v23, 0x0

    move-object/from16 v19, v7

    move-wide/from16 v20, v12

    move-object/from16 v26, v4

    invoke-direct/range {v19 .. v26}, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordItem;-><init>(JLjava/lang/String;JZLjava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    move-object v13, v10

    move-object/from16 v12, v27

    move-object/from16 v4, v28

    move-object/from16 v7, v29

    goto :goto_0

    :cond_2
    :goto_2
    move-object v10, v13

    goto :goto_3

    :cond_3
    move-object/from16 v27, v12

    goto :goto_2

    :goto_3
    const/4 v0, 0x0

    :goto_4
    array-length v4, v1

    const/4 v6, 0x1

    if-ge v0, v4, :cond_7

    aget-object v4, v1, v0

    const-string v7, ":"

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v7, v4

    const/4 v8, 0x3

    if-ge v7, v8, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "index format is wrong : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v0, v1, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x0

    invoke-static {v7, v5, v0}, LK8/b;->b(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    invoke-virtual {v9, v11, v8}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v9

    :cond_4
    const/4 v7, 0x0

    const/4 v8, 0x0

    aget-object v12, v4, v8

    aput-object v12, v14, v0

    aget-object v6, v4, v6

    aput-object v6, v15, v0

    const/4 v6, 0x2

    aget-object v4, v4, v6

    aput-object v4, v27, v0

    aget-object v4, v15, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v10, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v6, v8

    :goto_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v6, v12, :cond_6

    aget-object v12, v15, v0

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordItem;

    invoke-virtual {v13}, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordItem;->getTableName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordItem;

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_6
    aget-object v6, v15, v0

    move-object/from16 v12, v18

    invoke-virtual {v12, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_7
    move-object/from16 v12, v18

    const/4 v8, 0x0

    const-string v0, "sync_toUploadFile_"

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "sync_toDownloadFile_"

    invoke-static {v0, v1}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-direct {v4, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-direct {v0, v7, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_6

    :catch_0
    move-exception v0

    goto :goto_7

    :cond_8
    :goto_6
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_9
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :goto_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_8
    invoke-virtual {v12}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_f

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/io/FileWriter;

    invoke-direct {v7, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "table : "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, LK8/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "total upload size... "

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, LK8/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    :goto_a
    if-lez v6, :cond_d

    new-instance v15, Lorg/json/JSONArray;

    invoke-direct {v15}, Lorg/json/JSONArray;-><init>()V

    move-object/from16 p1, v4

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    move-object/from16 p4, v11

    const/16 v11, 0x1f4

    move-object/from16 p2, v1

    if-le v6, v11, :cond_a

    goto :goto_b

    :cond_a
    move v11, v6

    :goto_b
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    move-object/from16 v19, v3

    :try_start_3
    const-string v3, "now upload size... "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, LK8/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    mul-int/lit16 v1, v8, 0x1f4

    move v3, v1

    move-object/from16 v20, v9

    :goto_c
    add-int v9, v1, v11

    if-ge v3, v9, :cond_b

    :try_start_4
    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordItem;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :catch_1
    move-exception v0

    goto/16 :goto_10

    :catch_2
    move-exception v0

    goto/16 :goto_12

    :cond_b
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordItem;

    invoke-virtual {v3}, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordItem;->getTableName()Ljava/lang/String;

    move-result-object v9

    move-object/from16 p3, v0

    move-object/from16 v21, v1

    invoke-virtual {v3}, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordItem;->getLocalRecordId()J

    move-result-wide v0

    invoke-interface {v2, v9, v0, v1}, Lcom/samsung/android/scloud/oem/lib/sync/record/IRecordSyncClient;->getRecord(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "record_id"

    invoke-virtual {v3}, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordItem;->getServerRecordId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v15, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    goto :goto_d

    :cond_c
    move-object/from16 p3, v0

    const-string v0, "records"

    invoke-virtual {v4, v0, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "payload : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, LK8/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, v17

    invoke-virtual {v7, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v0

    const-string v3, "1QAZXSW2"

    invoke-virtual {v0, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v0

    move-object/from16 v3, v16

    invoke-virtual {v0, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    const-string v0, "cid:"

    invoke-virtual {v7, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v0

    invoke-virtual {v10, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aget-object v9, v14, v9

    invoke-virtual {v0, v9}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    const-string v0, "tableName:"

    invoke-virtual {v7, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    const-string v0, "tableVersion:"

    invoke-virtual {v7, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v0

    invoke-virtual {v10, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aget-object v9, v27, v9

    invoke-virtual {v0, v9}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    invoke-virtual {v7, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    add-int/lit8 v8, v8, 0x1

    sub-int/2addr v6, v11

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v4, p1

    move-object/from16 v0, p3

    move-object/from16 v11, p4

    move-object/from16 v17, v1

    move-object/from16 v16, v3

    move-object/from16 v3, v19

    move-object/from16 v9, v20

    move-object/from16 v1, p2

    goto/16 :goto_a

    :catch_3
    move-exception v0

    :goto_e
    move-object/from16 v20, v9

    goto :goto_10

    :catch_4
    move-exception v0

    :goto_f
    move-object/from16 v20, v9

    goto :goto_12

    :catch_5
    move-exception v0

    move-object/from16 v19, v3

    goto :goto_e

    :catch_6
    move-exception v0

    move-object/from16 v19, v3

    goto :goto_f

    :catch_7
    move-exception v0

    move-object/from16 p2, v1

    move-object/from16 v19, v3

    move-object/from16 v20, v9

    move-object/from16 p4, v11

    goto :goto_10

    :catch_8
    move-exception v0

    move-object/from16 p2, v1

    move-object/from16 v19, v3

    move-object/from16 v20, v9

    move-object/from16 p4, v11

    goto :goto_12

    :cond_d
    move-object/from16 p2, v1

    move-object/from16 v19, v3

    const/4 v6, 0x1

    const/4 v8, 0x0

    goto/16 :goto_9

    :cond_e
    move-object/from16 p2, v1

    move-object/from16 v19, v3

    move-object/from16 v20, v9

    move-object/from16 p4, v11

    invoke-virtual {v7}, Ljava/io/Writer;->flush()V

    invoke-virtual {v7}, Ljava/io/Writer;->close()V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_13

    :goto_10
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_11
    const/4 v12, 0x0

    goto :goto_14

    :goto_12
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_11

    :cond_f
    move-object/from16 p2, v1

    move-object/from16 v19, v3

    move-object/from16 v20, v9

    move-object/from16 p4, v11

    :goto_13
    const/4 v12, 0x1

    :goto_14
    const-string v0, "upload_file_path"

    move-object/from16 v2, v19

    move-object/from16 v1, v20

    invoke-virtual {v1, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "download_file_path"

    move-object/from16 v2, p2

    invoke-virtual {v1, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, p4

    invoke-virtual {v1, v2, v12}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v1
.end method
