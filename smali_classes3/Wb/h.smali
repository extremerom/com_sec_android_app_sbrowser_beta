.class public final LWb/h;
.super Lyc/b;
.source "SourceFile"


# instance fields
.field public final synthetic c:I

.field public final d:Lxc/i;

.field public final synthetic e:LMb/c;


# direct methods
.method public constructor <init>(LWb/j;)V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, LWb/h;->c:I

    iput-object p1, p0, LWb/h;->e:LMb/c;

    iget-object v0, p1, LWb/j;->j:Lo3/i;

    iget-object v0, v0, Lo3/i;->a:Ljava/lang/Object;

    check-cast v0, LVb/a;

    iget-object v0, v0, LVb/a;->a:Lxc/l;

    invoke-direct {p0, v0}, Lyc/b;-><init>(Lxc/o;)V

    iget-object v0, p1, LWb/j;->j:Lo3/i;

    iget-object v0, v0, Lo3/i;->a:Ljava/lang/Object;

    check-cast v0, LVb/a;

    iget-object v0, v0, LVb/a;->a:Lxc/l;

    new-instance v1, LWb/g;

    const/4 v2, 0x2

    invoke-direct {v1, p1, v2}, LWb/g;-><init>(LWb/j;I)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lxc/i;

    invoke-direct {p1, v0, v1}, Lxc/h;-><init>(Lxc/l;Lsb/a;)V

    iput-object p1, p0, LWb/h;->d:Lxc/i;

    return-void
.end method

