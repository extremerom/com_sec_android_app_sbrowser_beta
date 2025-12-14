.class public abstract LDb/G0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lhc/b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lhc/c;

    const-string v1, "java.lang.Void"

    invoke-direct {v0, v1}, Lhc/c;-><init>(Ljava/lang/String;)V

    new-instance v1, Lhc/b;

    invoke-virtual {v0}, Lhc/c;->b()Lhc/c;

    move-result-object v2

    iget-object v0, v0, Lhc/c;->a:Lhc/d;

    invoke-virtual {v0}, Lhc/d;->f()Lhc/f;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lhc/b;-><init>(Lhc/c;Lhc/f;)V

    sput-object v1, LDb/G0;->a:Lhc/b;

    return-void
.end method

.method public static a(LJb/v;)LDb/k;
    .locals 4

    new-instance v0, LDb/k;

    new-instance v1, Lgc/e;

    invoke-static {p0}, LG5/q2;->d(LJb/v;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    instance-of v2, p0, LMb/K;

    const-string v3, "asString(...)"

    if-eqz v2, :cond_0

    invoke-static {p0}, Loc/d;->k(LJb/d;)LJb/d;

    move-result-object v2

    invoke-interface {v2}, LJb/l;->getName()Lhc/f;

    move-result-object v2

    invoke-virtual {v2}, Lhc/f;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, LSb/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    instance-of v2, p0, LMb/L;

    if-eqz v2, :cond_1

    invoke-static {p0}, Loc/d;->k(LJb/d;)LJb/d;

    move-result-object v2

    invoke-interface {v2}, LJb/l;->getName()Lhc/f;

    move-result-object v2

    invoke-virtual {v2}, Lhc/f;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, LSb/w;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, p0

    check-cast v2, LMb/n;

    invoke-virtual {v2}, LMb/n;->getName()Lhc/f;

    move-result-object v2

    invoke-virtual {v2}, Lhc/f;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    :goto_0
    const/4 v3, 0x1

    invoke-static {p0, v3}, LG5/W3;->b(LJb/v;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Lgc/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, LDb/k;-><init>(Lgc/e;)V

    return-object v0
.end method

.method public static b(LJb/P;)LG5/H;
    .locals 7

    const-string v0, "possiblyOverriddenProperty"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkc/e;->t(LJb/d;)LJb/d;

    move-result-object p0

    check-cast p0, LJb/P;

    invoke-interface {p0}, LJb/P;->a()LJb/P;

    move-result-object v1

    const-string p0, "getOriginal(...)"

    invoke-static {v1, p0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, v1, Lwc/r;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    move-object p0, v1

    check-cast p0, Lwc/r;

    sget-object v2, Lfc/k;->d:Lic/o;

    const-string v3, "propertySignature"

    invoke-static {v2, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lwc/r;->B:Lcc/I;

    invoke-static {v3, v2}, LG5/L2;->f(Lic/m;Lic/o;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lfc/e;

    if-eqz v4, :cond_a

    new-instance v6, LDb/n;

    iget-object v5, p0, Lwc/r;->C:Lec/g;

    iget-object p0, p0, Lwc/r;->D:LX4/i;

    move-object v0, v6

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, LDb/n;-><init>(LJb/P;Lcc/I;Lfc/e;Lec/g;LX4/i;)V

    return-object v6

    :cond_0
    instance-of p0, v1, LUb/h;

    if-eqz p0, :cond_a

    move-object p0, v1

    check-cast p0, LUb/h;

    invoke-virtual {p0}, LMb/o;->e()LJb/S;

    move-result-object v2

    instance-of v3, v2, LOb/f;

    if-eqz v3, :cond_1

    check-cast v2, LOb/f;

    goto :goto_0

    :cond_1
    move-object v2, v0

    :goto_0
    if-eqz v2, :cond_2

    iget-object v2, v2, LOb/f;->a:LPb/r;

    goto :goto_1

    :cond_2
    move-object v2, v0

    :goto_1
    instance-of v3, v2, LPb/t;

    if-eqz v3, :cond_3

    new-instance p0, LDb/l;

    check-cast v2, LPb/t;

    iget-object v0, v2, LPb/t;->a:Ljava/lang/reflect/Field;

    invoke-direct {p0, v0}, LDb/l;-><init>(Ljava/lang/reflect/Field;)V

    goto :goto_6

    :cond_3
    instance-of v3, v2, LPb/w;

    if-eqz v3, :cond_9

    new-instance v1, LDb/m;

    check-cast v2, LPb/w;

    iget-object v2, v2, LPb/w;->a:Ljava/lang/reflect/Method;

    iget-object p0, p0, LMb/J;->y:LMb/L;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, LMb/o;->e()LJb/S;

    move-result-object p0

    goto :goto_2

    :cond_4
    move-object p0, v0

    :goto_2
    instance-of v3, p0, LOb/f;

    if-eqz v3, :cond_5

    check-cast p0, LOb/f;

    goto :goto_3

    :cond_5
    move-object p0, v0

    :goto_3
    if-eqz p0, :cond_6

    iget-object p0, p0, LOb/f;->a:LPb/r;

    goto :goto_4

    :cond_6
    move-object p0, v0

    :goto_4
    instance-of v3, p0, LPb/w;

    if-eqz v3, :cond_7

    check-cast p0, LPb/w;

    goto :goto_5

    :cond_7
    move-object p0, v0

    :goto_5
    if-eqz p0, :cond_8

    iget-object v0, p0, LPb/w;->a:Ljava/lang/reflect/Method;

    :cond_8
    invoke-direct {v1, v2, v0}, LDb/m;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    move-object p0, v1

    :goto_6
    return-object p0

    :cond_9
    new-instance p0, LDb/z0;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Incorrect resolution sequence for Java field "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " (source = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, LDb/z0;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    invoke-interface {v1}, LJb/P;->b()LMb/K;

    move-result-object p0

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-static {p0}, LDb/G0;->a(LJb/v;)LDb/k;

    move-result-object p0

    invoke-interface {v1}, LJb/P;->c()LMb/L;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-static {v1}, LDb/G0;->a(LJb/v;)LDb/k;

    move-result-object v0

    :cond_b
    new-instance v1, LDb/o;

    invoke-direct {v1, p0, v0}, LDb/o;-><init>(LDb/k;LDb/k;)V

    return-object v1
.end method

.method public static c(LJb/v;)LG5/G;
    .locals 7

    const-string v0, "possiblySubstitutedFunction"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkc/e;->t(LJb/d;)LJb/d;

    move-result-object v0

    check-cast v0, LJb/v;

    invoke-interface {v0}, LJb/v;->a()LJb/v;

    move-result-object v0

    const-string v1, "getOriginal(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v1, v0, Lwc/b;

    if-eqz v1, :cond_9

    move-object v1, v0

    check-cast v1, Lwc/l;

    invoke-interface {v1}, Lwc/l;->d0()Lic/b;

    move-result-object v2

    instance-of v3, v2, Lcc/A;

    if-eqz v3, :cond_0

    sget-object v3, Lgc/h;->a:Lic/g;

    move-object v3, v2

    check-cast v3, Lcc/A;

    invoke-interface {v1}, Lwc/l;->I()Lec/g;

    move-result-object v4

    invoke-interface {v1}, Lwc/l;->F()LX4/i;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lgc/h;->c(Lcc/A;Lec/g;LX4/i;)Lgc/e;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance p0, LDb/k;

    invoke-direct {p0, v3}, LDb/k;-><init>(Lgc/e;)V

    return-object p0

    :cond_0
    instance-of v3, v2, Lcc/n;

    if-eqz v3, :cond_8

    sget-object v3, Lgc/h;->a:Lic/g;

    check-cast v2, Lcc/n;

    invoke-interface {v1}, Lwc/l;->I()Lec/g;

    move-result-object v3

    invoke-interface {v1}, Lwc/l;->F()LX4/i;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lgc/h;->a(Lcc/n;Lec/g;LX4/i;)Lgc/e;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-interface {p0}, LJb/l;->k()LJb/l;

    move-result-object v0

    const-string v2, "getContainingDeclaration(...)"

    invoke-static {v0, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkc/i;->b(LJb/l;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p0, LDb/k;

    invoke-direct {p0, v1}, LDb/k;-><init>(Lgc/e;)V

    goto/16 :goto_1

    :cond_1
    invoke-interface {p0}, LJb/l;->k()LJb/l;

    move-result-object v0

    invoke-static {v0, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkc/i;->d(LJb/l;)Z

    move-result v0

    if-eqz v0, :cond_7

    check-cast p0, LJb/k;

    invoke-interface {p0}, LJb/k;->Z()Z

    move-result v0

    const-string v2, ")V"

    const-string v3, "constructor-impl"

    const-string v4, "Invalid signature: "

    iget-object v5, v1, Lgc/e;->b:Ljava/lang/String;

    iget-object v6, v1, Lgc/e;->c:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-static {v5, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {v6, v2}, LKc/r;->h(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-static {v5, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, LJb/k;->b0()LJb/f;

    move-result-object p0

    const-string v0, "getConstructedClass(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Loc/d;->f(LJb/i;)Lhc/b;

    move-result-object p0

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lhc/b;->b()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lgc/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, v2}, LKc/r;->h(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "V"

    invoke-static {v6, v1}, LKc/k;->E(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "name"

    invoke-static {v5, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "desc"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lgc/e;

    invoke-direct {v1, v5, p0}, Lgc/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-static {v6, p0}, LKc/r;->h(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    :goto_0
    new-instance p0, LDb/k;

    invoke-direct {p0, v1}, LDb/k;-><init>(Lgc/e;)V

    goto :goto_1

    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance p0, LDb/j;

    invoke-direct {p0, v1}, LDb/j;-><init>(Lgc/e;)V

    :goto_1
    return-object p0

    :cond_8
    invoke-static {v0}, LDb/G0;->a(LJb/v;)LDb/k;

    move-result-object p0

    return-object p0

    :cond_9
    instance-of p0, v0, LUb/g;

    const/4 v1, 0x0

    if-eqz p0, :cond_e

    move-object p0, v0

    check-cast p0, LUb/g;

    invoke-virtual {p0}, LMb/o;->e()LJb/S;

    move-result-object p0

    instance-of v2, p0, LOb/f;

    if-eqz v2, :cond_a

    check-cast p0, LOb/f;

    goto :goto_2

    :cond_a
    move-object p0, v1

    :goto_2
    if-eqz p0, :cond_b

    iget-object p0, p0, LOb/f;->a:LPb/r;

    goto :goto_3

    :cond_b
    move-object p0, v1

    :goto_3
    instance-of v2, p0, LPb/w;

    if-eqz v2, :cond_c

    move-object v1, p0

    check-cast v1, LPb/w;

    :cond_c
    if-eqz v1, :cond_d

    iget-object p0, v1, LPb/w;->a:Ljava/lang/reflect/Method;

    if-eqz p0, :cond_d

    new-instance v0, LDb/i;

    invoke-direct {v0, p0}, LDb/i;-><init>(Ljava/lang/reflect/Method;)V

    return-object v0

    :cond_d
    new-instance p0, LDb/z0;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Incorrect resolution sequence for Java method "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, LDb/z0;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    instance-of p0, v0, LUb/b;

    const/16 v2, 0x29

    const-string v3, " ("

    if-eqz p0, :cond_13

    move-object p0, v0

    check-cast p0, LUb/b;

    invoke-virtual {p0}, LMb/o;->e()LJb/S;

    move-result-object p0

    instance-of v4, p0, LOb/f;

    if-eqz v4, :cond_f

    check-cast p0, LOb/f;

    goto :goto_4

    :cond_f
    move-object p0, v1

    :goto_4
    if-eqz p0, :cond_10

    iget-object v1, p0, LOb/f;->a:LPb/r;

    :cond_10
    instance-of p0, v1, LPb/q;

    if-eqz p0, :cond_11

    new-instance p0, LDb/h;

    check-cast v1, LPb/q;

    iget-object v0, v1, LPb/q;->a:Ljava/lang/reflect/Constructor;

    invoke-direct {p0, v0}, LDb/h;-><init>(Ljava/lang/reflect/Constructor;)V

    goto :goto_5

    :cond_11
    instance-of p0, v1, LPb/n;

    if-eqz p0, :cond_12

    move-object p0, v1

    check-cast p0, LPb/n;

    iget-object v4, p0, LPb/n;->a:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->isAnnotation()Z

    move-result v4

    if-eqz v4, :cond_12

    new-instance v0, LDb/g;

    iget-object p0, p0, LPb/n;->a:Ljava/lang/Class;

    invoke-direct {v0, p0}, LDb/g;-><init>(Ljava/lang/Class;)V

    move-object p0, v0

    :goto_5
    return-object p0

    :cond_12
    new-instance p0, LDb/z0;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Incorrect resolution sequence for Java constructor "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, LDb/z0;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_13
    move-object p0, v0

    check-cast p0, LMb/n;

    invoke-virtual {p0}, LMb/n;->getName()Lhc/f;

    move-result-object v1

    sget-object v4, LGb/q;->c:Lhc/f;

    invoke-virtual {v1, v4}, Lhc/f;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-static {v0}, Lkc/p;->n(LJb/v;)Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_6

    :cond_14
    invoke-virtual {p0}, LMb/n;->getName()Lhc/f;

    move-result-object v1

    sget-object v4, LGb/q;->a:Lhc/f;

    invoke-virtual {v1, v4}, Lhc/f;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-static {v0}, Lkc/p;->n(LJb/v;)Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_6

    :cond_15
    invoke-virtual {p0}, LMb/n;->getName()Lhc/f;

    move-result-object p0

    sget-object v1, LIb/a;->e:Lhc/f;

    invoke-static {p0, v1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    invoke-interface {v0}, LJb/b;->H()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_16

    :goto_6
    invoke-static {v0}, LDb/G0;->a(LJb/v;)LDb/k;

    move-result-object p0

    return-object p0

    :cond_16
    new-instance p0, LDb/z0;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Unknown origin of "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, LDb/z0;-><init>(Ljava/lang/String;)V

    throw p0
.end method
