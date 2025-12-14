.class public abstract LG5/W2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lx1/r;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lz1/X;->i:Lz1/X;

    invoke-interface {p0, v0}, Lx1/r;->b(Lsb/k;)Z

    move-result p0

    return p0
.end method

.method public static final b(JF)J
    .locals 4

    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p2

    int-to-long v0, p2

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    or-long/2addr p0, v0

    sget-object p2, LH0/m;->b:[LH0/n;

    return-wide p0
.end method

.method public static c(Landroid/view/Window;Z)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    if-lt v0, v1, :cond_0

    invoke-static {p0, p1}, LY0/a;->e(Landroid/view/Window;Z)V

    goto :goto_1

    :cond_0
    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1

    invoke-static {p0, p1}, LY0/a;->d(Landroid/view/Window;Z)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    if-eqz p1, :cond_2

    and-int/lit16 p1, v0, -0x701

    goto :goto_0

    :cond_2
    or-int/lit16 p1, v0, 0x700

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_1
    return-void
.end method

.method public static d(Lsb/n;LNc/a;LNc/a;)V
    .locals 1

    :try_start_0
    invoke-static {p1, p2, p0}, LG5/U3;->a(Lib/c;Lib/c;Lsb/n;)Lib/c;

    move-result-object p0

    invoke-static {p0}, LG5/U3;->e(Lib/c;)Lib/c;

    move-result-object p0

    sget-object p1, Ldb/r;->a:Ldb/r;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, LUc/a;->i(Lib/c;Ljava/lang/Object;Lsb/k;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {p0}, LG5/A2;->c(Ljava/lang/Throwable;)Ldb/l;

    move-result-object p1

    invoke-virtual {p2, p1}, LNc/a;->resumeWith(Ljava/lang/Object;)V

    throw p0
.end method
