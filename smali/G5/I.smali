.class public abstract LG5/I;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(LDb/m0;Z)LEb/g;
    .locals 6

    const/4 v0, 0x0

    sget-object v1, LDb/I;->a:LKc/j;

    invoke-virtual {p0}, LDb/m0;->l()LDb/r0;

    move-result-object v2

    iget-object v2, v2, LDb/r0;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, LKc/j;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p0, LEb/B;->a:LEb/B;

    goto/16 :goto_5

    :cond_0
    sget-object v1, LDb/G0;->a:Lhc/b;

    invoke-virtual {p0}, LDb/m0;->l()LDb/r0;

    move-result-object v1

    invoke-virtual {v1}, LDb/r0;->l()LJb/P;

    move-result-object v1

    invoke-static {v1}, LDb/G0;->b(LJb/P;)LG5/H;

    move-result-object v1

    instance-of v2, v1, LDb/n;

    if-eqz v2, :cond_e

    check-cast v1, LDb/n;

    iget-object v2, v1, LDb/n;->d:Lfc/e;

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    iget v4, v2, Lfc/e;->b:I

    const/4 v5, 0x4

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_1

    iget-object v2, v2, Lfc/e;->e:Lfc/c;

    goto :goto_0

    :cond_1
    move-object v2, v3

    goto :goto_0

    :cond_2
    iget v4, v2, Lfc/e;->b:I

    const/16 v5, 0x8

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_1

    iget-object v2, v2, Lfc/e;->f:Lfc/c;

    :goto_0
    if-eqz v2, :cond_3

    invoke-virtual {p0}, LDb/m0;->l()LDb/r0;

    move-result-object v3

    iget-object v3, v3, LDb/r0;->c:LDb/I;

    iget v4, v2, Lfc/c;->c:I

    iget-object v1, v1, LDb/n;->e:Lec/g;

    invoke-interface {v1, v4}, Lec/g;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget v2, v2, Lfc/c;->d:I

    invoke-interface {v1, v2}, Lec/g;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, LDb/I;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v3

    :cond_3
    if-nez v3, :cond_8

    invoke-virtual {p0}, LDb/m0;->l()LDb/r0;

    move-result-object v1

    invoke-virtual {v1}, LDb/r0;->l()LJb/P;

    move-result-object v1

    invoke-static {v1}, Lkc/i;->e(LJb/Z;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, LDb/m0;->l()LDb/r0;

    move-result-object v1

    invoke-virtual {v1}, LDb/r0;->l()LJb/P;

    move-result-object v1

    invoke-interface {v1}, LJb/z;->getVisibility()LJb/p;

    move-result-object v1

    sget-object v2, LJb/q;->d:LJb/p;

    invoke-static {v1, v2}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, LDb/m0;->l()LDb/r0;

    move-result-object p1

    invoke-virtual {p1}, LDb/r0;->l()LJb/P;

    move-result-object p1

    invoke-interface {p1}, LJb/l;->k()LJb/l;

    move-result-object p1

    invoke-static {p1}, LG5/r2;->j(LJb/l;)Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, LDb/m0;->l()LDb/r0;

    move-result-object v1

    invoke-virtual {v1}, LDb/r0;->l()LJb/P;

    move-result-object v1

    invoke-static {p1, v1}, LG5/r2;->e(Ljava/lang/Class;LJb/d;)Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-virtual {p0}, LDb/m0;->j()Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, LEb/y;

    invoke-static {p0}, LG5/I;->d(LDb/m0;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, p1, v2}, LEb/y;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_4
    new-instance v1, LEb/z;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, LG5/o3;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, p1, v2}, LEb/A;-><init>(Ljava/lang/reflect/Method;Ljava/util/List;)V

    goto/16 :goto_3

    :cond_5
    new-instance p1, LDb/z0;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Underlying property of inline class "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, LDb/m0;->l()LDb/r0;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " should have a field"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, LDb/z0;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    invoke-virtual {p0}, LDb/m0;->l()LDb/r0;

    move-result-object v1

    iget-object v1, v1, LDb/r0;->g:Ljava/lang/Object;

    invoke-interface {v1}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Field;

    if-eqz v1, :cond_7

    invoke-static {p0, p1, v1}, LG5/I;->b(LDb/m0;ZLjava/lang/reflect/Field;)LEb/x;

    move-result-object v1

    goto/16 :goto_3

    :cond_7
    new-instance p1, LDb/z0;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No accessors or field is found for property "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, LDb/m0;->l()LDb/r0;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, LDb/z0;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result p1

    invoke-static {p1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result p1

    if-nez p1, :cond_a

    invoke-virtual {p0}, LDb/m0;->j()Z

    move-result p1

    if-eqz p1, :cond_9

    new-instance p1, LEb/r;

    invoke-static {p0}, LG5/I;->d(LDb/m0;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p1, v3, v1}, LEb/r;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    :goto_1
    move-object v1, p1

    goto/16 :goto_3

    :cond_9
    new-instance p1, LEb/v;

    invoke-direct {p1, v3, v0}, LEb/v;-><init>(Ljava/lang/reflect/Method;I)V

    goto :goto_1

    :cond_a
    invoke-virtual {p0}, LDb/m0;->l()LDb/r0;

    move-result-object p1

    invoke-virtual {p1}, LDb/r0;->l()LJb/P;

    move-result-object p1

    invoke-interface {p1}, LKb/a;->u()LKb/h;

    move-result-object p1

    sget-object v1, LDb/I0;->a:Lhc/c;

    invoke-interface {p1, v1}, LKb/h;->m0(Lhc/c;)Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-virtual {p0}, LDb/m0;->j()Z

    move-result p1

    if-eqz p1, :cond_b

    new-instance p1, LEb/s;

    invoke-direct {p1, v3}, LEb/s;-><init>(Ljava/lang/reflect/Method;)V

    goto :goto_1

    :cond_b
    new-instance p1, LEb/v;

    const/4 v1, 0x1

    invoke-direct {p1, v3, v1}, LEb/v;-><init>(Ljava/lang/reflect/Method;I)V

    goto :goto_1

    :cond_c
    invoke-virtual {p0}, LDb/m0;->j()Z

    move-result p1

    if-eqz p1, :cond_d

    new-instance p1, LEb/t;

    invoke-static {p0}, LG5/I;->d(LDb/m0;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p1, v3, v0, v1}, LEb/t;-><init>(Ljava/lang/reflect/Method;ZLjava/lang/Object;)V

    goto :goto_1

    :cond_d
    new-instance p1, LEb/v;

    const/4 v1, 0x2

    invoke-direct {p1, v3, v1}, LEb/v;-><init>(Ljava/lang/reflect/Method;I)V

    goto :goto_1

    :cond_e
    instance-of v2, v1, LDb/l;

    if-eqz v2, :cond_f

    check-cast v1, LDb/l;

    iget-object v1, v1, LDb/l;->b:Ljava/lang/reflect/Field;

    invoke-static {p0, p1, v1}, LG5/I;->b(LDb/m0;ZLjava/lang/reflect/Field;)LEb/x;

    move-result-object v1

    goto :goto_3

    :cond_f
    instance-of v2, v1, LDb/m;

    if-eqz v2, :cond_13

    if-eqz p1, :cond_10

    check-cast v1, LDb/m;

    iget-object p1, v1, LDb/m;->b:Ljava/lang/reflect/Method;

    goto :goto_2

    :cond_10
    check-cast v1, LDb/m;

    iget-object p1, v1, LDb/m;->c:Ljava/lang/reflect/Method;

    if-eqz p1, :cond_12

    :goto_2
    invoke-virtual {p0}, LDb/m0;->j()Z

    move-result v1

    if-eqz v1, :cond_11

    new-instance v1, LEb/r;

    invoke-static {p0}, LG5/I;->d(LDb/m0;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, p1, v2}, LEb/r;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    goto :goto_3

    :cond_11
    new-instance v1, LEb/v;

    invoke-direct {v1, p1, v0}, LEb/v;-><init>(Ljava/lang/reflect/Method;I)V

    :goto_3
    invoke-virtual {p0}, LDb/m0;->k()LJb/O;

    move-result-object p0

    invoke-static {v1, p0, v0}, LG5/r2;->c(LEb/g;LJb/v;Z)LEb/g;

    move-result-object p0

    goto :goto_5

    :cond_12
    new-instance p0, LDb/z0;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "No source found for setter of Java method property: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v1, LDb/m;->b:Ljava/lang/reflect/Method;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, LDb/z0;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_13
    instance-of v2, v1, LDb/o;

    if-eqz v2, :cond_18

    if-eqz p1, :cond_14

    check-cast v1, LDb/o;

    iget-object p1, v1, LDb/o;->b:LDb/k;

    goto :goto_4

    :cond_14
    check-cast v1, LDb/o;

    iget-object p1, v1, LDb/o;->c:LDb/k;

    if-eqz p1, :cond_17

    :goto_4
    invoke-virtual {p0}, LDb/m0;->l()LDb/r0;

    move-result-object v1

    iget-object v1, v1, LDb/r0;->c:LDb/I;

    iget-object p1, p1, LDb/k;->a:Lgc/e;

    iget-object v2, p1, Lgc/e;->c:Ljava/lang/String;

    iget-object p1, p1, Lgc/e;->b:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, LDb/I;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object p1

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    invoke-virtual {p0}, LDb/m0;->j()Z

    move-result v1

    if-eqz v1, :cond_15

    new-instance v0, LEb/r;

    invoke-static {p0}, LG5/I;->d(LDb/m0;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p1, p0}, LEb/r;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_5

    :cond_15
    new-instance p0, LEb/v;

    invoke-direct {p0, p1, v0}, LEb/v;-><init>(Ljava/lang/reflect/Method;I)V

    :goto_5
    return-object p0

    :cond_16
    new-instance p1, LDb/z0;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No accessor found for property "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, LDb/m0;->l()LDb/r0;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, LDb/z0;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    new-instance p1, LDb/z0;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No setter found for property "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, LDb/m0;->l()LDb/r0;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, LDb/z0;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_18
    new-instance p0, LI5/b;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method

.method public static final b(LDb/m0;ZLjava/lang/reflect/Field;)LEb/x;
    .locals 4

    invoke-virtual {p0}, LDb/m0;->l()LDb/r0;

    move-result-object v0

    invoke-virtual {v0}, LDb/r0;->l()LJb/P;

    move-result-object v0

    invoke-interface {v0}, LJb/l;->k()LJb/l;

    move-result-object v1

    const-string v2, "getContainingDeclaration(...)"

    invoke-static {v1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lkc/e;->l(LJb/l;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, LJb/l;->k()LJb/l;

    move-result-object v1

    sget-object v2, LJb/g;->INTERFACE:LJb/g;

    invoke-static {v1, v2}, Lkc/e;->n(LJb/l;LJb/g;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, LJb/g;->ANNOTATION_CLASS:LJb/g;

    invoke-static {v1, v2}, Lkc/e;->n(LJb/l;LJb/g;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    instance-of v1, v0, Lwc/r;

    if-eqz v1, :cond_2

    check-cast v0, Lwc/r;

    iget-object v0, v0, Lwc/r;->B:Lcc/I;

    invoke-static {v0}, Lgc/h;->d(Lcc/I;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_3
    :goto_1
    const-string v0, "field"

    if-eqz p1, :cond_5

    invoke-virtual {p0}, LDb/m0;->j()Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, LEb/j;

    invoke-static {p0}, LG5/I;->d(LDb/m0;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {p1, p2, p0}, LEb/j;-><init>(Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_4
    new-instance p1, LEb/l;

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-direct {p1, p2, v3, p0}, LEb/l;-><init>(Ljava/lang/reflect/Field;ZI)V

    goto/16 :goto_3

    :cond_5
    invoke-virtual {p0}, LDb/m0;->j()Z

    move-result p1

    if-eqz p1, :cond_6

    new-instance p1, LEb/n;

    invoke-static {p0}, LG5/I;->c(LDb/m0;)Z

    move-result v0

    invoke-static {p0}, LG5/I;->d(LDb/m0;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {p1, p2, v0, p0}, LEb/n;-><init>(Ljava/lang/reflect/Field;ZLjava/lang/Object;)V

    goto :goto_3

    :cond_6
    new-instance p1, LEb/p;

    invoke-static {p0}, LG5/I;->c(LDb/m0;)Z

    move-result p0

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p1, p2, p0, v3, v0}, LEb/p;-><init>(Ljava/lang/reflect/Field;ZZI)V

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, LDb/m0;->l()LDb/r0;

    move-result-object v0

    invoke-virtual {v0}, LDb/r0;->l()LJb/P;

    move-result-object v0

    invoke-interface {v0}, LKb/a;->u()LKb/h;

    move-result-object v0

    sget-object v1, LDb/I0;->a:Lhc/c;

    invoke-interface {v0, v1}, LKb/h;->m0(Lhc/c;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    if-eqz p1, :cond_9

    invoke-virtual {p0}, LDb/m0;->j()Z

    move-result p0

    if-eqz p0, :cond_8

    new-instance p0, LEb/k;

    invoke-direct {p0, p2, v1}, LEb/m;-><init>(Ljava/lang/reflect/Field;Z)V

    :goto_2
    move-object p1, p0

    goto :goto_3

    :cond_8
    new-instance p0, LEb/l;

    const/4 p1, 0x1

    invoke-direct {p0, p2, v3, p1}, LEb/l;-><init>(Ljava/lang/reflect/Field;ZI)V

    goto :goto_2

    :cond_9
    invoke-virtual {p0}, LDb/m0;->j()Z

    move-result p1

    if-eqz p1, :cond_a

    new-instance p1, LEb/o;

    invoke-static {p0}, LG5/I;->c(LDb/m0;)Z

    move-result p0

    invoke-direct {p1, p2, p0, v1}, LEb/q;-><init>(Ljava/lang/reflect/Field;ZZ)V

    goto :goto_3

    :cond_a
    new-instance p1, LEb/p;

    invoke-static {p0}, LG5/I;->c(LDb/m0;)Z

    move-result p0

    const/4 v0, 0x1

    invoke-direct {p1, p2, p0, v3, v0}, LEb/p;-><init>(Ljava/lang/reflect/Field;ZZI)V

    goto :goto_3

    :cond_b
    if-eqz p1, :cond_c

    new-instance p1, LEb/l;

    const/4 p0, 0x2

    invoke-direct {p1, p2, v1, p0}, LEb/l;-><init>(Ljava/lang/reflect/Field;ZI)V

    goto :goto_3

    :cond_c
    new-instance p1, LEb/p;

    invoke-static {p0}, LG5/I;->c(LDb/m0;)Z

    move-result p0

    const/4 v0, 0x2

    invoke-direct {p1, p2, p0, v1, v0}, LEb/p;-><init>(Ljava/lang/reflect/Field;ZZI)V

    :goto_3
    return-object p1
.end method

.method public static final c(LDb/m0;)Z
    .locals 0

    invoke-virtual {p0}, LDb/m0;->l()LDb/r0;

    move-result-object p0

    invoke-virtual {p0}, LDb/r0;->l()LJb/P;

    move-result-object p0

    invoke-interface {p0}, LJb/Y;->getType()Lyc/w;

    move-result-object p0

    invoke-static {p0}, Lyc/b0;->e(Lyc/w;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static final d(LDb/m0;)Ljava/lang/Object;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, LDb/m0;->l()LDb/r0;

    move-result-object p0

    invoke-virtual {p0}, LDb/r0;->l()LJb/P;

    move-result-object v0

    iget-object p0, p0, LDb/r0;->f:Ljava/lang/Object;

    invoke-static {p0, v0}, LG5/r2;->b(Ljava/lang/Object;LJb/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/widget/TextView;)V
    .locals 0

    if-eqz p0, :cond_0

    iget-object p0, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    if-nez p0, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    :goto_0
    instance-of p1, p0, Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static f(I)I
    .locals 4

    int-to-long v0, p0

    const-wide/32 v2, -0x3361d2af

    mul-long/2addr v0, v2

    long-to-int p0, v0

    const/16 v0, 0xf

    invoke-static {p0, v0}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result p0

    int-to-long v0, p0

    const-wide/32 v2, 0x1b873593

    mul-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method

.method public static g(Ljava/lang/Object;)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_0
    invoke-static {p0}, LG5/I;->f(I)I

    move-result p0

    return p0
.end method

.method public static h(LRd/p;LQd/u;)V
    .locals 7

    invoke-static {p1}, LOd/b;->g(Ljava/lang/Object;)V

    const/4 v0, 0x0

    move-object v1, p1

    move v2, v0

    :goto_0
    if-eqz v1, :cond_9

    iget-object v3, v1, LQd/u;->a:LQd/u;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, LQd/u;->g()I

    move-result v4

    goto :goto_1

    :cond_0
    move v4, v0

    :goto_1
    invoke-virtual {v1}, LQd/u;->o()LQd/u;

    move-result-object v5

    invoke-interface {p0, v1, v2}, LRd/p;->f(LQd/u;I)V

    if-eqz v3, :cond_4

    iget-object v6, v1, LQd/u;->a:LQd/u;

    if-eqz v6, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v3}, LQd/u;->g()I

    move-result v6

    if-ne v4, v6, :cond_2

    iget v1, v1, LQd/u;->b:I

    invoke-virtual {v3}, LQd/u;->k()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LQd/u;

    goto :goto_2

    :cond_2
    if-nez v5, :cond_3

    add-int/lit8 v2, v2, -0x1

    move-object v1, v3

    goto :goto_0

    :cond_3
    move-object v1, v5

    goto :goto_0

    :cond_4
    :goto_2
    invoke-virtual {v1}, LQd/u;->g()I

    move-result v3

    if-lez v3, :cond_5

    invoke-virtual {v1}, LQd/u;->k()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LQd/u;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    :goto_3
    invoke-virtual {v1}, LQd/u;->o()LQd/u;

    move-result-object v3

    if-nez v3, :cond_7

    if-gtz v2, :cond_6

    goto :goto_4

    :cond_6
    invoke-interface {p0, v1, v2}, LRd/p;->c(LQd/u;I)V

    iget-object v1, v1, LQd/u;->a:LQd/u;

    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    :cond_7
    :goto_4
    invoke-interface {p0, v1, v2}, LRd/p;->c(LQd/u;I)V

    if-ne v1, p1, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {v1}, LQd/u;->o()LQd/u;

    move-result-object v1

    goto :goto_0

    :cond_9
    :goto_5
    return-void
.end method
