.class public final synthetic Lz3/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput p4, p0, Lz3/h;->a:I

    iput-object p1, p0, Lz3/h;->b:Landroid/content/Context;

    iput-object p2, p0, Lz3/h;->c:Ljava/lang/String;

    iput-object p3, p0, Lz3/h;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 10

    iget v0, p0, Lz3/h;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lz3/h;->b:Landroid/content/Context;

    iget-object v1, p0, Lz3/h;->c:Ljava/lang/String;

    iget-object p0, p0, Lz3/h;->d:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lz3/k;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lz3/x;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object v1, p0, Lz3/h;->b:Landroid/content/Context;

    iget-object v2, p0, Lz3/h;->c:Ljava/lang/String;

    iget-object p0, p0, Lz3/h;->d:Ljava/lang/String;

    sget-object v0, LG5/b3;->b:LI3/d;

    if-nez v0, :cond_3

    const-class v3, LI3/d;

    monitor-enter v3

    :try_start_0
    sget-object v0, LG5/b3;->b:LI3/d;

    if-nez v0, :cond_2

    new-instance v0, LI3/d;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, LG5/b3;->c:LI3/c;

    if-nez v5, :cond_1

    const-class v5, LI3/c;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v6, LG5/b3;->c:LI3/c;

    if-nez v6, :cond_0

    new-instance v6, LI3/c;

    new-instance v7, LW3/f;

    invoke-direct {v7, v4}, LW3/f;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    invoke-direct {v6, v4, v7}, LI3/c;-><init>(ILjava/lang/Object;)V

    sput-object v6, LG5/b3;->c:LI3/c;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v5

    move-object v5, v6

    goto :goto_2

    :goto_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    :cond_1
    :goto_2
    new-instance v4, LE5/v;

    const/4 v6, 0x6

    invoke-direct {v4, v6}, LE5/v;-><init>(I)V

    invoke-direct {v0, v5, v4}, LI3/d;-><init>(LI3/c;LE5/v;)V

    sput-object v0, LG5/b3;->b:LI3/d;

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_4

    :cond_2
    :goto_3
    monitor-exit v3

    goto :goto_5

    :goto_4
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :cond_3
    :goto_5
    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz p0, :cond_8

    iget-object v5, v0, LI3/d;->b:Ljava/lang/Object;

    check-cast v5, LI3/c;

    :try_start_3
    new-instance v6, Ljava/io/File;

    invoke-virtual {v5}, LI3/c;->h()Ljava/io/File;

    move-result-object v7

    sget-object v8, LI3/b;->JSON:LI3/b;

    invoke-static {v2, v8, v3}, LI3/c;->f(Ljava/lang/String;LI3/b;Z)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v7, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_6

    :cond_4
    new-instance v6, Ljava/io/File;

    invoke-virtual {v5}, LI3/c;->h()Ljava/io/File;

    move-result-object v5

    sget-object v7, LI3/b;->ZIP:LI3/b;

    invoke-static {v2, v7, v3}, LI3/c;->f(Ljava/lang/String;LI3/b;Z)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_6

    :cond_5
    move-object v6, v4

    :goto_6
    if-nez v6, :cond_6

    :catch_0
    move-object v6, v4

    goto :goto_7

    :cond_6
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const-string v9, ".zip"

    invoke-virtual {v7, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    sget-object v8, LI3/b;->ZIP:LI3/b;

    :cond_7
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    invoke-static {}, LL3/b;->a()V

    new-instance v6, Landroid/util/Pair;

    invoke-direct {v6, v8, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_7
    if-nez v6, :cond_9

    :cond_8
    move-object v5, v4

    goto :goto_9

    :cond_9
    iget-object v5, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, LI3/b;

    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/io/InputStream;

    sget-object v7, LI3/b;->ZIP:LI3/b;

    if-ne v5, v7, :cond_a

    new-instance v5, Ljava/util/zip/ZipInputStream;

    invoke-direct {v5, v6}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v1, v5, p0}, Lz3/k;->f(Landroid/content/Context;Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lz3/x;

    move-result-object v5

    goto :goto_8

    :cond_a
    invoke-static {v6, p0}, Lz3/k;->c(Ljava/io/InputStream;Ljava/lang/String;)Lz3/x;

    move-result-object v5

    :goto_8
    iget-object v5, v5, Lz3/x;->a:Ljava/lang/Object;

    if-eqz v5, :cond_8

    check-cast v5, Lz3/g;

    :goto_9
    if-eqz v5, :cond_b

    new-instance v0, Lz3/x;

    invoke-direct {v0, v5}, Lz3/x;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_f

    :cond_b
    invoke-static {}, LL3/b;->a()V

    const-string v6, "LottieFetchResult close failed "

    invoke-static {}, LL3/b;->a()V

    :try_start_4
    invoke-static {v2}, LE5/v;->e(Ljava/lang/String;)LI3/a;

    move-result-object v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    iget-object v4, v7, LI3/a;->b:Ljava/lang/Object;

    check-cast v4, Ljava/net/HttpURLConnection;

    :try_start_5
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    div-int/lit8 v5, v5, 0x64
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const/4 v8, 0x2

    if-ne v5, v8, :cond_c

    const/4 v3, 0x1

    goto :goto_c

    :goto_a
    move-object v4, v7

    goto :goto_10

    :goto_b
    move-object v4, v7

    goto :goto_d

    :catch_1
    :cond_c
    :goto_c
    if-eqz v3, :cond_d

    :try_start_6
    invoke-virtual {v4}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v4}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v4

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, LI3/d;->f(Landroid/content/Context;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Lz3/x;

    move-result-object v0

    iget-object v1, v0, Lz3/x;->a:Ljava/lang/Object;

    invoke-static {}, LL3/b;->a()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    invoke-virtual {v7}, LI3/a;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_f

    :catch_2
    move-exception v1

    invoke-static {v6, v1}, LL3/b;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_f

    :catchall_2
    move-exception p0

    goto :goto_a

    :catch_3
    move-exception v0

    goto :goto_b

    :cond_d
    :try_start_8
    new-instance v0, Lz3/x;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v7}, LI3/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lz3/x;-><init>(Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    invoke-virtual {v7}, LI3/a;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_f

    :catch_4
    move-exception v0

    :goto_d
    :try_start_a
    new-instance v1, Lz3/x;

    invoke-direct {v1, v0}, Lz3/x;-><init>(Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    if-eqz v4, :cond_e

    :try_start_b
    invoke-virtual {v4}, LI3/a;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    goto :goto_e

    :catch_5
    move-exception v0

    invoke-static {v6, v0}, LL3/b;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_e
    :goto_e
    move-object v0, v1

    :goto_f
    if-eqz p0, :cond_f

    iget-object v1, v0, Lz3/x;->a:Ljava/lang/Object;

    if-eqz v1, :cond_f

    sget-object v2, LE3/h;->b:LE3/h;

    check-cast v1, Lz3/g;

    iget-object v2, v2, LE3/h;->a:LN/m;

    invoke-virtual {v2, p0, v1}, LN/m;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    return-object v0

    :catchall_3
    move-exception p0

    :goto_10
    if-eqz v4, :cond_10

    :try_start_c
    invoke-virtual {v4}, LI3/a;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    goto :goto_11

    :catch_6
    move-exception v0

    invoke-static {v6, v0}, LL3/b;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_10
    :goto_11
    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
