.class public final LU/p;
.super LP7/a;
.source "SourceFile"

# interfaces
.implements Lz0/k;


# instance fields
.field public final a:LU/n;

.field public final b:F


# direct methods
.method public constructor <init>(LU/n;FLsb/k;)V
    .locals 0

    const-string p3, "direction"

    invoke-static {p1, p3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LU/p;->a:LU/n;

    iput p2, p0, LU/p;->b:F

    return-void
.end method


# virtual methods
.method public final d(LB0/I;Lz0/w;J)Lz0/y;
    .locals 7

    const-string v0, "measurable"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, LH0/a;->c:[I

    const-wide/16 v1, 0x3

    and-long/2addr v1, p3

    long-to-int v1, v1

    aget v0, v0, v1

    const/16 v1, 0x21

    shr-long v1, p3, v1

    long-to-int v1, v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, LU/p;->b:F

    iget-object p0, p0, LU/p;->a:LU/n;

    if-eqz v0, :cond_1

    sget-object v0, LU/n;->Vertical:LU/n;

    if-eq p0, v0, :cond_1

    invoke-static {p3, p4}, LH0/a;->b(J)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    invoke-static {v0}, LG5/p2;->e(F)I

    move-result v0

    invoke-static {p3, p4}, LH0/a;->d(J)I

    move-result v2

    invoke-static {p3, p4}, LH0/a;->b(J)I

    move-result v3

    invoke-static {v0, v2, v3}, LG5/d3;->f(III)I

    move-result v0

    move v2, v0

    goto :goto_1

    :cond_1
    invoke-static {p3, p4}, LH0/a;->d(J)I

    move-result v0

    invoke-static {p3, p4}, LH0/a;->b(J)I

    move-result v2

    :goto_1
    const-wide/16 v3, 0x3

    and-long/2addr v3, p3

    long-to-int v3, v3

    sget-object v4, LH0/a;->d:[I

    aget v4, v4, v3

    sget-object v5, LH0/a;->b:[I

    aget v3, v5, v3

    add-int/lit8 v3, v3, 0x1f

    shr-long v5, p3, v3

    long-to-int v3, v5

    and-int/2addr v3, v4

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_3

    sget-object v3, LU/n;->Horizontal:LU/n;

    if-eq p0, v3, :cond_3

    invoke-static {p3, p4}, LH0/a;->a(J)I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v1

    invoke-static {p0}, LG5/p2;->e(F)I

    move-result p0

    invoke-static {p3, p4}, LH0/a;->c(J)I

    move-result v1

    invoke-static {p3, p4}, LH0/a;->a(J)I

    move-result p3

    invoke-static {p0, v1, p3}, LG5/d3;->f(III)I

    move-result p0

    move p3, p0

    goto :goto_3

    :cond_3
    invoke-static {p3, p4}, LH0/a;->c(J)I

    move-result p0

    invoke-static {p3, p4}, LH0/a;->a(J)I

    move-result p3

    :goto_3
    invoke-static {v0, v2, p0, p3}, LG5/S2;->a(IIII)J

    move-result-wide p3

    invoke-interface {p2, p3, p4}, Lz0/w;->o(J)Lz0/G;

    move-result-object p0

    iget p2, p0, Lz0/G;->a:I

    iget p3, p0, Lz0/G;->b:I

    new-instance p4, LU/o;

    const/4 v0, 0x0

    invoke-direct {p4, p0, v0}, LU/o;-><init>(Lz0/G;I)V

    sget-object p0, Lfb/w;->a:Lfb/w;

    invoke-virtual {p1, p2, p3, p0, p4}, LB0/I;->l(IILjava/util/Map;Lsb/k;)Lz0/y;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, LU/p;

    if-eqz v0, :cond_0

    check-cast p1, LU/p;

    iget-object v0, p1, LU/p;->a:LU/n;

    iget-object v1, p0, LU/p;->a:LU/n;

    if-ne v1, v0, :cond_0

    iget p0, p0, LU/p;->b:F

    iget p1, p1, LU/p;->b:F

    cmpg-float p0, p0, p1

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, LU/p;->a:LU/n;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, LU/p;->b:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method
