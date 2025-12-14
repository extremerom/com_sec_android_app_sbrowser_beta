.class public final LU/s;
.super LP7/a;
.source "SourceFile"

# interfaces
.implements Lz0/k;


# instance fields
.field public final a:F

.field public final b:F

.field public final c:F

.field public final d:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LU/s;->a:F

    iput p2, p0, LU/s;->b:F

    iput p3, p0, LU/s;->c:F

    iput p4, p0, LU/s;->d:F

    const/4 p0, 0x0

    cmpl-float v0, p1, p0

    const/high16 v1, 0x7fc00000    # Float.NaN

    if-gez v0, :cond_0

    invoke-static {p1, v1}, LH0/e;->a(FF)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_0
    cmpl-float p1, p2, p0

    if-gez p1, :cond_1

    invoke-static {p2, v1}, LH0/e;->a(FF)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_1
    cmpl-float p1, p3, p0

    if-gez p1, :cond_2

    invoke-static {p3, v1}, LH0/e;->a(FF)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    cmpl-float p0, p4, p0

    if-gez p0, :cond_4

    invoke-static {p4, v1}, LH0/e;->a(FF)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Padding must be non-negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public final d(LB0/I;Lz0/w;J)Lz0/y;
    .locals 5

    const-string v0, "measurable"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, LU/s;->a:F

    invoke-interface {p1, v0}, LH0/b;->j(F)I

    move-result v0

    iget v1, p0, LU/s;->c:F

    invoke-interface {p1, v1}, LH0/b;->j(F)I

    move-result v1

    add-int/2addr v1, v0

    iget v0, p0, LU/s;->b:F

    invoke-interface {p1, v0}, LH0/b;->j(F)I

    move-result v0

    iget v2, p0, LU/s;->d:F

    invoke-interface {p1, v2}, LH0/b;->j(F)I

    move-result v2

    add-int/2addr v2, v0

    neg-int v0, v1

    neg-int v3, v2

    invoke-static {p3, p4, v0, v3}, LG5/S2;->j(JII)J

    move-result-wide v3

    invoke-interface {p2, v3, v4}, Lz0/w;->o(J)Lz0/G;

    move-result-object p2

    iget v0, p2, Lz0/G;->a:I

    add-int/2addr v0, v1

    invoke-static {p3, p4}, LH0/a;->d(J)I

    move-result v1

    invoke-static {p3, p4}, LH0/a;->b(J)I

    move-result v3

    invoke-static {v0, v1, v3}, LG5/d3;->f(III)I

    move-result v0

    iget v1, p2, Lz0/G;->b:I

    add-int/2addr v1, v2

    invoke-static {p3, p4}, LH0/a;->c(J)I

    move-result v2

    invoke-static {p3, p4}, LH0/a;->a(J)I

    move-result p3

    invoke-static {v1, v2, p3}, LG5/d3;->f(III)I

    move-result p3

    new-instance p4, LPc/e;

    const/4 v1, 0x2

    invoke-direct {p4, p0, v1, p2, p1}, LPc/e;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    sget-object p0, Lfb/w;->a:Lfb/w;

    invoke-virtual {p1, v0, p3, p0, p4}, LB0/I;->l(IILjava/util/Map;Lsb/k;)Lz0/y;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, LU/s;

    if-eqz v0, :cond_0

    check-cast p1, LU/s;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    :cond_1
    iget v1, p0, LU/s;->a:F

    iget v2, p1, LU/s;->a:F

    invoke-static {v1, v2}, LH0/e;->a(FF)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, LU/s;->b:F

    iget v2, p1, LU/s;->b:F

    invoke-static {v1, v2}, LH0/e;->a(FF)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, LU/s;->c:F

    iget v2, p1, LU/s;->c:F

    invoke-static {v1, v2}, LH0/e;->a(FF)Z

    move-result v1

    if-eqz v1, :cond_2

    iget p0, p0, LU/s;->d:F

    iget p1, p1, LU/s;->d:F

    invoke-static {p0, p1}, LH0/e;->a(FF)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, LU/s;->a:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, LU/s;->b:F

    invoke-static {v2, v0, v1}, LB/e;->b(FII)I

    move-result v0

    iget v2, p0, LU/s;->c:F

    invoke-static {v2, v0, v1}, LB/e;->b(FII)I

    move-result v0

    iget p0, p0, LU/s;->d:F

    invoke-static {p0, v0, v1}, LB/e;->b(FII)I

    move-result p0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method
