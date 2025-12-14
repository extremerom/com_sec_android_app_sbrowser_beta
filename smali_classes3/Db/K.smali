.class public final LDb/K;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/a;


# instance fields
.field public final synthetic a:I

.field public final b:LDb/L;


# direct methods
.method public synthetic constructor <init>(LDb/L;I)V
    .locals 0

    iput p2, p0, LDb/K;->a:I

    iput-object p1, p0, LDb/K;->b:LDb/L;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 10

    const-string v0, "desc"

    const/16 v1, 0xa

    const-string v2, "getValueParameters(...)"

    const-string v3, "getContainingDeclaration(...)"

    iget-object v4, p0, LDb/K;->b:LDb/L;

    const/4 v5, 0x0

    const/4 v6, 0x1

    iget p0, p0, LDb/K;->a:I

    packed-switch p0, :pswitch_data_0

    sget-object p0, LDb/G0;->a:Lhc/b;

    invoke-virtual {v4}, LDb/L;->m()LJb/v;

    move-result-object p0

    invoke-static {p0}, LDb/G0;->c(LJb/v;)LG5/G;

    move-result-object p0

    instance-of v7, p0, LDb/k;

    const/4 v8, 0x0

    iget-object v9, v4, LDb/L;->c:LDb/I;

    if-eqz v7, :cond_b

    invoke-virtual {v4}, LDb/L;->m()LJb/v;

    move-result-object v0

    invoke-interface {v0}, LJb/l;->k()LJb/l;

    move-result-object v1

    invoke-static {v1, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lkc/i;->d(LJb/l;)Z

    move-result v1

    if-eqz v1, :cond_1

    instance-of v1, v0, LJb/k;

    if-eqz v1, :cond_1

    check-cast v0, LJb/k;

    invoke-interface {v0}, LJb/k;->Z()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, LDb/z0;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, LDb/L;->m()LJb/v;

    move-result-object v1

    invoke-interface {v1}, LJb/l;->k()LJb/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " cannot have default arguments"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, LDb/z0;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {v4}, LDb/L;->m()LJb/v;

    move-result-object v0

    invoke-interface {v0}, LJb/b;->H()Ljava/util/List;

    move-result-object v1

    invoke-static {v1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    instance-of v5, v1, Ljava/util/Collection;

    if-eqz v5, :cond_2

    move-object v5, v1

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LMb/T;

    invoke-virtual {v5}, LMb/T;->V0()Z

    move-result v5

    if-eqz v5, :cond_3

    goto/16 :goto_4

    :cond_4
    :goto_1
    invoke-interface {v0}, LJb/l;->k()LJb/l;

    move-result-object v1

    invoke-static {v1, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lkc/i;->f(LJb/l;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v4}, LDb/L;->d()LEb/g;

    move-result-object v1

    invoke-interface {v1}, LEb/g;->r()Ljava/lang/reflect/Member;

    move-result-object v1

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-interface {v1}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {v0}, Loc/d;->l(LJb/d;)LJc/i;

    move-result-object v0

    new-instance v1, LJc/g;

    invoke-direct {v1, v0}, LJc/g;-><init>(LJc/i;)V

    :cond_5
    :goto_2
    invoke-virtual {v1}, LJc/g;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v1}, LJc/g;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, LJb/d;

    invoke-interface {v3}, LJb/b;->H()Ljava/util/List;

    move-result-object v3

    invoke-static {v3, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Iterable;

    instance-of v5, v3, Ljava/util/Collection;

    if-eqz v5, :cond_6

    move-object v5, v3

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_2

    :cond_6
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LMb/T;

    invoke-virtual {v5}, LMb/T;->V0()Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_3

    :cond_8
    move-object v0, v8

    :goto_3
    instance-of v1, v0, LJb/v;

    if-eqz v1, :cond_9

    check-cast v0, LJb/v;

    goto :goto_5

    :cond_9
    :goto_4
    move-object v0, v8

    :goto_5
    if-eqz v0, :cond_a

    invoke-static {v0}, LDb/G0;->c(LJb/v;)LG5/G;

    move-result-object p0

    check-cast p0, LDb/k;

    iget-object p0, p0, LDb/k;->a:Lgc/e;

    iget-object v0, p0, Lgc/e;->c:Ljava/lang/String;

    iget-object p0, p0, Lgc/e;->b:Ljava/lang/String;

    invoke-virtual {v9, p0, v0, v6}, LDb/I;->c(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/reflect/Method;

    move-result-object p0

    goto/16 :goto_8

    :cond_a
    check-cast p0, LDb/k;

    iget-object p0, p0, LDb/k;->a:Lgc/e;

    invoke-virtual {v4}, LDb/L;->d()LEb/g;

    move-result-object v0

    invoke-interface {v0}, LEb/g;->r()Ljava/lang/reflect/Member;

    move-result-object v0

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    xor-int/2addr v0, v6

    iget-object v1, p0, Lgc/e;->c:Ljava/lang/String;

    iget-object p0, p0, Lgc/e;->b:Ljava/lang/String;

    invoke-virtual {v9, p0, v1, v0}, LDb/I;->c(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/reflect/Method;

    move-result-object p0

    goto/16 :goto_8

    :cond_b
    instance-of v2, p0, LDb/j;

    if-eqz v2, :cond_e

    invoke-virtual {v4}, LDb/s;->i()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v9}, Ltb/d;->a()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v4}, LDb/s;->h()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LAb/l;

    check-cast v1, LDb/b0;

    invoke-virtual {v1}, LDb/b0;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_c
    sget-object v0, LEb/a;->CALL_BY_NAME:LEb/a;

    sget-object v1, LEb/b;->KOTLIN:LEb/b;

    new-instance v3, LEb/c;

    invoke-direct {v3, p0, v2, v0, v1}, LEb/c;-><init>(Ljava/lang/Class;Ljava/util/ArrayList;LEb/a;LEb/b;)V

    goto/16 :goto_b

    :cond_d
    check-cast p0, LDb/j;

    iget-object p0, p0, LDb/j;->a:Lgc/e;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lgc/e;->c:Ljava/lang/String;

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v9}, Ltb/d;->a()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v9, p0, v5}, LDb/I;->n(Ljava/lang/String;Z)LL8/a;

    move-result-object p0

    iget-object p0, p0, LL8/a;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-static {v1, p0, v6}, LDb/I;->b(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    invoke-static {v0, v1}, LDb/I;->p(Ljava/lang/Class;Ljava/util/ArrayList;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    goto :goto_8

    :cond_e
    instance-of v0, p0, LDb/g;

    if-eqz v0, :cond_10

    check-cast p0, LDb/g;

    invoke-interface {v9}, Ltb/d;->a()Ljava/lang/Class;

    move-result-object v3

    iget-object v7, p0, LDb/g;->a:Ljava/util/List;

    move-object p0, v7

    check-cast p0, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    invoke-static {p0, v1}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_f
    sget-object v5, LEb/a;->CALL_BY_NAME:LEb/a;

    sget-object v6, LEb/b;->JAVA:LEb/b;

    new-instance p0, LEb/c;

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, LEb/c;-><init>(Ljava/lang/Class;Ljava/util/ArrayList;LEb/a;LEb/b;Ljava/util/List;)V

    move-object v3, p0

    goto/16 :goto_b

    :cond_10
    move-object p0, v8

    :goto_8
    instance-of v0, p0, Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_11

    check-cast p0, Ljava/lang/reflect/Constructor;

    invoke-virtual {v4}, LDb/L;->m()LJb/v;

    move-result-object v0

    invoke-virtual {v4, p0, v0, v6}, LDb/L;->k(Ljava/lang/reflect/Constructor;LJb/v;Z)LEb/x;

    move-result-object p0

    goto :goto_a

    :cond_11
    instance-of v0, p0, Ljava/lang/reflect/Method;

    if-eqz v0, :cond_14

    invoke-virtual {v4}, LDb/L;->m()LJb/v;

    move-result-object v0

    check-cast v0, LF3/f;

    invoke-virtual {v0}, LF3/f;->u()LKb/h;

    move-result-object v0

    sget-object v1, LDb/I0;->a:Lhc/c;

    invoke-interface {v0, v1}, LKb/h;->B(Lhc/c;)LKb/b;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {v4}, LDb/L;->m()LJb/v;

    move-result-object v0

    invoke-interface {v0}, LJb/l;->k()LJb/l;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor"

    invoke-static {v0, v1}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, LJb/f;

    invoke-interface {v0}, LJb/f;->X()Z

    move-result v0

    if-nez v0, :cond_13

    check-cast p0, Ljava/lang/reflect/Method;

    invoke-virtual {v4}, LDb/L;->j()Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, LEb/s;

    invoke-direct {v0, p0}, LEb/s;-><init>(Ljava/lang/reflect/Method;)V

    :goto_9
    move-object p0, v0

    goto :goto_a

    :cond_12
    new-instance v0, LEb/v;

    invoke-direct {v0, p0, v6}, LEb/v;-><init>(Ljava/lang/reflect/Method;I)V

    goto :goto_9

    :cond_13
    check-cast p0, Ljava/lang/reflect/Method;

    invoke-virtual {v4}, LDb/L;->d()LEb/g;

    move-result-object v0

    invoke-interface {v0}, LEb/g;->s()Z

    move-result v0

    invoke-virtual {v4, p0, v0}, LDb/L;->l(Ljava/lang/reflect/Method;Z)LEb/w;

    move-result-object p0

    goto :goto_a

    :cond_14
    move-object p0, v8

    :goto_a
    if-eqz p0, :cond_15

    invoke-virtual {v4}, LDb/L;->m()LJb/v;

    move-result-object v0

    invoke-static {p0, v0, v6}, LG5/r2;->c(LEb/g;LJb/v;Z)LEb/g;

    move-result-object v8

    :cond_15
    move-object v3, v8

    :goto_b
    return-object v3

    :pswitch_0
    sget-object p0, LDb/G0;->a:Lhc/b;

    invoke-virtual {v4}, LDb/L;->m()LJb/v;

    move-result-object p0

    invoke-static {p0}, LDb/G0;->c(LJb/v;)LG5/G;

    move-result-object p0

    instance-of v7, p0, LDb/j;

    iget-object v8, v4, LDb/L;->c:LDb/I;

    if-eqz v7, :cond_18

    invoke-virtual {v4}, LDb/s;->i()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface {v8}, Ltb/d;->a()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v4}, LDb/s;->h()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LAb/l;

    check-cast v1, LDb/b0;

    invoke-virtual {v1}, LDb/b0;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_16
    sget-object v0, LEb/a;->POSITIONAL_CALL:LEb/a;

    sget-object v1, LEb/b;->KOTLIN:LEb/b;

    new-instance v3, LEb/c;

    invoke-direct {v3, p0, v2, v0, v1}, LEb/c;-><init>(Ljava/lang/Class;Ljava/util/ArrayList;LEb/a;LEb/b;)V

    goto/16 :goto_11

    :cond_17
    check-cast p0, LDb/j;

    iget-object p0, p0, LDb/j;->a:Lgc/e;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lgc/e;->c:Ljava/lang/String;

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v8}, Ltb/d;->a()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v8, p0, v5}, LDb/I;->n(Ljava/lang/String;Z)LL8/a;

    move-result-object p0

    iget-object p0, p0, LL8/a;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-static {v0, p0}, LDb/I;->p(Ljava/lang/Class;Ljava/util/ArrayList;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    goto :goto_d

    :cond_18
    instance-of v0, p0, LDb/k;

    if-eqz v0, :cond_1a

    invoke-virtual {v4}, LDb/L;->m()LJb/v;

    move-result-object v0

    invoke-interface {v0}, LJb/l;->k()LJb/l;

    move-result-object v1

    invoke-static {v1, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lkc/i;->d(LJb/l;)Z

    move-result v1

    if-eqz v1, :cond_19

    instance-of v1, v0, LJb/k;

    if-eqz v1, :cond_19

    check-cast v0, LJb/k;

    invoke-interface {v0}, LJb/k;->Z()Z

    move-result v0

    if-eqz v0, :cond_19

    new-instance v3, LEb/C;

    invoke-virtual {v4}, LDb/L;->m()LJb/v;

    move-result-object v0

    check-cast p0, LDb/k;

    iget-object p0, p0, LDb/k;->a:Lgc/e;

    invoke-virtual {v4}, LDb/L;->m()LJb/v;

    move-result-object v1

    invoke-interface {v1}, LJb/b;->H()Ljava/util/List;

    move-result-object v1

    invoke-static {v1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lgc/e;->c:Ljava/lang/String;

    invoke-direct {v3, v0, v8, p0, v1}, LEb/C;-><init>(LJb/v;LDb/I;Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_11

    :cond_19
    check-cast p0, LDb/k;

    iget-object p0, p0, LDb/k;->a:Lgc/e;

    iget-object v0, p0, Lgc/e;->c:Ljava/lang/String;

    iget-object p0, p0, Lgc/e;->b:Ljava/lang/String;

    invoke-virtual {v8, p0, v0}, LDb/I;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object p0

    goto :goto_d

    :cond_1a
    instance-of v0, p0, LDb/i;

    const-string v2, "null cannot be cast to non-null type java.lang.reflect.Member"

    if-eqz v0, :cond_1b

    check-cast p0, LDb/i;

    iget-object p0, p0, LDb/i;->a:Ljava/lang/reflect/Method;

    invoke-static {p0, v2}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_d

    :cond_1b
    instance-of v0, p0, LDb/h;

    if-eqz v0, :cond_22

    check-cast p0, LDb/h;

    iget-object p0, p0, LDb/h;->a:Ljava/lang/reflect/Constructor;

    invoke-static {p0, v2}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_d
    instance-of v0, p0, Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_1c

    check-cast p0, Ljava/lang/reflect/Constructor;

    invoke-virtual {v4}, LDb/L;->m()LJb/v;

    move-result-object v0

    invoke-virtual {v4, p0, v0, v5}, LDb/L;->k(Ljava/lang/reflect/Constructor;LJb/v;Z)LEb/x;

    move-result-object p0

    goto :goto_f

    :cond_1c
    instance-of v0, p0, Ljava/lang/reflect/Method;

    if-eqz v0, :cond_21

    check-cast p0, Ljava/lang/reflect/Method;

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-virtual {v4}, LDb/L;->j()Z

    move-result v0

    if-eqz v0, :cond_1d

    new-instance v0, LEb/r;

    invoke-virtual {v4}, LDb/L;->m()LJb/v;

    move-result-object v1

    iget-object v2, v4, LDb/L;->e:Ljava/lang/Object;

    invoke-static {v2, v1}, LG5/r2;->b(Ljava/lang/Object;LJb/d;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, p0, v1}, LEb/r;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    :goto_e
    move-object p0, v0

    goto :goto_f

    :cond_1d
    new-instance v0, LEb/v;

    invoke-direct {v0, p0, v5}, LEb/v;-><init>(Ljava/lang/reflect/Method;I)V

    goto :goto_e

    :cond_1e
    invoke-virtual {v4}, LDb/L;->m()LJb/v;

    move-result-object v0

    check-cast v0, LF3/f;

    invoke-virtual {v0}, LF3/f;->u()LKb/h;

    move-result-object v0

    sget-object v1, LDb/I0;->a:Lhc/c;

    invoke-interface {v0, v1}, LKb/h;->B(Lhc/c;)LKb/b;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-virtual {v4}, LDb/L;->j()Z

    move-result v0

    if-eqz v0, :cond_1f

    new-instance v0, LEb/s;

    invoke-direct {v0, p0}, LEb/s;-><init>(Ljava/lang/reflect/Method;)V

    goto :goto_e

    :cond_1f
    new-instance v0, LEb/v;

    invoke-direct {v0, p0, v6}, LEb/v;-><init>(Ljava/lang/reflect/Method;I)V

    goto :goto_e

    :cond_20
    invoke-virtual {v4, p0, v5}, LDb/L;->l(Ljava/lang/reflect/Method;Z)LEb/w;

    move-result-object p0

    :goto_f
    invoke-virtual {v4}, LDb/L;->m()LJb/v;

    move-result-object v0

    invoke-static {p0, v0, v5}, LG5/r2;->c(LEb/g;LJb/v;Z)LEb/g;

    move-result-object v3

    goto :goto_11

    :cond_21
    new-instance v0, LDb/z0;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not compute caller for function: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, LDb/L;->m()LJb/v;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " (member = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, LDb/z0;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    instance-of v0, p0, LDb/g;

    if-eqz v0, :cond_24

    check-cast p0, LDb/g;

    invoke-interface {v8}, Ltb/d;->a()Ljava/lang/Class;

    move-result-object v3

    iget-object v7, p0, LDb/g;->a:Ljava/util/List;

    move-object p0, v7

    check-cast p0, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    invoke-static {p0, v1}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_23
    sget-object v5, LEb/a;->POSITIONAL_CALL:LEb/a;

    sget-object v6, LEb/b;->JAVA:LEb/b;

    new-instance p0, LEb/c;

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, LEb/c;-><init>(Ljava/lang/Class;Ljava/util/ArrayList;LEb/a;LEb/b;Ljava/util/List;)V

    move-object v3, p0

    :goto_11
    return-object v3

    :cond_24
    new-instance p0, LI5/b;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
