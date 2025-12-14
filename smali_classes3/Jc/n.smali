.class public abstract LJc/n;
.super LJc/o;
.source "SourceFile"


# direct methods
.method public static m(LJc/l;)I
    .locals 2

    invoke-interface {p0}, LJc/l;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lfb/o;->k()V

    const/4 p0, 0x0

    throw p0

    :cond_1
    return v0
.end method

.method public static n(LJc/l;I)LJc/l;
    .locals 1

    if-ltz p1, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, LJc/e;

    if-eqz v0, :cond_1

    check-cast p0, LJc/e;

    invoke-interface {p0, p1}, LJc/e;->a(I)LJc/l;

    move-result-object p0

    goto :goto_0

    :cond_1
    new-instance v0, LJc/d;

    invoke-direct {v0, p0, p1}, LJc/d;-><init>(LJc/l;I)V

    move-object p0, v0

    :goto_0
    return-object p0

    :cond_2
    const-string p0, "Requested element count "

    const-string v0, " is less than zero."

    invoke-static {p1, p0, v0}, Lt/b;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static o(LJc/h;)Ljava/lang/Object;
    .locals 1

    new-instance v0, LJc/g;

    invoke-direct {v0, p0}, LJc/g;-><init>(LJc/h;)V

    invoke-virtual {v0}, LJc/g;->hasNext()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {v0}, LJc/g;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final p(LJc/l;Lsb/k;)LJc/i;
    .locals 3

    instance-of v0, p0, LJc/t;

    if-eqz v0, :cond_0

    check-cast p0, LJc/t;

    new-instance v0, LJc/i;

    iget-object v1, p0, LJc/t;->a:LJc/l;

    iget-object p0, p0, LJc/t;->b:Lsb/k;

    invoke-direct {v0, v1, p0, p1}, LJc/i;-><init>(LJc/l;Lsb/k;Lsb/k;)V

    return-object v0

    :cond_0
    new-instance v0, LJc/i;

    new-instance v1, LC9/a;

    const/16 v2, 0x17

    invoke-direct {v1, v2}, LC9/a;-><init>(I)V

    invoke-direct {v0, p0, v1, p1}, LJc/i;-><init>(LJc/l;Lsb/k;Lsb/k;)V

    return-object v0
.end method

.method public static q(Ljava/lang/Object;Lsb/k;)LJc/l;
    .locals 3

    if-nez p0, :cond_0

    sget-object p0, LJc/f;->a:LJc/f;

    goto :goto_0

    :cond_0
    new-instance v0, LJc/k;

    new-instance v1, LJ2/L;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p0}, LJ2/L;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, p1, v1}, LJc/k;-><init>(Lsb/k;Lsb/a;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static r(Lsb/a;)LJc/l;
    .locals 3

    new-instance v0, LJc/k;

    new-instance v1, LJ2/M;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, LJ2/M;-><init>(ILsb/a;)V

    invoke-direct {v0, v1, p0}, LJc/k;-><init>(Lsb/k;Lsb/a;)V

    new-instance p0, LJc/a;

    invoke-direct {p0, v0}, LJc/a;-><init>(LJc/l;)V

    return-object p0
.end method

.method public static s(LJc/l;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    invoke-interface {p0}, LJc/l;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x1

    add-int/2addr v2, v4

    if-le v2, v4, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_0
    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, LG5/X3;->a(Ljava/lang/StringBuilder;Ljava/lang/Object;Lsb/k;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static t(LJc/l;Lsb/k;)LJc/t;
    .locals 1

    const-string v0, "transform"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LJc/t;

    invoke-direct {v0, p0, p1}, LJc/t;-><init>(LJc/l;Lsb/k;)V

    return-object v0
.end method

.method public static u(LJc/l;Lsb/k;)LJc/h;
    .locals 2

    new-instance v0, LJc/t;

    invoke-direct {v0, p0, p1}, LJc/t;-><init>(LJc/l;Lsb/k;)V

    new-instance p0, LC9/a;

    const/16 p1, 0x18

    invoke-direct {p0, p1}, LC9/a;-><init>(I)V

    new-instance p1, LJc/h;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, p0}, LJc/h;-><init>(LJc/l;ZLsb/k;)V

    return-object p1
.end method

.method public static v(LJc/l;)Ljava/util/List;
    .locals 2

    invoke-interface {p0}, LJc/l;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lfb/v;->a:Lfb/v;

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, LG5/o3;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method
