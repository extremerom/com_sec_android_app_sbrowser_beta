.class public abstract LNc/Y;
.super LNc/x;
.source "SourceFile"


# static fields
.field public static final synthetic e:I


# instance fields
.field public b:J

.field public c:Z

.field public d:Lfb/k;


# virtual methods
.method public final J(I)LNc/x;
    .locals 0

    const/4 p1, 0x1

    invoke-static {p1}, LUc/a;->b(I)V

    return-object p0
.end method

.method public final K(Z)V
    .locals 4

    iget-wide v0, p0, LNc/Y;->b:J

    if-eqz p1, :cond_0

    const-wide v2, 0x100000000L

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x1

    :goto_0
    sub-long/2addr v0, v2

    iput-wide v0, p0, LNc/Y;->b:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    return-void

    :cond_1
    iget-boolean p1, p0, LNc/Y;->c:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, LNc/Y;->shutdown()V

    :cond_2
    return-void
.end method

.method public final S(LNc/L;)V
    .locals 1

    iget-object v0, p0, LNc/Y;->d:Lfb/k;

    if-nez v0, :cond_0

    new-instance v0, Lfb/k;

    invoke-direct {v0}, Lfb/k;-><init>()V

    iput-object v0, p0, LNc/Y;->d:Lfb/k;

    :cond_0
    invoke-virtual {v0, p1}, Lfb/k;->addLast(Ljava/lang/Object;)V

    return-void
.end method

.method public abstract T()Ljava/lang/Thread;
.end method

.method public final V(Z)V
    .locals 4

    iget-wide v0, p0, LNc/Y;->b:J

    if-eqz p1, :cond_0

    const-wide v2, 0x100000000L

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x1

    :goto_0
    add-long/2addr v2, v0

    iput-wide v2, p0, LNc/Y;->b:J

    if-nez p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, LNc/Y;->c:Z

    :cond_1
    return-void
.end method

.method public final W()Z
    .locals 4

    iget-wide v0, p0, LNc/Y;->b:J

    const-wide v2, 0x100000000L

    cmp-long p0, v0, v2

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public abstract b0()J
.end method

.method public final d0()Z
    .locals 2

    iget-object p0, p0, LNc/Y;->d:Lfb/k;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lfb/k;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lfb/k;->removeFirst()Ljava/lang/Object;

    move-result-object p0

    :goto_0
    check-cast p0, LNc/L;

    if-nez p0, :cond_2

    return v0

    :cond_2
    invoke-virtual {p0}, LNc/L;->run()V

    const/4 p0, 0x1

    return p0
.end method

.method public k0(JLNc/V;)V
    .locals 0

    sget-object p0, LNc/F;->i:LNc/F;

    invoke-virtual {p0, p1, p2, p3}, LNc/X;->v0(JLNc/V;)V

    return-void
.end method

.method public abstract shutdown()V
.end method
