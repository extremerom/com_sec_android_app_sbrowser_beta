.class public final LU/E;
.super LP7/a;
.source "SourceFile"

# interfaces
.implements Lz0/k;


# instance fields
.field public final a:LU/n;

.field public final b:Z

.field public final c:Ltb/m;

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LU/n;ZLsb/n;Ljava/lang/Object;Lsb/k;)V
    .locals 0

    const-string p5, "direction"

    invoke-static {p1, p5}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LU/E;->a:LU/n;

    iput-boolean p2, p0, LU/E;->b:Z

    check-cast p3, Ltb/m;

    iput-object p3, p0, LU/E;->c:Ltb/m;

    iput-object p4, p0, LU/E;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final d(LB0/I;Lz0/w;J)Lz0/y;
    .locals 8

    const-string v0, "measurable"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, LU/n;->Vertical:LU/n;

    const/4 v1, 0x0

    iget-object v2, p0, LU/E;->a:LU/n;

    if-eq v2, v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    invoke-static {p3, p4}, LH0/a;->d(J)I

    move-result v3

    :goto_0
    sget-object v4, LU/n;->Horizontal:LU/n;

    if-eq v2, v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p3, p4}, LH0/a;->c(J)I

    move-result v1

    :goto_1
    const v5, 0x7fffffff

    iget-boolean v6, p0, LU/E;->b:Z

    if-eq v2, v0, :cond_2

    if-eqz v6, :cond_2

    move v0, v5

    goto :goto_2

    :cond_2
    invoke-static {p3, p4}, LH0/a;->b(J)I

    move-result v0

    :goto_2
    if-eq v2, v4, :cond_3

    if-eqz v6, :cond_3

    goto :goto_3

    :cond_3
    invoke-static {p3, p4}, LH0/a;->a(J)I

    move-result v5

    :goto_3
    invoke-static {v3, v0, v1, v5}, LG5/S2;->a(IIII)J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Lz0/w;->o(J)Lz0/G;

    move-result-object v5

    iget p2, v5, Lz0/G;->a:I

    invoke-static {p3, p4}, LH0/a;->d(J)I

    move-result v0

    invoke-static {p3, p4}, LH0/a;->b(J)I

    move-result v1

    invoke-static {p2, v0, v1}, LG5/d3;->f(III)I

    move-result p2

    iget v0, v5, Lz0/G;->b:I

    invoke-static {p3, p4}, LH0/a;->c(J)I

    move-result v1

    invoke-static {p3, p4}, LH0/a;->a(J)I

    move-result p3

    invoke-static {v0, v1, p3}, LG5/d3;->f(III)I

    move-result p3

    new-instance p4, LU/D;

    move-object v2, p4

    move-object v3, p0

    move v4, p2

    move v6, p3

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, LU/D;-><init>(LU/E;ILz0/G;ILB0/I;)V

    sget-object p0, Lfb/w;->a:Lfb/w;

    invoke-virtual {p1, p2, p3, p0, p4}, LB0/I;->l(IILjava/util/Map;Lsb/k;)Lz0/y;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, LU/E;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, LU/E;

    iget-object v0, p1, LU/E;->a:LU/n;

    iget-object v2, p0, LU/E;->a:LU/n;

    if-ne v2, v0, :cond_1

    iget-boolean v0, p0, LU/E;->b:Z

    iget-boolean v2, p1, LU/E;->b:Z

    if-ne v0, v2, :cond_1

    iget-object p0, p0, LU/E;->d:Ljava/lang/Object;

    iget-object p1, p1, LU/E;->d:Ljava/lang/Object;

    invoke-static {p0, p1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, LU/E;->a:LU/n;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-boolean v2, p0, LU/E;->b:Z

    invoke-static {v0, v1, v2}, LB/e;->e(IIZ)I

    move-result v0

    iget-object p0, p0, LU/E;->d:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method
