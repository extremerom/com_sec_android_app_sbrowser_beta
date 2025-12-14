.class public final LX/e;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/o;


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lm0/m;

    check-cast p2, La0/m;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    const-string p0, "$this$composed"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, La0/q;

    const p0, -0x32c94b6f

    invoke-virtual {p2, p0}, La0/q;->R(I)V

    const p0, -0x3d7a14e4

    invoke-virtual {p2, p0}, La0/q;->R(I)V

    sget-object p0, Landroidx/compose/ui/platform/h;->d:La0/L0;

    invoke-virtual {p2, p0}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    const p1, 0x44faf204

    invoke-virtual {p2, p1}, La0/q;->R(I)V

    invoke-virtual {p2, p0}, La0/q;->e(Ljava/lang/Object;)Z

    move-result p3

    invoke-virtual {p2}, La0/q;->G()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, La0/l;->a:La0/V;

    if-nez p3, :cond_0

    if-ne v0, v1, :cond_1

    :cond_0
    new-instance v0, LX/a;

    const-string p3, "view"

    invoke-static {p0, p3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2, v0}, La0/q;->a0(Ljava/lang/Object;)V

    :cond_1
    const/4 p0, 0x0

    invoke-virtual {p2, p0}, La0/q;->p(Z)V

    check-cast v0, LX/a;

    invoke-virtual {p2, p0}, La0/q;->p(Z)V

    invoke-virtual {p2, p1}, La0/q;->R(I)V

    invoke-virtual {p2, v0}, La0/q;->e(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p2}, La0/q;->G()Ljava/lang/Object;

    move-result-object p3

    if-nez p1, :cond_2

    if-ne p3, v1, :cond_3

    :cond_2
    new-instance p3, LX/f;

    const-string p1, "defaultParent"

    invoke-static {v0, p1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2, p3}, La0/q;->a0(Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {p2, p0}, La0/q;->p(Z)V

    check-cast p3, LX/f;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2, p0}, La0/q;->p(Z)V

    return-object p3
.end method
