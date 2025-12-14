.class public Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/SBrowserTabBuilder;
.super Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/AbstractBuilder;
.source "SourceFile"


# static fields
.field private static final SBROWSERTAB_COLUMNS:[Ljava/lang/String;


# instance fields
.field private mSbrowserTabUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    const-string v15, "DEVICE_TYPE"

    const-string v16, "TAB_USAGE"

    const-string v0, "TAB_ID"

    const-string v1, "TAB_INDEX"

    const-string v2, "TAB_URL"

    const-string v3, "TAB_TITLE"

    const-string v4, "TAB_GROUP_NAME"

    const-string v5, "TAB_GROUP_COLOR"

    const-string v6, "TAB_FAV_ICON"

    const-string v7, "TAB_ACTIVATE"

    const-string v8, "IS_INCOGNITO"

    const-string v9, "DATE_CREATED"

    const-string v10, "DATE_MODIFIED"

    const-string v11, "ACCOUNT_NAME"

    const-string v12, "ACCOUNT_TYPE"

    const-string v13, "DEVICE_NAME"

    const-string v14, "DEVICE_ID"

    filled-new-array/range {v0 .. v16}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/SBrowserTabBuilder;->SBROWSERTAB_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentProviderClient;Landroid/accounts/Account;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/AbstractBuilder;-><init>(Landroid/content/ContentProviderClient;Landroid/accounts/Account;Landroid/content/Context;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "content://"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/tabs"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string p2, "caller_is_syncadapter"

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/utils/UriTool;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/SBrowserTabBuilder;->mSbrowserTabUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public insert(Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 15

    move-object v1, p0

    const-string v2, "RemoteException"

    const-string v0, "DEVICE_TYPE"

    const-string v3, "TAB_FAV_ICON"

    const-string v4, "SBrowserTabBuilder"

    const/4 v5, 0x0

    :try_start_0
    sget-object v6, Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/SBrowserTabBuilder;->SBROWSERTAB_COLUMNS:[Ljava/lang/String;

    const/4 v7, 0x1

    move-object/from16 v8, p1

    invoke-static {v8, v6, v7}, Lcom/sec/android/app/sbrowser/common/sync/JSONParser;->fromJSONString(Ljava/lang/String;[Ljava/lang/String;Z)Landroid/content/ContentValues;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-static {v8, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v8

    invoke-virtual {v6, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_5

    :cond_0
    :goto_0
    const-string v3, "SYNC1"

    move-object/from16 v8, p2

    invoke-virtual {v6, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "SYNC2"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v9, v1, Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/AbstractBuilder;->mProvider:Landroid/content/ContentProviderClient;

    iget-object v10, v1, Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/SBrowserTabBuilder;->mSbrowserTabUri:Landroid/net/Uri;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v3, :cond_1

    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-lez v8, :cond_1

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_1

    invoke-virtual {v6, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v0, "There is no column in cursor : DEVICE_TYPE"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v8, v0

    :try_start_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v3, v0

    :try_start_4
    invoke-virtual {v8, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v8

    :catch_1
    move-exception v0

    goto :goto_3

    :cond_1
    :goto_2
    if-eqz v3, :cond_2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_4
    :try_start_5
    iget-object v0, v1, Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/AbstractBuilder;->mProvider:Landroid/content/ContentProviderClient;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/SBrowserTabBuilder;->mSbrowserTabUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    return v7

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to Parse;"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/sbrowser/autofill/password/k;->B(Lorg/json/JSONException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return v5
.end method

.method public parse(Landroid/database/Cursor;JLjava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    :try_start_0
    sget-object p2, Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/SBrowserTabBuilder;->SBROWSERTAB_COLUMNS:[Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/common/sync/JSONParser;->toJSON(Landroid/database/Cursor;[Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "parse():Exception in parsing"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p3, "SBrowserTabBuilder"

    invoke-static {p1, p2, p3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->B(Lorg/json/JSONException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public update(Ljava/lang/String;JJLjava/lang/String;)Z
    .locals 4

    const-string p6, "SBrowserTabBuilder"

    const-string v0, "TAB_FAV_ICON"

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/SBrowserTabBuilder;->SBROWSERTAB_COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {p1, v2, v3}, Lcom/sec/android/app/sbrowser/common/sync/JSONParser;->fromJSONString(Ljava/lang/String;[Ljava/lang/String;Z)Landroid/content/ContentValues;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    const-string v0, "SYNC2"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p2, "DIRTY"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "IS_DELETED"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/AbstractBuilder;->mProvider:Landroid/content/ContentProviderClient;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/builders/SBrowserTabBuilder;->mSbrowserTabUri:Landroid/net/Uri;

    const-string p3, "_ID = ? "

    invoke-static {p4, p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p4

    filled-new-array {p4}, [Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p0, p1, p3, p4}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return v3

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "RemoteException"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p6, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Unable to Parse;"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, p6}, Lcom/sec/android/app/sbrowser/autofill/password/k;->B(Lorg/json/JSONException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return v1
.end method
