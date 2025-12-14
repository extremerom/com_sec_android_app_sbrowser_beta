.class public final synthetic LM4/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LP4/b;
.implements LO4/f;
.implements LRd/p;
.implements LR5/g;
.implements Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper$FaviconImageCallback;
.implements Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudTranslationHandler$TranslationResultCallback;
.implements Lcom/sec/android/app/sbrowser/artificial_intelligence/common/GetExtractSentencesCallback;
.implements Lcom/sec/android/app/sbrowser/authentication/Authenticator$Callback;
.implements Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend$GetCreditCards_Response;
.implements Lcom/sec/android/app/sbrowser/common/sync/ISyncSettingUIManager$InitCallback;
.implements Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper$CookiesForUrlListener;
.implements Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$FetchContentCallback;
.implements Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils$TaskCompletionCallback;
.implements Lorg/chromium/webapk/lib/client/WebApkIdentityServiceClient$CheckBrowserBacksWebApkCallback;
.implements Lorg/chromium/components/webauthn/IsUvpaaResponseCallback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(LO4/h;Ljava/lang/Object;LH4/k;I)V
    .locals 0

    iput p4, p0, LM4/a;->a:I

    iput-object p1, p0, LM4/a;->d:Ljava/lang/Object;

    iput-object p2, p0, LM4/a;->b:Ljava/lang/Object;

    iput-object p3, p0, LM4/a;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p2, p0, LM4/a;->a:I

    iput-object p1, p0, LM4/a;->d:Ljava/lang/Object;

    iput-object p3, p0, LM4/a;->c:Ljava/lang/Object;

    iput-object p4, p0, LM4/a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)LR5/p;
    .locals 7

    iget-object v0, p0, LM4/a;->d:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/messaging/FirebaseMessaging;

    iget-object v1, p0, LM4/a;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object p0, p0, LM4/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/firebase/messaging/r;

    check-cast p1, Ljava/lang/String;

    iget-object v2, v0, Lcom/google/firebase/messaging/FirebaseMessaging;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/firebase/messaging/FirebaseMessaging;->d(Landroid/content/Context;)LO9/a;

    move-result-object v2

    iget-object v3, v0, Lcom/google/firebase/messaging/FirebaseMessaging;->a:Lp7/f;

    invoke-virtual {v3}, Lp7/f;->a()V

    const-string v4, "[DEFAULT]"

    iget-object v5, v3, Lp7/f;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v3, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lp7/f;->c()Ljava/lang/String;

    move-result-object v3

    :goto_0
    iget-object v4, v0, Lcom/google/firebase/messaging/FirebaseMessaging;->k:LA7/e;

    invoke-virtual {v4}, LA7/e;->b()Ljava/lang/String;

    move-result-object v4

    monitor-enter v2

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6, p1, v4}, Lcom/google/firebase/messaging/r;->a(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_1

    monitor-exit v2

    goto :goto_1

    :cond_1
    :try_start_1
    iget-object v5, v2, LO9/a;->b:Ljava/lang/Object;

    check-cast v5, Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "|T|"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|*"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v1, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    :goto_1
    if-eqz p0, :cond_2

    iget-object p0, p0, Lcom/google/firebase/messaging/r;->a:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    :cond_2
    invoke-virtual {v0, p1}, Lcom/google/firebase/messaging/FirebaseMessaging;->f(Ljava/lang/String;)V

    :cond_3
    invoke-static {p1}, LG5/G;->f(Ljava/lang/Object;)LR5/p;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p0

    const-string v2, "bytes"

    const-string v3, "PRAGMA page_size"

    const-string v4, "PRAGMA page_count"

    const/4 v5, 0x2

    iget-object v6, v0, LM4/a;->b:Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, v0, LM4/a;->c:Ljava/lang/Object;

    iget-object v9, v0, LM4/a;->d:Ljava/lang/Object;

    const/4 v10, 0x1

    iget v0, v0, LM4/a;->a:I

    packed-switch v0, :pswitch_data_0

    move-object/from16 v0, p1

    check-cast v0, Landroid/database/Cursor;

    check-cast v9, LO4/h;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    move-object v2, v8

    check-cast v2, Ljava/util/HashMap;

    if-eqz v1, :cond_8

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    sget-object v12, LK4/c;->REASON_UNKNOWN:LK4/c;

    invoke-virtual {v12}, LK4/c;->getNumber()I

    move-result v13

    if-ne v11, v13, :cond_0

    goto :goto_2

    :cond_0
    sget-object v13, LK4/c;->MESSAGE_TOO_OLD:LK4/c;

    invoke-virtual {v13}, LK4/c;->getNumber()I

    move-result v14

    if-ne v11, v14, :cond_1

    :goto_1
    move-object v12, v13

    goto :goto_2

    :cond_1
    sget-object v13, LK4/c;->CACHE_FULL:LK4/c;

    invoke-virtual {v13}, LK4/c;->getNumber()I

    move-result v14

    if-ne v11, v14, :cond_2

    goto :goto_1

    :cond_2
    sget-object v13, LK4/c;->PAYLOAD_TOO_BIG:LK4/c;

    invoke-virtual {v13}, LK4/c;->getNumber()I

    move-result v14

    if-ne v11, v14, :cond_3

    goto :goto_1

    :cond_3
    sget-object v13, LK4/c;->MAX_RETRIES_REACHED:LK4/c;

    invoke-virtual {v13}, LK4/c;->getNumber()I

    move-result v14

    if-ne v11, v14, :cond_4

    goto :goto_1

    :cond_4
    sget-object v13, LK4/c;->INVALID_PAYLOD:LK4/c;

    invoke-virtual {v13}, LK4/c;->getNumber()I

    move-result v14

    if-ne v11, v14, :cond_5

    goto :goto_1

    :cond_5
    sget-object v13, LK4/c;->SERVER_ERROR:LK4/c;

    invoke-virtual {v13}, LK4/c;->getNumber()I

    move-result v14

    if-ne v11, v14, :cond_6

    goto :goto_1

    :cond_6
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v13, "SQLiteEventStore"

    const-string v14, "%n is not valid. No matched LogEventDropped-Reason found. Treated it as REASON_UNKNOWN"

    invoke-static {v11, v13, v14}, Landroidx/activity/t;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    new-instance v2, LK4/d;

    invoke-direct {v2, v13, v14, v12}, LK4/d;-><init>(JLK4/c;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_8
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    move-object v2, v6

    check-cast v2, Lo3/i;

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    sget v5, LK4/e;->c:I

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    new-instance v8, LK4/e;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v8, v5, v1}, LK4/e;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iget-object v1, v2, Lo3/i;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    iget-object v0, v9, LO4/h;->b:LQ4/a;

    invoke-interface {v0}, LQ4/a;->b()J

    move-result-wide v0

    invoke-virtual {v9}, LO4/h;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    new-array v6, v7, [Ljava/lang/String;

    const-string v8, "SELECT last_metrics_upload_ms FROM global_log_event_state LIMIT 1"

    invoke-virtual {v5, v8, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    new-instance v10, LK4/g;

    invoke-direct {v10, v7, v8, v0, v1}, LK4/g;-><init>(JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    iput-object v10, v2, Lo3/i;->a:Ljava/lang/Object;

    invoke-virtual {v9}, LO4/h;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v0

    invoke-virtual {v9}, LO4/h;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v3

    mul-long/2addr v3, v0

    sget-object v0, LO4/a;->f:LO4/a;

    new-instance v1, LK4/f;

    iget-wide v5, v0, LO4/a;->a:J

    invoke-direct {v1, v3, v4, v5, v6}, LK4/f;-><init>(JJ)V

    new-instance v0, LK4/b;

    invoke-direct {v0, v1}, LK4/b;-><init>(LK4/f;)V

    iput-object v0, v2, Lo3/i;->c:Ljava/lang/Object;

    iget-object v0, v9, LO4/h;->e:Lcb/a;

    invoke-interface {v0}, Lcb/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lo3/i;->d:Ljava/lang/Object;

    new-instance v0, LK4/a;

    iget-object v1, v2, Lo3/i;->a:Ljava/lang/Object;

    check-cast v1, LK4/g;

    iget-object v3, v2, Lo3/i;->b:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iget-object v4, v2, Lo3/i;->c:Ljava/lang/Object;

    check-cast v4, LK4/b;

    iget-object v2, v2, Lo3/i;->d:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-direct {v0, v1, v3, v4, v2}, LK4/a;-><init>(LK4/g;Ljava/util/List;LK4/b;Ljava/lang/String;)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_4
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    :pswitch_0
    move-object/from16 v0, p1

    check-cast v0, Landroid/database/Cursor;

    check-cast v9, LO4/h;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_5
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const/4 v11, 0x7

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    if-eqz v11, :cond_a

    move v11, v10

    goto :goto_6

    :cond_a
    move v11, v7

    :goto_6
    new-instance v12, LH4/h;

    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    iput-object v13, v12, LH4/h;->f:Ljava/util/HashMap;

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_11

    iput-object v13, v12, LH4/h;->a:Ljava/lang/String;

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    iput-object v13, v12, LH4/h;->d:Ljava/lang/Long;

    const/4 v13, 0x3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    iput-object v13, v12, LH4/h;->e:Ljava/lang/Long;

    const/4 v13, 0x4

    if-eqz v11, :cond_c

    new-instance v11, LH4/n;

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_b

    sget-object v13, LO4/h;->f:LE4/b;

    goto :goto_7

    :cond_b
    new-instance v14, LE4/b;

    invoke-direct {v14, v13}, LE4/b;-><init>(Ljava/lang/String;)V

    move-object v13, v14

    :goto_7
    const/4 v14, 0x5

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v14

    invoke-direct {v11, v13, v14}, LH4/n;-><init>(LE4/b;[B)V

    iput-object v11, v12, LH4/h;->c:LH4/n;

    move-object/from16 p0, v9

    goto/16 :goto_b

    :cond_c
    new-instance v11, LH4/n;

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_d

    sget-object v13, LO4/h;->f:LE4/b;

    goto :goto_8

    :cond_d
    new-instance v14, LE4/b;

    invoke-direct {v14, v13}, LE4/b;-><init>(Ljava/lang/String;)V

    move-object v13, v14

    :goto_8
    invoke-virtual {v9}, LO4/h;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v14

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v16

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    filled-new-array {v15}, [Ljava/lang/String;

    move-result-object v18

    const/16 v20, 0x0

    const-string v21, "sequence_num"

    const-string v15, "event_payloads"

    const-string v17, "event_id = ?"

    const/16 v19, 0x0

    invoke-virtual/range {v14 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    :try_start_4
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move v5, v7

    :goto_9
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v17

    if-eqz v17, :cond_e

    invoke-interface {v14, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    array-length v1, v1

    add-int/2addr v5, v1

    goto :goto_9

    :cond_e
    new-array v1, v5, [B

    move v5, v7

    move v10, v5

    :goto_a
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_f

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    move-object/from16 p0, v9

    array-length v9, v7

    move-object/from16 p1, v15

    const/4 v15, 0x0

    invoke-static {v7, v15, v1, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v7, v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    add-int/2addr v10, v7

    const/4 v7, 0x1

    add-int/2addr v5, v7

    move-object/from16 v9, p0

    move-object/from16 v15, p1

    goto :goto_a

    :cond_f
    move-object/from16 p0, v9

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    invoke-direct {v11, v13, v1}, LH4/n;-><init>(LE4/b;[B)V

    iput-object v11, v12, LH4/h;->c:LH4/n;

    :goto_b
    const/4 v1, 0x6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-nez v5, :cond_10

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v12, LH4/h;->b:Ljava/lang/Integer;

    :cond_10
    invoke-virtual {v12}, LH4/h;->b()LH4/i;

    move-result-object v1

    new-instance v5, LO4/b;

    move-object v7, v8

    check-cast v7, LH4/k;

    invoke-direct {v5, v3, v4, v7, v1}, LO4/b;-><init>(JLH4/k;LH4/i;)V

    move-object v1, v6

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x2

    move-object/from16 v9, p0

    const/4 v7, 0x0

    const/4 v10, 0x1

    goto/16 :goto_5

    :catchall_2
    move-exception v0

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_11
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null transportName"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    const/4 v0, 0x0

    return-object v0

    :pswitch_1
    move-object/from16 v0, p1

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    check-cast v9, LO4/h;

    invoke-virtual {v9}, LO4/h;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v4

    invoke-virtual {v9}, LO4/h;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v10

    mul-long/2addr v10, v4

    iget-object v1, v9, LO4/h;->d:LO4/a;

    iget-wide v3, v1, LO4/a;->a:J

    cmp-long v3, v10, v3

    check-cast v6, LH4/i;

    iget-object v4, v6, LH4/i;->a:Ljava/lang/String;

    if-ltz v3, :cond_13

    sget-object v0, LK4/c;->CACHE_FULL:LK4/c;

    const-wide/16 v1, 0x1

    invoke-virtual {v9, v1, v2, v0, v4}, LO4/h;->e(JLK4/c;Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_11

    :cond_13
    check-cast v8, LH4/k;

    invoke-static {v0, v8}, LO4/h;->b(Landroid/database/sqlite/SQLiteDatabase;LH4/k;)Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_14

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    goto :goto_c

    :cond_14
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "backend_name"

    iget-object v7, v8, LH4/k;->a:Ljava/lang/String;

    invoke-virtual {v3, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v8, LH4/k;->c:LE4/c;

    invoke-static {v5}, LR4/a;->a(LE4/c;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v7, "priority"

    invoke-virtual {v3, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v9, "next_request_ms"

    invoke-virtual {v3, v9, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v7, v8, LH4/k;->b:[B

    if-eqz v7, :cond_15

    invoke-static {v7, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v7

    const-string v5, "extras"

    invoke-virtual {v3, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    const-string v5, "transport_contexts"

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v7, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v8

    move-wide v7, v8

    :goto_c
    iget-object v3, v6, LH4/i;->c:LH4/n;

    iget-object v5, v3, LH4/n;->b:[B

    array-length v9, v5

    iget v1, v1, LO4/a;->e:I

    if-gt v9, v1, :cond_16

    const/4 v9, 0x1

    goto :goto_d

    :cond_16
    const/4 v9, 0x0

    :goto_d
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v8, "context_id"

    invoke-virtual {v10, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v7, "transport_name"

    invoke-virtual {v10, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v7, v6, LH4/i;->d:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v7, "timestamp_ms"

    invoke-virtual {v10, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-wide v7, v6, LH4/i;->e:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v7, "uptime_ms"

    invoke-virtual {v10, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v3, v3, LH4/n;->a:LE4/b;

    iget-object v3, v3, LE4/b;->a:Ljava/lang/String;

    const-string v4, "payload_encoding"

    invoke-virtual {v10, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "code"

    iget-object v4, v6, LH4/i;->b:Ljava/lang/Integer;

    invoke-virtual {v10, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v7, "num_attempts"

    invoke-virtual {v10, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v7, "inline"

    invoke-virtual {v10, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    if-eqz v9, :cond_17

    move-object v3, v5

    goto :goto_e

    :cond_17
    new-array v3, v3, [B

    :goto_e
    const-string v4, "payload"

    invoke-virtual {v10, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v3, "events"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v7

    const-string v3, "event_id"

    if-nez v9, :cond_18

    array-length v4, v5

    int-to-double v9, v4

    int-to-double v11, v1

    div-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v4, v9

    const/4 v9, 0x1

    :goto_f
    if-gt v9, v4, :cond_18

    const/4 v10, 0x1

    add-int/lit8 v11, v9, -0x1

    mul-int/2addr v11, v1

    mul-int v10, v9, v1

    array-length v12, v5

    invoke-static {v10, v12}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-static {v5, v11, v10}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v10

    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v3, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "sequence_num"

    invoke-virtual {v11, v13, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v11, v2, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v10, "event_payloads"

    const/4 v12, 0x0

    invoke-virtual {v0, v10, v12, v11}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    const/4 v10, 0x1

    add-int/2addr v9, v10

    goto :goto_f

    :cond_18
    iget-object v1, v6, LH4/i;->f:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "name"

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v5, "value"

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "event_metadata"

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_10

    :cond_19
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_11
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public call([Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;)V
    .locals 2

    iget-object v0, p0, LM4/a;->b:Ljava/lang/Object;

    check-cast v0, [Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;

    iget-object v1, p0, LM4/a;->d:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/app/sbrowser/autofill/personal_data/CreditCardDatabaseService;

    iget-object p0, p0, LM4/a;->c:Ljava/lang/Object;

    check-cast p0, Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend$GetCreditCards_Response;

    invoke-static {v1, p0, v0, p1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/CreditCardDatabaseService;->b(Lcom/sec/android/app/sbrowser/autofill/personal_data/CreditCardDatabaseService;Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCardBackend$GetCreditCards_Response;[Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;[Lcom/sec/terrace/services/autofill/mojom/TerraceCreditCard;)V

    return-void
.end method

.method public execute()Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, LM4/a;->d:Ljava/lang/Object;

    check-cast v0, LM4/b;

    iget-object v1, v0, LM4/b;->d:LO4/d;

    check-cast v1, LO4/h;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, LM4/a;->c:Ljava/lang/Object;

    check-cast v2, LH4/k;

    iget-object p0, p0, LM4/a;->b:Ljava/lang/Object;

    check-cast p0, LH4/i;

    const-string v3, "TRuntime."

    const-string v4, "SQLiteEventStore"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Storing event with priority="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v2, LH4/k;->c:LE4/c;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, LH4/i;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " for destination "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, LH4/k;->a:Ljava/lang/String;

    invoke-static {v4, v5, v3}, Lt/b;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v3, LM4/a;

    const/4 v4, 0x1

    invoke-direct {v3, v1, p0, v2, v4}, LM4/a;-><init>(LO4/h;Ljava/lang/Object;LH4/k;I)V

    invoke-virtual {v1, v3}, LO4/h;->c(LO4/f;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, v0, LM4/b;->a:LN4/d;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v2, v1, v0}, LN4/d;->a(LH4/k;IZ)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public f(LQd/u;I)V
    .locals 1

    instance-of p2, p1, LQd/n;

    if-eqz p2, :cond_0

    check-cast p1, LQd/n;

    iget-object p2, p0, LM4/a;->d:Ljava/lang/Object;

    check-cast p2, LRd/n;

    iget-object v0, p0, LM4/a;->c:Ljava/lang/Object;

    check-cast v0, LQd/n;

    invoke-virtual {p2, v0, p1}, LRd/n;->a(LQd/n;LQd/n;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p0, p0, LM4/a;->b:Ljava/lang/Object;

    check-cast p0, LRd/d;

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public onChecked(Z)V
    .locals 2

    iget-object v0, p0, LM4/a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, LM4/a;->d:Ljava/lang/Object;

    check-cast v1, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;

    iget-object p0, p0, LM4/a;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v1, p0, v0, p1}, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->g(Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public onCompleted()V
    .locals 2

    iget v0, p0, LM4/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LM4/a;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v1, p0, LM4/a;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object p0, p0, LM4/a;->d:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManagerV2;

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManagerV2;->d(Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManagerV2;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/String;)V

    return-void

    :pswitch_0
    iget-object v0, p0, LM4/a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, LM4/a;->d:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManagerV2;

    iget-object p0, p0, LM4/a;->c:Ljava/lang/Object;

    check-cast p0, Landroid/net/Uri;

    invoke-static {v1, p0, v0}, Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManagerV2;->b(Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManagerV2;Landroid/net/Uri;Ljava/util/ArrayList;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method

.method public onContentFetched(Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, LM4/a;->b:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/content/Context;

    iget-object v0, p0, LM4/a;->d:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;

    iget-object p0, p0, LM4/a;->c:Ljava/lang/Object;

    move-object v2, p0

    check-cast v2, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;->b(Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onFaviconAvailable(Landroid/graphics/Bitmap;Ljava/lang/String;J)V
    .locals 8

    iget-object v0, p0, LM4/a;->b:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    iget-object v0, p0, LM4/a;->d:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudFaviconHandler;

    iget-object p0, p0, LM4/a;->c:Ljava/lang/Object;

    move-object v2, p0

    check-cast v2, Ljava/lang/String;

    move-object v4, p1

    move-object v5, p2

    move-wide v6, p3

    invoke-static/range {v1 .. v7}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudFaviconHandler;->a(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudFaviconHandler;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;J)V

    return-void
.end method

.method public onGetCookiesForUrl(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, LM4/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$FetchContentCallback;

    iget-object v1, p0, LM4/a;->d:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher;

    iget-object p0, p0, LM4/a;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v1, p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher;->c(Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher;Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$FetchContentCallback;Ljava/lang/String;)V

    return-void
.end method

.method public onIsUserVerifyingPlatformAuthenticatorAvailableResponse(Z)V
    .locals 2

    iget-object v0, p0, LM4/a;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, LM4/a;->b:Ljava/lang/Object;

    check-cast v1, Lorg/chromium/blink/mojom/Authenticator$GetClientCapabilities_Response;

    iget-object p0, p0, LM4/a;->d:Ljava/lang/Object;

    check-cast p0, Lorg/chromium/components/webauthn/AuthenticatorImpl;

    invoke-static {p0, v0, v1, p1}, Lorg/chromium/components/webauthn/AuthenticatorImpl;->c(Lorg/chromium/components/webauthn/AuthenticatorImpl;Ljava/util/ArrayList;Lorg/chromium/blink/mojom/Authenticator$GetClientCapabilities_Response;Z)V

    return-void
.end method

.method public onResult(Lcom/sec/android/app/sbrowser/authentication/Authenticator$Result;)V
    .locals 2

    iget-object v0, p0, LM4/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;

    iget-object v1, p0, LM4/a;->d:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension;

    iget-object p0, p0, LM4/a;->c:Ljava/lang/Object;

    check-cast p0, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension$OnAcceptSuggestion_Response;

    invoke-static {v1, p0, v0, p1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension;->a(Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension;Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension$OnAcceptSuggestion_Response;Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;Lcom/sec/android/app/sbrowser/authentication/Authenticator$Result;)V

    return-void
.end method

.method public onResult(Ljava/util/List;Z)V
    .locals 2

    iget v0, p0, LM4/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LM4/a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v1, p0, LM4/a;->d:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/CustomTabArticleDetector;

    iget-object p0, p0, LM4/a;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {v1, p0, v0, p1, p2}, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/CustomTabArticleDetector;->a(Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/CustomTabArticleDetector;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/List;Z)V

    return-void

    :pswitch_0
    iget-object v0, p0, LM4/a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v1, p0, LM4/a;->d:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;

    iget-object p0, p0, LM4/a;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {v1, p0, v0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->h(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/List;Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method

.method public onTaskCompleted()V
    .locals 2

    iget-object v0, p0, LM4/a;->c:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    iget-object v1, p0, LM4/a;->b:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchItem;

    iget-object p0, p0, LM4/a;->d:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->h(Lcom/sec/android/app/sbrowser/settings/SettingsFragment;Landroid/os/Bundle;Lcom/sec/android/app/sbrowser/settings/search/SettingSearchItem;)V

    return-void
.end method

.method public onTranslate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget v0, p0, LM4/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LM4/a;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudUtterance;

    iget-object v1, p0, LM4/a;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object p0, p0, LM4/a;->d:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudContentLayout;

    invoke-static {p0, v0, v1, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudContentLayout;->c(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudContentLayout;Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudUtterance;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_0
    iget-object v0, p0, LM4/a;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudArticleListItem;

    iget-object v1, p0, LM4/a;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object p0, p0, LM4/a;->d:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudContentLayout;

    invoke-static {p0, v0, v1, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudContentLayout;->a(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudContentLayout;Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudArticleListItem;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method
