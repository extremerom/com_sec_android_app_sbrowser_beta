.class public abstract Lz0/G;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:J

.field public d:J

.field public e:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0, v0}, LG5/V2;->a(II)J

    move-result-wide v0

    iput-wide v0, p0, Lz0/G;->c:J

    sget-wide v0, Lz0/I;->a:J

    iput-wide v0, p0, Lz0/G;->d:J

    sget v0, LH0/i;->c:I

    sget-wide v0, LH0/i;->b:J

    iput-wide v0, p0, Lz0/G;->e:J

    return-void
.end method


# virtual methods
.method public abstract e()Ljava/lang/Object;
.end method

.method public r()I
    .locals 4

    iget-wide v0, p0, Lz0/G;->c:J

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method

.method public s()I
    .locals 2

    iget-wide v0, p0, Lz0/G;->c:J

    const/16 p0, 0x20

    shr-long/2addr v0, p0

    long-to-int p0, v0

    return p0
.end method

.method public final t()V
    .locals 9

    iget-wide v0, p0, Lz0/G;->c:J

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    long-to-int v0, v0

    iget-wide v3, p0, Lz0/G;->d:J

    invoke-static {v3, v4}, LH0/a;->d(J)I

    move-result v1

    iget-wide v3, p0, Lz0/G;->d:J

    invoke-static {v3, v4}, LH0/a;->b(J)I

    move-result v3

    invoke-static {v0, v1, v3}, LG5/d3;->f(III)I

    move-result v0

    iput v0, p0, Lz0/G;->a:I

    iget-wide v0, p0, Lz0/G;->c:J

    const-wide v3, 0xffffffffL

    and-long/2addr v0, v3

    long-to-int v0, v0

    iget-wide v5, p0, Lz0/G;->d:J

    invoke-static {v5, v6}, LH0/a;->c(J)I

    move-result v1

    iget-wide v5, p0, Lz0/G;->d:J

    invoke-static {v5, v6}, LH0/a;->a(J)I

    move-result v5

    invoke-static {v0, v1, v5}, LG5/d3;->f(III)I

    move-result v0

    iput v0, p0, Lz0/G;->b:I

    iget v1, p0, Lz0/G;->a:I

    iget-wide v5, p0, Lz0/G;->c:J

    shr-long v7, v5, v2

    long-to-int v2, v7

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    and-long v2, v5, v3

    long-to-int v2, v2

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, LG5/U2;->a(II)J

    move-result-wide v0

    iput-wide v0, p0, Lz0/G;->e:J

    return-void
.end method

.method public abstract u(JFLsb/k;)V
.end method

.method public final v(J)V
    .locals 2

    iget-wide v0, p0, Lz0/G;->d:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iput-wide p1, p0, Lz0/G;->d:J

    invoke-virtual {p0}, Lz0/G;->t()V

    :goto_0
    return-void
.end method
