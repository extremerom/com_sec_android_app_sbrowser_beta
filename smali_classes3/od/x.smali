.class public final Lod/x;
.super Lwd/d;
.source "SourceFile"


# instance fields
.field public final synthetic m:Lod/y;


# direct methods
.method public constructor <init>(Lod/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lod/x;->m:Lod/y;

    return-void
.end method


# virtual methods
.method public final j()V
    .locals 5

    iget-object v0, p0, Lod/x;->m:Lod/y;

    sget-object v1, Lod/c;->CANCEL:Lod/c;

    invoke-virtual {v0, v1}, Lod/y;->e(Lod/c;)V

    iget-object p0, p0, Lod/x;->m:Lod/y;

    iget-object p0, p0, Lod/y;->b:Lod/q;

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lod/q;->n:J

    iget-wide v2, p0, Lod/q;->m:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    monitor-exit p0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x1

    add-long/2addr v2, v0

    :try_start_1
    iput-wide v2, p0, Lod/q;->m:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const v2, 0x3b9aca00

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lod/q;->o:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    iget-object v0, p0, Lod/q;->h:Lkd/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lod/q;->c:Ljava/lang/String;

    const-string v3, " ping"

    invoke-static {v1, v2, v3}, Lt/b;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljd/f;

    const/4 v3, 0x3

    invoke-direct {v2, v1, p0, v3}, Ljd/f;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lkd/b;->c(Lkd/a;J)V

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final k()V
    .locals 1

    invoke-virtual {p0}, Lwd/d;->i()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/net/SocketTimeoutException;

    const-string v0, "timeout"

    invoke-direct {p0, v0}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
