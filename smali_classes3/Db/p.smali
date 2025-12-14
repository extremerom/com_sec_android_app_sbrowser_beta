.class public final LDb/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/a;


# instance fields
.field public final synthetic a:I

.field public final b:LDb/s;


# direct methods
.method public synthetic constructor <init>(LDb/s;I)V
    .locals 0

    iput p2, p0, LDb/p;->a:I

    iput-object p1, p0, LDb/p;->b:LDb/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, LDb/p;->b:LDb/s;

    const/4 v3, 0x1

    iget p0, p0, LDb/p;->a:I

    packed-switch p0, :pswitch_data_0

    invoke-interface {v2}, LAb/b;->o()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {v2}, LDb/s;->d()LEb/g;

    move-result-object p0

    invoke-interface {p0}, LEb/g;->q()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lfb/n;->L(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    instance-of v1, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_0

    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    const-class v3, Lib/c;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    const-string v1, "getActualTypeArguments(...)"

    invoke-static {p0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lfb/l;->z([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v1, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v1, :cond_2

    check-cast p0, Ljava/lang/reflect/WildcardType;

    goto :goto_2

    :cond_2
    move-object p0, v0

    :goto_2
    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-static {p0}, Lfb/l;->r([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/Type;

    :cond_3
    if-nez v0, :cond_4

    invoke-virtual {v2}, LDb/s;->d()LEb/g;

    move-result-object p0

    invoke-interface {p0}, LEb/g;->p()Ljava/lang/reflect/Type;

    move-result-object v0

    :cond_4
    return-object v0

    :pswitch_0
    invoke-virtual {v2}, LDb/s;->h()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_5

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LAb/l;

    check-cast v0, LDb/b0;

    invoke-virtual {v0}, LDb/b0;->c()LDb/v0;

    move-result-object v0

    invoke-static {v0}, LDb/I0;->h(LDb/v0;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v1, v3

    :cond_7
    :goto_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {v2}, LDb/s;->h()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v2}, LAb/b;->o()Z

    move-result v5

    add-int/2addr v5, v4

    iget-object v2, v2, LDb/s;->b:Ljava/lang/Object;

    invoke-interface {v2}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_b

    move-object v4, p0

    check-cast v4, Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v6, v1

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LAb/l;

    check-cast v7, LDb/b0;

    iget-object v8, v7, LDb/b0;->c:LAb/k;

    sget-object v9, LAb/k;->VALUE:LAb/k;

    if-ne v8, v9, :cond_a

    invoke-interface {v2}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-virtual {v7}, LDb/b0;->c()LDb/v0;

    move-result-object v8

    invoke-static {v8}, LDb/I0;->h(LDb/v0;)Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {v7}, LDb/b0;->c()LDb/v0;

    move-result-object v7

    iget-object v7, v7, LDb/v0;->a:Lyc/w;

    invoke-static {v7}, Lyc/c;->b(Lyc/w;)Lyc/A;

    move-result-object v7

    invoke-static {v7}, LG5/r2;->f(Lyc/A;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-static {v7}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    goto :goto_5

    :cond_8
    move v7, v3

    goto :goto_5

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Check if parametersNeedMFVCFlattening is true before"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    move v7, v1

    :goto_5
    add-int/2addr v6, v7

    goto :goto_4

    :cond_b
    move-object v2, p0

    check-cast v2, Ljava/lang/Iterable;

    instance-of v4, v2, Ljava/util/Collection;

    if-eqz v4, :cond_c

    move-object v4, v2

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_c

    move v6, v1

    goto :goto_7

    :cond_c
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v6, v1

    :cond_d
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LAb/l;

    check-cast v4, LDb/b0;

    iget-object v4, v4, LDb/b0;->c:LAb/k;

    sget-object v7, LAb/k;->VALUE:LAb/k;

    if-ne v4, v7, :cond_d

    add-int/2addr v6, v3

    if-ltz v6, :cond_e

    goto :goto_6

    :cond_e
    invoke-static {}, Lfb/o;->k()V

    throw v0

    :cond_f
    :goto_7
    add-int/lit8 v6, v6, 0x1f

    div-int/lit8 v6, v6, 0x20

    add-int v2, v5, v6

    add-int/2addr v2, v3

    new-array v2, v2, [Ljava/lang/Object;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_10
    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LAb/l;

    check-cast v4, LDb/b0;

    invoke-virtual {v4}, LDb/b0;->a()LJb/N;

    move-result-object v7

    instance-of v8, v7, LMb/T;

    if-eqz v8, :cond_11

    check-cast v7, LMb/T;

    goto :goto_9

    :cond_11
    move-object v7, v0

    :goto_9
    if-eqz v7, :cond_12

    invoke-static {v7}, Loc/d;->a(LMb/T;)Z

    move-result v7

    goto :goto_a

    :cond_12
    move v7, v1

    :goto_a
    iget v8, v4, LDb/b0;->b:I

    if-eqz v7, :cond_18

    invoke-virtual {v4}, LDb/b0;->c()LDb/v0;

    move-result-object v7

    sget-object v9, LDb/I0;->a:Lhc/c;

    iget-object v7, v7, LDb/v0;->a:Lyc/w;

    if-eqz v7, :cond_13

    invoke-static {v7}, Lkc/i;->c(Lyc/w;)Z

    move-result v7

    if-ne v7, v3, :cond_13

    goto :goto_e

    :cond_13
    invoke-virtual {v4}, LDb/b0;->c()LDb/v0;

    move-result-object v4

    iget-object v7, v4, LDb/v0;->b:LDb/B0;

    if-eqz v7, :cond_14

    invoke-virtual {v7}, LDb/B0;->invoke()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/reflect/Type;

    goto :goto_b

    :cond_14
    move-object v9, v0

    :goto_b
    if-nez v9, :cond_17

    if-eqz v7, :cond_15

    invoke-virtual {v7}, LDb/B0;->invoke()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/reflect/Type;

    goto :goto_c

    :cond_15
    move-object v7, v0

    :goto_c
    if-eqz v7, :cond_16

    move-object v9, v7

    goto :goto_d

    :cond_16
    invoke-static {v4, v1}, LAb/E;->c(Ltb/l;Z)Ljava/lang/reflect/Type;

    move-result-object v4

    move-object v9, v4

    :cond_17
    :goto_d
    invoke-static {v9}, LDb/I0;->e(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v8

    goto :goto_8

    :cond_18
    :goto_e
    invoke-virtual {v4}, LDb/b0;->a()LJb/N;

    move-result-object v7

    instance-of v9, v7, LMb/T;

    if-eqz v9, :cond_10

    check-cast v7, LMb/T;

    iget-object v7, v7, LMb/T;->k:Lyc/w;

    if-eqz v7, :cond_10

    invoke-virtual {v4}, LDb/b0;->c()LDb/v0;

    move-result-object v4

    invoke-static {v4}, LG5/z;->c(Ltb/l;)LAb/c;

    move-result-object v4

    invoke-static {v4}, LG5/D;->c(LAb/c;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v7

    if-eqz v7, :cond_19

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    const-string v7, "run(...)"

    invoke-static {v4, v7}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v4, v2, v8

    goto/16 :goto_8

    :cond_19
    new-instance p0, LDb/z0;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot instantiate the default empty array of type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", because it is not an array type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, LDb/z0;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1a
    move p0, v1

    :goto_f
    if-ge p0, v6, :cond_1b

    add-int v0, v5, p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v0

    add-int/2addr p0, v3

    goto :goto_f

    :cond_1b
    return-object v2

    :pswitch_2
    invoke-virtual {v2}, LDb/s;->g()LJb/d;

    move-result-object p0

    invoke-interface {p0}, LJb/b;->m()Ljava/util/List;

    move-result-object p0

    const-string v0, "getTypeParameters(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LJb/W;

    new-instance v3, LDb/x0;

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-direct {v3, v2, v1}, LDb/x0;-><init>(LDb/y0;LJb/W;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_1c
    return-object v0

    :pswitch_3
    new-instance p0, LDb/v0;

    invoke-virtual {v2}, LDb/s;->g()LJb/d;

    move-result-object v0

    invoke-interface {v0}, LJb/b;->p()Lyc/w;

    move-result-object v0

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    new-instance v1, LDb/p;

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, LDb/p;-><init>(LDb/s;I)V

    invoke-direct {p0, v0, v1}, LDb/v0;-><init>(Lyc/w;Lsb/a;)V

    return-object p0

    :pswitch_4
    invoke-virtual {v2}, LDb/s;->g()LJb/d;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, LDb/s;->j()Z

    move-result v4

    if-nez v4, :cond_1e

    invoke-static {p0}, LDb/I0;->g(LJb/d;)LMb/w;

    move-result-object v4

    if-eqz v4, :cond_1d

    new-instance v5, LDb/b0;

    sget-object v6, LAb/k;->INSTANCE:LAb/k;

    new-instance v7, LDb/q;

    invoke-direct {v7, v4, v1}, LDb/q;-><init>(LMb/w;I)V

    invoke-direct {v5, v2, v1, v6, v7}, LDb/b0;-><init>(LDb/s;ILAb/k;Lsb/a;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v3

    goto :goto_11

    :cond_1d
    move v4, v1

    :goto_11
    invoke-interface {p0}, LJb/b;->N()LMb/w;

    move-result-object v5

    if-eqz v5, :cond_1f

    new-instance v6, LDb/b0;

    add-int/lit8 v7, v4, 0x1

    sget-object v8, LAb/k;->EXTENSION_RECEIVER:LAb/k;

    new-instance v9, LDb/q;

    invoke-direct {v9, v5, v3}, LDb/q;-><init>(LMb/w;I)V

    invoke-direct {v6, v2, v4, v8, v9}, LDb/b0;-><init>(LDb/s;ILAb/k;Lsb/a;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v7

    goto :goto_12

    :cond_1e
    move v4, v1

    :cond_1f
    :goto_12
    invoke-interface {p0}, LJb/b;->H()Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v5

    :goto_13
    if-ge v1, v5, :cond_20

    new-instance v6, LDb/b0;

    add-int/lit8 v7, v4, 0x1

    sget-object v8, LAb/k;->VALUE:LAb/k;

    new-instance v9, LDb/r;

    invoke-direct {v9, p0, v1}, LDb/r;-><init>(LJb/d;I)V

    invoke-direct {v6, v2, v4, v8, v9}, LDb/b0;-><init>(LDb/s;ILAb/k;Lsb/a;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v1, v3

    move v4, v7

    goto :goto_13

    :cond_20
    invoke-virtual {v2}, LDb/s;->i()Z

    move-result v1

    if-eqz v1, :cond_21

    instance-of p0, p0, LUb/a;

    if-eqz p0, :cond_21

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-le p0, v3, :cond_21

    new-instance p0, LDb/f;

    invoke-direct {p0, v3}, LDb/f;-><init>(I)V

    invoke-static {v0, p0}, Lfb/s;->p(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_21
    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    return-object v0

    :pswitch_5
    invoke-virtual {v2}, LDb/s;->g()LJb/d;

    move-result-object p0

    invoke-static {p0}, LDb/I0;->d(LKb/a;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