.method public constructor <init>(Lwc/i;)V
    .locals 3

    const/4 v0, 0x1

    iput v0, p0, LWb/h;->c:I

    iput-object p1, p0, LWb/h;->e:LMb/c;

    iget-object v0, p1, Lwc/i;->l:Luc/m;

    iget-object v0, v0, Luc/m;->a:Ljava/lang/Object;

    check-cast v0, Luc/k;

    iget-object v0, v0, Luc/k;->a:Lxc/o;

    invoke-direct {p0, v0}, Lyc/b;-><init>(Lxc/o;)V

    iget-object v0, p1, Lwc/i;->l:Luc/m;

    iget-object v0, v0, Luc/m;->a:Ljava/lang/Object;

    check-cast v0, Luc/k;

    iget-object v0, v0, Luc/k;->a:Lxc/o;

    new-instance v1, Lwc/d;

    const/4 v2, 0x6

    invoke-direct {v1, p1, v2}, Lwc/d;-><init>(Lwc/i;I)V

    check-cast v0, Lxc/l;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lxc/i;

    invoke-direct {p1, v0, v1}, Lxc/h;-><init>(Lxc/l;Lsb/a;)V

    iput-object p1, p0, LWb/h;->d:Lxc/i;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1

    iget v0, p0, LWb/h;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LWb/h;->d:Lxc/i;

    invoke-virtual {p0}, Lxc/i;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    :pswitch_0
    iget-object p0, p0, LWb/h;->d:Lxc/i;

    invoke-virtual {p0}, Lxc/i;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c()LJb/i;
    .locals 1

    iget v0, p0, LWb/h;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LWb/h;->e:LMb/c;

    check-cast p0, Lwc/i;

    return-object p0

    :pswitch_0
    iget-object p0, p0, LWb/h;->e:LMb/c;

    check-cast p0, LWb/j;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final e()Z
    .locals 0

    iget p0, p0, LWb/h;->c:I

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x1

    return p0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final f()Ljava/util/Collection;
    .locals 23

    move-object/from16 v0, p0

    const/4 v1, 0x1

    const/16 v2, 0xa

    const/4 v3, 0x0

    const-string v4, "<this>"

    iget-object v5, v0, LWb/h;->e:LMb/c;

    iget v0, v0, LWb/h;->c:I

    packed-switch v0, :pswitch_data_0

    check-cast v5, Lwc/i;

    iget-object v0, v5, Lwc/i;->e:Lcc/k;

    iget-object v1, v5, Lwc/i;->l:Luc/m;

    iget-object v6, v1, Luc/m;->d:Ljava/lang/Object;

    check-cast v6, LX4/i;

    invoke-static {v0, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "typeTable"

    invoke-static {v6, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v0, Lcc/k;->h:Ljava/util/List;

    move-object v7, v4

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    if-nez v4, :cond_1

    iget-object v0, v0, Lcc/k;->i:Ljava/util/List;

    const-string v4, "getSupertypeIdList(...)"

    invoke-static {v0, v4}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v0, v2}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-static {v7}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, LX4/i;->f(I)Lcc/T;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    check-cast v4, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v4, v2}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcc/T;

    iget-object v7, v1, Luc/m;->h:Ljava/lang/Object;

    check-cast v7, Luc/E;

    invoke-virtual {v7, v6}, Luc/E;->g(Lcc/T;)Lyc/w;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    iget-object v4, v1, Luc/m;->a:Ljava/lang/Object;

    check-cast v4, Luc/k;

    iget-object v4, v4, Luc/k;->n:LLb/b;

    invoke-interface {v4, v5}, LLb/b;->c(LJb/f;)Ljava/util/Collection;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    invoke-static {v4, v0}, Lfb/n;->R(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lyc/w;

    invoke-virtual {v7}, Lyc/w;->F0()Lyc/L;

    move-result-object v7

    invoke-interface {v7}, Lyc/L;->c()LJb/i;

    move-result-object v7

    instance-of v8, v7, LJb/G;

    if-eqz v8, :cond_4

    check-cast v7, LJb/G;

    goto :goto_4

    :cond_4
    move-object v7, v3

    :goto_4
    if-eqz v7, :cond_3

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v1, v1, Luc/m;->a:Ljava/lang/Object;

    check-cast v1, Luc/k;

    iget-object v1, v1, Luc/k;->h:Luc/o;

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v4, v2}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LJb/G;

    invoke-static {v4}, Loc/d;->f(LJb/i;)Lhc/b;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Lhc/b;->a()Lhc/c;

    move-result-object v6

    if-eqz v6, :cond_6

    iget-object v6, v6, Lhc/c;->a:Lhc/d;

    iget-object v6, v6, Lhc/d;->a:Ljava/lang/String;

    if-nez v6, :cond_7

    :cond_6
    invoke-virtual {v4}, LMb/c;->getName()Lhc/f;

    move-result-object v4

    invoke-virtual {v4}, Lhc/f;->c()Ljava/lang/String;

    move-result-object v6

    const-string v4, "asString(...)"

    invoke-static {v6, v4}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_8
    invoke-interface {v1, v5, v3}, Luc/o;->a(LJb/f;Ljava/util/ArrayList;)V

    :cond_9
    invoke-static {v0}, Lfb/n;->g0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    return-object v0

    :pswitch_0
    check-cast v5, LWb/j;

    iget-object v0, v5, LWb/j;->h:LPb/n;

    iget-object v0, v0, LPb/n;->a:Ljava/lang/Class;

    const-class v6, Ljava/lang/Object;

    invoke-static {v0, v6}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    sget-object v14, Lfb/v;->a:Lfb/v;

    const/4 v8, 0x2

    if-eqz v7, :cond_a

    move-object v6, v14

    goto :goto_8

    :cond_a
    new-instance v7, Lg9/f;

    invoke-direct {v7, v8}, Lg9/f;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v9

    if-nez v9, :cond_b

    goto :goto_6

    :cond_b
    move-object v6, v9

    :goto_6
    invoke-virtual {v7, v6}, Lg9/f;->a(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {v7, v0}, Lg9/f;->b(Ljava/lang/Object;)V

    iget-object v0, v7, Lg9/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/reflect/Type;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lfb/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v0, v2}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/reflect/Type;

    new-instance v9, LPb/p;

    invoke-direct {v9, v7}, LPb/p;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_c
    :goto_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v7

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v7, Ljava/util/ArrayList;

    const/4 v15, 0x0

    invoke-direct {v7, v15}, Ljava/util/ArrayList;-><init>(I)V

    sget-object v9, LSb/x;->n:Lhc/c;

    const-string v10, "PURELY_IMPLEMENTS_ANNOTATION"

    invoke-static {v9, v10}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v10, v5, LWb/j;->u:LVb/c;

    invoke-virtual {v10, v9}, LVb/c;->B(Lhc/c;)LKb/b;

    move-result-object v9

    if-nez v9, :cond_e

    :cond_d
    :goto_9
    move-object v8, v3

    goto/16 :goto_e

    :cond_e
    invoke-interface {v9}, LKb/b;->a()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v9

    check-cast v9, Ljava/lang/Iterable;

    invoke-static {v9}, Lfb/n;->V(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v9

    instance-of v10, v9, Lmc/x;

    if-eqz v10, :cond_f

    check-cast v9, Lmc/x;

    goto :goto_a

    :cond_f
    move-object v9, v3

    :goto_a
    if-eqz v9, :cond_d

    iget-object v9, v9, Lmc/g;->a:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    if-nez v9, :cond_10

    goto :goto_9

    :cond_10
    sget-object v10, Lhc/j;->BEGINNING:Lhc/j;

    move v11, v15

    :goto_b
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v11, v12, :cond_16

    invoke-virtual {v9, v11}, Ljava/lang/String;->charAt(I)C

    move-result v12

    sget-object v13, Lhc/e;->a:[I

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    aget v13, v13, v16

    if-eq v13, v1, :cond_13

    if-eq v13, v8, :cond_13

    const/4 v8, 0x3

    if-ne v13, v8, :cond_12

    const/16 v8, 0x2e

    if-ne v12, v8, :cond_11

    sget-object v8, Lhc/j;->AFTER_DOT:Lhc/j;

    :goto_c
    move-object v10, v8

    goto :goto_d

    :cond_11
    invoke-static {v12}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v8

    if-nez v8, :cond_15

    goto :goto_9

    :cond_12
    new-instance v0, LI5/b;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_13
    invoke-static {v12}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v8

    if-nez v8, :cond_14

    goto :goto_9

    :cond_14
    sget-object v8, Lhc/j;->MIDDLE:Lhc/j;

    goto :goto_c

    :cond_15
    :goto_d
    add-int/2addr v11, v1

    const/4 v8, 0x2

    goto :goto_b

    :cond_16
    sget-object v8, Lhc/j;->AFTER_DOT:Lhc/j;

    if-eq v10, v8, :cond_d

    new-instance v8, Lhc/c;

    invoke-direct {v8, v9}, Lhc/c;-><init>(Ljava/lang/String;)V

    :goto_e
    if-eqz v8, :cond_17

    iget-object v9, v8, Lhc/c;->a:Lhc/d;

    invoke-virtual {v9}, Lhc/d;->c()Z

    move-result v9

    if-nez v9, :cond_17

    sget-object v9, LGb/q;->k:Lhc/f;

    invoke-virtual {v8, v9}, Lhc/c;->c(Lhc/f;)Z

    move-result v9

    if-eqz v9, :cond_17

    goto :goto_f

    :cond_17
    move-object v8, v3

    :goto_f
    iget-object v13, v5, LWb/j;->j:Lo3/i;

    if-nez v8, :cond_19

    sget-object v9, LSb/j;->a:Ljava/util/LinkedHashMap;

    invoke-static {v5}, Loc/d;->g(LJb/l;)Lhc/c;

    move-result-object v9

    sget-object v10, LSb/j;->b:Ljava/util/Map;

    invoke-interface {v10, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lhc/c;

    if-nez v9, :cond_1a

    :cond_18
    :goto_10
    move-object v1, v3

    goto/16 :goto_14

    :cond_19
    move-object v9, v8

    :cond_1a
    iget-object v10, v13, Lo3/i;->a:Ljava/lang/Object;

    check-cast v10, LVb/a;

    sget-object v11, LRb/c;->FROM_JAVA_LOADER:LRb/c;

    sget v12, Loc/d;->a:I

    iget-object v10, v10, LVb/a;->o:LMb/B;

    invoke-static {v10, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "location"

    invoke-static {v11, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v9, Lhc/c;->a:Lhc/d;

    invoke-virtual {v4}, Lhc/d;->c()Z

    invoke-virtual {v9}, Lhc/c;->b()Lhc/c;

    move-result-object v9

    invoke-virtual {v10, v9}, LMb/B;->q0(Lhc/c;)LJb/M;

    move-result-object v9

    check-cast v9, LMb/y;

    invoke-virtual {v4}, Lhc/d;->f()Lhc/f;

    move-result-object v4

    iget-object v9, v9, LMb/y;->h:Lrc/k;

    invoke-virtual {v9, v4, v11}, Lrc/k;->c(Lhc/f;LRb/a;)LJb/i;

    move-result-object v4

    instance-of v9, v4, LJb/f;

    if-eqz v9, :cond_1b

    check-cast v4, LJb/f;

    goto :goto_11

    :cond_1b
    move-object v4, v3

    :goto_11
    if-nez v4, :cond_1c

    goto :goto_10

    :cond_1c
    invoke-interface {v4}, LJb/i;->w()Lyc/L;

    move-result-object v9

    invoke-interface {v9}, Lyc/L;->a()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    iget-object v10, v5, LWb/j;->p:LWb/h;

    invoke-virtual {v10}, LWb/h;->a()Ljava/util/List;

    move-result-object v10

    const-string v11, "getParameters(...)"

    invoke-static {v10, v11}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    if-ne v11, v9, :cond_1d

    check-cast v10, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v10, v2}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v1, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_12
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, LJb/W;

    new-instance v10, Lyc/F;

    sget-object v11, Lyc/e0;->INVARIANT:Lyc/e0;

    invoke-interface {v9}, LJb/i;->n()Lyc/A;

    move-result-object v9

    invoke-direct {v10, v9, v11}, Lyc/F;-><init>(Lyc/w;Lyc/e0;)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_1d
    if-ne v11, v1, :cond_18

    if-le v9, v1, :cond_18

    if-nez v8, :cond_18

    new-instance v8, Lyc/F;

    sget-object v11, Lyc/e0;->INVARIANT:Lyc/e0;

    invoke-static {v10}, Lfb/n;->U(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, LJb/W;

    invoke-interface {v10}, LJb/i;->n()Lyc/A;

    move-result-object v10

    invoke-direct {v8, v10, v11}, Lyc/F;-><init>(Lyc/w;Lyc/e0;)V

    new-instance v10, Lzb/d;

    invoke-direct {v10, v1, v9, v1}, Lzb/b;-><init>(III)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v10, v2}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v1, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v10}, Lzb/b;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_13
    move-object v10, v9

    check-cast v10, Lzb/c;

    iget-boolean v10, v10, Lzb/c;->c:Z

    if-eqz v10, :cond_1e

    move-object v10, v9

    check-cast v10, Lzb/c;

    invoke-virtual {v10}, Lzb/c;->b()I

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_1e
    sget-object v8, Lyc/H;->b:LA7/h;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Lyc/H;->c:Lyc/H;

    invoke-static {v8, v4, v1}, Lyc/c;->t(Lyc/H;LJb/f;Ljava/util/List;)Lyc/A;

    move-result-object v1

    :goto_14
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_15
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_24

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LPb/p;

    iget-object v8, v13, Lo3/i;->d:Ljava/lang/Object;

    check-cast v8, Lo3/t;

    sget-object v9, Lyc/Z;->SUPERTYPE:Lyc/Z;

    const/4 v10, 0x7

    invoke-static {v9, v15, v15, v3, v10}, LG5/u3;->b(Lyc/Z;ZZLWb/G;I)LXb/a;

    move-result-object v9

    invoke-virtual {v8, v6, v9}, Lo3/t;->r(LYb/d;LXb/a;)Lyc/w;

    move-result-object v22

    iget-object v8, v13, Lo3/i;->a:Ljava/lang/Object;

    check-cast v8, LVb/a;

    iget-object v8, v8, LVb/a;->r:LZb/c;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v9, LT2/c;

    sget-object v20, LSb/b;->TYPE_USE:LSb/b;

    const/16 v18, 0x0

    const/16 v21, 0x1

    const/16 v17, 0x0

    move-object/from16 v16, v9

    move-object/from16 v19, v13

    invoke-direct/range {v16 .. v21}, LT2/c;-><init>(LJb/m;ZLo3/i;LSb/b;Z)V

    const/16 v16, 0x0

    const/4 v12, 0x0

    move-object/from16 v10, v22

    move-object v11, v14

    move-object v15, v13

    move/from16 v13, v16

    invoke-virtual/range {v8 .. v13}, LZb/c;->a(LT2/c;Lyc/w;Ljava/util/List;LZb/q;Z)Lyc/w;

    move-result-object v8

    if-nez v8, :cond_1f

    move-object/from16 v8, v22

    :cond_1f
    invoke-virtual {v8}, Lyc/w;->F0()Lyc/L;

    move-result-object v9

    invoke-interface {v9}, Lyc/L;->c()LJb/i;

    move-result-object v9

    instance-of v9, v9, LJb/G;

    if-eqz v9, :cond_20

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_20
    invoke-virtual {v8}, Lyc/w;->F0()Lyc/L;

    move-result-object v6

    if-eqz v1, :cond_21

    invoke-virtual {v1}, Lyc/w;->F0()Lyc/L;

    move-result-object v9

    goto :goto_16

    :cond_21
    move-object v9, v3

    :goto_16
    invoke-static {v6, v9}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23

    :cond_22
    :goto_17
    move-object v13, v15

    const/4 v15, 0x0

    goto :goto_15

    :cond_23
    invoke-static {v8}, LGb/i;->y(Lyc/w;)Z

    move-result v6

    if-nez v6, :cond_22

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_24
    move-object v15, v13

    iget-object v4, v5, LWb/j;->i:LJb/f;

    if-eqz v4, :cond_25

    invoke-static {v4, v5}, LG5/t3;->b(LJb/f;LJb/f;)Lyc/M;

    move-result-object v6

    new-instance v8, Lyc/Y;

    invoke-direct {v8, v6}, Lyc/Y;-><init>(Lyc/U;)V

    invoke-interface {v4}, LJb/f;->n()Lyc/A;

    move-result-object v4

    sget-object v6, Lyc/e0;->INVARIANT:Lyc/e0;

    invoke-virtual {v8, v4, v6}, Lyc/Y;->i(Lyc/w;Lyc/e0;)Lyc/w;

    move-result-object v4

    goto :goto_18

    :cond_25
    move-object v4, v3

    :goto_18
    invoke-static {v0, v4}, LHc/l;->a(Ljava/util/AbstractCollection;Ljava/lang/Object;)V

    invoke-static {v0, v1}, LHc/l;->a(Ljava/util/AbstractCollection;Ljava/lang/Object;)V

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_27

    iget-object v0, v15, Lo3/i;->a:Ljava/lang/Object;

    check-cast v0, LVb/a;

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v7, v2}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LYb/d;

    const-string v6, "null cannot be cast to non-null type org.jetbrains.kotlin.load.java.structure.JavaClassifierType"

    invoke-static {v4, v6}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, LPb/p;

    iget-object v4, v4, LPb/p;->a:Ljava/lang/reflect/Type;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_26
    iget-object v0, v0, LVb/a;->f:LOb/d;

    invoke-virtual {v0, v5, v1}, LOb/d;->a(LJb/f;Ljava/util/ArrayList;)V

    throw v3

    :cond_27
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_28

    invoke-static {v0}, Lfb/n;->g0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    :goto_1a
    check-cast v0, Ljava/util/Collection;

    goto :goto_1b

    :cond_28
    iget-object v0, v15, Lo3/i;->a:Ljava/lang/Object;

    check-cast v0, LVb/a;

    iget-object v0, v0, LVb/a;->o:LMb/B;

    iget-object v0, v0, LMb/B;->e:LGb/i;

    invoke-virtual {v0}, LGb/i;->e()Lyc/A;

    move-result-object v0

    invoke-static {v0}, LG5/o3;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_1a

    :goto_1b
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final h()LJb/T;
    .locals 1

    iget v0, p0, LWb/h;->c:I

    packed-switch v0, :pswitch_data_0

    sget-object p0, LJb/T;->c:LJb/T;

    return-object p0

    :pswitch_0
    iget-object p0, p0, LWb/h;->e:LMb/c;

    check-cast p0, LWb/j;

    iget-object p0, p0, LWb/j;->j:Lo3/i;

    iget-object p0, p0, Lo3/i;->a:Ljava/lang/Object;

    check-cast p0, LVb/a;

    iget-object p0, p0, LVb/a;->m:LJb/T;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final n()LJb/f;
    .locals 1

    iget v0, p0, LWb/h;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LWb/h;->e:LMb/c;

    check-cast p0, Lwc/i;

    return-object p0

    :pswitch_0
    iget-object p0, p0, LWb/h;->e:LMb/c;

    check-cast p0, LWb/j;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, LWb/h;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LWb/h;->e:LMb/c;

    check-cast p0, Lwc/i;

    invoke-virtual {p0}, LMb/c;->getName()Lhc/f;

    move-result-object p0

    iget-object p0, p0, Lhc/f;->a:Ljava/lang/String;

    const-string v0, "toString(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :pswitch_0
    iget-object p0, p0, LWb/h;->e:LMb/c;

    check-cast p0, LWb/j;

    invoke-virtual {p0}, LMb/c;->getName()Lhc/f;

    move-result-object p0

    invoke-virtual {p0}, Lhc/f;->c()Ljava/lang/String;

    move-result-object p0

    const-string v0, "asString(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
