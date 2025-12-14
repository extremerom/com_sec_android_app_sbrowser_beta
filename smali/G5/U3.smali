.class public abstract LG5/U3;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lib/c;Lib/c;Lsb/n;)Lib/c;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p2, Lkb/a;

    if-eqz v0, :cond_0

    check-cast p2, Lkb/a;

    invoke-virtual {p2, p0, p1}, Lkb/a;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lib/c;->getContext()Lib/h;

    move-result-object v0

    sget-object v1, Lib/i;->a:Lib/i;

    if-ne v0, v1, :cond_1

    new-instance v0, Ljb/b;

    invoke-direct {v0, p1, p0, p2}, Ljb/b;-><init>(Lib/c;Lib/c;Lsb/n;)V

    move-object p0, v0

    goto :goto_0

    :cond_1
    new-instance v1, Ljb/c;

    invoke-direct {v1, p1, v0, p2, p0}, Ljb/c;-><init>(Lib/c;Lib/h;Lsb/n;Lib/c;)V

    move-object p0, v1

    :goto_0
    return-object p0
.end method

.method public static b(LKb/h;Lhc/c;)LKb/b;
    .locals 2

    const-string v0, "fqName"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, LKb/b;

    invoke-interface {v1}, LKb/b;->b()Lhc/c;

    move-result-object v1

    invoke-static {v1, p1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    check-cast v0, LKb/b;

    return-object v0
.end method

.method public static c(LG5/x3;)Lac/q;
    .locals 3

    instance-of v0, p0, Lgc/e;

    const-string v1, "desc"

    const-string v2, "name"

    if-eqz v0, :cond_0

    check-cast p0, Lgc/e;

    iget-object v0, p0, Lgc/e;->b:Ljava/lang/String;

    invoke-static {v0, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lgc/e;->c:Ljava/lang/String;

    invoke-static {p0, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lac/q;

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lac/q;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lgc/d;

    if-eqz v0, :cond_1

    check-cast p0, Lgc/d;

    iget-object v0, p0, Lgc/d;->b:Ljava/lang/String;

    invoke-static {v0, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lgc/d;->c:Ljava/lang/String;

    invoke-static {p0, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lac/q;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lac/q;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v1

    :cond_1
    new-instance p0, LI5/b;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method

.method public static d(LKb/h;Lhc/c;)Z
    .locals 1

    const-string v0, "fqName"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, LKb/h;->B(Lhc/c;)LKb/b;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static e(Lib/c;)Lib/c;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lkb/c;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lkb/c;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lkb/c;->intercepted()Lib/c;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move-object p0, v0

    :cond_2
    :goto_1
    return-object p0
.end method

.method public static f(Ljava/lang/Object;Lsb/n;Lib/c;)Ljava/lang/Object;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lib/c;->getContext()Lib/h;

    move-result-object v0

    sget-object v1, Lib/i;->a:Lib/i;

    if-ne v0, v1, :cond_0

    new-instance v0, Ljb/d;

    invoke-direct {v0, p2}, Lkb/g;-><init>(Lib/c;)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljb/e;

    invoke-direct {v1, p2, v0}, Lkb/c;-><init>(Lib/c;Lib/h;)V

    move-object v0, v1

    :goto_0
    const/4 p2, 0x2

    invoke-static {p2, p1}, Ltb/z;->e(ILjava/lang/Object;)V

    invoke-interface {p1, p0, v0}, Lsb/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
