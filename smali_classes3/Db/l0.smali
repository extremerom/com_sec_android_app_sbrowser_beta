.class public final LDb/l0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/a;


# instance fields
.field public final synthetic a:I

.field public final b:LDb/r0;


# direct methods
.method public synthetic constructor <init>(LDb/r0;I)V
    .locals 0

    iput p2, p0, LDb/l0;->a:I

    iput-object p1, p0, LDb/l0;->b:LDb/r0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 15

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    iget-object v3, p0, LDb/l0;->b:LDb/r0;

    const/4 v4, 0x1

    iget p0, p0, LDb/l0;->a:I

    packed-switch p0, :pswitch_data_0

    iget-object p0, v3, LDb/r0;->c:LDb/I;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v3, LDb/r0;->d:Ljava/lang/String;

    const-string v5, "name"

    invoke-static {v0, v5}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v3, LDb/r0;->e:Ljava/lang/String;

    const-string v5, "signature"

    invoke-static {v3, v5}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, LDb/I;->a:LKc/j;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v5, LKc/j;->b:Ljava/lang/Object;

    check-cast v5, Ljava/util/regex/Pattern;

    invoke-virtual {v5, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    const-string v6, "matcher(...)"

    invoke-static {v5, v6}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, LKc/g;

    invoke-direct {v2, v5, v3}, LKc/g;-><init>(Ljava/util/regex/Matcher;Ljava/lang/CharSequence;)V

    :goto_0
    if-eqz v2, :cond_3

    iget-object v0, v2, LKc/g;->c:LKc/f;

    if-nez v0, :cond_1

    new-instance v0, LKc/f;

    invoke-direct {v0, v2}, LKc/f;-><init>(LKc/g;)V

    iput-object v0, v2, LKc/g;->c:LKc/f;

    :cond_1
    iget-object v0, v2, LKc/g;->c:LKc/f;

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, LKc/f;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, LDb/I;->g(I)LJb/P;

    move-result-object v1

    if-eqz v1, :cond_2

    goto/16 :goto_4

    :cond_2
    new-instance v1, LDb/z0;

    const-string v2, "Local property #"

    const-string v3, " not found in "

    invoke-static {v2, v0, v3}, LV0/c;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Ltb/d;->a()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, LDb/z0;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-static {v0}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object v2

    invoke-virtual {p0, v2}, LDb/I;->l(Lhc/f;)Ljava/util/Collection;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, LJb/P;

    invoke-static {v7}, LDb/G0;->b(LJb/P;)LG5/H;

    move-result-object v7

    invoke-virtual {v7}, LG5/H;->a()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const-string v6, ") not resolved in "

    const-string v7, "\' (JVM signature: "

    const-string v8, "Property \'"

    if-nez v2, :cond_b

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v2, v4, :cond_a

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, LJb/P;

    invoke-interface {v10}, LJb/z;->getVisibility()LJb/p;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_6

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    check-cast v11, Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    new-instance v5, LDb/f;

    invoke-direct {v5, v1}, LDb/f;-><init>(I)V

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1, v5}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {v1}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v1

    const-string v2, "<get-values>(...)"

    invoke-static {v1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lfb/n;->J(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v4, :cond_8

    invoke-static {v1}, Lfb/n;->C(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, LJb/P;

    goto :goto_4

    :cond_8
    invoke-static {v0}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object v1

    invoke-virtual {p0, v1}, LDb/I;->l(Lhc/f;)Ljava/util/Collection;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Ljava/lang/Iterable;

    sget-object v13, LDb/b;->f:LDb/b;

    const/4 v12, 0x0

    const/16 v14, 0x1e

    const-string v10, "\n"

    const/4 v11, 0x0

    invoke-static/range {v9 .. v14}, Lfb/n;->I(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsb/k;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, LDb/z0;

    invoke-static {v8, v0, v7, v3, v6}, Lcom/sec/android/app/sbrowser/autofill/password/k;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x3a

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_9

    const-string p0, " no members found"

    goto :goto_3

    :cond_9
    const-string p0, "\n"

    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_3
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, LDb/z0;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_a
    invoke-static {v5}, Lfb/n;->U(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, LJb/P;

    :goto_4
    return-object v1

    :cond_b
    new-instance v1, LDb/z0;

    invoke-static {v8, v0, v7, v3, v6}, Lcom/sec/android/app/sbrowser/autofill/password/k;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, LDb/z0;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    sget-object p0, LDb/G0;->a:Lhc/b;

    invoke-virtual {v3}, LDb/r0;->l()LJb/P;

    move-result-object p0

    invoke-static {p0}, LDb/G0;->b(LJb/P;)LG5/H;

    move-result-object p0

    instance-of v5, p0, LDb/n;

    if-eqz v5, :cond_15

    check-cast p0, LDb/n;

    sget-object v5, Lgc/h;->a:Lic/g;

    iget-object v5, p0, LDb/n;->c:Lcc/I;

    iget-object v6, p0, LDb/n;->e:Lec/g;

    iget-object v7, p0, LDb/n;->f:LX4/i;

    invoke-static {v5, v6, v7, v4}, Lgc/h;->b(Lcc/I;Lec/g;LX4/i;Z)Lgc/d;

    move-result-object v6

    if-eqz v6, :cond_18

    iget-object p0, p0, LDb/n;->b:LJb/P;

    invoke-interface {p0}, LJb/d;->d()LJb/c;

    move-result-object v7

    sget-object v8, LJb/c;->FAKE_OVERRIDE:LJb/c;

    if-ne v7, v8, :cond_c

    goto :goto_7

    :cond_c
    invoke-interface {p0}, LJb/l;->k()LJb/l;

    move-result-object v7

    if-eqz v7, :cond_14

    invoke-static {v7}, Lkc/e;->l(LJb/l;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v7}, LJb/l;->k()LJb/l;

    move-result-object v1

    sget-object v8, LJb/g;->CLASS:LJb/g;

    invoke-static {v1, v8}, Lkc/e;->n(LJb/l;LJb/g;)Z

    move-result v8

    if-nez v8, :cond_d

    sget-object v8, LJb/g;->ENUM_CLASS:LJb/g;

    invoke-static {v1, v8}, Lkc/e;->n(LJb/l;LJb/g;)Z

    move-result v1

    if-eqz v1, :cond_e

    :cond_d
    check-cast v7, LJb/f;

    sget-object v1, LGb/d;->a:Ljava/util/LinkedHashSet;

    invoke-static {v7}, LG5/H2;->d(LJb/f;)Z

    move-result v1

    if-nez v1, :cond_e

    :goto_5
    move v0, v4

    goto :goto_7

    :cond_e
    invoke-interface {p0}, LJb/l;->k()LJb/l;

    move-result-object v1

    invoke-static {v1}, Lkc/e;->l(LJb/l;)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {p0}, LJb/P;->p0()LMb/t;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {v1}, LF3/f;->u()LKb/h;

    move-result-object v1

    sget-object v7, LSb/w;->a:Lhc/c;

    invoke-interface {v1, v7}, LKb/h;->m0(Lhc/c;)Z

    move-result v1

    if-eqz v1, :cond_f

    move v1, v4

    goto :goto_6

    :cond_f
    invoke-interface {p0}, LKb/a;->u()LKb/h;

    move-result-object v1

    sget-object v7, LSb/w;->a:Lhc/c;

    invoke-interface {v1, v7}, LKb/h;->m0(Lhc/c;)Z

    move-result v1

    :goto_6
    if-eqz v1, :cond_10

    goto :goto_5

    :cond_10
    :goto_7
    iget-object v1, v3, LDb/r0;->c:LDb/I;

    if-nez v0, :cond_13

    invoke-static {v5}, Lgc/h;->d(Lcc/I;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_8

    :cond_11
    invoke-interface {p0}, LJb/l;->k()LJb/l;

    move-result-object p0

    instance-of v0, p0, LJb/f;

    if-eqz v0, :cond_12

    check-cast p0, LJb/f;

    invoke-static {p0}, LDb/I0;->k(LJb/f;)Ljava/lang/Class;

    move-result-object p0

    goto :goto_9

    :cond_12
    invoke-interface {v1}, Ltb/d;->a()Ljava/lang/Class;

    move-result-object p0

    goto :goto_9

    :cond_13
    :goto_8
    invoke-interface {v1}, Ltb/d;->a()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object p0

    :goto_9
    if-eqz p0, :cond_18

    :try_start_0
    iget-object v0, v6, Lgc/d;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_a

    :cond_14
    const/4 p0, 0x3

    new-array p0, p0, [Ljava/lang/Object;

    const-string v2, "companionObject"

    aput-object v2, p0, v0

    const-string v0, "kotlin/reflect/jvm/internal/impl/load/java/DescriptorsJvmAbiUtil"

    aput-object v0, p0, v4

    const-string v0, "isClassCompanionObjectWithBackingFieldsInOuter"

    aput-object v0, p0, v1

    const-string v0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    instance-of v0, p0, LDb/l;

    if-eqz v0, :cond_16

    check-cast p0, LDb/l;

    iget-object v2, p0, LDb/l;->b:Ljava/lang/reflect/Field;

    goto :goto_a

    :cond_16
    instance-of v0, p0, LDb/m;

    if-eqz v0, :cond_17

    goto :goto_a

    :cond_17
    instance-of p0, p0, LDb/o;

    if-eqz p0, :cond_19

    :catch_0
    :cond_18
    :goto_a
    return-object v2

    :cond_19
    new-instance p0, LI5/b;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
