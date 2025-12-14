.class public final LU3/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU3/a;


# instance fields
.field public final a:J

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LX4/i;Lo3/l;)V
    .locals 3

    const-string v0, "runnableScheduler"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5a

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LU3/c;->b:Ljava/lang/Object;

    iput-object p2, p0, LU3/c;->c:Ljava/lang/Object;

    iput-wide v0, p0, LU3/c;->a:J

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LU3/c;->d:Ljava/lang/Object;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, LU3/c;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lo3/c;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lo3/c;-><init>(I)V

    iput-object v0, p0, LU3/c;->d:Ljava/lang/Object;

    iput-object p1, p0, LU3/c;->c:Ljava/lang/Object;

    const-wide/32 v0, 0xfa00000

    iput-wide v0, p0, LU3/c;->a:J

    new-instance p1, Lo3/e;

    const/4 v0, 0x6

    invoke-direct {p1, v0}, Lo3/e;-><init>(I)V

    iput-object p1, p0, LU3/c;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Lg3/i;)V
    .locals 2

    const-string v0, "token"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LU3/c;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LU3/c;->e:Ljava/lang/Object;

    check-cast v1, Ljava/util/LinkedHashMap;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    if-eqz p1, :cond_0

    iget-object p0, p0, LU3/c;->b:Ljava/lang/Object;

    check-cast p0, LX4/i;

    iget-object p0, p0, LX4/i;->b:Ljava/lang/Object;

    check-cast p0, Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public declared-synchronized b()LO3/c;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LU3/c;->e:Ljava/lang/Object;

    check-cast v0, LO3/c;

    if-nez v0, :cond_0

    iget-object v0, p0, LU3/c;->c:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    iget-wide v1, p0, LU3/c;->a:J

    invoke-static {v0, v1, v2}, LO3/c;->j(Ljava/io/File;J)LO3/c;

    move-result-object v0

    iput-object v0, p0, LU3/c;->e:Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, LU3/c;->e:Ljava/lang/Object;

    check-cast v0, LO3/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public c(Lg3/i;)V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/widget/a;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p0, p1}, Lcom/sec/android/app/sbrowser/widget/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, LU3/c;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, LU3/c;->e:Ljava/lang/Object;

    check-cast v2, Ljava/util/LinkedHashMap;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    iget-object p1, p0, LU3/c;->b:Ljava/lang/Object;

    check-cast p1, LX4/i;

    iget-wide v1, p0, LU3/c;->a:J

    iget-object p0, p1, LX4/i;->b:Ljava/lang/Object;

    check-cast p0, Landroid/os/Handler;

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0
.end method

