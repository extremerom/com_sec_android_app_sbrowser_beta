.class public abstract LG5/u3;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lg3/n;Ljava/lang/String;Lf3/G;)Lo3/c;
    .locals 10

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workRequest"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lo3/c;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lo3/c;-><init>(I)V

    new-instance v5, LA1/d;

    invoke-direct {v5, p2, p0, p1, v0}, LA1/d;-><init>(Lf3/G;Lg3/n;Ljava/lang/String;Lo3/c;)V

    iget-object v1, p0, Lg3/n;->d:Lr3/a;

    iget-object v8, v1, Lr3/a;->a:LJ2/k0;

    new-instance v9, Lcom/sec/android/app/sbrowser/backup/a;

    const/4 v7, 0x2

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move-object v4, v0

    move-object v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/app/sbrowser/backup/a;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/io/Serializable;Ljava/lang/Object;I)V

    invoke-virtual {v8, v9}, LJ2/k0;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static b(Lyc/Z;ZZLWb/G;I)LXb/a;
    .locals 8

    and-int/lit8 v0, p4, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v5, v1

    goto :goto_0

    :cond_0
    move v5, p1

    :goto_0
    and-int/lit8 p1, p4, 0x2

    if-eqz p1, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, p2

    :goto_1
    and-int/lit8 p1, p4, 0x4

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    move-object p3, p2

    :cond_2
    const-string p1, "<this>"

    invoke-static {p0, p1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_3

    invoke-static {p3}, Lfb/F;->g(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    move-object v6, p1

    goto :goto_2

    :cond_3
    move-object v6, p2

    :goto_2
    new-instance p1, LXb/a;

    const/16 v7, 0x22

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, LXb/a;-><init>(Lyc/Z;ZZLjava/util/Set;I)V

    return-object p1
.end method

.method public static final c(Lg3/d;Landroidx/work/impl/WorkDatabase;Lf3/c;Ljava/util/List;Lo3/q;Ljava/util/Set;)V
    .locals 9

    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->h()Lo3/r;

    move-result-object v0

    iget-object v6, p4, Lo3/q;->a:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lo3/r;->m(Ljava/lang/String;)Lo3/q;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v0, v3, Lo3/q;->b:Lf3/E;

    invoke-virtual {v0}, Lf3/E;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v3}, Lo3/q;->d()Z

    move-result v0

    invoke-virtual {p4}, Lo3/q;->d()Z

    move-result v1

    xor-int/2addr v0, v1

    if-nez v0, :cond_3

    invoke-virtual {p0, v6}, Lg3/d;->e(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    move-object v0, p3

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg3/f;

    invoke-interface {v1, v6}, Lg3/f;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lg3/r;

    move-object v1, v0

    move-object v2, p1

    move-object v4, p4

    move-object v5, p3

    move-object v7, p5

    move v8, p0

    invoke-direct/range {v1 .. v8}, Lg3/r;-><init>(Landroidx/work/impl/WorkDatabase;Lo3/q;Lo3/q;Ljava/util/List;Ljava/lang/String;Ljava/util/Set;Z)V

    invoke-virtual {p1, v0}, LJ2/U;->runInTransaction(Ljava/lang/Runnable;)V

    if-nez p0, :cond_2

    invoke-static {p2, p1, p3}, Lg3/h;->b(Lf3/c;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    :cond_2
    return-void

    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Can\'t update "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lo3/q;->d()Z

    move-result p2

    const-string p3, "OneTime"

    const-string p5, "Periodic"

    if-eqz p2, :cond_4

    move-object p2, p5

    goto :goto_1

    :cond_4
    move-object p2, p3

    :goto_1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " Worker to "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lo3/q;->d()Z

    move-result p2

    if-eqz p2, :cond_5

    move-object p3, p5

    :cond_5
    const-string p2, " Worker. Update operation must preserve worker\'s type."

    invoke-static {p1, p3, p2}, Lt/b;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Worker with "

    const-string p2, " doesn\'t exist"

    invoke-static {p1, v6, p2}, LV0/c;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
