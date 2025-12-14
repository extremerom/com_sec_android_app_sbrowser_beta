.class public abstract LG5/r3;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lf2/a;La0/m;I)V
    .locals 12

    check-cast p1, La0/q;

    const v0, 0x1121b868

    invoke-virtual {p1, v0}, La0/q;->S(I)La0/q;

    and-int/lit8 v0, p2, 0xe

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1, v1}, La0/q;->f(Z)Z

    :cond_0
    if-nez p0, :cond_1

    const/high16 v0, 0x26000000

    invoke-static {v0}, Ls0/e;->b(I)J

    move-result-wide v2

    const v0, 0x26ffffff

    invoke-static {v0}, Ls0/e;->b(I)J

    move-result-wide v4

    new-instance v0, LJ1/a;

    invoke-direct {v0, v2, v3, v4, v5}, LJ1/a;-><init>(JJ)V

    goto :goto_0

    :cond_1
    move-object v0, p0

    :goto_0
    invoke-static {v0, p1}, LG5/M3;->b(Lf2/a;La0/m;)J

    move-result-wide v2

    const v0, -0x694bc2c2

    invoke-virtual {p1, v0}, La0/q;->R(I)V

    sget-object v0, Lm0/j;->a:Lm0/j;

    invoke-static {v0}, LU/z;->c(Lm0/m;)Lm0/m;

    move-result-object v0

    sget-object v4, Landroidx/compose/ui/platform/h;->a:La0/L0;

    invoke-virtual {p1, v4}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    sget-object v5, Landroidx/compose/ui/platform/k;->a:La0/L0;

    invoke-virtual {p1, v5}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LH0/b;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f071158

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-interface {v5}, LH0/b;->m()F

    move-result v5

    div-float v10, v4, v5

    const-string v4, "$this$height"

    invoke-static {v0, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, LU/B;

    const/4 v9, 0x0

    const/4 v11, 0x5

    const/4 v7, 0x0

    move-object v6, v4

    move v8, v10

    invoke-direct/range {v6 .. v11}, LU/B;-><init>(FFFFI)V

    invoke-interface {v0, v4}, Lm0/m;->g(Lm0/m;)Lm0/m;

    move-result-object v0

    sget-object v4, Ls0/e;->a:LE5/v;

    invoke-static {v0, v2, v3, v4}, LR/n;->a(Lm0/m;JLs0/g;)Lm0/m;

    move-result-object v0

    invoke-virtual {p1, v1}, La0/q;->p(Z)V

    invoke-static {p1, v0}, LG5/A2;->a(La0/m;Lm0/m;)V

    invoke-virtual {p1}, La0/q;->r()La0/i0;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance v0, LX1/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, LX1/f;-><init>(Lf2/a;II)V

    iput-object v0, p1, La0/i0;->d:Lsb/n;

    :cond_2
    return-void
.end method

.method public static final b(FFFFFFFF)Lg2/a;
    .locals 3

    new-instance v0, Lg2/a;

    const/16 v1, 0x8

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p0, v1, v2

    const/4 p0, 0x1

    aput p1, v1, p0

    const/4 p0, 0x2

    aput p2, v1, p0

    const/4 p0, 0x3

    aput p3, v1, p0

    const/4 p0, 0x4

    aput p4, v1, p0

    const/4 p0, 0x5

    aput p5, v1, p0

    const/4 p0, 0x6

    aput p6, v1, p0

    const/4 p0, 0x7

    aput p7, v1, p0

    invoke-direct {v0, v1}, Lg2/a;-><init>([F)V

    return-object v0
.end method

.method public static c(Landroid/widget/TextView;Z)V
    .locals 3

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const-string v2, "hidden_semSetButtonShapeEnabled"

    invoke-static {v1, v2, v0}, LG5/k2;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v0, p1}, LG5/k2;->j(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static d(Landroid/widget/TextView;ZI)V
    .locals 3

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v0, v1}, [Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    const-string v2, "hidden_semSetButtonShapeEnabled"

    invoke-static {v1, v2, v0}, LG5/k2;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v0, p1}, LG5/k2;->j(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
