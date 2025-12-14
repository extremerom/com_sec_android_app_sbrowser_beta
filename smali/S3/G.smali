.class public final LS3/G;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LS3/f;
.implements LS3/e;


# instance fields
.field public final a:LS3/g;

.field public final b:LS3/l;

.field public volatile c:I

.field public volatile d:LS3/c;

.field public volatile e:Ljava/lang/Object;

.field public volatile f:LW3/s;

.field public volatile g:LS3/d;


# direct methods
.method public constructor <init>(LS3/g;LS3/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LS3/G;->a:LS3/g;

    iput-object p2, p0, LS3/G;->b:LS3/l;

    return-void
.end method


# virtual methods
.method public final a(LQ3/g;Ljava/lang/Object;Lcom/bumptech/glide/load/data/e;LQ3/a;LQ3/g;)V
    .locals 6

    iget-object v0, p0, LS3/G;->b:LS3/l;

    iget-object p0, p0, LS3/G;->f:LW3/s;

    iget-object p0, p0, LW3/s;->c:Lcom/bumptech/glide/load/data/e;

    invoke-interface {p0}, Lcom/bumptech/glide/load/data/e;->c()LQ3/a;

    move-result-object v4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, LS3/l;->a(LQ3/g;Ljava/lang/Object;Lcom/bumptech/glide/load/data/e;LQ3/a;LQ3/g;)V

    return-void
.end method

.method public final b()Z
    .locals 5

    iget-object v0, p0, LS3/G;->e:Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, LS3/G;->e:Ljava/lang/Object;

    iput-object v1, p0, LS3/G;->e:Ljava/lang/Object;

    :try_start_0
    invoke-virtual {p0, v0}, LS3/G;->d(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    return v2

    :catch_0
    move-exception v0

    const-string v3, "SourceGenerator"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "Failed to properly rewind or write data to cache"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    iget-object v0, p0, LS3/G;->d:LS3/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, LS3/G;->d:LS3/c;

    invoke-virtual {v0}, LS3/c;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iput-object v1, p0, LS3/G;->d:LS3/c;

    iput-object v1, p0, LS3/G;->f:LW3/s;

    const/4 v0, 0x0

    :cond_2
    :goto_0
    if-nez v0, :cond_4

    iget v1, p0, LS3/G;->c:I

    iget-object v3, p0, LS3/G;->a:LS3/g;

    invoke-virtual {v3}, LS3/g;->b()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    iget-object v1, p0, LS3/G;->a:LS3/g;

    invoke-virtual {v1}, LS3/g;->b()Ljava/util/ArrayList;

    move-result-object v1

    iget v3, p0, LS3/G;->c:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, LS3/G;->c:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LW3/s;

    iput-object v1, p0, LS3/G;->f:LW3/s;

    iget-object v1, p0, LS3/G;->f:LW3/s;

    if-eqz v1, :cond_2

    iget-object v1, p0, LS3/G;->a:LS3/g;

    iget-object v1, v1, LS3/g;->p:LS3/n;

    iget-object v3, p0, LS3/G;->f:LW3/s;

    iget-object v3, v3, LW3/s;->c:Lcom/bumptech/glide/load/data/e;

    invoke-interface {v3}, Lcom/bumptech/glide/load/data/e;->c()LQ3/a;

    move-result-object v3

    invoke-virtual {v1, v3}, LS3/n;->a(LQ3/a;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, LS3/G;->a:LS3/g;

    iget-object v3, p0, LS3/G;->f:LW3/s;

    iget-object v3, v3, LW3/s;->c:Lcom/bumptech/glide/load/data/e;

    invoke-interface {v3}, Lcom/bumptech/glide/load/data/e;->a()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, LS3/g;->c(Ljava/lang/Class;)LS3/A;

    move-result-object v1

    if-eqz v1, :cond_2

    :cond_3
    iget-object v0, p0, LS3/G;->f:LW3/s;

    iget-object v1, p0, LS3/G;->f:LW3/s;

    iget-object v1, v1, LW3/s;->c:Lcom/bumptech/glide/load/data/e;

    iget-object v3, p0, LS3/G;->a:LS3/g;

    iget-object v3, v3, LS3/g;->o:Lcom/bumptech/glide/f;

    new-instance v4, Lo3/l;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object p0, v4, Lo3/l;->b:Ljava/lang/Object;

    iput-object v0, v4, Lo3/l;->a:Ljava/lang/Object;

    invoke-interface {v1, v3, v4}, Lcom/bumptech/glide/load/data/e;->d(Lcom/bumptech/glide/f;Lcom/bumptech/glide/load/data/d;)V

    move v0, v2

    goto :goto_0

    :cond_4
    return v0
.end method

.method public final c(LQ3/g;Ljava/lang/Exception;Lcom/bumptech/glide/load/data/e;LQ3/a;)V
    .locals 0

    iget-object p4, p0, LS3/G;->b:LS3/l;

    iget-object p0, p0, LS3/G;->f:LW3/s;

    iget-object p0, p0, LW3/s;->c:Lcom/bumptech/glide/load/data/e;

    invoke-interface {p0}, Lcom/bumptech/glide/load/data/e;->c()LQ3/a;

    move-result-object p0

    invoke-virtual {p4, p1, p2, p3, p0}, LS3/l;->c(LQ3/g;Ljava/lang/Exception;Lcom/bumptech/glide/load/data/e;LQ3/a;)V

    return-void
.end method

.method public final cancel()V
    .locals 0

    iget-object p0, p0, LS3/G;->f:LW3/s;

    if-eqz p0, :cond_0

    iget-object p0, p0, LW3/s;->c:Lcom/bumptech/glide/load/data/e;

    invoke-interface {p0}, Lcom/bumptech/glide/load/data/e;->cancel()V

    :cond_0
    return-void
.end method

.method public final d(Ljava/lang/Object;)Z
    .locals 13

    const-string v0, "SourceGenerator"

    const-string v1, "Attempt to write: "

    const-string v2, "Finished encoding source to cache, key: "

    sget v3, Ll4/h;->b:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v3

    const/4 v5, 0x0

    :try_start_0
    iget-object v6, p0, LS3/G;->a:LS3/g;

    iget-object v6, v6, LS3/g;->c:Lcom/bumptech/glide/e;

    invoke-virtual {v6}, Lcom/bumptech/glide/e;->a()Lcom/bumptech/glide/h;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/bumptech/glide/h;->g(Ljava/lang/Object;)Lcom/bumptech/glide/load/data/g;

    move-result-object v6

    invoke-interface {v6}, Lcom/bumptech/glide/load/data/g;->a()Ljava/lang/Object;

    move-result-object v7

    iget-object v8, p0, LS3/G;->a:LS3/g;

    invoke-virtual {v8, v7}, LS3/g;->d(Ljava/lang/Object;)LQ3/d;

    move-result-object v8

    new-instance v9, Lo3/t;

    iget-object v10, p0, LS3/G;->a:LS3/g;

    iget-object v10, v10, LS3/g;->i:LQ3/k;

    const/16 v11, 0x15

    invoke-direct {v9, v8, v11, v7, v10}, Lo3/t;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance v7, LS3/d;

    iget-object v10, p0, LS3/G;->f:LW3/s;

    iget-object v10, v10, LW3/s;->a:LQ3/g;

    iget-object v11, p0, LS3/G;->a:LS3/g;

    iget-object v12, v11, LS3/g;->n:LQ3/g;

    invoke-direct {v7, v10, v12}, LS3/d;-><init>(LQ3/g;LQ3/g;)V

    iget-object v10, v11, LS3/g;->h:LS3/o;

    invoke-virtual {v10}, LS3/o;->a()LU3/a;

    move-result-object v10

    invoke-interface {v10, v7, v9}, LU3/a;->f(LQ3/g;Lo3/t;)V

    const/4 v9, 0x2

    invoke-static {v0, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v11, ", data: "

    if-eqz v9, :cond_0

    :try_start_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", encoder: "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", duration: "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v4}, Ll4/h;->a(J)D

    move-result-wide v2

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {v10, v7}, LU3/a;->d(LQ3/g;)Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iput-object v7, p0, LS3/G;->g:LS3/d;

    new-instance p1, LS3/c;

    iget-object v0, p0, LS3/G;->f:LW3/s;

    iget-object v0, v0, LW3/s;->a:LQ3/g;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, LS3/G;->a:LS3/g;

    invoke-direct {p1, v0, v1, p0}, LS3/c;-><init>(Ljava/util/List;LS3/g;LS3/e;)V

    iput-object p1, p0, LS3/G;->d:LS3/c;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p0, p0, LS3/G;->f:LW3/s;

    iget-object p0, p0, LW3/s;->c:Lcom/bumptech/glide/load/data/e;

    invoke-interface {p0}, Lcom/bumptech/glide/load/data/e;->b()V

    return v3

    :cond_1
    const/4 v2, 0x3

    :try_start_2
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, LS3/G;->g:LS3/d;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " to the disk cache failed, maybe the disk cache is disabled? Trying to decode the data directly..."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :try_start_3
    iget-object p1, p0, LS3/G;->b:LS3/l;

    iget-object v0, p0, LS3/G;->f:LW3/s;

    iget-object v7, v0, LW3/s;->a:LQ3/g;

    invoke-interface {v6}, Lcom/bumptech/glide/load/data/g;->a()Ljava/lang/Object;

    move-result-object v8

    iget-object v0, p0, LS3/G;->f:LW3/s;

    iget-object v9, v0, LW3/s;->c:Lcom/bumptech/glide/load/data/e;

    iget-object v0, p0, LS3/G;->f:LW3/s;

    iget-object v0, v0, LW3/s;->c:Lcom/bumptech/glide/load/data/e;

    invoke-interface {v0}, Lcom/bumptech/glide/load/data/e;->c()LQ3/a;

    move-result-object v10

    iget-object v0, p0, LS3/G;->f:LW3/s;

    iget-object v11, v0, LW3/s;->a:LQ3/g;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, LS3/l;->a(LQ3/g;Ljava/lang/Object;Lcom/bumptech/glide/load/data/e;LQ3/a;LQ3/g;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return v5

    :catchall_1
    move-exception p1

    move v5, v3

    :goto_1
    if-nez v5, :cond_3

    iget-object p0, p0, LS3/G;->f:LW3/s;

    iget-object p0, p0, LW3/s;->c:Lcom/bumptech/glide/load/data/e;

    invoke-interface {p0}, Lcom/bumptech/glide/load/data/e;->b()V

    :cond_3
    throw p1
.end method
