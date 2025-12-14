.class public final Lod/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwd/x;


# instance fields
.field public final a:Z

.field public final b:Lwd/g;

.field public c:Z

.field public final synthetic d:Lod/y;


# direct methods
.method public constructor <init>(Lod/y;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lod/v;->d:Lod/y;

    iput-boolean p2, p0, Lod/v;->a:Z

    new-instance p1, Lwd/g;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lod/v;->b:Lwd/g;

    return-void
.end method


# virtual methods
.method public final R(Lwd/g;J)V
    .locals 3

    const-string v0, "source"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lid/b;->a:[B

    iget-object v0, p0, Lod/v;->b:Lwd/g;

    invoke-virtual {v0, p1, p2, p3}, Lwd/g;->R(Lwd/g;J)V

    :goto_0
    iget-wide p1, v0, Lwd/g;->b:J

    const-wide/16 v1, 0x4000

    cmp-long p1, p1, v1

    if-ltz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lod/v;->a(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 11

    iget-object v0, p0, Lod/v;->d:Lod/y;

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lod/y;->l:Lod/x;

    invoke-virtual {v1}, Lwd/d;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :goto_0
    :try_start_1
    iget-wide v1, v0, Lod/y;->e:J

    iget-wide v3, v0, Lod/y;->f:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    iget-boolean v1, p0, Lod/v;->a:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lod/v;->c:Z

    if-nez v1, :cond_0

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, v0, Lod/y;->m:Lod/c;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    monitor-exit v0

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lod/y;->k()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :catchall_1
    move-exception p0

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_0
    :try_start_6
    iget-object v1, v0, Lod/y;->l:Lod/x;

    invoke-virtual {v1}, Lod/x;->k()V

    invoke-virtual {v0}, Lod/y;->b()V

    iget-wide v1, v0, Lod/y;->f:J

    iget-wide v3, v0, Lod/y;->e:J

    sub-long/2addr v1, v3

    iget-object v3, p0, Lod/v;->b:Lwd/g;

    iget-wide v3, v3, Lwd/g;->b:J

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    iget-wide v1, v0, Lod/y;->e:J

    add-long/2addr v1, v9

    iput-wide v1, v0, Lod/y;->e:J

    if-eqz p1, :cond_1

    iget-object p1, p0, Lod/v;->b:Lwd/g;

    iget-wide v1, p1, Lwd/g;->b:J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    cmp-long p1, v9, v1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    :goto_1
    move v7, p1

    goto :goto_2

    :catchall_2
    move-exception p0

    goto :goto_4

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :goto_2
    monitor-exit v0

    iget-object p1, p0, Lod/v;->d:Lod/y;

    iget-object p1, p1, Lod/y;->l:Lod/x;

    invoke-virtual {p1}, Lwd/d;->h()V

    :try_start_7
    iget-object p1, p0, Lod/v;->d:Lod/y;

    iget-object v5, p1, Lod/y;->b:Lod/q;

    iget v6, p1, Lod/y;->a:I

    iget-object v8, p0, Lod/v;->b:Lwd/g;

    invoke-virtual/range {v5 .. v10}, Lod/q;->h(IZLwd/g;J)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    iget-object p0, p0, Lod/v;->d:Lod/y;

    iget-object p0, p0, Lod/y;->l:Lod/x;

    invoke-virtual {p0}, Lod/x;->k()V

    return-void

    :catchall_3
    move-exception p1

    iget-object p0, p0, Lod/v;->d:Lod/y;

    iget-object p0, p0, Lod/y;->l:Lod/x;

    invoke-virtual {p0}, Lod/x;->k()V

    throw p1

    :goto_3
    :try_start_8
    iget-object p1, v0, Lod/y;->l:Lod/x;

    invoke-virtual {p1}, Lod/x;->k()V

    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :goto_4
    monitor-exit v0

    throw p0
.end method

.method public final close()V
    .locals 13

    iget-object v0, p0, Lod/v;->d:Lod/y;

    sget-object v1, Lid/b;->a:[B

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lod/v;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v1, v0, Lod/y;->m:Lod/c;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/4 v2, 0x1

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    iget-object v0, p0, Lod/v;->d:Lod/y;

    iget-object v3, v0, Lod/y;->j:Lod/v;

    iget-boolean v3, v3, Lod/v;->a:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lod/v;->b:Lwd/g;

    iget-wide v3, v3, Lwd/g;->b:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_2

    :goto_1
    iget-object v0, p0, Lod/v;->b:Lwd/g;

    iget-wide v0, v0, Lwd/g;->b:J

    cmp-long v0, v0, v5

    if-lez v0, :cond_3

    invoke-virtual {p0, v2}, Lod/v;->a(Z)V

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    iget-object v7, v0, Lod/y;->b:Lod/q;

    iget v8, v0, Lod/y;->a:I

    const-wide/16 v11, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual/range {v7 .. v12}, Lod/q;->h(IZLwd/g;J)V

    :cond_3
    iget-object v0, p0, Lod/v;->d:Lod/y;

    monitor-enter v0

    :try_start_4
    iput-boolean v2, p0, Lod/v;->c:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v0

    iget-object v0, p0, Lod/v;->d:Lod/y;

    iget-object v0, v0, Lod/y;->b:Lod/q;

    invoke-virtual {v0}, Lod/q;->flush()V

    iget-object p0, p0, Lod/v;->d:Lod/y;

    invoke-virtual {p0}, Lod/y;->a()V

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final flush()V
    .locals 4

    iget-object v0, p0, Lod/v;->d:Lod/y;

    sget-object v1, Lid/b;->a:[B

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0}, Lod/y;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    :goto_0
    iget-object v0, p0, Lod/v;->b:Lwd/g;

    iget-wide v0, v0, Lwd/g;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lod/v;->a(Z)V

    iget-object v0, p0, Lod/v;->d:Lod/y;

    iget-object v0, v0, Lod/y;->b:Lod/q;

    invoke-virtual {v0}, Lod/q;->flush()V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final timeout()Lwd/B;
    .locals 0

    iget-object p0, p0, Lod/v;->d:Lod/y;

    iget-object p0, p0, Lod/y;->l:Lod/x;

    return-object p0
.end method
