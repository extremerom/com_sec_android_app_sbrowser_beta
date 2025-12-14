.class public final Lzc/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lzc/t;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lzc/t;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lzc/t;->a:Lzc/t;

    return-void
.end method

.method public static a(Ljava/util/AbstractCollection;Lsb/n;)Ljava/util/ArrayList;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-string v1, "iterator(...)"

    invoke-static {p0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyc/A;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyc/A;

    if-eq v3, v1, :cond_2

    invoke-static {v3}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-interface {p1, v3, v1}, Lsb/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    return-object v0
.end method


# virtual methods
.method public final b(Ljava/util/ArrayList;)Lyc/A;
    .locals 20

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    const/16 v4, 0xa

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyc/A;

    invoke-virtual {v2}, Lyc/w;->F0()Lyc/L;

    move-result-object v5

    instance-of v5, v5, Lyc/v;

    if-eqz v5, :cond_2

    invoke-virtual {v2}, Lyc/w;->F0()Lyc/L;

    move-result-object v5

    invoke-interface {v5}, Lyc/L;->d()Ljava/util/Collection;

    move-result-object v5

    const-string v6, "getSupertypes(...)"

    invoke-static {v5, v6}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Iterable;

    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v5, v4}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lyc/w;

    invoke-static {v5}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-static {v5}, Lyc/c;->E(Lyc/w;)Lyc/A;

    move-result-object v5

    invoke-virtual {v2}, Lyc/w;->G0()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v5, v3}, Lyc/A;->M0(Z)Lyc/A;

    move-result-object v5

    :cond_0
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    sget-object v1, Lzc/s;->START:Lzc/s;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lyc/d0;

    invoke-virtual {v1, v5}, Lzc/s;->a(Lyc/d0;)Lzc/s;

    move-result-object v1

    goto :goto_2

    :cond_4
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, "<this>"

    const/4 v7, 0x0

    if-eqz v5, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lyc/A;

    sget-object v8, Lzc/s;->NOT_NULL:Lzc/s;

    if-ne v1, v8, :cond_8

    instance-of v8, v5, Lzc/h;

    if-eqz v8, :cond_5

    check-cast v5, Lzc/h;

    invoke-static {v5, v6}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v15, Lzc/h;

    iget-object v11, v5, Lzc/h;->d:Lyc/d0;

    const/4 v14, 0x1

    iget-object v9, v5, Lzc/h;->b:LBc/b;

    iget-object v10, v5, Lzc/h;->c:Lzc/i;

    iget-object v12, v5, Lzc/h;->e:Lyc/H;

    iget-boolean v13, v5, Lzc/h;->f:Z

    move-object v8, v15

    invoke-direct/range {v8 .. v14}, Lzc/h;-><init>(LBc/b;Lzc/i;Lyc/d0;Lyc/H;ZZ)V

    move-object v5, v15

    :cond_5
    invoke-static {v5, v6}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v7}, Lyc/e;->p(Lyc/d0;Z)Lyc/n;

    move-result-object v6

    if-eqz v6, :cond_7

    :cond_6
    move-object v5, v6

    goto :goto_4

    :cond_7
    invoke-static {v5}, Lyc/c;->o(Lyc/d0;)Lyc/A;

    move-result-object v6

    if-nez v6, :cond_6

    invoke-virtual {v5, v7}, Lyc/A;->M0(Z)Lyc/A;

    move-result-object v5

    :cond_8
    :goto_4
    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    move-object/from16 v1, p1

    invoke-static {v1, v4}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyc/A;

    invoke-virtual {v4}, Lyc/w;->E0()Lyc/H;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_a
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v4, "Empty collection can\'t be reduced."

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v8, "other"

    if-eqz v5, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lyc/H;

    check-cast v1, Lyc/H;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v8}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, LEc/d;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-virtual {v5}, LEc/d;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_b

    goto :goto_6

    :cond_b
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    sget-object v10, Lyc/H;->b:LA7/h;

    iget-object v10, v10, LA7/h;->a:Ljava/lang/Object;

    check-cast v10, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v10}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v10

    const-string v11, "<get-values>(...)"

    invoke-static {v10, v11}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_f

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v11

    iget-object v12, v1, LEc/d;->a:LEc/a;

    invoke-virtual {v12, v11}, LEc/a;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lyc/i;

    iget-object v13, v5, LEc/d;->a:LEc/a;

    invoke-virtual {v13, v11}, LEc/a;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lyc/i;

    if-nez v12, :cond_d

    if-eqz v11, :cond_c

    invoke-static {v12, v11}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    goto :goto_9

    :cond_c
    const/4 v11, 0x0

    goto :goto_9

    :cond_d
    invoke-static {v11, v12}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    goto :goto_8

    :cond_e
    const/4 v12, 0x0

    :goto_8
    move-object v11, v12

    :goto_9
    invoke-static {v8, v11}, LHc/l;->a(Ljava/util/AbstractCollection;Ljava/lang/Object;)V

    goto :goto_7

    :cond_f
    invoke-static {v8}, LA7/h;->c(Ljava/util/List;)Lyc/H;

    move-result-object v1

    goto :goto_6

    :cond_10
    check-cast v1, Lyc/H;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v0

    if-ne v0, v3, :cond_11

    invoke-static {v2}, Lfb/n;->T(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyc/A;

    goto/16 :goto_11

    :cond_11
    new-instance v0, Lfd/c;

    const-string v15, "isStrictSupertype(Lorg/jetbrains/kotlin/types/KotlinType;Lorg/jetbrains/kotlin/types/KotlinType;)Z"

    const/16 v16, 0x0

    const/4 v11, 0x2

    const-class v13, Lzc/t;

    const-string v14, "isStrictSupertype"

    const/16 v17, 0x1

    move-object v10, v0

    move-object/from16 v12, p0

    invoke-direct/range {v10 .. v17}, Lfd/c;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-static {v2, v0}, Lzc/t;->a(Ljava/util/AbstractCollection;Lsb/n;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    sget-object v5, Lmc/m;->INTERSECTION_TYPE:Lmc/m;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    const/4 v11, 0x2

    if-eqz v10, :cond_12

    const/4 v9, 0x0

    goto/16 :goto_10

    :cond_12
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1e

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    :goto_a
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lyc/A;

    check-cast v4, Lyc/A;

    if-eqz v4, :cond_1a

    if-nez v12, :cond_13

    goto/16 :goto_f

    :cond_13
    invoke-virtual {v4}, Lyc/w;->F0()Lyc/L;

    move-result-object v13

    invoke-virtual {v12}, Lyc/w;->F0()Lyc/L;

    move-result-object v14

    instance-of v15, v13, Lmc/o;

    if-eqz v15, :cond_17

    instance-of v9, v14, Lmc/o;

    if-eqz v9, :cond_17

    check-cast v13, Lmc/o;

    check-cast v14, Lmc/o;

    sget-object v4, Lmc/n;->a:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v4, v4, v9

    if-eq v4, v3, :cond_15

    if-ne v4, v11, :cond_14

    iget-object v4, v13, Lmc/o;->a:Ljava/util/Set;

    check-cast v4, Ljava/lang/Iterable;

    iget-object v9, v14, Lmc/o;->a:Ljava/util/Set;

    check-cast v9, Ljava/lang/Iterable;

    invoke-static {v4, v6}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9, v8}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lfb/n;->k0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v4

    invoke-static {v9, v4}, Lfb/t;->q(Ljava/lang/Iterable;Ljava/util/Collection;)V

    goto :goto_d

    :cond_14
    new-instance v0, LI5/b;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_15
    iget-object v4, v13, Lmc/o;->a:Ljava/util/Set;

    check-cast v4, Ljava/lang/Iterable;

    iget-object v9, v14, Lmc/o;->a:Ljava/util/Set;

    check-cast v9, Ljava/lang/Iterable;

    check-cast v4, Ljava/util/Set;

    check-cast v9, Ljava/util/Set;

    invoke-static {v4, v6}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9, v8}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lfb/n;->k0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v4

    check-cast v9, Ljava/util/Collection;

    instance-of v12, v9, Ljava/util/Collection;

    if-eqz v12, :cond_16

    :goto_b
    check-cast v9, Ljava/util/Collection;

    goto :goto_c

    :cond_16
    invoke-static {v9}, Lfb/n;->g0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v9

    goto :goto_b

    :goto_c
    invoke-interface {v4, v9}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    :goto_d
    new-instance v9, Lmc/o;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v9, v4}, Lmc/o;-><init>(Ljava/util/Set;)V

    sget-object v4, Lyc/H;->b:LA7/h;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lyc/H;->c:Lyc/H;

    const-string v12, "attributes"

    invoke-static {v4, v12}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v12, Lfb/v;->a:Lfb/v;

    sget-object v13, LAc/h;->INTEGER_LITERAL_TYPE_SCOPE:LAc/h;

    const-string v14, "unknown integer literal type"

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v3, v14}, LAc/l;->a(LAc/h;Z[Ljava/lang/String;)LAc/g;

    move-result-object v13

    invoke-static {v12, v13, v4, v9, v7}, Lyc/c;->v(Ljava/util/List;Lrc/o;Lyc/H;Lyc/L;Z)Lyc/A;

    move-result-object v4

    goto/16 :goto_a

    :cond_17
    if-eqz v15, :cond_19

    check-cast v13, Lmc/o;

    iget-object v4, v13, Lmc/o;->a:Ljava/util/Set;

    invoke-interface {v4, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    goto :goto_e

    :cond_18
    const/4 v12, 0x0

    :goto_e
    move-object v4, v12

    goto/16 :goto_a

    :cond_19
    instance-of v9, v14, Lmc/o;

    if-eqz v9, :cond_1a

    check-cast v14, Lmc/o;

    iget-object v9, v14, Lmc/o;->a:Ljava/util/Set;

    invoke-interface {v9, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1a

    goto/16 :goto_a

    :cond_1a
    :goto_f
    const/4 v4, 0x0

    goto/16 :goto_a

    :cond_1b
    move-object v9, v4

    check-cast v9, Lyc/A;

    :goto_10
    if-eqz v9, :cond_1c

    move-object v0, v9

    goto :goto_11

    :cond_1c
    new-instance v3, Lfd/c;

    sget-object v4, Lzc/k;->b:Lzc/j;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v14, Lzc/j;->b:Lzc/l;

    const-string v17, "equalTypes(Lorg/jetbrains/kotlin/types/KotlinType;Lorg/jetbrains/kotlin/types/KotlinType;)Z"

    const/16 v18, 0x0

    const/4 v13, 0x2

    const-class v15, Lzc/l;

    const-string v16, "equalTypes"

    const/16 v19, 0x2

    move-object v12, v3

    invoke-direct/range {v12 .. v19}, Lfd/c;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-static {v0, v3}, Lzc/t;->a(Ljava/util/AbstractCollection;Lsb/n;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v3, v11, :cond_1d

    invoke-static {v0}, Lfb/n;->T(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyc/A;

    goto :goto_11

    :cond_1d
    new-instance v0, Lyc/v;

    invoke-direct {v0, v2}, Lyc/v;-><init>(Ljava/util/AbstractCollection;)V

    invoke-virtual {v0}, Lyc/v;->f()Lyc/A;

    move-result-object v0

    :goto_11
    invoke-virtual {v0, v1}, Lyc/A;->N0(Lyc/H;)Lyc/A;

    move-result-object v0

    return-object v0

    :cond_1e
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
