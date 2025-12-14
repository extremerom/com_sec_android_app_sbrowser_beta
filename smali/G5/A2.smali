.class public abstract LG5/A2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(La0/m;Lm0/m;)V
    .locals 6

    const-string v0, "modifier"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, La0/q;

    const v0, -0x4581923

    invoke-virtual {p0, v0}, La0/q;->R(I)V

    sget-object v0, LU/C;->a:LU/C;

    const v1, -0x4ee9b9da

    invoke-virtual {p0, v1}, La0/q;->R(I)V

    sget-object v1, Landroidx/compose/ui/platform/k;->a:La0/L0;

    invoke-virtual {p0, v1}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LH0/b;

    sget-object v2, Landroidx/compose/ui/platform/k;->b:La0/L0;

    invoke-virtual {p0, v2}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LH0/k;

    sget-object v3, Landroidx/compose/ui/platform/k;->c:La0/L0;

    invoke-virtual {p0, v3}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/platform/q;

    sget-object v4, LB0/h;->K:LB0/g;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, LB0/g;->b:LB0/s;

    invoke-static {p1}, Lz0/J;->b(Lm0/m;)Li0/a;

    move-result-object p1

    invoke-virtual {p0}, La0/q;->U()V

    iget-boolean v5, p0, La0/q;->O:Z

    if-eqz v5, :cond_0

    invoke-virtual {p0, v4}, La0/q;->k(Lsb/a;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, La0/q;->d0()V

    :goto_0
    const/4 v4, 0x0

    iput-boolean v4, p0, La0/q;->x:Z

    sget-object v5, LB0/g;->f:LB0/f;

    invoke-static {p0, v0, v5}, La0/d;->M(La0/m;Ljava/lang/Object;Lsb/n;)V

    sget-object v0, LB0/g;->d:LB0/f;

    invoke-static {p0, v1, v0}, La0/d;->M(La0/m;Ljava/lang/Object;Lsb/n;)V

    sget-object v0, LB0/g;->g:LB0/f;

    invoke-static {p0, v2, v0}, La0/d;->M(La0/m;Ljava/lang/Object;Lsb/n;)V

    sget-object v0, LB0/g;->h:LB0/f;

    invoke-static {p0, v3, v0}, La0/d;->M(La0/m;Ljava/lang/Object;Lsb/n;)V

    invoke-virtual {p0}, La0/q;->o()V

    new-instance v0, La0/u0;

    invoke-direct {v0, p0}, La0/u0;-><init>(La0/m;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, p0, v1}, Li0/a;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const p1, 0x7ab4aae9

    invoke-virtual {p0, p1}, La0/q;->R(I)V

    invoke-virtual {p0, v4}, La0/q;->p(Z)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, La0/q;->p(Z)V

    invoke-virtual {p0, v4}, La0/q;->p(Z)V

    invoke-virtual {p0, v4}, La0/q;->p(Z)V

    return-void
.end method

.method public static b(I)LG5/z2;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    new-instance p0, LF6/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-object p0

    :cond_0
    new-instance p0, LF6/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-object p0

    :cond_1
    new-instance p0, LF6/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-object p0
.end method

.method public static final c(Ljava/lang/Throwable;)Ldb/l;
    .locals 1

    const-string v0, "exception"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ldb/l;

    invoke-direct {v0, p0}, Ldb/l;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static d(Landroid/content/Context;Lsb/k;)Ljava/lang/Object;
    .locals 3

    const-string v0, "context"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-interface {p1, p0}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Unable to find adservices code, check manifest for uses-library tag, versionR="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    sget-object v0, Lx2/a;->a:Lx2/a;

    const/16 v1, 0x1e

    const/4 v2, 0x0

    if-ne p1, v1, :cond_0

    invoke-virtual {v0}, Lx2/a;->a()I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", versionS="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-eq p1, v1, :cond_1

    const/16 v1, 0x20

    if-ne p1, v1, :cond_2

    :cond_1
    invoke-virtual {v0}, Lx2/a;->b()I

    move-result v2

    :cond_2
    const-string p1, "MeasurementManager"

    invoke-static {p0, v2, p1}, Lw2/j;->j(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static e(Landroid/view/View;LF6/g;)V
    .locals 3

    iget-object v0, p1, LF6/g;->a:LF6/f;

    iget-object v0, v0, LF6/f;->b:Lp6/a;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lp6/a;->a:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    instance-of v1, p0, Landroid/view/View;

    if-eqz v1, :cond_0

    move-object v1, p0

    check-cast v1, Landroid/view/View;

    sget-object v2, Lf1/W;->a:Ljava/util/WeakHashMap;

    invoke-static {v1}, Lf1/O;->e(Landroid/view/View;)F

    move-result v1

    add-float/2addr v0, v1

    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p1, LF6/g;->a:LF6/f;

    iget v1, p0, LF6/f;->l:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_1

    iput v0, p0, LF6/f;->l:F

    invoke-virtual {p1}, LF6/g;->m()V

    :cond_1
    return-void
.end method

.method public static final f(Ljava/lang/Object;)V
    .locals 1

    instance-of v0, p0, Ldb/l;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast p0, Ldb/l;

    iget-object p0, p0, Ldb/l;->a:Ljava/lang/Throwable;

    throw p0
.end method
