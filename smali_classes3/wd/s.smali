.class public final Lwd/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwd/h;


# instance fields
.field public final a:Lwd/x;

.field public final b:Lwd/g;

.field public c:Z


# direct methods
.method public constructor <init>(Lwd/x;)V
    .locals 1

    const-string v0, "sink"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwd/s;->a:Lwd/x;

    new-instance p1, Lwd/g;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwd/s;->b:Lwd/g;

    return-void
.end method


# virtual methods
.method public final C(Ljava/lang/String;)Lwd/h;
    .locals 1

    const-string v0, "string"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lwd/s;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lwd/s;->b:Lwd/g;

    invoke-virtual {v0, p1}, Lwd/g;->v0(Ljava/lang/String;)V

    invoke-virtual {p0}, Lwd/s;->a()Lwd/h;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final D(Lwd/j;)Lwd/h;
    .locals 1

    const-string v0, "byteString"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lwd/s;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lwd/s;->b:Lwd/g;

    invoke-virtual {v0, p1}, Lwd/g;->V(Lwd/j;)V

    invoke-virtual {p0}, Lwd/s;->a()Lwd/h;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final L([B)Lwd/h;
    .locals 3

    const-string v0, "source"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lwd/s;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lwd/s;->b:Lwd/g;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Lwd/g;->W([BII)V

    invoke-virtual {p0}, Lwd/s;->a()Lwd/h;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final O(J)Lwd/h;
    .locals 1

    iget-boolean v0, p0, Lwd/s;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lwd/s;->b:Lwd/g;

    invoke-virtual {v0, p1, p2}, Lwd/g;->d0(J)V

    invoke-virtual {p0}, Lwd/s;->a()Lwd/h;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final R(Lwd/g;J)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lwd/s;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lwd/s;->b:Lwd/g;

    invoke-virtual {v0, p1, p2, p3}, Lwd/g;->R(Lwd/g;J)V

    invoke-virtual {p0}, Lwd/s;->a()Lwd/h;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final a()Lwd/h;
    .locals 5

    iget-boolean v0, p0, Lwd/s;->c:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lwd/s;->b:Lwd/g;

    invoke-virtual {v0}, Lwd/g;->c()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lwd/s;->a:Lwd/x;

    invoke-interface {v3, v0, v1, v2}, Lwd/x;->R(Lwd/g;J)V

    :cond_0
    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b(I)Lwd/h;
    .locals 1

    iget-boolean v0, p0, Lwd/s;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lwd/s;->b:Lwd/g;

    invoke-virtual {v0, p1}, Lwd/g;->m0(I)V

    invoke-virtual {p0}, Lwd/s;->a()Lwd/h;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final c0(I)Lwd/h;
    .locals 1

    iget-boolean v0, p0, Lwd/s;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lwd/s;->b:Lwd/g;

    invoke-virtual {v0, p1}, Lwd/g;->b0(I)V

    invoke-virtual {p0}, Lwd/s;->a()Lwd/h;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final close()V
    .locals 6

    iget-object v0, p0, Lwd/s;->a:Lwd/x;

    iget-boolean v1, p0, Lwd/s;->c:Z

    if-nez v1, :cond_3

    :try_start_0
    iget-object v1, p0, Lwd/s;->b:Lwd/g;

    iget-wide v2, v1, Lwd/g;->b:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    invoke-interface {v0, v1, v2, v3}, Lwd/x;->R(Lwd/g;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    :goto_0
    :try_start_1
    invoke-interface {v0}, Lwd/x;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    if-nez v1, :cond_1

    move-object v1, v0

    :cond_1
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lwd/s;->c:Z

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    throw v1

    :cond_3
    :goto_2
    return-void
.end method

.method public final flush()V
    .locals 5

    iget-boolean v0, p0, Lwd/s;->c:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lwd/s;->b:Lwd/g;

    iget-wide v1, v0, Lwd/g;->b:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    iget-object p0, p0, Lwd/s;->a:Lwd/x;

    if-lez v3, :cond_0

    invoke-interface {p0, v0, v1, v2}, Lwd/x;->R(Lwd/g;J)V

    :cond_0
    invoke-interface {p0}, Lwd/x;->flush()V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final g()Lwd/g;
    .locals 0

    iget-object p0, p0, Lwd/s;->b:Lwd/g;

    return-object p0
.end method

.method public final i0([BII)Lwd/h;
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lwd/s;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lwd/s;->b:Lwd/g;

    invoke-virtual {v0, p1, p2, p3}, Lwd/g;->W([BII)V

    invoke-virtual {p0}, Lwd/s;->a()Lwd/h;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final isOpen()Z
    .locals 0

    iget-boolean p0, p0, Lwd/s;->c:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final o0(Lwd/z;)J
    .locals 6

    const-wide/16 v0, 0x0

    :goto_0
    iget-object v2, p0, Lwd/s;->b:Lwd/g;

    const-wide/16 v3, 0x2000

    move-object v5, p1

    check-cast v5, Lwd/c;

    invoke-virtual {v5, v2, v3, v4}, Lwd/c;->read(Lwd/g;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    add-long/2addr v0, v2

    invoke-virtual {p0}, Lwd/s;->a()Lwd/h;

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public final timeout()Lwd/B;
    .locals 0

    iget-object p0, p0, Lwd/s;->a:Lwd/x;

    invoke-interface {p0}, Lwd/x;->timeout()Lwd/B;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "buffer("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lwd/s;->a:Lwd/x;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final write(Ljava/nio/ByteBuffer;)I
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lwd/s;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lwd/s;->b:Lwd/g;

    invoke-virtual {v0, p1}, Lwd/g;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    invoke-virtual {p0}, Lwd/s;->a()Lwd/h;

    return p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