.method public declared-synchronized clear()V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, LU3/c;->b()LO3/c;

    move-result-object v1

    invoke-virtual {v1}, LO3/c;->close()V

    iget-object v1, v1, LO3/c;->a:Ljava/io/File;

    invoke-static {v1}, LO3/f;->a(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    iput-object v0, p0, LU3/c;->e:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_1
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_6
    const-string v2, "DiskLruCacheWrapper"

    const/4 v3, 0x5

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "DiskLruCacheWrapper"

    const-string v3, "Unable to clear disk cache or disk cache cleared externally"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_0
    :try_start_7
    monitor-enter p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    iput-object v0, p0, LU3/c;->e:Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_0

    :goto_1
    monitor-exit p0

    return-void

    :catchall_2
    move-exception v0

    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v0

    :goto_2
    monitor-enter p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    iput-object v0, p0, LU3/c;->e:Ljava/lang/Object;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :try_start_c
    monitor-exit p0

    throw v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :catchall_3
    move-exception v0

    goto :goto_3

    :catchall_4
    move-exception v0

    :try_start_d
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :try_start_e
    throw v0

    :goto_3
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    throw v0
.end method

.method public d(LQ3/g;)Ljava/io/File;
    .locals 4

    iget-object v0, p0, LU3/c;->b:Ljava/lang/Object;

    check-cast v0, Lo3/e;

    invoke-virtual {v0, p1}, Lo3/e;->h(LQ3/g;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const-string v2, "DiskLruCacheWrapper"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Get: Obtained: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for for Key: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x0

    :try_start_0
    invoke-virtual {p0}, LU3/c;->b()LO3/c;

    move-result-object p0

    invoke-virtual {p0, v0}, LO3/c;->f(Ljava/lang/String;)LO9/a;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-object p0, p0, LO9/a;->b:Ljava/lang/Object;

    check-cast p0, [Ljava/io/File;

    const/4 v0, 0x0

    aget-object p1, p0, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const/4 v0, 0x5

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Unable to get from disk cache"

    invoke-static {v2, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-object p1
.end method

.method public f(LQ3/g;Lo3/t;)V
    .locals 7

    const-string v0, "Had two simultaneous puts for: "

    const-string v1, "Put: Obtained: "

    iget-object v2, p0, LU3/c;->b:Ljava/lang/Object;

    check-cast v2, Lo3/e;

    invoke-virtual {v2, p1}, Lo3/e;->h(LQ3/g;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, LU3/c;->d:Ljava/lang/Object;

    check-cast v3, Lo3/c;

    monitor-enter v3

    :try_start_0
    iget-object v4, v3, Lo3/c;->a:Ljava/lang/Object;

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LU3/b;

    if-nez v4, :cond_1

    iget-object v4, v3, Lo3/c;->b:Ljava/lang/Object;

    check-cast v4, Lo3/f;

    iget-object v5, v4, Lo3/f;->b:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayDeque;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    iget-object v4, v4, Lo3/f;->b:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LU3/b;

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_0

    :try_start_2
    new-instance v4, LU3/b;

    invoke-direct {v4}, LU3/b;-><init>()V

    :cond_0
    iget-object v5, v3, Lo3/c;->a:Ljava/lang/Object;

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    :cond_1
    :goto_0
    iget v5, v4, LU3/b;->b:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    iput v5, v4, LU3/b;->b:I

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    iget-object v3, v4, LU3/b;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_5
    const-string v3, "DiskLruCacheWrapper"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "DiskLruCacheWrapper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for for Key: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_4

    :cond_2
    :goto_1
    :try_start_6
    invoke-virtual {p0}, LU3/c;->b()LO3/c;

    move-result-object p1

    invoke-virtual {p1, v2}, LO3/c;->f(Ljava/lang/String;)LO9/a;

    move-result-object v1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v1, :cond_3

    iget-object p0, p0, LU3/c;->d:Ljava/lang/Object;

    check-cast p0, Lo3/c;

    invoke-virtual {p0, v2}, Lo3/c;->k(Ljava/lang/String;)V

    return-void

    :cond_3
    :try_start_7
    invoke-virtual {p1, v2}, LO3/c;->d(Ljava/lang/String;)Lcom/samsung/android/scloud/lib/setting/e;

    move-result-object p1
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz p1, :cond_6

    :try_start_8
    invoke-virtual {p1}, Lcom/samsung/android/scloud/lib/setting/e;->d()Ljava/io/File;

    move-result-object v0

    iget-object v1, p2, Lo3/t;->c:Ljava/lang/Object;

    iget-object v3, p2, Lo3/t;->d:Ljava/lang/Object;

    check-cast v3, LQ3/k;

    iget-object p2, p2, Lo3/t;->b:Ljava/lang/Object;

    check-cast p2, LQ3/d;

    invoke-interface {p2, v1, v0, v3}, LQ3/d;->d(Ljava/lang/Object;Ljava/io/File;LQ3/k;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p1, Lcom/samsung/android/scloud/lib/setting/e;->e:Ljava/lang/Object;

    check-cast p2, LO3/c;

    invoke-static {p2, p1, v6}, LO3/c;->a(LO3/c;Lcom/samsung/android/scloud/lib/setting/e;Z)V

    iput-boolean v6, p1, Lcom/samsung/android/scloud/lib/setting/e;->b:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :cond_4
    :try_start_9
    iget-boolean p2, p1, Lcom/samsung/android/scloud/lib/setting/e;->b:Z
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-nez p2, :cond_7

    :try_start_a
    invoke-virtual {p1}, Lcom/samsung/android/scloud/lib/setting/e;->a()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_3

    :catchall_2
    move-exception p2

    :try_start_b
    iget-boolean v0, p1, Lcom/samsung/android/scloud/lib/setting/e;->b:Z
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    if-nez v0, :cond_5

    :try_start_c
    invoke-virtual {p1}, Lcom/samsung/android/scloud/lib/setting/e;->a()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :catch_0
    :cond_5
    :try_start_d
    throw p2

    :catch_1
    move-exception p1

    goto :goto_2

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :goto_2
    :try_start_e
    const-string p2, "DiskLruCacheWrapper"

    const/4 v0, 0x5

    invoke-static {p2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_7

    const-string p2, "DiskLruCacheWrapper"

    const-string v0, "Unable to put to disk cache"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :catch_2
    :cond_7
    :goto_3
    iget-object p0, p0, LU3/c;->d:Ljava/lang/Object;

    check-cast p0, Lo3/c;

    invoke-virtual {p0, v2}, Lo3/c;->k(Ljava/lang/String;)V

    return-void

    :goto_4
    iget-object p0, p0, LU3/c;->d:Ljava/lang/Object;

    check-cast p0, Lo3/c;

    invoke-virtual {p0, v2}, Lo3/c;->k(Ljava/lang/String;)V

    throw p1

    :catchall_3
    move-exception p0

    :try_start_f
    monitor-exit v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    throw p0
.end method
