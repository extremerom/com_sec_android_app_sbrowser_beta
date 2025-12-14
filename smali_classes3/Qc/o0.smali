.class public final LQc/o0;
.super LRc/d;
.source "SourceFile"


# instance fields
.field public a:J

.field public b:LNc/k;


# virtual methods
.method public final a(LRc/b;)Z
    .locals 4

    check-cast p1, LQc/m0;

    iget-wide v0, p0, LQc/o0;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p1, LQc/m0;->i:J

    iget-wide v2, p1, LQc/m0;->j:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    iput-wide v0, p1, LQc/m0;->j:J

    :cond_1
    iput-wide v0, p0, LQc/o0;->a:J

    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public final b(LRc/b;)[Lib/c;
    .locals 4

    check-cast p1, LQc/m0;

    iget-wide v0, p0, LQc/o0;->a:J

    const-wide/16 v2, -0x1

    iput-wide v2, p0, LQc/o0;->a:J

    const/4 v2, 0x0

    iput-object v2, p0, LQc/o0;->b:LNc/k;

    invoke-virtual {p1, v0, v1}, LQc/m0;->u(J)[Lib/c;

    move-result-object p0

    return-object p0
.end method
