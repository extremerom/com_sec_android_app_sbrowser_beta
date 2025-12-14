.class public final Lt9/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Landroid/content/Context;

.field public final c:Landroid/content/ContentResolver;

.field public final d:Lt9/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt9/b;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lt9/b;->c:Landroid/content/ContentResolver;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "SS[FileShare]"

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lt9/b;->a:Ljava/lang/String;

    new-instance v0, Lt9/c;

    invoke-direct {v0, p1, p2}, Lt9/c;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;)V

    iput-object v0, p0, Lt9/b;->d:Lt9/c;

    sget-object p0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string p0, "FileShareHelper versionName[1.1.0], versionCode[110000000]"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;Ljava/io/File;)I
    .locals 12

    invoke-virtual {p0, p1}, Lt9/b;->b(Landroid/content/Intent;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_6

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v3, 0x2

    const-string v4, "copyFileToDirUri"

    if-eqz v0, :cond_5

    if-eqz p1, :cond_4

    new-instance v0, Lcom/android/volley/toolbox/d;

    iget-object v4, p0, Lt9/b;->d:Lt9/c;

    invoke-direct {v0, v4, p2, p1}, Lcom/android/volley/toolbox/d;-><init>(Lt9/c;Ljava/io/File;Landroid/net/Uri;)V

    iget-object p1, v0, Lcom/android/volley/toolbox/d;->d:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lt9/a;

    iget-object v5, p2, Lt9/a;->b:Landroid/net/Uri;

    iget-object p2, p2, Lt9/a;->a:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v1}, Lt9/c;->c(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lt9/b;->a:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v7

    const-string v8, "copyFileToFileUri"

    if-eqz v7, :cond_2

    invoke-virtual {p2}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_2

    if-eqz v5, :cond_1

    :try_start_0
    new-instance v7, Ljava/io/BufferedOutputStream;

    iget-object v8, p0, Lt9/b;->c:Landroid/content/ContentResolver;

    invoke-virtual {v8, v5}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v4, p2, v7, v0}, Lt9/c;->b(Ljava/io/File;Ljava/io/BufferedOutputStream;Lcom/android/volley/toolbox/d;)Z

    move-result v8

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v10, "copyFileToFileUri src[%s], dst[%s], needDelSrc[%b], delRes[%b]"

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    filled-new-array {p2, v5, v11, v11}, [Ljava/lang/Object;

    move-result-object v11

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    if-eqz v8, :cond_0

    invoke-static {v6, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    invoke-static {v6, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    goto :goto_3

    :catchall_0
    move-exception v8

    :try_start_3
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v7

    :try_start_4
    invoke-virtual {v8, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v8
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_3
    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v9, "copyFileToFileUri src[%s], dst[%s]"

    filled-new-array {p2, v5}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {v8, v9, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v6, p2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    invoke-static {v2, v8, v1}, LK3/a;->a(ILjava/lang/String;Ljava/lang/String;)LK3/a;

    move-result-object p0

    throw p0

    :cond_2
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, v8, p0}, LK3/a;->a(ILjava/lang/String;Ljava/lang/String;)LK3/a;

    move-result-object p0

    throw p0

    :cond_3
    iget p0, v0, Lcom/android/volley/toolbox/d;->a:I

    return p0

    :cond_4
    invoke-static {v2, v4, v1}, LK3/a;->a(ILjava/lang/String;Ljava/lang/String;)LK3/a;

    move-result-object p0

    throw p0

    :cond_5
    invoke-static {v3, v4, v1}, LK3/a;->a(ILjava/lang/String;Ljava/lang/String;)LK3/a;

    move-result-object p0

    throw p0

    :cond_6
    const-string p0, "copy"

    invoke-static {v2, p0, v1}, LK3/a;->a(ILjava/lang/String;Ljava/lang/String;)LK3/a;

    move-result-object p0

    throw p0
.end method

.method public final b(Landroid/content/Intent;)Ljava/util/ArrayList;
    .locals 5

    const-string v0, "SAVE_PATH_URIS"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "getPathUris"

    iget-object v2, p0, Lt9/b;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const-string v3, "SAVE_URIS_FILE"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    iget-object p0, p0, Lt9/b;->d:Lt9/c;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lt9/c;->f(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "dataList"

    invoke-virtual {v3, p0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-ge p1, v3, :cond_1

    :try_start_1
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "docUri"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_2
    const-string v4, "getPathUris add"

    invoke-static {v2, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-static {v2, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    new-instance p0, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "getPathUris ["

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "getPathUris [%d]"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_3
    const/4 p0, 0x0

    const/4 p1, 0x6

    invoke-static {p1, v1, p0}, LK3/a;->a(ILjava/lang/String;Ljava/lang/String;)LK3/a;

    move-result-object p0

    throw p0
.end method

.method public final c(Landroid/content/Intent;Ljava/io/File;)I
    .locals 31

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    invoke-virtual/range {p0 .. p1}, Lt9/b;->b(Landroid/content/Intent;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    const/4 v5, 0x1

    if-nez v3, :cond_10

    const-string v3, "SS[FileShare]"

    const-string v6, "ProgressManagerFromSSM"

    invoke-virtual {v3, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    const-string v3, "TOTAL_URI_FILE_COUNT"

    const/4 v6, -0x1

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    const-string v3, "TOTAL_URI_FILE_SIZE"

    const-wide/16 v7, -0x1

    invoke-virtual {v0, v3, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x2

    const-string v7, "copyUrisToDir"

    if-lt v0, v3, :cond_f

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v3, 0x3

    if-eqz v0, :cond_1

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v7, v0}, LK3/a;->a(ILjava/lang/String;Ljava/lang/String;)LK3/a;

    move-result-object v0

    throw v0

    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v2, v5, v10}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v2

    iget-object v10, v1, Lt9/b;->b:Landroid/content/Context;

    invoke-static {v10, v0}, Landroid/provider/DocumentsContract;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {v0}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v11, v0

    goto :goto_2

    :cond_2
    invoke-static {v0}, Landroid/provider/DocumentsContract;->getTreeDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :goto_2
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v0, "copyUrisToDir src["

    const-string v13, "] > dst["

    const-string v14, "], needDelSrc[true]"

    invoke-static {v0, v11, v13, v12, v14}, Lw2/j;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v13, v1, Lt9/b;->a:Ljava/lang/String;

    invoke-static {v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v14, v9

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/net/Uri;

    invoke-static {v10, v15}, Landroid/provider/DocumentsContract;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {v15}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v11, v12}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_4

    :cond_3
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "copyUriToFiler"

    invoke-static {v3, v1, v0}, LK3/a;->a(ILjava/lang/String;Ljava/lang/String;)LK3/a;

    move-result-object v0

    throw v0

    :cond_4
    :goto_4
    invoke-static {v10, v15}, Landroid/provider/DocumentsContract;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_5
    const-string v3, "cpUriToFile seems not a files srcUri[%s]"

    iget-object v4, v1, Lt9/b;->d:Lt9/c;

    iget-object v0, v4, Lt9/c;->b:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    const-wide/16 v20, 0x0

    :try_start_0
    new-instance v6, Ljava/io/BufferedInputStream;

    iget-object v0, v4, Lt9/c;->c:Ljava/lang/Object;

    check-cast v0, Landroid/content/ContentResolver;

    invoke-virtual {v0, v15}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_f

    move-object/from16 p2, v2

    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_c

    move-object/from16 v22, v10

    :try_start_2
    new-instance v10, Ljava/io/BufferedOutputStream;

    invoke-direct {v10, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_9

    const v0, 0x8000

    :try_start_3
    new-array v0, v0, [B
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    move-object/from16 v27, v11

    move-wide/from16 v23, v20

    move-wide/from16 v25, v23

    :goto_5
    :try_start_4
    invoke-virtual {v6, v0}, Ljava/io/InputStream;->read([B)I

    move-result v11
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move-object/from16 v28, v12

    const/4 v12, -0x1

    if-eq v11, v12, :cond_7

    const/4 v12, 0x0

    :try_start_5
    invoke-virtual {v10, v0, v12, v11}, Ljava/io/OutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object/from16 v19, v13

    int-to-long v12, v11

    add-long v23, v23, v12

    sub-long v11, v23, v25

    const-wide/32 v29, 0x100000

    cmp-long v11, v11, v29

    move-object/from16 v13, v19

    if-ltz v11, :cond_6

    move-wide/from16 v25, v23

    :cond_6
    move-object/from16 v12, v28

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_8

    :catch_0
    move-exception v0

    :goto_6
    move-object/from16 v19, v13

    goto :goto_a

    :cond_7
    move-object/from16 v19, v13

    add-int/lit8 v14, v14, 0x1

    :try_start_6
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    const/4 v10, 0x1

    goto/16 :goto_13

    :catchall_1
    move-exception v0

    const/4 v10, 0x1

    goto/16 :goto_16

    :catch_1
    move-exception v0

    const/4 v10, 0x1

    goto/16 :goto_12

    :catchall_2
    move-exception v0

    move-object v2, v0

    const/4 v10, 0x1

    goto/16 :goto_10

    :catchall_3
    move-exception v0

    move-object v4, v0

    const/4 v10, 0x1

    goto :goto_e

    :catchall_4
    move-exception v0

    move-object/from16 v28, v12

    goto :goto_8

    :catch_2
    move-exception v0

    :goto_7
    move-object/from16 v28, v12

    goto :goto_6

    :catchall_5
    move-exception v0

    move-object/from16 v27, v11

    move-object/from16 v28, v12

    :goto_8
    move-object/from16 v19, v13

    :goto_9
    move-object v4, v0

    goto :goto_b

    :catch_3
    move-exception v0

    move-object/from16 v27, v11

    goto :goto_7

    :goto_a
    :try_start_9
    iget-object v4, v4, Lt9/c;->b:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    const-string v11, "cpStream Error"

    invoke-static {v4, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x7

    const/4 v4, 0x0

    invoke-static {v0, v11, v4}, LK3/a;->a(ILjava/lang/String;Ljava/lang/String;)LK3/a;

    move-result-object v0

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    :catchall_6
    move-exception v0

    goto :goto_9

    :goto_b
    :try_start_a
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    goto :goto_c

    :catchall_7
    move-exception v0

    move-object v10, v0

    :try_start_b
    invoke-virtual {v4, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_c
    throw v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    :catchall_8
    move-exception v0

    :goto_d
    move-object v4, v0

    const/4 v10, 0x0

    goto :goto_e

    :catchall_9
    move-exception v0

    move-object/from16 v27, v11

    move-object/from16 v28, v12

    move-object/from16 v19, v13

    goto :goto_d

    :goto_e
    :try_start_c
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_a

    goto :goto_f

    :catchall_a
    move-exception v0

    move-object v2, v0

    :try_start_d
    invoke-virtual {v4, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_f
    throw v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_b

    :catchall_b
    move-exception v0

    move-object v2, v0

    goto :goto_10

    :catchall_c
    move-exception v0

    move-object/from16 v22, v10

    move-object/from16 v27, v11

    move-object/from16 v28, v12

    move-object/from16 v19, v13

    move-object v2, v0

    const/4 v10, 0x0

    :goto_10
    :try_start_e
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_d

    goto :goto_11

    :catchall_d
    move-exception v0

    move-object v4, v0

    :try_start_f
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_11
    throw v2
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_e

    :catchall_e
    move-exception v0

    goto/16 :goto_16

    :catch_4
    move-exception v0

    goto :goto_12

    :catchall_f
    move-exception v0

    const/4 v10, 0x0

    goto/16 :goto_16

    :catch_5
    move-exception v0

    move-object/from16 p2, v2

    move-object/from16 v22, v10

    move-object/from16 v27, v11

    move-object/from16 v28, v12

    move-object/from16 v19, v13

    const/4 v10, 0x0

    :goto_12
    :try_start_10
    const-string v2, "cpUriToFile srcUri[%s], dstFile[%s]"

    filled-new-array {v15, v5}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_e

    if-nez v10, :cond_8

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v11

    cmp-long v0, v11, v20

    if-gtz v0, :cond_8

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    filled-new-array {v15}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_13
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v2, v15, v5, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "cpUriToFile result[%s], srcUri[%s], dstFile[%s][%s]"

    invoke-static {v0, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v10, :cond_9

    :try_start_11
    iget-object v0, v1, Lt9/b;->c:Landroid/content/ContentResolver;

    invoke-static {v0, v15}, Landroid/provider/DocumentsContract;->deleteDocument(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v0
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_11} :catch_6

    move-object/from16 v4, v19

    goto :goto_15

    :catch_6
    move-exception v0

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v3, "copyUriToFile delete FileNotFoundException [%s]"

    filled-new-array {v15}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v4, v19

    invoke-static {v4, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14

    :cond_9
    move-object/from16 v4, v19

    :goto_14
    const/4 v0, 0x0

    :goto_15
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    sub-long v11, v11, v16

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    filled-new-array {v15, v5, v3, v0, v6}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, "copyUriToFile file srcUri[%s] > dstFile[%s], copyRes[%b], delRes[%b], time[%d]"

    invoke-static {v2, v3, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz v10, :cond_a

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    :cond_a
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    :goto_16
    if-nez v10, :cond_b

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v1

    cmp-long v1, v1, v20

    if-gtz v1, :cond_b

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    filled-new-array {v15}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    throw v0

    :cond_c
    invoke-virtual {v15}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "copyUriToFile"

    const/4 v2, 0x4

    invoke-static {v2, v1, v0}, LK3/a;->a(ILjava/lang/String;Ljava/lang/String;)LK3/a;

    move-result-object v0

    throw v0

    :cond_d
    move-object/from16 p2, v2

    move-object/from16 v22, v10

    move-object/from16 v27, v11

    move-object/from16 v28, v12

    move-object v4, v13

    :goto_17
    move-object/from16 v2, p2

    move-object v13, v4

    move-object/from16 v10, v22

    move-object/from16 v11, v27

    move-object/from16 v12, v28

    const/4 v3, 0x3

    const/4 v5, 0x1

    const/4 v6, -0x1

    const/4 v9, 0x0

    goto/16 :goto_3

    :cond_e
    move-object v4, v13

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, v7

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "copyUrisToDir done copied["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "], time["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-static {v2, v0, v4}, Landroidx/recyclerview/widget/P;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return v14

    :cond_f
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-static {v0, v7, v1}, LK3/a;->a(ILjava/lang/String;Ljava/lang/String;)LK3/a;

    move-result-object v0

    throw v0

    :cond_10
    const/4 v1, 0x0

    const-string v0, "move"

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, LK3/a;->a(ILjava/lang/String;Ljava/lang/String;)LK3/a;

    move-result-object v0

    throw v0
.end method
