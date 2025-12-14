.class public abstract Ls0/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LE5/v;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LE5/v;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, LE5/v;-><init>(I)V

    sput-object v0, Ls0/e;->a:LE5/v;

    return-void
.end method

.method public static final a(FFFFLt0/c;)J
    .locals 8

    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Lt0/c;->b(I)F

    move-result v1

    invoke-virtual {p4, v0}, Lt0/c;->a(I)F

    move-result v0

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_3

    cmpg-float v0, v1, p0

    if-gtz v0, :cond_3

    const/4 v0, 0x1

    invoke-virtual {p4, v0}, Lt0/c;->b(I)F

    move-result v1

    invoke-virtual {p4, v0}, Lt0/c;->a(I)F

    move-result v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_3

    cmpg-float v0, v1, p1

    if-gtz v0, :cond_3

    const/4 v0, 0x2

    invoke-virtual {p4, v0}, Lt0/c;->b(I)F

    move-result v1

    invoke-virtual {p4, v0}, Lt0/c;->a(I)F

    move-result v0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_3

    cmpg-float v0, v1, p2

    if-gtz v0, :cond_3

    const/4 v0, 0x0

    cmpg-float v1, v0, p3

    if-gtz v1, :cond_3

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v2, p3, v1

    if-gtz v2, :cond_3

    invoke-virtual {p4}, Lt0/c;->c()Z

    move-result v2

    const/16 v3, 0x10

    const/16 v4, 0x20

    const/high16 v5, 0x3f000000    # 0.5f

    if-eqz v2, :cond_0

    const/high16 p4, 0x437f0000    # 255.0f

    mul-float/2addr p3, p4

    add-float/2addr p3, v5

    float-to-int p3, p3

    shl-int/lit8 p3, p3, 0x18

    mul-float/2addr p0, p4

    add-float/2addr p0, v5

    float-to-int p0, p0

    shl-int/2addr p0, v3

    or-int/2addr p0, p3

    mul-float/2addr p1, p4

    add-float/2addr p1, v5

    float-to-int p1, p1

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p0, p1

    mul-float/2addr p2, p4

    add-float/2addr p2, v5

    float-to-int p1, p2

    or-int/2addr p0, p1

    int-to-long p0, p0

    const-wide p2, 0xffffffffL

    and-long/2addr p0, p2

    shl-long/2addr p0, v4

    sget p2, Ls0/b;->h:I

    return-wide p0

    :cond_0
    sget v2, Lt0/b;->e:I

    iget-wide v6, p4, Lt0/c;->b:J

    shr-long/2addr v6, v4

    long-to-int v2, v6

    const/4 v6, 0x3

    if-ne v2, v6, :cond_2

    const/4 v2, -0x1

    iget p4, p4, Lt0/c;->c:I

    if-eq p4, v2, :cond_1

    invoke-static {p0}, Ls0/c;->a(F)S

    move-result p0

    invoke-static {p1}, Ls0/c;->a(F)S

    move-result p1

    invoke-static {p2}, Ls0/c;->a(F)S

    move-result p2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(FF)F

    move-result p3

    invoke-static {v0, p3}, Ljava/lang/Math;->max(FF)F

    move-result p3

    const v0, 0x447fc000    # 1023.0f

    mul-float/2addr p3, v0

    add-float/2addr p3, v5

    float-to-int p3, p3

    int-to-long v0, p0

    const-wide/32 v5, 0xffff

    and-long/2addr v0, v5

    const/16 p0, 0x30

    shl-long/2addr v0, p0

    int-to-long p0, p1

    and-long/2addr p0, v5

    shl-long/2addr p0, v4

    or-long/2addr p0, v0

    int-to-long v0, p2

    and-long/2addr v0, v5

    shl-long/2addr v0, v3

    or-long/2addr p0, v0

    int-to-long p2, p3

    const-wide/16 v0, 0x3ff

    and-long/2addr p2, v0

    const/4 v0, 0x6

    shl-long/2addr p2, v0

    or-long/2addr p0, p2

    int-to-long p2, p4

    const-wide/16 v0, 0x3f

    and-long/2addr p2, v0

    or-long/2addr p0, p2

    sget p2, Ls0/b;->h:I

    return-wide p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unknown color space, please use a color space in ColorSpaces"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Color only works with ColorSpaces with 3 components"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "red = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ", green = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ", blue = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ", alpha = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, " outside the range for "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final b(I)J
    .locals 2

    int-to-long v0, p0

    const/16 p0, 0x20

    shl-long/2addr v0, p0

    sget p0, Ls0/b;->h:I

    return-wide v0
.end method

.method public static final c(J)J
    .locals 2

    const-wide v0, 0xffffffffL

    and-long/2addr p0, v0

    const/16 v0, 0x20

    shl-long/2addr p0, v0

    sget v0, Ls0/b;->h:I

    return-wide p0
.end method

.method public static final d(II)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final e(J)I
    .locals 8

    sget-object v0, Lt0/d;->c:Lt0/p;

    sget v1, Ls0/b;->h:I

    const-wide/16 v1, 0x3f

    and-long/2addr v1, p0

    long-to-int v1, v1

    sget-object v2, Lt0/d;->f:[Lt0/c;

    aget-object v1, v2, v1

    invoke-static {v0, v1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    :cond_0
    if-ne v1, v0, :cond_1

    sget-object v0, Lt0/g;->e:Lt0/e;

    goto :goto_1

    :cond_1
    sget-object v2, Lt0/d;->e:Lt0/k;

    if-ne v1, v2, :cond_2

    sget-object v0, Lt0/g;->f:Lt0/g;

    goto :goto_1

    :cond_2
    if-ne v1, v0, :cond_3

    sget-object v0, Lt0/g;->e:Lt0/e;

    new-instance v0, Lt0/e;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v1, v2}, Lt0/g;-><init>(Lt0/c;Lt0/c;I)V

    goto :goto_1

    :cond_3
    iget-wide v2, v1, Lt0/c;->b:J

    sget-wide v4, Lt0/b;->a:J

    invoke-static {v2, v3, v4, v5}, Lt0/b;->a(JJ)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    iget-wide v6, v0, Lt0/c;->b:J

    invoke-static {v6, v7, v4, v5}, Lt0/b;->a(JJ)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Lt0/f;

    check-cast v1, Lt0/p;

    invoke-direct {v2, v1, v0, v3}, Lt0/f;-><init>(Lt0/p;Lt0/p;I)V

    :goto_0
    move-object v0, v2

    goto :goto_1

    :cond_4
    new-instance v2, Lt0/g;

    invoke-direct {v2, v1, v0, v3}, Lt0/g;-><init>(Lt0/c;Lt0/c;I)V

    goto :goto_0

    :goto_1
    invoke-static {p0, p1}, Ls0/b;->f(J)F

    move-result v1

    invoke-static {p0, p1}, Ls0/b;->e(J)F

    move-result v2

    invoke-static {p0, p1}, Ls0/b;->d(J)F

    move-result v3

    invoke-static {p0, p1}, Ls0/b;->c(J)F

    move-result p0

    invoke-virtual {v0, v1, v2, v3, p0}, Lt0/g;->a(FFFF)J

    move-result-wide p0

    :goto_2
    const/16 v0, 0x20

    ushr-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method
