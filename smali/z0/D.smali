.class public final Lz0/D;
.super LP7/a;
.source "SourceFile"

# interfaces
.implements Lz0/C;


# instance fields
.field public final a:LB0/a;

.field public b:J


# direct methods
.method public constructor <init>(LB0/a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz0/D;->a:LB0/a;

    const/high16 p1, -0x80000000

    invoke-static {p1, p1}, LG5/V2;->a(II)J

    move-result-wide v0

    iput-wide v0, p0, Lz0/D;->b:J

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lz0/D;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Lz0/D;

    iget-object p1, p1, Lz0/D;->a:LB0/a;

    iget-object p0, p0, Lz0/D;->a:LB0/a;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final f(J)V
    .locals 2

    iget-wide v0, p0, Lz0/D;->b:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, LH0/j;

    invoke-direct {v0, p1, p2}, LH0/j;-><init>(J)V

    iget-object v1, p0, Lz0/D;->a:LB0/a;

    invoke-virtual {v1, v0}, LB0/a;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iput-wide p1, p0, Lz0/D;->b:J

    :goto_0
    return-void
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lz0/D;->a:LB0/a;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method
