.class public interface abstract LA0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LB0/i;


# virtual methods
.method public b(LA0/g;)Ljava/lang/Object;
    .locals 4

    move-object v0, p0

    check-cast v0, Lm0/l;

    iget-object v0, v0, Lm0/l;->a:Lm0/l;

    iget-boolean v1, v0, Lm0/l;->j:Z

    if-eqz v1, :cond_6

    if-eqz v1, :cond_5

    iget-object v0, v0, Lm0/l;->e:Lm0/l;

    invoke-static {p0}, LB0/d;->m(LB0/i;)Landroidx/compose/ui/node/a;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_4

    iget-object v1, p0, Landroidx/compose/ui/node/a;->r:LB0/M;

    iget-object v1, v1, LB0/M;->f:Ljava/lang/Object;

    check-cast v1, Lm0/l;

    iget v1, v1, Lm0/l;->d:I

    and-int/lit8 v1, v1, 0x20

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    :goto_1
    if-eqz v0, :cond_2

    iget v1, v0, Lm0/l;->c:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_1

    move-object v1, v0

    :goto_2
    if-eqz v1, :cond_1

    instance-of v3, v1, LA0/e;

    if-eqz v3, :cond_0

    check-cast v1, LA0/e;

    invoke-interface {v1}, LA0/e;->e()LAb/E;

    move-result-object v3

    invoke-virtual {v3, p1}, LAb/E;->d(LA0/g;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, LA0/e;->e()LAb/E;

    move-result-object p0

    invoke-virtual {p0, p1}, LAb/E;->h(LA0/g;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    move-object v1, v2

    goto :goto_2

    :cond_1
    iget-object v0, v0, Lm0/l;->e:Lm0/l;

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroidx/compose/ui/node/a;->j()Landroidx/compose/ui/node/a;

    move-result-object p0

    if-eqz p0, :cond_3

    iget-object v0, p0, Landroidx/compose/ui/node/a;->r:LB0/M;

    if-eqz v0, :cond_3

    iget-object v0, v0, LB0/M;->e:Ljava/lang/Object;

    check-cast v0, LB0/V;

    goto :goto_0

    :cond_3
    move-object v0, v2

    goto :goto_0

    :cond_4
    iget-object p0, p1, LA0/g;->a:Ltb/m;

    invoke-interface {p0}, Lsb/a;->invoke()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "visitAncestors called on an unattached node"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ModifierLocal accessed from an unattached node"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public e()LAb/E;
    .locals 0

    sget-object p0, LA0/b;->a:LA0/b;

    return-object p0
.end method
