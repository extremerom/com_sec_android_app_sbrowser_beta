.class Lcom/sec/terrace/browser/webapps/TinWebApkShareTargetUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/webapps/TinWebApkShareTargetUtil$PostData;
    }
.end annotation


# direct methods
.method private static addFilesToMultipartPostData(Lcom/sec/terrace/browser/webapps/TinWebApkShareTargetUtil$PostData;[Ljava/lang/String;[[Ljava/lang/String;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/terrace/browser/webapps/TinWebApkShareTargetUtil$PostData;",
            "[",
            "Ljava/lang/String;",
            "[[",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_8

    if-eqz p2, :cond_8

    if-nez p3, :cond_0

    goto :goto_4

    :cond_0
    array-length v0, p1

    array-length v1, p2

    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lorg/chromium/base/StrictModeContext;->allowDiskReads()Lorg/chromium/base/StrictModeContext;

    move-result-object v0

    :try_start_0
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_2
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-static {v1}, Lcom/sec/terrace/browser/webapps/TinWebApkShareTargetUtil;->getFileTypeFromContentUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/sec/terrace/browser/webapps/TinWebApkShareTargetUtil;->getFileNameFromContentUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_2

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    move v5, v4

    :goto_1
    array-length v6, p1

    if-ge v5, v6, :cond_2

    aget-object v6, p2, v5

    new-instance v7, Lorg/chromium/net/MimeTypeFilter;

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v7, v6, v4}, Lorg/chromium/net/MimeTypeFilter;-><init>(Ljava/util/List;Z)V

    invoke-virtual {v7, v1, v2}, Lorg/chromium/net/MimeTypeFilter;->accept(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    aget-object v4, p1, v5

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v4, v1, v3, v2}, Lcom/sec/terrace/browser/webapps/TinWebApkShareTargetUtil$PostData;->a(Lcom/sec/terrace/browser/webapps/TinWebApkShareTargetUtil$PostData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lorg/chromium/base/StrictModeContext;->close()V

    :cond_6
    return-void

    :goto_2
    if-eqz v0, :cond_7

    :try_start_1
    invoke-virtual {v0}, Lorg/chromium/base/StrictModeContext;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_3
    throw p0

    :cond_8
    :goto_4
    return-void
.end method

.method public static computePostData(Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;LK/a;)Lcom/sec/terrace/browser/webapps/TinWebApkShareTargetUtil$PostData;
    .locals 3

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;->isShareMethodPost()Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sec/terrace/browser/webapps/TinWebApkShareTargetUtil$PostData;

    invoke-virtual {p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;->isShareEncTypeMultipart()Z

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/terrace/browser/webapps/TinWebApkShareTargetUtil$PostData;-><init>(ZI)V

    invoke-virtual {p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;->getParamTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p1, LK/a;->a:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;->getParamTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/sec/terrace/browser/webapps/TinWebApkShareTargetUtil$PostData;->b(Lcom/sec/terrace/browser/webapps/TinWebApkShareTargetUtil$PostData;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;->getParamText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p1, LK/a;->b:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;->getParamText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/sec/terrace/browser/webapps/TinWebApkShareTargetUtil$PostData;->b(Lcom/sec/terrace/browser/webapps/TinWebApkShareTargetUtil$PostData;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-boolean v1, v0, Lcom/sec/terrace/browser/webapps/TinWebApkShareTargetUtil$PostData;->isMultipartEncoding:Z

    if-nez v1, :cond_3

    return-object v0

    :cond_3
    invoke-virtual {p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;->getFileNames()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;->getFileAccepts()[[Ljava/lang/String;

    move-result-object p0

    iget-object p1, p1, LK/a;->c:Ljava/util/ArrayList;

    invoke-static {v0, v1, p0, p1}, Lcom/sec/terrace/browser/webapps/TinWebApkShareTargetUtil;->addFilesToMultipartPostData(Lcom/sec/terrace/browser/webapps/TinWebApkShareTargetUtil$PostData;[Ljava/lang/String;[[Ljava/lang/String;Ljava/util/List;)V

    return-object v0

    :cond_4
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static decodeJsonAccepts(Ljava/lang/String;)[[Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result p0

    new-array p0, p0, [[Ljava/lang/String;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v4

    new-array v5, v4, [Ljava/lang/String;

    move v6, v2

    :goto_1
    if-ge v6, v4, :cond_1

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v7

    invoke-virtual {v7, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    aput-object v5, p0, v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object p0

    :catch_0
    return-object v0
.end method

.method public static decodeJsonStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p0, v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object p0

    :catch_0
    return-object v0
.end method

.method private static getFileNameFromContentUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 7

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "_display_name"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v1

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getFileTypeFromContentUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
