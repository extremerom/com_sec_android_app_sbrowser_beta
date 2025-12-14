.class public final Lwd/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwd/z;


# instance fields
.field public final a:Lwd/i;

.field public final b:Lwd/g;

.field public c:Lwd/u;

.field public d:I

.field public e:Z

.field public f:J


# direct methods
.method public constructor <init>(Lwd/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwd/r;->a:Lwd/i;

    invoke-interface {p1}, Lwd/i;->g()Lwd/g;

    move-result-object p1

    iput-object p1, p0, Lwd/r;->b:Lwd/g;

    iget-object p1, p1, Lwd/g;->a:Lwd/u;

    iput-object p1, p0, Lwd/r;->c:Lwd/u;

    if-eqz p1, :cond_0

    iget p1, p1, Lwd/u;->b:I

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    iput p1, p0, Lwd/r;->d:I

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lwd/r;->e:Z

    return-void
.end method

.method public final read(Lwd/g;J)J
    .locals 8

    const-string v0, "sink"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_6

    iget-boolean v3, p0, Lwd/r;->e:Z

    if-nez v3, :cond_5

    iget-object v3, p0, Lwd/r;->c:Lwd/u;

    iget-object v4, p0, Lwd/r;->b:Lwd/g;

    if-eqz v3, :cond_1

    iget-object v5, v4, Lwd/g;->a:Lwd/u;

    if-ne v3, v5, :cond_0

    iget v3, p0, Lwd/r;->d:I

    invoke-static {v5}, Ltb/k;->c(Ljava/lang/Object;)V

    iget v5, v5, Lwd/u;->b:I

    if-ne v3, v5, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Peek source is invalid because upstream source was used"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-nez v2, :cond_2

    return-wide v0

    :cond_2
    iget-wide v0, p0, Lwd/r;->f:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iget-object v2, p0, Lwd/r;->a:Lwd/i;

    invoke-interface {v2, v0, v1}, Lwd/i;->I(J)Z

    move-result v0

    if-nez v0, :cond_3

    const-wide/16 p0, -0x1

    return-wide p0

    :cond_3
    iget-object v0, p0, Lwd/r;->c:Lwd/u;

    if-nez v0, :cond_4

    iget-object v0, v4, Lwd/g;->a:Lwd/u;

    if-eqz v0, :cond_4

    iput-object v0, p0, Lwd/r;->c:Lwd/u;

    iget v0, v0, Lwd/u;->b:I

    iput v0, p0, Lwd/r;->d:I

    :cond_4
    iget-wide v0, v4, Lwd/g;->b:J

    iget-wide v2, p0, Lwd/r;->f:J

    sub-long/2addr v0, v2

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    iget-object v2, p0, Lwd/r;->b:Lwd/g;

    iget-wide v4, p0, Lwd/r;->f:J

    move-object v3, p1

    move-wide v6, p2

    invoke-virtual/range {v2 .. v7}, Lwd/g;->d(Lwd/g;JJ)V

    iget-wide v0, p0, Lwd/r;->f:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lwd/r;->f:J

    return-wide p2

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    const-string p0, "byteCount < 0: "

    invoke-static {p2, p3, p0}, Landroidx/recyclerview/widget/P;->f(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final timeout()Lwd/B;
    .locals 0

    iget-object p0, p0, Lwd/r;->a:Lwd/i;

    invoke-interface {p0}, Lwd/z;->timeout()Lwd/B;

    move-result-object p0

    return-object p0
.end method
