.class public final LJ8/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LP8/b;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/samsung/android/scloud/lib/storage/api/IRecordDataClient;

.field public final synthetic c:LJ8/h;


# direct methods
.method public synthetic constructor <init>(LJ8/h;Lcom/samsung/android/scloud/lib/storage/api/IRecordDataClient;I)V
    .locals 0

    iput p3, p0, LJ8/b;->a:I

    iput-object p1, p0, LJ8/b;->c:LJ8/h;

    iput-object p2, p0, LJ8/b;->b:Lcom/samsung/android/scloud/lib/storage/api/IRecordDataClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleServiceAction(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    const-string v4, "Backup"

    const-string v5, "result"

    const-string v6, "meta_pfd"

    const-string v7, "Restore"

    const-string v8, "messenger"

    const-string v9, "is_success"

    const/4 v10, 0x0

    const/4 v11, 0x1

    const-string v12, "c"

    iget-object v14, v0, LJ8/b;->b:Lcom/samsung/android/scloud/lib/storage/api/IRecordDataClient;

    iget-object v15, v0, LJ8/b;->c:LJ8/h;

    const-string v13, "["

    iget v0, v0, LJ8/b;->a:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "] DOWNLOAD"

    const-string v4, "k"

    invoke-static {v13, v2, v0, v4}, LB/e;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    const-string v0, "record_pfd"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/Messenger;

    check-cast v15, LJ8/k;

    iget-object v6, v15, LJ8/k;->c:LA7/c;

    iput-object v2, v6, LA7/c;->c:Ljava/lang/Object;

    iput-object v3, v6, LA7/c;->b:Ljava/lang/Object;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, LJ8/f;

    invoke-direct {v3, v11, v0}, LJ8/f;-><init>(ILandroid/os/ParcelFileDescriptor;)V

    iget-object v0, v3, LJ8/i;->b:Ljava/lang/Object;

    check-cast v0, Landroid/util/JsonReader;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/util/JsonReader;->beginArray()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v3}, LJ8/f;->s()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v6, v15, LJ8/k;->c:LA7/c;

    invoke-interface {v14, v1, v0, v6}, Lcom/samsung/android/scloud/lib/storage/api/IRecordDataClient;->setData(Landroid/content/Context;Ljava/util/List;Lcom/samsung/android/scloud/lib/storage/api/IRecordDataHelper;)Z

    move-result v13
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v3}, LJ8/i;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] DOWNLOAD "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, LK8/b;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v3}, LJ8/i;->close()V

    const/4 v13, 0x0

    :goto_1
    invoke-virtual {v5, v9, v13}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v5

    :goto_2
    invoke-virtual {v3}, LJ8/i;->close()V

    throw v0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] RESTORE_COMPLETE"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, LK8/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v14, v1, v7, v10}, Lcom/samsung/android/scloud/lib/storage/api/IRecordDataClient;->finish(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    check-cast v15, LJ8/c;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11}, LJ8/h;->b(Z)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :pswitch_1
    check-cast v15, LJ8/c;

    iget-object v0, v15, LJ8/c;->c:Ljava/util/ArrayList;

    iget-object v3, v15, LJ8/c;->d:LQ9/a;

    invoke-interface {v14, v1, v0, v3}, Lcom/samsung/android/scloud/lib/storage/api/IRecordDataClient;->setData(Landroid/content/Context;Ljava/util/List;Lcom/samsung/android/scloud/lib/storage/api/IRecordDataHelper;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] DOWNLOAD_COMPLETE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, LK8/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, LJ8/h;->b(Z)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :pswitch_2
    check-cast v15, LJ8/c;

    const-string v0, "] RESTORE"

    invoke-static {v13, v2, v0, v12}, LB/e;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    const-string v5, "download_path_map_pfd"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelFileDescriptor;

    new-instance v5, LJ8/f;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v0}, LJ8/f;-><init>(ILandroid/os/ParcelFileDescriptor;)V

    iget-object v0, v5, LJ8/i;->b:Ljava/lang/Object;

    check-cast v0, Landroid/util/JsonReader;

    if-eqz v0, :cond_1

    :try_start_3
    invoke-virtual {v0}, Landroid/util/JsonReader;->beginArray()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_3
    :try_start_4
    invoke-virtual {v5}, LJ8/f;->s()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v15, LJ8/c;->c:Ljava/util/ArrayList;

    invoke-interface {v14, v1, v0}, Lcom/samsung/android/scloud/lib/storage/api/IRecordDataClient;->getDownloadPathMap(Landroid/content/Context;Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_4

    :cond_2
    iget-object v1, v15, LJ8/c;->c:Ljava/util/ArrayList;

    invoke-static {v15, v1, v0}, LJ8/c;->c(LJ8/c;Ljava/util/ArrayList;Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v15, LJ8/c;->c:Ljava/util/ArrayList;

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_6

    :cond_3
    :goto_4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_5
    check-cast v0, Ljava/util/Map;

    invoke-static {v3, v0}, LG5/D3;->b(Landroid/os/ParcelFileDescriptor;Ljava/util/Map;)Z

    move-result v13
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_7

    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] RESTORE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, LK8/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x0

    :goto_7
    invoke-virtual {v4, v9, v13}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v4

    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] RESTORE_PREPARE"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, LK8/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v15, LJ8/c;

    if-eqz v3, :cond_4

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    iget-object v3, v15, LJ8/c;->d:LQ9/a;

    iput-object v2, v3, LQ9/a;->c:Ljava/lang/Object;

    iput-object v0, v3, LQ9/a;->d:Ljava/lang/Object;

    :cond_4
    invoke-interface {v14, v1, v7}, Lcom/samsung/android/scloud/lib/storage/api/IRecordDataClient;->prepare(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v11, v0, :cond_5

    goto :goto_8

    :cond_5
    const/4 v11, 0x0

    :goto_8
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11}, LJ8/h;->b(Z)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] BACKUP_COMPLETE"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, LK8/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v14, v1, v4, v10}, Lcom/samsung/android/scloud/lib/storage/api/IRecordDataClient;->finish(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    check-cast v15, LJ8/c;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11}, LJ8/h;->b(Z)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :pswitch_5
    const-string v4, "BACKUP "

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] BACKUP"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, LK8/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/os/ParcelFileDescriptor;

    check-cast v15, LJ8/c;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "h"

    const-string v0, "upload_key_list_pfd"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    :try_start_5
    new-instance v3, Ljava/io/FileInputStream;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :try_start_6
    new-instance v7, Ljava/io/ObjectInputStream;

    invoke-direct {v7, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "] getUploadKeyList file : "

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v15

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, LK8/b;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    :goto_9
    move-object v3, v0

    goto :goto_d

    :catchall_1
    move-exception v0

    move-object v7, v0

    goto :goto_b

    :catchall_2
    move-exception v0

    move-object v8, v0

    :try_start_a
    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_a

    :catchall_3
    move-exception v0

    move-object v7, v0

    :try_start_b
    invoke-virtual {v8, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_a
    throw v8
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :goto_b
    :try_start_c
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    goto :goto_c

    :catchall_4
    move-exception v0

    move-object v3, v0

    :try_start_d
    invoke-virtual {v7, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_c
    throw v7
    :try_end_d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_d .. :try_end_d} :catch_4
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4

    :catch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] can\'t read uploadKeyList"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v6, v0}, LK8/b;->b(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_9

    :goto_d
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    if-nez v5, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] BACKUP: meta_pfd is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, LK8/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    :cond_6
    new-instance v2, LJ8/g;

    const/4 v7, 0x0

    invoke-direct {v2, v7, v5}, LJ8/g;-><init>(ILandroid/os/ParcelFileDescriptor;)V

    :try_start_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, LK8/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v2, LJ8/i;->b:Ljava/lang/Object;

    check-cast v0, Landroid/util/JsonWriter;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    if-eqz v0, :cond_7

    :try_start_f
    invoke-virtual {v0}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    goto :goto_e

    :catch_5
    move-exception v0

    move-object v4, v0

    :try_start_10
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_7
    :goto_e
    invoke-interface {v14, v1, v3}, Lcom/samsung/android/scloud/lib/storage/api/IRecordDataClient;->getData(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_8

    move v11, v7

    goto :goto_10

    :cond_8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LI8/c;

    iget-object v3, v1, LI8/c;->a:LI8/b;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    iget-object v1, v1, LI8/c;->b:LI8/a;

    :try_start_11
    iget-object v4, v3, LI8/b;->a:Ljava/lang/String;

    iget-wide v7, v3, LI8/b;->c:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    iget-object v5, v1, LI8/a;->a:Lorg/json/JSONObject;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v1, v1, LI8/a;->b:Ljava/util/List;

    invoke-virtual {v2, v4, v3, v5, v1}, LJ8/g;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    goto :goto_f

    :catchall_5
    move-exception v0

    move-object v1, v0

    goto :goto_13

    :cond_9
    :goto_10
    :try_start_12
    invoke-virtual {v2}, LJ8/i;->h()V

    invoke-virtual {v2}, LJ8/i;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_6

    goto :goto_11

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_11
    invoke-virtual {v6, v9, v11}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :goto_12
    return-object v6

    :goto_13
    :try_start_13
    invoke-virtual {v2}, LJ8/i;->h()V

    invoke-virtual {v2}, LJ8/i;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_7

    goto :goto_14

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_14
    throw v1

    :pswitch_6
    const/4 v7, 0x0

    const-string v0, "pfd"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v14, v1, v10}, Lcom/samsung/android/scloud/lib/storage/api/IRecordDataClient;->getHeader(Landroid/content/Context;Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LI8/b;

    iget-object v5, v4, LI8/b;->a:Ljava/lang/String;

    iget-wide v8, v4, LI8/b;->c:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    :cond_a
    if-eqz v0, :cond_b

    invoke-static {v0, v3}, LG5/D3;->b(Landroid/os/ParcelFileDescriptor;Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_16

    :cond_b
    move v11, v7

    :goto_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] GET_KEY_AND_DATE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, LK8/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v15, LJ8/c;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11}, LJ8/h;->b(Z)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :pswitch_7
    const/4 v7, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] BACKUP_PREPARE"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, LK8/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v14, v1, v4}, Lcom/samsung/android/scloud/lib/storage/api/IRecordDataClient;->prepare(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v11, v0, :cond_c

    goto :goto_17

    :cond_c
    move v11, v7

    :goto_17
    check-cast v15, LJ8/c;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11}, LJ8/h;->b(Z)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
