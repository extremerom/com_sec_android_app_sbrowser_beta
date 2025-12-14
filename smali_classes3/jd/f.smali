.class public final Ljd/f;
.super Lkd/a;
.source "SourceFile"


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/String;I)V
    .locals 0

    iput p3, p0, Ljd/f;->e:I

    iput-object p1, p0, Ljd/f;->f:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p2, p1}, Lkd/a;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Ljd/f;->e:I

    iput-object p2, p0, Ljd/f;->f:Ljava/lang/Object;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lkd/a;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 12

    iget v0, p0, Ljd/f;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Ljd/f;->f:Ljava/lang/Object;

    check-cast p0, Lod/q;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v0, p0, Lod/q;->w:Lod/z;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1, v1}, Lod/z;->f(IIZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lod/q;->b(Ljava/io/IOException;)V

    :goto_0
    const-wide/16 v0, -0x1

    return-wide v0

    :pswitch_0
    iget-object p0, p0, Ljd/f;->f:Ljava/lang/Object;

    check-cast p0, LV/M;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-object v2, p0, LV/M;->d:Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/high16 v5, -0x8000000000000000L

    move-wide v6, v5

    move-object v5, v4

    move v4, v3

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lld/k;

    const-string v9, "connection"

    invoke-static {v8, v9}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter v8

    :try_start_1
    invoke-virtual {p0, v8, v0, v1}, LV/M;->c(Lld/k;J)I

    move-result v9

    if-lez v9, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    iget-wide v9, v8, Lld/k;->q:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-long v9, v0, v9

    cmp-long v11, v9, v6

    if-lez v11, :cond_1

    move-object v5, v8

    move-wide v6, v9

    :cond_1
    :goto_2
    monitor-exit v8

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v8

    throw p0

    :cond_2
    iget-wide v8, p0, LV/M;->a:J

    cmp-long v2, v6, v8

    if-gez v2, :cond_6

    const/4 v2, 0x5

    if-le v3, v2, :cond_3

    goto :goto_3

    :cond_3
    if-lez v3, :cond_4

    sub-long/2addr v8, v6

    goto :goto_4

    :cond_4
    if-lez v4, :cond_5

    goto :goto_4

    :cond_5
    const-wide/16 v8, -0x1

    goto :goto_4

    :cond_6
    :goto_3
    invoke-static {v5}, Ltb/k;->c(Ljava/lang/Object;)V

    monitor-enter v5

    :try_start_2
    iget-object v2, v5, Lld/k;->p:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-wide/16 v8, 0x0

    if-nez v2, :cond_7

    monitor-exit v5

    goto :goto_4

    :cond_7
    :try_start_3
    iget-wide v2, v5, Lld/k;->q:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    add-long/2addr v2, v6

    cmp-long v0, v2, v0

    if-eqz v0, :cond_8

    monitor-exit v5

    goto :goto_4

    :cond_8
    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, v5, Lld/k;->j:Z

    iget-object v0, p0, LV/M;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v5

    iget-object v0, v5, Lld/k;->d:Ljava/net/Socket;

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-static {v0}, Lid/b;->d(Ljava/net/Socket;)V

    iget-object v0, p0, LV/M;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object p0, p0, LV/M;->b:Ljava/lang/Object;

    check-cast p0, Lkd/b;

    invoke-virtual {p0}, Lkd/b;->a()V

    :cond_9
    :goto_4
    return-wide v8

    :catchall_1
    move-exception p0

    monitor-exit v5

    throw p0

    :pswitch_1
    iget-object p0, p0, Ljd/f;->f:Ljava/lang/Object;

    check-cast p0, LDb/J;

    invoke-virtual {p0}, LDb/J;->invoke()Ljava/lang/Object;

    const-wide/16 v0, -0x1

    return-wide v0

    :pswitch_2
    iget-object p0, p0, Ljd/f;->f:Ljava/lang/Object;

    check-cast p0, Ljd/g;

    monitor-enter p0

    :try_start_5
    iget-boolean v0, p0, Ljd/g;->k:Z

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Ljd/g;->l:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v0, :cond_a

    goto :goto_7

    :cond_a
    const/4 v0, 0x1

    :try_start_6
    invoke-virtual {p0}, Ljd/g;->v()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception v0

    goto :goto_9

    :catch_1
    :try_start_7
    iput-boolean v0, p0, Ljd/g;->m:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :goto_5
    :try_start_8
    invoke-virtual {p0}, Ljd/g;->f()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {p0}, Ljd/g;->q()V

    const/4 v3, 0x0

    iput v3, p0, Ljd/g;->h:I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_6

    :catch_2
    :try_start_9
    iput-boolean v0, p0, Ljd/g;->n:Z

    new-instance v0, Lwd/e;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, LG5/u2;->b(Lwd/x;)Lwd/s;

    move-result-object v0

    iput-object v0, p0, Ljd/g;->f:Lwd/s;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :cond_b
    :goto_6
    monitor-exit p0

    goto :goto_8

    :cond_c
    :goto_7
    monitor-exit p0

    :goto_8
    return-wide v1

    :goto_9
    monitor-exit p0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
