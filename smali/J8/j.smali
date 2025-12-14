.class public final LJ8/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LP8/b;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/samsung/android/scloud/lib/storage/api/IRecordDataClient;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/scloud/lib/storage/api/IRecordDataClient;I)V
    .locals 0

    iput p2, p0, LJ8/j;->a:I

    iput-object p1, p0, LJ8/j;->b:Lcom/samsung/android/scloud/lib/storage/api/IRecordDataClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleServiceAction(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    const-string v4, "record_pfd"

    const-string v5, "timestamp"

    const/4 v6, 0x0

    const-string v7, "local_id"

    const-string v8, "is_success"

    const/4 v9, 0x0

    const-string v10, "record_id"

    const/4 v11, 0x1

    iget-object v12, v0, LJ8/j;->b:Lcom/samsung/android/scloud/lib/storage/api/IRecordDataClient;

    const-string v13, "k"

    const-string v14, "["

    iget v0, v0, LJ8/j;->a:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "] FINISH"

    invoke-static {v14, v2, v0, v13}, LB/e;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "sync"

    invoke-interface {v12, v1, v2, v3}, Lcom/samsung/android/scloud/lib/storage/api/IRecordDataClient;->finish(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v0

    :pswitch_0
    const-string v0, "] DOWNLOAD_COMPLETE"

    invoke-static {v14, v2, v0, v13}, LB/e;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "downSync"

    invoke-interface {v12, v1, v2, v3}, Lcom/samsung/android/scloud/lib/storage/api/IRecordDataClient;->finish(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v0

    :pswitch_1
    const-string v0, "] UPLOAD_COMPLETE"

    invoke-static {v14, v2, v0, v13}, LB/e;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v3, v10}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v7}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5}, Landroid/os/BaseBundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v3

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_2

    if-eqz v4, :cond_2

    array-length v7, v2

    :goto_0
    if-ge v9, v7, :cond_1

    aget-object v16, v2, v9

    aget-object v17, v4, v9

    new-instance v10, LI8/b;

    if-eqz v3, :cond_0

    aget-wide v13, v3, v9

    :goto_1
    move-wide v14, v13

    goto :goto_2

    :cond_0
    const-wide/16 v13, 0x0

    goto :goto_1

    :goto_2
    const-string v18, "uploadComplete"

    move-object v13, v10

    invoke-direct/range {v13 .. v18}, LI8/b;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v13, LI8/c;

    invoke-direct {v13, v10, v6}, LI8/c;-><init>(LI8/b;LI8/a;)V

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v9, v11

    goto :goto_0

    :cond_1
    invoke-interface {v12, v1, v5, v6}, Lcom/samsung/android/scloud/lib/storage/api/IRecordDataClient;->setData(Landroid/content/Context;Ljava/util/List;Lcom/samsung/android/scloud/lib/storage/api/IRecordDataHelper;)Z

    move-result v9

    :cond_2
    invoke-virtual {v0, v8, v9}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0

    :pswitch_2
    const-string v0, "] DELETE"

    invoke-static {v14, v2, v0, v13}, LB/e;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v3, v10}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    array-length v4, v2

    :goto_3
    if-ge v9, v4, :cond_3

    aget-object v16, v2, v9

    new-instance v5, LI8/b;

    const-string v18, "delete"

    const/16 v17, 0x0

    const-wide/16 v14, 0x0

    move-object v13, v5

    invoke-direct/range {v13 .. v18}, LI8/b;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, LI8/c;

    invoke-direct {v7, v5, v6}, LI8/c;-><init>(LI8/b;LI8/a;)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v9, v11

    goto :goto_3

    :cond_3
    invoke-interface {v12, v1, v3, v6}, Lcom/samsung/android/scloud/lib/storage/api/IRecordDataClient;->setData(Landroid/content/Context;Ljava/util/List;Lcom/samsung/android/scloud/lib/storage/api/IRecordDataHelper;)Z

    move-result v1

    invoke-virtual {v0, v8, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0

    :pswitch_3
    const-string v5, "UPLOAD error : "

    const-string v0, "] UPLOAD"

    invoke-static {v14, v2, v0, v13}, LB/e;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3, v10}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v7}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v4, :cond_b

    if-eqz v3, :cond_b

    if-eqz v0, :cond_b

    new-instance v7, LJ8/g;

    invoke-direct {v7, v11, v0}, LJ8/g;-><init>(ILandroid/os/ParcelFileDescriptor;)V

    :try_start_0
    iget-object v0, v7, LJ8/i;->b:Ljava/lang/Object;

    check-cast v0, Landroid/util/JsonWriter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_4

    :try_start_1
    invoke-virtual {v0}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v14, v0

    :try_start_2
    invoke-virtual {v14}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_4
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v15, v3

    :goto_5
    if-ge v9, v15, :cond_5

    aget-object v6, v3, v9

    aget-object v11, v4, v9

    invoke-virtual {v14, v6, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aget-object v6, v3, v9

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x1

    add-int/2addr v9, v6

    move v11, v6

    const/4 v6, 0x0

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto/16 :goto_c

    :catch_1
    move-exception v0

    goto/16 :goto_a

    :cond_5
    invoke-interface {v12, v1, v0}, Lcom/samsung/android/scloud/lib/storage/api/IRecordDataClient;->getData(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iget-object v0, v7, LJ8/i;->b:Ljava/lang/Object;

    check-cast v0, Landroid/util/JsonWriter;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_6

    :try_start_3
    invoke-virtual {v0}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    const-string v3, "records"

    invoke-virtual {v0, v3}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    invoke-virtual {v0}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_6

    :catch_2
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LI8/c;

    const-string v3, "dataSet : "

    invoke-static {v13, v3}, LK8/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v1, LI8/c;->b:LI8/a;

    iget-object v4, v3, LI8/a;->a:Lorg/json/JSONObject;

    iget-object v1, v1, LI8/c;->a:LI8/b;

    iget-object v6, v1, LI8/b;->a:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_7

    iget-object v6, v1, LI8/b;->b:Ljava/lang/String;

    invoke-virtual {v14, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v10, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_7
    iget-object v9, v3, LI8/a;->c:Ljava/util/Map;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-wide v11, v1, LI8/b;->c:J

    if-eqz v9, :cond_8

    :try_start_5
    invoke-interface {v9}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, v3, LI8/a;->c:Ljava/util/Map;

    invoke-virtual {v7, v1, v3}, LJ8/g;->t(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_7

    :cond_8
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v3, v3, LI8/a;->b:Ljava/util/List;

    invoke-virtual {v7, v6, v1, v4, v3}, LJ8/g;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_7

    :cond_9
    iget-object v0, v7, LJ8/i;->b:Ljava/lang/Object;

    check-cast v0, Landroid/util/JsonWriter;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v0, :cond_a

    :try_start_6
    invoke-virtual {v0}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    invoke-virtual {v0}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    invoke-virtual {v0}, Landroid/util/JsonWriter;->flush()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_8

    :catch_3
    move-exception v0

    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_a
    :goto_8
    :try_start_8
    invoke-virtual {v7}, LJ8/i;->h()V

    invoke-virtual {v7}, LJ8/i;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_b

    :catch_4
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_9
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v13, v0}, LK8/b;->b(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :goto_a
    :try_start_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UPLOAD parsing error : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v13, v0}, LK8/b;->b(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    invoke-virtual {v7}, LJ8/i;->h()V

    invoke-virtual {v7}, LJ8/i;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    goto :goto_b

    :catch_5
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_9

    :goto_b
    const/4 v9, 0x1

    goto :goto_e

    :goto_c
    :try_start_b
    invoke-virtual {v7}, LJ8/i;->h()V

    invoke-virtual {v7}, LJ8/i;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    goto :goto_d

    :catch_6
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v2, v13, v0}, LK8/b;->b(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :goto_d
    throw v1

    :cond_b
    :goto_e
    invoke-virtual {v2, v8, v9}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v2

    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] GET_LOCAL_CHANGES"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, LK8/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v12, v1, v3}, Lcom/samsung/android/scloud/lib/storage/api/IRecordDataClient;->getHeader(Landroid/content/Context;Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_e

    new-array v4, v3, [Ljava/lang/String;

    new-array v6, v3, [J

    new-array v11, v3, [Ljava/lang/String;

    new-array v12, v3, [Ljava/lang/String;

    new-array v13, v3, [Ljava/lang/String;

    :goto_f
    if-ge v9, v3, :cond_c

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, LI8/b;

    iget-object v15, v14, LI8/b;->b:Ljava/lang/String;

    aput-object v15, v4, v9

    iget-object v15, v14, LI8/b;->a:Ljava/lang/String;

    aput-object v15, v13, v9

    move-object/from16 p0, v2

    move/from16 p1, v3

    iget-wide v2, v14, LI8/b;->c:J

    aput-wide v2, v6, v9

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v9

    iget-object v2, v14, LI8/b;->d:Ljava/lang/String;

    aput-object v2, v12, v9

    const/4 v2, 0x1

    add-int/2addr v9, v2

    move-object/from16 v2, p0

    move/from16 v3, p1

    goto :goto_f

    :cond_c
    move-object/from16 p0, v2

    const-string v0, "status"

    if-eqz v1, :cond_d

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v2, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v10, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v5, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v2}, LG5/D3;->b(Landroid/os/ParcelFileDescriptor;Ljava/util/Map;)Z

    move-result v0

    move-object/from16 v1, p0

    invoke-virtual {v1, v8, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_10

    :cond_d
    move-object/from16 v1, p0

    invoke-virtual {v1, v7, v4}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v1, v10, v13}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v1, v5, v6}, Landroid/os/BaseBundle;->putLongArray(Ljava/lang/String;[J)V

    invoke-virtual {v1, v0, v12}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v8, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_10

    :cond_e
    move-object v1, v2

    const/4 v2, 0x1

    invoke-virtual {v1, v8, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :goto_10
    return-object v1

    :pswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] Sync Prepare"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, LK8/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Sync"

    invoke-interface {v12, v1, v0}, Lcom/samsung/android/scloud/lib/storage/api/IRecordDataClient;->prepare(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
