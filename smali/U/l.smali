.class public final LU/l;
.super LG5/x2;
.source "SourceFile"


# virtual methods
.method public final a(ILH0/k;Lz0/G;)I
    .locals 0

    const-string p0, "layoutDirection"

    invoke-static {p2, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x0

    int-to-float p0, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p0, p1

    sget-object p1, LH0/k;->Ltr:LH0/k;

    const/high16 p3, -0x40800000    # -1.0f

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    int-to-float p1, p1

    mul-float/2addr p3, p1

    :goto_0
    const/4 p1, 0x1

    int-to-float p1, p1

    add-float/2addr p1, p3

    mul-float/2addr p1, p0

    invoke-static {p1}, LG5/p2;->e(F)I

    move-result p0

    return p0
.end method
