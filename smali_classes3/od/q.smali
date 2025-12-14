.class public final Lod/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final z:Lod/C;


# instance fields
.field public final a:Lod/j;

.field public final b:Ljava/util/LinkedHashMap;

.field public final c:Ljava/lang/String;

.field public d:I

.field public e:I

.field public f:Z

.field public final g:Lkd/c;

.field public final h:Lkd/b;

.field public final i:Lkd/b;

.field public final j:Lkd/b;

.field public final k:Lod/B;

.field public l:J

.field public m:J

.field public n:J

.field public o:J

.field public final p:Lod/C;

.field public q:Lod/C;

.field public r:J

.field public s:J

.field public t:J

.field public u:J

.field public final v:Ljava/net/Socket;

.field public final w:Lod/z;

.field public final x:LDb/J;

.field public final y:Ljava/util/LinkedHashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lod/C;

    invoke-direct {v0}, Lod/C;-><init>()V

    const/4 v1, 0x7

    const v2, 0xffff

    invoke-virtual {v0, v1, v2}, Lod/C;->c(II)V

    const/4 v1, 0x5

    const/16 v2, 0x4000

    invoke-virtual {v0, v1, v2}, Lod/C;->c(II)V

    sput-object v0, Lod/q;->z:Lod/C;

    return-void
.end method

