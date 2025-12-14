.class public final LDb/E;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/a;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LDb/E;->a:I

    iput-object p2, p0, LDb/E;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 33

    move-object/from16 v0, p0

    sget-object v1, Lfb/w;->a:Lfb/w;

    const/4 v2, 0x1

    sget-object v3, Lfb/v;->a:Lfb/v;

    const/16 v4, 0xa

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, v0, LDb/E;->b:Ljava/lang/Object;

    iget v0, v0, LDb/E;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast v8, Lyc/F;

    iget-object v0, v8, Lyc/F;->b:Ljava/lang/Object;

    check-cast v0, LJb/W;

    invoke-static {v0}, Lyc/c;->x(LJb/W;)Lyc/w;

    move-result-object v0

    return-object v0

    :pswitch_0
    new-instance v0, Lyc/g;

    check-cast v8, Lyc/h;

    invoke-virtual {v8}, Lyc/h;->f()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Lyc/g;-><init>(Ljava/util/Collection;)V

    return-object v0

    :pswitch_1
    check-cast v8, Lwc/u;

    iget-object v0, v8, Lwc/u;->l:Luc/m;

    iget-object v1, v0, Luc/m;->a:Ljava/lang/Object;

    check-cast v1, Luc/k;

    iget-object v1, v1, Luc/k;->e:Luc/c;

    iget-object v2, v8, Lwc/u;->m:Lcc/Y;

    iget-object v0, v0, Luc/m;->b:Ljava/lang/Object;

    check-cast v0, Lec/g;

    invoke-interface {v1, v2, v0}, Luc/e;->i(Lcc/Y;Lec/g;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lfb/n;->g0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :pswitch_2
    check-cast v8, Lwc/p;

    invoke-virtual {v8}, Lwc/p;->n()Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v8}, Lwc/p;->m()Ljava/util/Set;

    move-result-object v1

    iget-object v2, v8, Lwc/p;->c:Lwc/o;

    iget-object v2, v2, Lwc/o;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v1, v2}, Lfb/F;->e(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    move-result-object v1

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v1, v0}, Lfb/F;->e(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    move-result-object v7

    :goto_0
    return-object v7

    :pswitch_3
    check-cast v8, Lcom/google/firebase/messaging/q;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, v8, Lcom/google/firebase/messaging/q;->d:Ljava/lang/Object;

    check-cast v1, Lwc/i;

    iget-object v2, v1, Lwc/i;->n:LWb/h;

    invoke-virtual {v2}, Lyc/h;->i()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyc/w;

    invoke-virtual {v3}, Lyc/w;->G()Lrc/o;

    move-result-object v3

    invoke-static {v3, v7, v5}, LG5/G;->g(Lrc/q;Lrc/f;I)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LJb/l;

    instance-of v6, v4, LMb/M;

    if-nez v6, :cond_3

    instance-of v6, v4, LJb/P;

    if-eqz v6, :cond_2

    :cond_3
    check-cast v4, LJb/d;

    invoke-interface {v4}, LJb/l;->getName()Lhc/f;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iget-object v2, v1, Lwc/i;->e:Lcc/k;

    iget-object v3, v2, Lcc/k;->q:Ljava/util/List;

    const-string v4, "getFunctionList(...)"

    invoke-static {v3, v4}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    iget-object v5, v1, Lwc/i;->l:Luc/m;

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcc/A;

    iget-object v5, v5, Luc/m;->b:Ljava/lang/Object;

    check-cast v5, Lec/g;

    iget v4, v4, Lcc/A;->f:I

    invoke-static {v5, v4}, LG5/m2;->c(Lec/g;I)Lhc/f;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    iget-object v1, v2, Lcc/k;->r:Ljava/util/List;

    const-string v2, "getPropertyList(...)"

    invoke-static {v1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcc/I;

    iget-object v3, v5, Luc/m;->b:Ljava/lang/Object;

    check-cast v3, Lec/g;

    iget v2, v2, Lcc/I;->f:I

    invoke-static {v3, v2}, LG5/m2;->c(Lec/g;I)Lhc/f;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    invoke-static {v0, v0}, Lfb/F;->e(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    move-result-object v0

    return-object v0

    :pswitch_4
    check-cast v8, Lvc/c;

    iget-object v0, v8, Lvc/c;->j:Lo3/i;

    iget-object v0, v0, Lo3/i;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lhc/b;

    invoke-virtual {v3}, Lhc/b;->g()Z

    move-result v5

    if-nez v5, :cond_7

    sget-object v5, Luc/i;->c:Ljava/util/Set;

    invoke-interface {v5, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v1, v4}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhc/b;

    invoke-virtual {v2}, Lhc/b;->f()Lhc/f;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_9
    return-object v0

    :pswitch_5
    check-cast v8, Lrc/t;

    iget-object v0, v8, Lrc/t;->b:Lrc/o;

    invoke-static {v0, v7, v5}, LG5/G;->g(Lrc/q;Lrc/f;I)Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v8, v0}, Lrc/t;->i(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0

    :pswitch_6
    check-cast v8, Lyc/Y;

    invoke-virtual {v8}, Lyc/Y;->f()Lyc/U;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lyc/Y;

    invoke-direct {v1, v0}, Lyc/Y;-><init>(Lyc/U;)V

    return-object v1

    :pswitch_7
    check-cast v8, Lrc/h;

    invoke-virtual {v8}, Lrc/h;->h()Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v4, v8, Lrc/h;->b:LMb/c;

    invoke-interface {v4}, LJb/i;->w()Lyc/L;

    move-result-object v6

    invoke-interface {v6}, Lyc/L;->d()Ljava/util/Collection;

    move-result-object v6

    const-string v9, "getSupertypes(...)"

    invoke-static {v6, v9}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Ljava/lang/Iterable;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lyc/w;

    invoke-virtual {v10}, Lyc/w;->G()Lrc/o;

    move-result-object v10

    invoke-static {v10, v7, v5}, LG5/G;->g(Lrc/q;Lrc/f;I)Ljava/util/Collection;

    move-result-object v10

    check-cast v10, Ljava/lang/Iterable;

    invoke-static {v10, v9}, Lfb/t;->q(Ljava/lang/Iterable;Ljava/util/Collection;)V

    goto :goto_6

    :cond_a
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_b
    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    instance-of v9, v7, LJb/d;

    if-eqz v9, :cond_b

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_c
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v9, v7

    check-cast v9, LJb/d;

    invoke-interface {v9}, LJb/l;->getName()Lhc/f;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_d

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    check-cast v10, Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_e
    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_15

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    const-string v9, "component1(...)"

    invoke-static {v7, v9}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Lhc/f;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    check-cast v6, Ljava/lang/Iterable;

    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_11

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, LJb/d;

    instance-of v11, v11, LJb/v;

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_10

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v9, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    check-cast v12, Ljava/util/List;

    invoke-interface {v12, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_11
    invoke-virtual {v9}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    sget-object v11, Lkc/o;->c:Lkc/o;

    move-object v12, v9

    check-cast v12, Ljava/util/Collection;

    if-eqz v10, :cond_13

    move-object v9, v0

    check-cast v9, Ljava/lang/Iterable;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_12
    :goto_b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_14

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    move-object v14, v13

    check-cast v14, LJb/v;

    check-cast v14, LMb/n;

    invoke-virtual {v14}, LMb/n;->getName()Lhc/f;

    move-result-object v14

    invoke-static {v14, v7}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_12

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_13
    move-object v10, v3

    :cond_14
    move-object v13, v10

    check-cast v13, Ljava/util/Collection;

    new-instance v14, Lrc/g;

    invoke-direct {v14, v2, v8}, Lrc/g;-><init>(Ljava/util/ArrayList;Lrc/h;)V

    move-object v9, v11

    move-object v10, v7

    move-object v11, v12

    move-object v12, v13

    move-object v13, v4

    invoke-virtual/range {v9 .. v14}, Lkc/o;->h(Lhc/f;Ljava/util/Collection;Ljava/util/Collection;LJb/f;Lkc/p;)V

    goto :goto_a

    :cond_15
    invoke-static {v2}, LHc/l;->d(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0, v1}, Lfb/n;->R(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    :pswitch_8
    check-cast v8, Lmc/o;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    throw v7

    :pswitch_9
    check-cast v8, Lyc/Q;

    invoke-virtual {v8}, Lyc/Q;->b()Lyc/w;

    move-result-object v0

    const-string v1, "getType(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :pswitch_a
    sget-object v0, Ljc/d;->o:Ljc/d;

    check-cast v8, Ljc/j;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v8, Ljc/j;->a:Ljc/o;

    new-instance v3, Ljc/o;

    invoke-direct {v3}, Ljc/o;-><init>()V

    const-class v4, Ljc/o;

    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-static {v5}, Ltb/z;->g([Ljava/lang/Object;)Lbd/e;

    move-result-object v5

    :cond_16
    :goto_c
    invoke-virtual {v5}, Lbd/e;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1a

    invoke-virtual {v5}, Lbd/e;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/reflect/Field;

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v9

    and-int/lit8 v9, v9, 0x8

    if-nez v9, :cond_16

    invoke-virtual {v8, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v8, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    instance-of v10, v9, Ljc/n;

    if-eqz v10, :cond_17

    check-cast v9, Ljc/n;

    goto :goto_d

    :cond_17
    move-object v9, v7

    :goto_d
    if-nez v9, :cond_18

    goto :goto_c

    :cond_18
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "getName(...)"

    invoke-static {v10, v11}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "is"

    invoke-static {v10, v12, v6}, LKc/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    sget-object v10, Ltb/x;->a:Ltb/y;

    invoke-virtual {v10, v4}, Ltb/y;->b(Ljava/lang/Class;)LAb/c;

    move-result-object v10

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v11}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_19

    invoke-virtual {v12, v6}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-static {v11}, Ljava/lang/Character;->toUpperCase(C)C

    invoke-virtual {v12, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "substring(...)"

    invoke-static {v11, v12}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_19
    new-instance v11, Ltb/p;

    sget-object v11, Ltb/c;->NO_RECEIVER:Ljava/lang/Object;

    check-cast v10, Ltb/d;

    invoke-interface {v10}, Ltb/d;->a()Ljava/lang/Class;

    iget-object v9, v9, Ljc/n;->a:Ljava/lang/Object;

    new-instance v10, Ljc/n;

    invoke-direct {v10, v9, v3}, Ljc/n;-><init>(Ljava/lang/Object;Ljc/o;)V

    invoke-virtual {v8, v3, v10}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_c

    :cond_1a
    invoke-virtual {v0, v3}, Ljc/d;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iput-boolean v2, v3, Ljc/o;->a:Z

    new-instance v0, Ljc/j;

    invoke-direct {v0, v3}, Ljc/j;-><init>(Ljc/o;)V

    return-object v0

    :pswitch_b
    check-cast v8, LWb/d;

    iget-object v0, v8, LWb/d;->c:LWb/s;

    iget-object v0, v0, LWb/s;->j:Lxc/i;

    sget-object v1, LWb/s;->n:[LAb/u;

    aget-object v1, v1, v6

    invoke-static {v0, v1}, LG5/C2;->e(Lxc/m;LAb/u;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1b
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LOb/b;

    iget-object v3, v8, LWb/d;->b:Lo3/i;

    iget-object v3, v3, Lo3/i;->a:Ljava/lang/Object;

    check-cast v3, LVb/a;

    iget-object v4, v8, LWb/d;->c:LWb/s;

    iget-object v3, v3, LVb/a;->d:Lac/f;

    invoke-virtual {v3, v4, v2}, Lac/f;->a(LJb/H;LOb/b;)Lwc/q;

    move-result-object v2

    if-eqz v2, :cond_1b

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_1c
    invoke-static {v1}, LG5/L2;->i(Ljava/util/ArrayList;)LHc/g;

    move-result-object v0

    new-array v1, v6, [Lrc/o;

    invoke-virtual {v0, v1}, LHc/g;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrc/o;

    return-object v0

    :pswitch_c
    check-cast v8, LTb/j;

    iget-object v0, v8, LTb/b;->d:LYb/a;

    instance-of v2, v0, LPb/g;

    if-eqz v2, :cond_1d

    sget-object v2, LTb/e;->a:Ljava/lang/Object;

    check-cast v0, LPb/g;

    invoke-virtual {v0}, LPb/g;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, LTb/e;->a(Ljava/util/List;)Lmc/b;

    move-result-object v0

    goto :goto_f

    :cond_1d
    instance-of v2, v0, LPb/s;

    if-eqz v2, :cond_1e

    sget-object v2, LTb/e;->a:Ljava/lang/Object;

    invoke-static {v0}, LG5/o3;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, LTb/e;->a(Ljava/util/List;)Lmc/b;

    move-result-object v0

    goto :goto_f

    :cond_1e
    move-object v0, v7

    :goto_f
    if-eqz v0, :cond_1f

    sget-object v2, LTb/c;->b:Lhc/f;

    new-instance v3, Ldb/j;

    invoke-direct {v3, v2, v0}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v3}, Lfb/C;->h(Ldb/j;)Ljava/util/Map;

    move-result-object v7

    :cond_1f
    if-nez v7, :cond_20

    goto :goto_10

    :cond_20
    move-object v1, v7

    :goto_10
    return-object v1

    :pswitch_d
    sget-object v0, LTb/e;->a:Ljava/lang/Object;

    check-cast v8, LTb/i;

    iget-object v0, v8, LTb/b;->d:LYb/a;

    instance-of v2, v0, LPb/s;

    if-eqz v2, :cond_21

    check-cast v0, LPb/s;

    goto :goto_11

    :cond_21
    move-object v0, v7

    :goto_11
    if-eqz v0, :cond_22

    sget-object v2, LTb/e;->b:Ljava/lang/Object;

    iget-object v0, v0, LPb/s;->b:Ljava/lang/Enum;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object v0

    invoke-virtual {v0}, Lhc/f;->c()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LKb/m;

    if-eqz v0, :cond_22

    new-instance v2, Lmc/i;

    sget-object v3, LGb/p;->v:Lhc/c;

    const-string v4, "topLevelFqName"

    invoke-static {v3, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lhc/b;

    invoke-virtual {v3}, Lhc/c;->b()Lhc/c;

    move-result-object v5

    iget-object v3, v3, Lhc/c;->a:Lhc/d;

    invoke-virtual {v3}, Lhc/d;->f()Lhc/f;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Lhc/b;-><init>(Lhc/c;Lhc/f;)V

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object v0

    invoke-direct {v2, v4, v0}, Lmc/i;-><init>(Lhc/b;Lhc/f;)V

    goto :goto_12

    :cond_22
    move-object v2, v7

    :goto_12
    if-eqz v2, :cond_23

    sget-object v0, LTb/c;->c:Lhc/f;

    new-instance v3, Ldb/j;

    invoke-direct {v3, v0, v2}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v3}, Lfb/C;->h(Ldb/j;)Ljava/util/Map;

    move-result-object v7

    :cond_23
    if-nez v7, :cond_24

    goto :goto_13

    :cond_24
    move-object v1, v7

    :goto_13
    return-object v1

    :pswitch_e
    invoke-static {}, LG5/o3;->b()Lgb/c;

    move-result-object v0

    check-cast v8, LSb/v;

    iget-object v1, v8, LSb/v;->a:LSb/C;

    invoke-virtual {v1}, LSb/C;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgb/c;->add(Ljava/lang/Object;)Z

    iget-object v1, v8, LSb/v;->b:LSb/C;

    if-eqz v1, :cond_25

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "under-migration:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, LSb/C;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgb/c;->add(Ljava/lang/Object;)Z

    :cond_25
    iget-object v1, v8, LSb/v;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "@"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LSb/C;

    invoke-virtual {v2}, LSb/C;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lgb/c;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_26
    invoke-static {v0}, LG5/o3;->a(Lgb/c;)Lgb/c;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lgb/c;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    :pswitch_f
    check-cast v8, LMb/S;

    iget-object v0, v8, LMb/S;->m:Ldb/o;

    invoke-virtual {v0}, Ldb/o;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0

    :pswitch_10
    check-cast v8, Ljava/util/List;

    return-object v8

    :pswitch_11
    check-cast v8, LMb/r;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, v8, LMb/r;->e:LMb/s;

    iget-object v1, v1, LMb/s;->i:Lxc/i;

    invoke-virtual {v1}, Lxc/i;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhc/f;

    sget-object v3, LRb/c;->FOR_NON_TRACKED_SCOPE:LRb/c;

    invoke-virtual {v8, v2, v3}, LMb/r;->d(Lhc/f;LRb/a;)Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v8, v2, v3}, LMb/r;->g(Lhc/f;LRb/c;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_15

    :cond_27
    return-object v0

    :pswitch_12
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Scope for type parameter "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast v8, LDb/J;

    iget-object v1, v8, LDb/J;->b:Ljava/lang/Object;

    check-cast v1, Lhc/f;

    invoke-virtual {v1}, Lhc/f;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v8, LDb/J;->c:Ljava/lang/Object;

    check-cast v1, LMb/i;

    invoke-virtual {v1}, LMb/i;->getUpperBounds()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, LG5/H;->b(Ljava/lang/String;Ljava/util/Collection;)Lrc/o;

    move-result-object v0

    return-object v0

    :pswitch_13
    move-object v0, v8

    check-cast v0, LMb/g;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v1, v0

    check-cast v1, Lwc/t;

    invoke-virtual {v1}, Lwc/t;->U0()LJb/f;

    move-result-object v5

    if-nez v5, :cond_28

    goto/16 :goto_1d

    :cond_28
    invoke-interface {v5}, LJb/f;->h()Ljava/util/Collection;

    move-result-object v5

    const-string v8, "getConstructors(...)"

    invoke-static {v5, v8}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Iterable;

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_16
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_33

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, LMb/j;

    sget-object v9, LMb/P;->H:LMb/E;

    invoke-static {v8}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v9, "storageManager"

    iget-object v10, v0, LMb/g;->f:Lxc/o;

    invoke-static {v10, v9}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lwc/t;->U0()LJb/f;

    move-result-object v9

    if-nez v9, :cond_29

    move-object v14, v7

    goto :goto_17

    :cond_29
    invoke-virtual {v1}, Lwc/t;->V0()Lyc/A;

    move-result-object v9

    invoke-static {v9}, Lyc/Y;->d(Lyc/w;)Lyc/Y;

    move-result-object v9

    move-object v14, v9

    :goto_17
    if-nez v14, :cond_2a

    :goto_18
    move-object v13, v7

    move-object v6, v15

    goto/16 :goto_1c

    :cond_2a
    invoke-virtual {v8, v14}, LMb/j;->k1(Lyc/Y;)LMb/j;

    move-result-object v22

    if-nez v22, :cond_2b

    goto :goto_18

    :cond_2b
    new-instance v13, LMb/P;

    move-object v9, v8

    check-cast v9, LF3/f;

    invoke-virtual {v9}, LF3/f;->u()LKb/h;

    move-result-object v16

    move-object v12, v8

    check-cast v12, LMb/v;

    invoke-virtual {v12}, LMb/v;->d()LJb/c;

    move-result-object v11

    const-string v8, "getKind(...)"

    invoke-static {v11, v8}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, LMb/o;->e()LJb/S;

    move-result-object v9

    const-string v8, "getSource(...)"

    invoke-static {v9, v8}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v17, 0x0

    move-object v8, v13

    move-object/from16 v18, v9

    move-object v9, v10

    move-object v10, v0

    move-object/from16 v19, v11

    move-object/from16 v11, v22

    move-object/from16 p0, v12

    move-object/from16 v12, v17

    move-object/from16 v32, v13

    move-object/from16 v13, v16

    move-object/from16 v23, v14

    move-object/from16 v14, v19

    move-object v6, v15

    move-object/from16 v15, v18

    invoke-direct/range {v8 .. v15}, LMb/P;-><init>(Lxc/o;LJb/V;LMb/j;LMb/O;LKb/h;LJb/c;LJb/S;)V

    invoke-virtual/range {p0 .. p0}, LMb/v;->H()Ljava/util/List;

    move-result-object v17

    if-eqz v17, :cond_32

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v19, 0x0

    move-object/from16 v16, v32

    move-object/from16 v18, v23

    invoke-static/range {v16 .. v21}, LMb/v;->Y0(LJb/v;Ljava/util/List;Lyc/Y;ZZ[Z)Ljava/util/ArrayList;

    move-result-object v28

    if-nez v28, :cond_2c

    move-object v13, v7

    goto/16 :goto_1c

    :cond_2c
    move-object/from16 v8, v22

    check-cast v8, LMb/v;

    iget-object v8, v8, LMb/v;->h:Lyc/w;

    invoke-virtual {v8}, Lyc/w;->I0()Lyc/d0;

    move-result-object v8

    invoke-static {v8}, Lyc/c;->m(Lyc/w;)Lyc/A;

    move-result-object v8

    invoke-virtual {v1}, Lwc/t;->n()Lyc/A;

    move-result-object v9

    invoke-static {v8, v9}, Lyc/c;->F(Lyc/A;Lyc/A;)Lyc/A;

    move-result-object v29

    move-object/from16 v8, p0

    iget-object v9, v8, LMb/v;->k:LMb/w;

    sget-object v10, LKb/g;->a:LKb/f;

    if-eqz v9, :cond_2d

    invoke-virtual {v9}, LMb/w;->getType()Lyc/w;

    move-result-object v9

    sget-object v11, Lyc/e0;->INVARIANT:Lyc/e0;

    move-object/from16 v12, v23

    invoke-virtual {v12, v9, v11}, Lyc/Y;->g(Lyc/w;Lyc/e0;)Lyc/w;

    move-result-object v9

    move-object/from16 v11, v32

    invoke-static {v11, v9, v10}, Lkc/p;->k(LJb/b;Lyc/w;LKb/h;)LMb/w;

    move-result-object v9

    move-object/from16 v24, v9

    goto :goto_19

    :cond_2d
    move-object/from16 v12, v23

    move-object/from16 v11, v32

    move-object/from16 v24, v7

    :goto_19
    invoke-virtual {v1}, Lwc/t;->U0()LJb/f;

    move-result-object v9

    if-eqz v9, :cond_30

    invoke-virtual {v8}, LMb/v;->r0()Ljava/util/List;

    move-result-object v8

    const-string v13, "getContextReceiverParameters(...)"

    invoke-static {v8, v13}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Ljava/lang/Iterable;

    new-instance v13, Ljava/util/ArrayList;

    invoke-static {v8, v4}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v14, 0x0

    :goto_1a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    add-int/lit8 v16, v14, 0x1

    if-ltz v14, :cond_2e

    check-cast v15, LMb/w;

    invoke-virtual {v15}, LMb/w;->getType()Lyc/w;

    move-result-object v2

    sget-object v4, Lyc/e0;->INVARIANT:Lyc/e0;

    invoke-virtual {v12, v2, v4}, Lyc/Y;->g(Lyc/w;Lyc/e0;)Lyc/w;

    move-result-object v2

    invoke-virtual {v15}, LMb/w;->U0()Lsc/d;

    move-result-object v4

    const-string v15, "null cannot be cast to non-null type org.jetbrains.kotlin.resolve.scopes.receivers.ImplicitContextReceiver"

    invoke-static {v4, v15}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lsc/a;

    invoke-virtual {v4}, Lsc/a;->S0()Lhc/f;

    move-result-object v4

    new-instance v15, LMb/w;

    new-instance v7, Lsc/a;

    invoke-direct {v7, v9, v2, v4}, Lsc/a;-><init>(LJb/f;Lyc/w;Lhc/f;)V

    sget-object v2, Lhc/g;->a:LKc/j;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lhc/g;->b:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x5f

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object v2

    invoke-direct {v15, v9, v7, v10, v2}, LMb/w;-><init>(LJb/l;LF3/f;LKb/h;Lhc/f;)V

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v14, v16

    const/4 v2, 0x1

    const/16 v4, 0xa

    const/4 v7, 0x0

    goto :goto_1a

    :cond_2e
    invoke-static {}, Lfb/o;->l()V

    const/4 v0, 0x0

    throw v0

    :cond_2f
    move-object/from16 v26, v13

    goto :goto_1b

    :cond_30
    move-object/from16 v26, v3

    :goto_1b
    invoke-virtual {v0}, LMb/g;->q()Ljava/util/List;

    move-result-object v27

    sget-object v30, LJb/B;->FINAL:LJb/B;

    const/16 v25, 0x0

    iget-object v2, v0, LMb/g;->g:LJb/p;

    move-object/from16 v23, v11

    move-object/from16 v31, v2

    invoke-virtual/range {v23 .. v31}, LMb/v;->Z0(LMb/w;LMb/w;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lyc/w;LJb/B;LJb/p;)V

    move-object v13, v11

    :goto_1c
    if-eqz v13, :cond_31

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_31
    move-object v15, v6

    const/4 v2, 0x1

    const/16 v4, 0xa

    const/4 v6, 0x0

    const/4 v7, 0x0

    goto/16 :goto_16

    :cond_32
    const/16 v0, 0x1c

    invoke-static {v0}, LMb/v;->D0(I)V

    const/4 v0, 0x0

    throw v0

    :cond_33
    move-object v6, v15

    move-object v3, v6

    :goto_1d
    return-object v3

    :pswitch_14
    check-cast v8, LKb/j;

    iget-object v0, v8, LKb/j;->a:LGb/i;

    iget-object v1, v8, LKb/j;->b:Lhc/c;

    invoke-virtual {v0, v1}, LGb/i;->j(Lhc/c;)LJb/f;

    move-result-object v0

    invoke-interface {v0}, LJb/f;->n()Lyc/A;

    move-result-object v0

    return-object v0

    :pswitch_15
    check-cast v8, LJb/Q;

    iget-object v0, v8, LJb/Q;->b:Lsb/k;

    sget-object v1, Lzc/f;->a:Lzc/f;

    invoke-interface {v0, v1}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrc/o;

    return-object v0

    :pswitch_16
    check-cast v8, LIb/k;

    iget-object v0, v8, LIb/k;->f:LGb/m;

    if-eqz v0, :cond_34

    invoke-virtual {v0}, LGb/m;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LIb/i;

    const/4 v1, 0x0

    iput-object v1, v8, LIb/k;->f:LGb/m;

    return-object v0

    :cond_34
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "JvmBuiltins instance has not been initialized properly"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_17
    check-cast v8, Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v6, 0x0

    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, [Z

    if-eqz v3, :cond_35

    check-cast v1, [Z

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Z)I

    move-result v1

    goto :goto_1f

    :cond_35
    instance-of v3, v1, [C

    if-eqz v3, :cond_36

    check-cast v1, [C

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([C)I

    move-result v1

    goto :goto_1f

    :cond_36
    instance-of v3, v1, [B

    if-eqz v3, :cond_37

    check-cast v1, [B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    goto :goto_1f

    :cond_37
    instance-of v3, v1, [S

    if-eqz v3, :cond_38

    check-cast v1, [S

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([S)I

    move-result v1

    goto :goto_1f

    :cond_38
    instance-of v3, v1, [I

    if-eqz v3, :cond_39

    check-cast v1, [I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    goto :goto_1f

    :cond_39
    instance-of v3, v1, [F

    if-eqz v3, :cond_3a

    check-cast v1, [F

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([F)I

    move-result v1

    goto :goto_1f

    :cond_3a
    instance-of v3, v1, [J

    if-eqz v3, :cond_3b

    check-cast v1, [J

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([J)I

    move-result v1

    goto :goto_1f

    :cond_3b
    instance-of v3, v1, [D

    if-eqz v3, :cond_3c

    check-cast v1, [D

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([D)I

    move-result v1

    goto :goto_1f

    :cond_3c
    instance-of v3, v1, [Ljava/lang/Object;

    if-eqz v3, :cond_3d

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    goto :goto_1f

    :cond_3d
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1f
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    mul-int/lit8 v2, v2, 0x7f

    xor-int/2addr v1, v2

    add-int/2addr v6, v1

    goto/16 :goto_1e

    :cond_3e
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_18
    check-cast v8, LDb/x0;

    iget-object v0, v8, LDb/x0;->a:LJb/W;

    invoke-interface {v0}, LJb/W;->getUpperBounds()Ljava/util/List;

    move-result-object v0

    const-string v1, "getUpperBounds(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyc/w;

    new-instance v3, LDb/v0;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, LDb/v0;-><init>(Lyc/w;Lsb/a;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_20

    :cond_3f
    return-object v1

    :pswitch_19
    new-instance v0, LDb/Q;

    check-cast v8, LDb/S;

    invoke-direct {v0, v8}, LDb/Q;-><init>(LDb/S;)V

    return-object v0

    :pswitch_1a
    new-instance v0, LDb/O;

    check-cast v8, LDb/P;

    invoke-direct {v0, v8}, LDb/O;-><init>(LDb/P;)V

    return-object v0

    :pswitch_1b
    new-instance v0, LDb/M;

    check-cast v8, LDb/N;

    invoke-direct {v0, v8}, LDb/M;-><init>(LDb/N;)V

    return-object v0

    :pswitch_1c
    check-cast v8, LDb/I;

    invoke-interface {v8}, Ltb/d;->a()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, LDb/A0;->a(Ljava/lang/Class;)LOb/e;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
