.class public abstract LG5/i2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
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

.method public static e(La0/m;)LS/g;
    .locals 6

    check-cast p0, La0/q;

    const v0, 0x4206c4aa

    invoke-virtual {p0, v0}, La0/q;->R(I)V

    sget v0, LP/f;->a:F

    const v0, 0x35e8bf9b

    invoke-virtual {p0, v0}, La0/q;->R(I)V

    sget-object v0, Landroidx/compose/ui/platform/k;->a:La0/L0;

    invoke-virtual {p0, v0}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LH0/b;

    invoke-interface {v0}, LH0/b;->m()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, 0x44faf204

    invoke-virtual {p0, v2}, La0/q;->R(I)V

    invoke-virtual {p0, v1}, La0/q;->e(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p0}, La0/q;->G()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, La0/l;->a:La0/V;

    if-nez v1, :cond_0

    if-ne v3, v4, :cond_1

    :cond_0
    new-instance v1, LG5/J2;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v3, LP/d;

    sget v5, LP/f;->a:F

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput v5, v3, LP/d;->a:F

    invoke-interface {v0}, LH0/b;->m()F

    move-result v0

    sget v5, LP/e;->a:F

    const v5, 0x43c10b3d

    mul-float/2addr v0, v5

    const/high16 v5, 0x43200000    # 160.0f

    mul-float/2addr v0, v5

    const v5, 0x3f570a3d    # 0.84f

    mul-float/2addr v0, v5

    iput v0, v3, LP/d;->b:F

    iput-object v3, v1, LG5/J2;->a:Ljava/lang/Object;

    new-instance v3, LQ/q;

    invoke-direct {v3, v1}, LQ/q;-><init>(LG5/J2;)V

    invoke-virtual {p0, v3}, La0/q;->a0(Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, La0/q;->p(Z)V

    check-cast v3, LQ/q;

    invoke-virtual {p0, v0}, La0/q;->p(Z)V

    invoke-virtual {p0, v2}, La0/q;->R(I)V

    invoke-virtual {p0, v3}, La0/q;->e(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p0}, La0/q;->G()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_2

    if-ne v2, v4, :cond_3

    :cond_2
    new-instance v2, LS/g;

    invoke-direct {v2, v3}, LS/g;-><init>(LQ/q;)V

    invoke-virtual {p0, v2}, La0/q;->a0(Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {p0, v0}, La0/q;->p(Z)V

    check-cast v2, LS/g;

    invoke-virtual {p0, v0}, La0/q;->p(Z)V

    return-object v2
.end method

.method public static j(I)Ljava/lang/String;
    .locals 7

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result p0

    int-to-double v3, p0

    const-wide v5, 0x406fe00000000000L    # 255.0

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    sget v0, Lr2/e;->a:I

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "rgba(%d,%d,%d,%.3f)"

    invoke-static {v0, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract a(Lcom/google/common/util/concurrent/o;Lcom/google/common/util/concurrent/c;Lcom/google/common/util/concurrent/c;)Z
.end method

.method public abstract b(Lcom/google/common/util/concurrent/o;Ljava/lang/Object;Ljava/lang/Object;)Z
.end method

.method public abstract c(Lcom/google/common/util/concurrent/o;Lcom/google/common/util/concurrent/n;Lcom/google/common/util/concurrent/n;)Z
.end method

.method public abstract f(Lcom/google/common/util/concurrent/o;)Lcom/google/common/util/concurrent/c;
.end method

.method public abstract g(Lcom/google/common/util/concurrent/o;)Lcom/google/common/util/concurrent/n;
.end method

.method public abstract h(Lcom/google/common/util/concurrent/n;Lcom/google/common/util/concurrent/n;)V
.end method

.method public abstract i(Lcom/google/common/util/concurrent/n;Ljava/lang/Thread;)V
.end method
