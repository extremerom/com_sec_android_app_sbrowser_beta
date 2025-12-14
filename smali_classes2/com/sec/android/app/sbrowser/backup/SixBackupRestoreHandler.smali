.class Lcom/sec/android/app/sbrowser/backup/SixBackupRestoreHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/backup/SixBackupRestoreHandler$CopyMode;
    }
.end annotation


# direct methods
.method private static backup1stPartySixData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "/app_sbrowser/Default/"

    invoke-static {p0, v0}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v0}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Extensions"

    invoke-static {p0, v0}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/sbrowser/backup/SixBackupRestoreHandler$CopyMode;->WHOLE_DIR:Lcom/sec/android/app/sbrowser/backup/SixBackupRestoreHandler$CopyMode;

    invoke-static {v1, v0, v2}, Lcom/sec/android/app/sbrowser/backup/SixBackupRestoreHandler;->copySpecifiedItems(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/backup/SixBackupRestoreHandler$CopyMode;)V

    const-string v0, "Local Extension Settings"

    invoke-static {p0, v0}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v2}, Lcom/sec/android/app/sbrowser/backup/SixBackupRestoreHandler;->copySpecifiedItems(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/backup/SixBackupRestoreHandler$CopyMode;)V

    const-string v0, "Sync Extension Settings"

    invoke-static {p0, v0}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v2}, Lcom/sec/android/app/sbrowser/backup/SixBackupRestoreHandler;->copySpecifiedItems(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/backup/SixBackupRestoreHandler$CopyMode;)V

    const-string v0, "databases"

    invoke-static {p0, v0}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/sbrowser/backup/SixBackupRestoreHandler$CopyMode;->SUB_DIR:Lcom/sec/android/app/sbrowser/backup/SixBackupRestoreHandler$CopyMode;

    invoke-static {v1, v0, v2}, Lcom/sec/android/app/sbrowser/backup/SixBackupRestoreHandler;->copySpecifiedItems(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/backup/SixBackupRestoreHandler$CopyMode;)V

    const-string v0, "IndexedDB"

    invoke-static {p0, v0}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v0}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v2}, Lcom/sec/android/app/sbrowser/backup/SixBackupRestoreHandler;->copySpecifiedItems(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/backup/SixBackupRestoreHandler$CopyMode;)V

    return-void
.end method

.method public static backupSixData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->isSIXSyncEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "SixBackupRestoreHandler"

    const-string p1, "backupSixData - SIX Sync disabled, skipping"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "/shared_prefs/six_data.xml"

    invoke-static {p0, v0}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/sbrowser/backup/SixBackupRestoreHandler$CopyMode;->FILE_ONLY:Lcom/sec/android/app/sbrowser/backup/SixBackupRestoreHandler$CopyMode;

    invoke-static {v1, v0, v2}, Lcom/sec/android/app/sbrowser/backup/SixBackupRestoreHandler;->copySpecifiedItems(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/backup/SixBackupRestoreHandler$CopyMode;)V

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/backup/SixBackupRestoreHandler;->backup1stPartySixData(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/app_sbrowser/Default/Preferences"

    invoke-static {p0, v0}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v0}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v2}, Lcom/sec/android/app/sbrowser/backup/SixBackupRestoreHandler;->copySpecifiedItems(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/backup/SixBackupRestoreHandler$CopyMode;)V

    return-void
.end method