.method public constructor <init>(LQ9/a;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, LQ9/a;->f:Ljava/lang/Object;

    check-cast v0, Lod/j;

    iput-object v0, p0, Lod/q;->a:Lod/j;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lod/q;->b:Ljava/util/LinkedHashMap;

    iget-object v0, p1, LQ9/a;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iput-object v0, p0, Lod/q;->c:Ljava/lang/String;

    const/4 v0, 0x3

    iput v0, p0, Lod/q;->e:I

    iget-object v0, p1, LQ9/a;->b:Ljava/lang/Object;

    check-cast v0, Lkd/c;

    iput-object v0, p0, Lod/q;->g:Lkd/c;

    invoke-virtual {v0}, Lkd/c;->e()Lkd/b;

    move-result-object v2

    iput-object v2, p0, Lod/q;->h:Lkd/b;

    invoke-virtual {v0}, Lkd/c;->e()Lkd/b;

    move-result-object v2

    iput-object v2, p0, Lod/q;->i:Lkd/b;

    invoke-virtual {v0}, Lkd/c;->e()Lkd/b;

    move-result-object v0

    iput-object v0, p0, Lod/q;->j:Lkd/b;

    sget-object v0, Lod/B;->a:Lod/B;

    iput-object v0, p0, Lod/q;->k:Lod/B;

    new-instance v0, Lod/C;

    invoke-direct {v0}, Lod/C;-><init>()V

    const/4 v2, 0x7

    const/high16 v3, 0x1000000

    invoke-virtual {v0, v2, v3}, Lod/C;->c(II)V

    iput-object v0, p0, Lod/q;->p:Lod/C;

    sget-object v0, Lod/q;->z:Lod/C;

    iput-object v0, p0, Lod/q;->q:Lod/C;

    invoke-virtual {v0}, Lod/C;->a()I

    move-result v0

    int-to-long v2, v0

    iput-wide v2, p0, Lod/q;->u:J

    iget-object v0, p1, LQ9/a;->c:Ljava/lang/Object;

    check-cast v0, Ljava/net/Socket;

    if-eqz v0, :cond_2

    iput-object v0, p0, Lod/q;->v:Ljava/net/Socket;

    new-instance v0, Lod/z;

    iget-object v2, p1, LQ9/a;->e:Ljava/lang/Object;

    check-cast v2, Lwd/s;

    if-eqz v2, :cond_1

    invoke-direct {v0, v2}, Lod/z;-><init>(Lwd/s;)V

    iput-object v0, p0, Lod/q;->w:Lod/z;

    new-instance v0, LDb/J;

    new-instance v2, Lod/u;

    iget-object p1, p1, LQ9/a;->d:Ljava/lang/Object;

    check-cast p1, Lwd/t;

    if-eqz p1, :cond_0

    invoke-direct {v2, p1}, Lod/u;-><init>(Lwd/t;)V

    const/16 p1, 0x10

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v2, v1}, LDb/J;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    iput-object v0, p0, Lod/q;->x:LDb/J;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lod/q;->y:Ljava/util/LinkedHashSet;

    return-void

    :cond_0
    const-string p0, "source"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string p0, "sink"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string p0, "socket"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_3
    const-string p0, "connectionName"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final a(Lod/c;Lod/c;Ljava/io/IOException;)V
    .locals 3

    const-string v0, "connectionCode"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "streamCode"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lid/b;->a:[B

    :try_start_0
    invoke-virtual {p0, p1}, Lod/q;->e(Lod/c;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    monitor-enter p0

    :try_start_1
    iget-object p1, p0, Lod/q;->b:Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lod/q;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    new-array v1, v0, [Lod/y;

    invoke-interface {p1, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    iget-object v1, p0, Lod/q;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    check-cast p1, [Lod/y;

    if-eqz p1, :cond_1

    array-length v1, p1

    :goto_1
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    :try_start_2
    invoke-virtual {v2, p2, p3}, Lod/y;->c(Lod/c;Ljava/io/IOException;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :try_start_3
    iget-object p1, p0, Lod/q;->w:Lod/z;

    invoke-virtual {p1}, Lod/z;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    :try_start_4
    iget-object p1, p0, Lod/q;->v:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    iget-object p1, p0, Lod/q;->h:Lkd/b;

    invoke-virtual {p1}, Lkd/b;->f()V

    iget-object p1, p0, Lod/q;->i:Lkd/b;

    invoke-virtual {p1}, Lkd/b;->f()V

    iget-object p0, p0, Lod/q;->j:Lkd/b;

    invoke-virtual {p0}, Lkd/b;->f()V

    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public final b(Ljava/io/IOException;)V
    .locals 1

    sget-object v0, Lod/c;->PROTOCOL_ERROR:Lod/c;

    invoke-virtual {p0, v0, v0, p1}, Lod/q;->a(Lod/c;Lod/c;Ljava/io/IOException;)V

    return-void
.end method

.method public final declared-synchronized c(I)Lod/y;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lod/q;->b:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lod/y;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final close()V
    .locals 3

    sget-object v0, Lod/c;->NO_ERROR:Lod/c;

    sget-object v1, Lod/c;->CANCEL:Lod/c;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lod/q;->a(Lod/c;Lod/c;Ljava/io/IOException;)V

    return-void
.end method

.method public final declared-synchronized d(I)Lod/y;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lod/q;->b:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lod/y;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final e(Lod/c;)V
    .locals 3

    const-string v0, "statusCode"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lod/q;->w:Lod/z;

    monitor-enter v0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-boolean v1, p0, Lod/q;->f:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :try_start_3
    iput-boolean v1, p0, Lod/q;->f:Z

    iget v1, p0, Lod/q;->d:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit p0

    iget-object p0, p0, Lod/q;->w:Lod/z;

    sget-object v2, Lid/b;->a:[B

    invoke-virtual {p0, v1, p1, v2}, Lod/z;->d(ILod/c;[B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    :try_start_5
    monitor-exit p0

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_0
    monitor-exit v0

    throw p0
.end method

.method public final declared-synchronized f(J)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lod/q;->r:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lod/q;->r:J

    iget-wide p1, p0, Lod/q;->s:J

    sub-long/2addr v0, p1

    iget-object p1, p0, Lod/q;->p:Lod/C;

    invoke-virtual {p1}, Lod/C;->a()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-long p1, p1

    cmp-long p1, v0, p1

    if-ltz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lod/q;->k(IJ)V

    iget-wide p1, p0, Lod/q;->s:J

    add-long/2addr p1, v0

    iput-wide p1, p0, Lod/q;->s:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final flush()V
    .locals 0

    iget-object p0, p0, Lod/q;->w:Lod/z;

    invoke-virtual {p0}, Lod/z;->flush()V

    return-void
.end method

.method public final h(IZLwd/g;J)V
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    const/4 v3, 0x0

    if-nez v2, :cond_0

    iget-object p0, p0, Lod/q;->w:Lod/z;

    invoke-virtual {p0, p2, p1, p3, v3}, Lod/z;->b(ZILwd/g;I)V

    return-void

    :cond_0
    :goto_0
    cmp-long v2, p4, v0

    if-lez v2, :cond_4

    monitor-enter p0

    :goto_1
    :try_start_0
    iget-wide v4, p0, Lod/q;->t:J

    iget-wide v6, p0, Lod/q;->u:J

    cmp-long v2, v4, v6

    if-ltz v2, :cond_2

    iget-object v2, p0, Lod/q;->b:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    sub-long/2addr v6, v4

    :try_start_1
    invoke-static {p4, p5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v2, v4

    iget-object v4, p0, Lod/q;->w:Lod/z;

    iget v4, v4, Lod/z;->c:I

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-wide v4, p0, Lod/q;->t:J

    int-to-long v6, v2

    add-long/2addr v4, v6

    iput-wide v4, p0, Lod/q;->t:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    sub-long/2addr p4, v6

    iget-object v4, p0, Lod/q;->w:Lod/z;

    if-eqz p2, :cond_3

    cmp-long v5, p4, v0

    if-nez v5, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    move v5, v3

    :goto_2
    invoke-virtual {v4, v5, p1, p3, v2}, Lod/z;->b(ZILwd/g;I)V

    goto :goto_0

    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    monitor-exit p0

    throw p1

    :cond_4
    return-void
.end method

.method public final j(ILod/c;)V
    .locals 8

    const-string v0, "errorCode"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lod/q;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] writeSynReset"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Lod/n;

    const/4 v7, 0x2

    move-object v2, v0

    move-object v4, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v2 .. v7}, Lod/n;-><init>(Ljava/lang/String;Lod/q;ILjava/lang/Object;I)V

    iget-object p0, p0, Lod/q;->h:Lkd/b;

    const-wide/16 p1, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lkd/b;->c(Lkd/a;J)V

    return-void
.end method

.method public final k(IJ)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lod/q;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] windowUpdate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Lod/p;

    move-object v2, v0

    move-object v4, p0

    move v5, p1

    move-wide v6, p2

    invoke-direct/range {v2 .. v7}, Lod/p;-><init>(Ljava/lang/String;Lod/q;IJ)V

    iget-object p0, p0, Lod/q;->h:Lkd/b;

    const-wide/16 p1, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lkd/b;->c(Lkd/a;J)V

    return-void
.end method
