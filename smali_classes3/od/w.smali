.class public final Lod/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwd/z;


# instance fields
.field public final a:J

.field public b:Z

.field public final c:Lwd/g;

.field public final d:Lwd/g;

.field public e:Z

.field public final synthetic f:Lod/y;


# direct methods
.method public constructor <init>(Lod/y;JZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lod/w;->f:Lod/y;

    iput-wide p2, p0, Lod/w;->a:J

    iput-boolean p4, p0, Lod/w;->b:Z

    new-instance p1, Lwd/g;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lod/w;->c:Lwd/g;

    new-instance p1, Lwd/g;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lod/w;->d:Lwd/g;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 4

    iget-object v0, p0, Lod/w;->f:Lod/y;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lod/w;->e:Z

    iget-object v1, p0, Lod/w;->d:Lwd/g;

    iget-wide v2, v1, Lwd/g;->b:J

    invoke-virtual {v1}, Lwd/g;->a()V

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    sget-object v0, Lid/b;->a:[B

    iget-object v0, p0, Lod/w;->f:Lod/y;

    iget-object v0, v0, Lod/y;->b:Lod/q;

    invoke-virtual {v0, v2, v3}, Lod/q;->f(J)V

    :cond_0
    iget-object p0, p0, Lod/w;->f:Lod/y;

    invoke-virtual {p0}, Lod/y;->a()V

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final read(Lwd/g;J)J
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    const-string v4, "sink"

    invoke-static {v1, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-ltz v6, :cond_9

    :goto_0
    iget-object v6, v0, Lod/w;->f:Lod/y;

    monitor-enter v6

    :try_start_0
    iget-object v7, v6, Lod/y;->k:Lod/x;

    invoke-virtual {v7}, Lwd/d;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    monitor-enter v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v7, v6, Lod/y;->m:Lod/c;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    monitor-exit v6

    if-eqz v7, :cond_0

    iget-boolean v7, v0, Lod/w;->b:Z

    if-nez v7, :cond_0

    iget-object v7, v6, Lod/y;->n:Ljava/io/IOException;

    if-nez v7, :cond_1

    new-instance v7, Lod/D;

    monitor-enter v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v8, v6, Lod/y;->m:Lod/c;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    monitor-exit v6

    invoke-static {v8}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-direct {v7, v8}, Lod/D;-><init>(Lod/c;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0

    :cond_0
    const/4 v7, 0x0

    :cond_1
    :goto_1
    iget-boolean v8, v0, Lod/w;->e:Z

    if-nez v8, :cond_8

    iget-object v8, v0, Lod/w;->d:Lwd/g;

    iget-wide v9, v8, Lwd/g;->b:J

    cmp-long v11, v9, v4

    const-wide/16 v12, -0x1

    const/4 v14, 0x0

    if-lez v11, :cond_2

    invoke-static {v2, v3, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    invoke-virtual {v8, v1, v9, v10}, Lwd/g;->read(Lwd/g;J)J

    move-result-wide v8

    iget-wide v10, v6, Lod/y;->c:J

    add-long/2addr v10, v8

    iput-wide v10, v6, Lod/y;->c:J

    iget-wide v4, v6, Lod/y;->d:J

    sub-long/2addr v10, v4

    if-nez v7, :cond_4

    iget-object v4, v6, Lod/y;->b:Lod/q;

    iget-object v4, v4, Lod/q;->p:Lod/C;

    invoke-virtual {v4}, Lod/C;->a()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-long v4, v4

    cmp-long v4, v10, v4

    if-ltz v4, :cond_4

    iget-object v4, v6, Lod/y;->b:Lod/q;

    iget v5, v6, Lod/y;->a:I

    invoke-virtual {v4, v5, v10, v11}, Lod/q;->k(IJ)V

    iget-wide v4, v6, Lod/y;->c:J

    iput-wide v4, v6, Lod/y;->d:J

    goto :goto_2

    :cond_2
    iget-boolean v4, v0, Lod/w;->b:Z

    if-nez v4, :cond_3

    if-nez v7, :cond_3

    invoke-virtual {v6}, Lod/y;->k()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const/4 v14, 0x1

    :cond_3
    move-wide v8, v12

    :cond_4
    :goto_2
    :try_start_8
    iget-object v4, v6, Lod/y;->k:Lod/x;

    invoke-virtual {v4}, Lod/x;->k()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    monitor-exit v6

    if-eqz v14, :cond_5

    const-wide/16 v4, 0x0

    goto :goto_0

    :cond_5
    cmp-long v0, v8, v12

    if-eqz v0, :cond_6

    return-wide v8

    :cond_6
    if-nez v7, :cond_7

    return-wide v12

    :cond_7
    throw v7

    :catchall_2
    move-exception v0

    goto :goto_4

    :cond_8
    :try_start_9
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :catchall_3
    move-exception v0

    :try_start_a
    monitor-exit v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :goto_3
    :try_start_c
    iget-object v1, v6, Lod/y;->k:Lod/x;

    invoke-virtual {v1}, Lod/x;->k()V

    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :goto_4
    monitor-exit v6

    throw v0

    :cond_9
    const-string v0, "byteCount < 0: "

    invoke-static {v2, v3, v0}, Landroidx/recyclerview/widget/P;->f(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final timeout()Lwd/B;
    .locals 0

    iget-object p0, p0, Lod/w;->f:Lod/y;

    iget-object p0, p0, Lod/y;->k:Lod/x;

    return-object p0
.end method