.method private static copySpecifiedItems(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/backup/SixBackupRestoreHandler$CopyMode;)V
    .locals 4

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v2, "SixBackupRestoreHandler"

    if-nez v1, :cond_0

    const-string p1, "copySpecifiedItems - src NOT found : "

    invoke-static {p1, p0, v2}, LV0/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object p0, Lcom/sec/android/app/sbrowser/backup/SixBackupRestoreHandler$CopyMode;->FILE_ONLY:Lcom/sec/android/app/sbrowser/backup/SixBackupRestoreHandler$CopyMode;

    if-ne p2, p0, :cond_1

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->copyFile(Ljava/io/File;Ljava/io/File;)I

    return-void

    :cond_1
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->initDstPath(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->makeDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    const-string p0, "copySpecifiedItems - Failed to create "

    invoke-static {p0, p1, v2}, LV0/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    sget-object p1, Lcom/sec/android/app/sbrowser/backup/SixBackupRestoreHandler$CopyMode;->WHOLE_DIR:Lcom/sec/android/app/sbrowser/backup/SixBackupRestoreHandler$CopyMode;

    if-ne p2, p1, :cond_4

    const/4 p1, 0x0

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->copy(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const-string p1, "internet-extension"

    const/4 p2, 0x0

    invoke-static {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->copy(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Z)I

    :goto_0
    return-void
.end method

.method private static migrateSixPreferences(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13

    const-string v0, "extensions"

    const-class v1, Lcom/google/gson/JsonObject;

    const-string v2, "migrateSixPreferences - jsonRdrDst Exception:"

    const-string v3, "migrateSixPreferences - jsonRdrSrc Exception:"

    const-string v4, "migrateSixPreferences - read src: "

    const-string v5, "migrateSixPreferences - jsonObjSrc created. "

    const-string v6, "migrateSixPreferences - jsonObjDst created. "

    const-string v7, "migrateSixPreferences - fisDst.available: "

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    const-string v10, "SixBackupRestoreHandler"

    if-nez v9, :cond_0

    const-string p1, "migrateSixPreferences - src NOT found : "

    invoke-static {p1, p0, v10}, LV0/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "migrateSixPreferences - Preferences NOT found. create it"

    invoke-static {v10, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p0, "migrateSixPreferences - abort. failed to create Preferences file"

    invoke-static {v10, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "migrateSixPreferences - IOException: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v10, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :try_start_1
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/FileInputStream;->available()I

    move-result v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    new-instance v7, Lcom/google/gson/stream/JsonReader;

    new-instance v9, Ljava/io/InputStreamReader;

    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v9, v8, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v7, v9}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    new-instance v9, Lcom/google/gson/Gson;

    invoke-direct {v9}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v9, v7, v1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/gson/JsonObject;

    if-nez v9, :cond_2

    const-string v6, "migrateSixPreferences - jsonObjDst still null, create it"

    invoke-static {v10, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Lcom/google/gson/JsonObject;

    invoke-direct {v9}, Lcom/google/gson/JsonObject;-><init>()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_7

    :cond_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_0
    :try_start_6
    invoke-virtual {v7}, Lcom/google/gson/stream/JsonReader;->close()V
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    new-instance v2, Lcom/google/gson/stream/JsonReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, p1, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v6}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    new-instance v6, Lcom/google/gson/Gson;

    invoke-direct {v6}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v6, v2, v1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonObject;

    if-nez v1, :cond_3

    const-string v1, "migrateSixPreferences - jsonObjSrc still null, create it"

    invoke-static {v10, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    goto :goto_1

    :catchall_1
    move-exception p0

    goto/16 :goto_4

    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_1
    :try_start_9
    invoke-virtual {v2}, Lcom/google/gson/stream/JsonReader;->close()V
    :try_end_9
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    invoke-virtual {v1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    if-nez v1, :cond_4

    const-string p0, "migrateSixPreferences - extObj is null. nothing to migrate"

    invoke-static {v10, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    return-void

    :catch_1
    move-exception p0

    goto/16 :goto_e

    :catchall_2
    move-exception p0

    goto/16 :goto_c

    :catchall_3
    move-exception p0

    goto/16 :goto_a

    :cond_4
    :try_start_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "migrateSixPreferences - add extObj"

    invoke-static {v10, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9, v0, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :try_start_e
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :try_start_f
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1

    :try_start_10
    new-instance p1, Ljava/io/FileWriter;

    invoke-direct {p1, p0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_2

    :try_start_11
    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    :try_start_12
    invoke-virtual {p1}, Ljava/io/Writer;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_2

    return-void

    :catch_2
    move-exception p0

    goto :goto_3

    :catchall_4
    move-exception p0

    :try_start_13
    invoke-virtual {p1}, Ljava/io/Writer;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception p1

    :try_start_14
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_2

    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "migrateSixPreferences - IOException:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v10, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_3
    move-exception p0

    goto :goto_6

    :goto_4
    :try_start_15
    invoke-virtual {v2}, Lcom/google/gson/stream/JsonReader;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    goto :goto_5

    :catchall_6
    move-exception v0

    :try_start_16
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw p0
    :try_end_16
    .catch Ljava/lang/NullPointerException; {:try_start_16 .. :try_end_16} :catch_3
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_3
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_16 .. :try_end_16} :catch_3
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    :goto_6
    :try_start_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v10, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    :try_start_18
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    :try_start_19
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_1

    return-void

    :catch_4
    move-exception p0

    goto :goto_9

    :goto_7
    :try_start_1a
    invoke-virtual {v7}, Lcom/google/gson/stream/JsonReader;->close()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_7

    goto :goto_8

    :catchall_7
    move-exception v0

    :try_start_1b
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_8
    throw p0
    :try_end_1b
    .catch Ljava/lang/NullPointerException; {:try_start_1b .. :try_end_1b} :catch_4
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_4
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_1b .. :try_end_1b} :catch_4
    .catchall {:try_start_1b .. :try_end_1b} :catchall_3

    :goto_9
    :try_start_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v10, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_3

    :try_start_1d
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_2

    :try_start_1e
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_1

    return-void

    :goto_a
    :try_start_1f
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_8

    goto :goto_b

    :catchall_8
    move-exception v0

    :try_start_20
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_b
    throw p0
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_2

    :goto_c
    :try_start_21
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_9

    goto :goto_d

    :catchall_9
    move-exception p1

    :try_start_22
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_d
    throw p0
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_1

    :goto_e
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "migrateSixPreferences - Exception: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v10}, Landroidx/recyclerview/widget/P;->C(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void
.end method

.method private static restore1stPartySixData(Ljava/io/File;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "/app_sbrowser/Default/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p0}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Extensions"

    invoke-static {v0, p1}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lcom/sec/android/app/sbrowser/backup/SixBackupRestoreHandler$CopyMode;->WHOLE_DIR:Lcom/sec/android/app/sbrowser/backup/SixBackupRestoreHandler$CopyMode;

    invoke-static {v1, p1, v2}, Lcom/sec/android/app/sbrowser/backup/SixBackupRestoreHandler;->copySpecifiedItems(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/backup/SixBackupRestoreHandler$CopyMode;)V

    const-string p1, "Local Extension Settings"

    invoke-static {v0, p1}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v2}, Lcom/sec/android/app/sbrowser/backup/SixBackupRestoreHandler;->copySpecifiedItems(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/backup/SixBackupRestoreHandler$CopyMode;)V

    const-string p1, "Sync Extension Settings"

    invoke-static {v0, p1}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v2}, Lcom/sec/android/app/sbrowser/backup/SixBackupRestoreHandler;->copySpecifiedItems(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/backup/SixBackupRestoreHandler$CopyMode;)V

    const-string p1, "databases"

    invoke-static {v0, p1}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v2}, Lcom/sec/android/app/sbrowser/backup/SixBackupRestoreHandler;->copySpecifiedItems(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/backup/SixBackupRestoreHandler$CopyMode;)V

    const-string p1, "IndexedDB"

    invoke-static {v0, p1}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v2}, Lcom/sec/android/app/sbrowser/backup/SixBackupRestoreHandler;->copySpecifiedItems(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/backup/SixBackupRestoreHandler$CopyMode;)V

    return-void
.end method

.method public static restoreSixData(Ljava/io/File;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->isSIXSyncEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "SixBackupRestoreHandler"

    const-string p1, "restoreSixData - SIX sync disabled. skipping"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/shared_prefs/six_data.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/sbrowser/backup/SixBackupRestoreHandler$CopyMode;->FILE_ONLY:Lcom/sec/android/app/sbrowser/backup/SixBackupRestoreHandler$CopyMode;

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/sbrowser/backup/SixBackupRestoreHandler;->copySpecifiedItems(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/backup/SixBackupRestoreHandler$CopyMode;)V

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/backup/SixBackupRestoreHandler;->restore1stPartySixData(Ljava/io/File;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "/app_sbrowser/Default/Preferences"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p0}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/backup/SixBackupRestoreHandler;->migrateSixPreferences(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
