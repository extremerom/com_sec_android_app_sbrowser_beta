.class public final LMb/I;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Ljava/lang/Object;

.field public c:Ljava/io/Serializable;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;

.field public i:Ljava/lang/Object;

.field public j:Ljava/lang/Object;

.field public k:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LMb/J;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LMb/I;->k:Ljava/lang/Object;

    invoke-virtual {p1}, LMb/o;->k()LJb/l;

    move-result-object v0

    iput-object v0, p0, LMb/I;->b:Ljava/lang/Object;

    invoke-virtual {p1}, LMb/J;->r()LJb/B;

    move-result-object v0

    iput-object v0, p0, LMb/I;->c:Ljava/io/Serializable;

    invoke-virtual {p1}, LMb/J;->getVisibility()LJb/p;

    move-result-object v0

    iput-object v0, p0, LMb/I;->d:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, LMb/I;->e:Ljava/lang/Object;

    invoke-virtual {p1}, LMb/J;->d()LJb/c;

    move-result-object v0

    iput-object v0, p0, LMb/I;->f:Ljava/lang/Object;

    sget-object v0, Lyc/U;->a:Lyc/S;

    iput-object v0, p0, LMb/I;->g:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, LMb/I;->a:Z

    iget-object v0, p1, LMb/J;->u:LMb/w;

    iput-object v0, p0, LMb/I;->h:Ljava/lang/Object;

    invoke-virtual {p1}, LMb/n;->getName()Lhc/f;

    move-result-object v0

    iput-object v0, p0, LMb/I;->i:Ljava/lang/Object;

    invoke-virtual {p1}, LMb/U;->getType()Lyc/w;

    move-result-object p1

    iput-object p1, p0, LMb/I;->j:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic a(I)V
    .locals 24

    move/from16 v0, p0

    const/16 v1, 0x11

    const/16 v2, 0x10

    const/16 v3, 0xe

    const/16 v4, 0xd

    const/16 v5, 0x13

    const/16 v6, 0xb

    const/16 v7, 0x9

    const/4 v8, 0x7

    const/4 v9, 0x5

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-eq v0, v12, :cond_0

    if-eq v0, v11, :cond_0

    if-eq v0, v10, :cond_0

    if-eq v0, v9, :cond_0

    if-eq v0, v8, :cond_0

    if-eq v0, v7, :cond_0

    if-eq v0, v6, :cond_0

    if-eq v0, v5, :cond_0

    if-eq v0, v4, :cond_0

    if-eq v0, v3, :cond_0

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    const-string v13, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :cond_0
    const-string v13, "@NotNull method %s.%s must not return null"

    :goto_0
    if-eq v0, v12, :cond_1

    if-eq v0, v11, :cond_1

    if-eq v0, v10, :cond_1

    if-eq v0, v9, :cond_1

    if-eq v0, v8, :cond_1

    if-eq v0, v7, :cond_1

    if-eq v0, v6, :cond_1

    if-eq v0, v5, :cond_1

    if-eq v0, v4, :cond_1

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_1

    move v14, v10

    goto :goto_1

    :cond_1
    move v14, v11

    :goto_1
    new-array v14, v14, [Ljava/lang/Object;

    const-string v15, "kotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration"

    const/16 v16, 0x0

    packed-switch v0, :pswitch_data_0

    const-string v17, "owner"

    aput-object v17, v14, v16

    goto :goto_2

    :pswitch_0
    const-string v17, "name"

    aput-object v17, v14, v16

    goto :goto_2

    :pswitch_1
    const-string v17, "substitution"

    aput-object v17, v14, v16

    goto :goto_2

    :pswitch_2
    const-string v17, "typeParameters"

    aput-object v17, v14, v16

    goto :goto_2

    :pswitch_3
    const-string v17, "kind"

    aput-object v17, v14, v16

    goto :goto_2

    :pswitch_4
    const-string v17, "visibility"

    aput-object v17, v14, v16

    goto :goto_2

    :pswitch_5
    const-string v17, "modality"

    aput-object v17, v14, v16

    goto :goto_2

    :pswitch_6
    const-string v17, "type"

    aput-object v17, v14, v16

    goto :goto_2

    :pswitch_7
    aput-object v15, v14, v16

    :goto_2
    const-string v16, "setOwner"

    const-string v17, "setReturnType"

    const-string v18, "setModality"

    const-string v19, "setVisibility"

    const-string v20, "setKind"

    const-string v21, "setTypeParameters"

    const-string v22, "setSubstitution"

    const-string v23, "setName"

    if-eq v0, v12, :cond_d

    if-eq v0, v11, :cond_c

    if-eq v0, v10, :cond_b

    if-eq v0, v9, :cond_a

    if-eq v0, v8, :cond_9

    if-eq v0, v7, :cond_8

    if-eq v0, v6, :cond_7

    if-eq v0, v5, :cond_6

    if-eq v0, v4, :cond_5

    if-eq v0, v3, :cond_4

    if-eq v0, v2, :cond_3

    if-eq v0, v1, :cond_2

    aput-object v15, v14, v12

    goto :goto_3

    :cond_2
    const-string v15, "setCopyOverrides"

    aput-object v15, v14, v12

    goto :goto_3

    :cond_3
    aput-object v22, v14, v12

    goto :goto_3

    :cond_4
    const-string v15, "setDispatchReceiverParameter"

    aput-object v15, v14, v12

    goto :goto_3

    :cond_5
    aput-object v21, v14, v12

    goto :goto_3

    :cond_6
    aput-object v23, v14, v12

    goto :goto_3

    :cond_7
    aput-object v20, v14, v12

    goto :goto_3

    :cond_8
    aput-object v19, v14, v12

    goto :goto_3

    :cond_9
    aput-object v18, v14, v12

    goto :goto_3

    :cond_a
    aput-object v17, v14, v12

    goto :goto_3

    :cond_b
    const-string v15, "setPreserveSourceElement"

    aput-object v15, v14, v12

    goto :goto_3

    :cond_c
    const-string v15, "setOriginal"

    aput-object v15, v14, v12

    goto :goto_3

    :cond_d
    aput-object v16, v14, v12

    :goto_3
    packed-switch v0, :pswitch_data_1

    aput-object v16, v14, v11

    goto :goto_4

    :pswitch_8
    aput-object v23, v14, v11

    goto :goto_4

    :pswitch_9
    aput-object v22, v14, v11

    goto :goto_4

    :pswitch_a
    aput-object v21, v14, v11

    goto :goto_4

    :pswitch_b
    aput-object v20, v14, v11

    goto :goto_4

    :pswitch_c
    aput-object v19, v14, v11

    goto :goto_4

    :pswitch_d
    aput-object v18, v14, v11

    goto :goto_4

    :pswitch_e
    aput-object v17, v14, v11

    :goto_4
    :pswitch_f
    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    if-eq v0, v12, :cond_e

    if-eq v0, v11, :cond_e

    if-eq v0, v10, :cond_e

    if-eq v0, v9, :cond_e

    if-eq v0, v8, :cond_e

    if-eq v0, v7, :cond_e

    if-eq v0, v6, :cond_e

    if-eq v0, v5, :cond_e

    if-eq v0, v4, :cond_e

    if-eq v0, v3, :cond_e

    if-eq v0, v2, :cond_e

    if-eq v0, v1, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_7
        :pswitch_4
        :pswitch_7
        :pswitch_3
        :pswitch_7
        :pswitch_2
        :pswitch_7
        :pswitch_7
        :pswitch_1
        :pswitch_7
        :pswitch_7
        :pswitch_0
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_f
        :pswitch_d
        :pswitch_f
        :pswitch_c
        :pswitch_f
        :pswitch_b
        :pswitch_f
        :pswitch_a
        :pswitch_f
        :pswitch_f
        :pswitch_9
        :pswitch_f
        :pswitch_f
        :pswitch_8
        :pswitch_f
    .end packed-switch
.end method


# virtual methods
.method public b()LMb/J;
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, LMb/I;->k:Ljava/lang/Object;

    check-cast v1, LMb/J;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, LMb/I;->b:Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, LJb/l;

    iget-object v2, v0, LMb/I;->c:Ljava/io/Serializable;

    move-object v4, v2

    check-cast v4, LJb/B;

    iget-object v2, v0, LMb/I;->d:Ljava/lang/Object;

    move-object v5, v2

    check-cast v5, LJb/p;

    iget-object v2, v0, LMb/I;->e:Ljava/lang/Object;

    move-object v6, v2

    check-cast v6, LJb/P;

    iget-object v2, v0, LMb/I;->f:Ljava/lang/Object;

    move-object v7, v2

    check-cast v7, LJb/c;

    sget-object v19, LJb/S;->L:LJb/T;

    iget-object v2, v0, LMb/I;->i:Ljava/lang/Object;

    move-object v8, v2

    check-cast v8, Lhc/f;

    move-object v2, v1

    invoke-virtual/range {v2 .. v8}, LMb/J;->W0(LJb/l;LJb/B;LJb/p;LJb/P;LJb/c;Lhc/f;)LMb/J;

    move-result-object v2

    invoke-virtual {v1}, LMb/J;->m()Ljava/util/List;

    move-result-object v3

    new-instance v11, Ljava/util/ArrayList;

    move-object v4, v3

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v11, v4}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v4, v0, LMb/I;->g:Ljava/lang/Object;

    check-cast v4, Lyc/U;

    invoke-static {v3, v4, v2, v11}, Lyc/c;->A(Ljava/util/List;Lyc/U;LJb/l;Ljava/util/ArrayList;)Lyc/Y;

    move-result-object v3

    sget-object v4, Lyc/e0;->OUT_VARIANCE:Lyc/e0;

    iget-object v5, v0, LMb/I;->j:Ljava/lang/Object;

    check-cast v5, Lyc/w;

    invoke-virtual {v3, v5, v4}, Lyc/Y;->i(Lyc/w;Lyc/e0;)Lyc/w;

    move-result-object v10

    const/4 v4, 0x0

    if-nez v10, :cond_0

    :goto_0
    move-object v2, v4

    goto/16 :goto_f

    :cond_0
    sget-object v6, Lyc/e0;->IN_VARIANCE:Lyc/e0;

    invoke-virtual {v3, v5, v6}, Lyc/Y;->i(Lyc/w;Lyc/e0;)Lyc/w;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v2, v5}, LMb/J;->a1(Lyc/w;)V

    :cond_1
    iget-object v5, v0, LMb/I;->h:Ljava/lang/Object;

    check-cast v5, LMb/w;

    if-eqz v5, :cond_3

    invoke-virtual {v5, v3}, LMb/w;->V0(Lyc/Y;)LMb/w;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    move-object v12, v5

    goto :goto_1

    :cond_3
    move-object v12, v4

    :goto_1
    iget-object v5, v1, LMb/J;->v:LMb/w;

    if-eqz v5, :cond_5

    invoke-virtual {v5}, LMb/w;->getType()Lyc/w;

    move-result-object v7

    invoke-virtual {v3, v7, v6}, Lyc/Y;->i(Lyc/w;Lyc/e0;)Lyc/w;

    move-result-object v6

    if-nez v6, :cond_4

    move-object v7, v4

    goto :goto_2

    :cond_4
    new-instance v7, LMb/w;

    new-instance v8, Lsc/b;

    invoke-virtual {v5}, LMb/w;->U0()Lsc/d;

    invoke-direct {v8, v2, v6}, Lsc/b;-><init>(LJb/b;Lyc/w;)V

    invoke-virtual {v5}, LF3/f;->u()LKb/h;

    move-result-object v5

    invoke-direct {v7, v2, v8, v5}, LMb/w;-><init>(LJb/l;LF3/f;LKb/h;)V

    :goto_2
    move-object v13, v7

    goto :goto_3

    :cond_5
    move-object v13, v4

    :goto_3
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, v1, LMb/J;->t:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LMb/w;

    invoke-virtual {v6}, LMb/w;->getType()Lyc/w;

    move-result-object v7

    sget-object v8, Lyc/e0;->IN_VARIANCE:Lyc/e0;

    invoke-virtual {v3, v7, v8}, Lyc/Y;->i(Lyc/w;Lyc/e0;)Lyc/w;

    move-result-object v7

    if-nez v7, :cond_7

    move-object v8, v4

    goto :goto_5

    :cond_7
    new-instance v8, LMb/w;

    new-instance v9, Lsc/a;

    invoke-virtual {v6}, LMb/w;->U0()Lsc/d;

    move-result-object v15

    check-cast v15, Lsc/a;

    invoke-virtual {v15}, Lsc/a;->S0()Lhc/f;

    move-result-object v15

    invoke-virtual {v6}, LMb/w;->U0()Lsc/d;

    invoke-direct {v9, v2, v7, v15}, Lsc/a;-><init>(LJb/b;Lyc/w;Lhc/f;)V

    invoke-virtual {v6}, LF3/f;->u()LKb/h;

    move-result-object v6

    invoke-direct {v8, v2, v9, v6}, LMb/w;-><init>(LJb/l;LF3/f;LKb/h;)V

    :goto_5
    if-eqz v8, :cond_6

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    move-object v9, v2

    invoke-virtual/range {v9 .. v14}, LMb/J;->b1(Lyc/w;Ljava/util/List;LMb/w;LMb/w;Ljava/util/List;)V

    iget-object v5, v1, LMb/J;->x:LMb/K;

    if-nez v5, :cond_9

    move-object v7, v4

    goto :goto_7

    :cond_9
    new-instance v6, LMb/K;

    invoke-virtual {v5}, LF3/f;->u()LKb/h;

    move-result-object v10

    iget-object v5, v0, LMb/I;->c:Ljava/io/Serializable;

    move-object v11, v5

    check-cast v11, LJb/B;

    iget-object v5, v1, LMb/J;->x:LMb/K;

    invoke-virtual {v5}, LMb/H;->getVisibility()LJb/p;

    move-result-object v5

    iget-object v7, v0, LMb/I;->f:Ljava/lang/Object;

    check-cast v7, LJb/c;

    sget-object v8, LJb/c;->FAKE_OVERRIDE:LJb/c;

    if-ne v7, v8, :cond_a

    iget-object v7, v5, LJb/p;->a:LJb/k0;

    invoke-virtual {v7}, LJb/k0;->c()LJb/k0;

    move-result-object v7

    invoke-static {v7}, LJb/q;->f(LJb/k0;)LJb/p;

    move-result-object v7

    invoke-static {v7}, LJb/q;->e(LJb/p;)Z

    move-result v7

    if-eqz v7, :cond_a

    sget-object v5, LJb/q;->h:LJb/p;

    :cond_a
    move-object v12, v5

    iget-object v5, v1, LMb/J;->x:LMb/K;

    iget-boolean v13, v5, LMb/H;->f:Z

    iget-object v7, v0, LMb/I;->f:Ljava/lang/Object;

    move-object/from16 v16, v7

    check-cast v16, LJb/c;

    iget-object v7, v0, LMb/I;->e:Ljava/lang/Object;

    check-cast v7, LJb/P;

    if-nez v7, :cond_b

    move-object/from16 v17, v4

    goto :goto_6

    :cond_b
    invoke-interface {v7}, LJb/P;->b()LMb/K;

    move-result-object v7

    move-object/from16 v17, v7

    :goto_6
    iget-boolean v14, v5, LMb/H;->g:Z

    iget-boolean v15, v5, LMb/H;->j:Z

    move-object v8, v6

    move-object v9, v2

    move-object/from16 v18, v19

    invoke-direct/range {v8 .. v18}, LMb/K;-><init>(LJb/P;LKb/h;LJb/B;LJb/p;ZZZLJb/c;LMb/K;LJb/S;)V

    move-object v7, v6

    :goto_7
    if-eqz v7, :cond_d

    iget-object v5, v1, LMb/J;->x:LMb/K;

    iget-object v6, v5, LMb/K;->n:Lyc/w;

    invoke-static {v3, v5}, LMb/J;->X0(Lyc/Y;LJb/O;)LJb/v;

    move-result-object v5

    iput-object v5, v7, LMb/H;->m:LJb/v;

    if-eqz v6, :cond_c

    sget-object v5, Lyc/e0;->OUT_VARIANCE:Lyc/e0;

    invoke-virtual {v3, v6, v5}, Lyc/Y;->i(Lyc/w;Lyc/e0;)Lyc/w;

    move-result-object v5

    goto :goto_8

    :cond_c
    move-object v5, v4

    :goto_8
    invoke-virtual {v7, v5}, LMb/K;->X0(Lyc/w;)V

    :cond_d
    iget-object v5, v1, LMb/J;->y:LMb/L;

    if-nez v5, :cond_e

    move-object v11, v4

    goto :goto_a

    :cond_e
    new-instance v6, LMb/L;

    invoke-virtual {v5}, LF3/f;->u()LKb/h;

    move-result-object v10

    iget-object v5, v0, LMb/I;->c:Ljava/io/Serializable;

    move-object v11, v5

    check-cast v11, LJb/B;

    iget-object v5, v1, LMb/J;->y:LMb/L;

    invoke-virtual {v5}, LMb/H;->getVisibility()LJb/p;

    move-result-object v5

    iget-object v8, v0, LMb/I;->f:Ljava/lang/Object;

    check-cast v8, LJb/c;

    sget-object v9, LJb/c;->FAKE_OVERRIDE:LJb/c;

    if-ne v8, v9, :cond_f

    iget-object v8, v5, LJb/p;->a:LJb/k0;

    invoke-virtual {v8}, LJb/k0;->c()LJb/k0;

    move-result-object v8

    invoke-static {v8}, LJb/q;->f(LJb/k0;)LJb/p;

    move-result-object v8

    invoke-static {v8}, LJb/q;->e(LJb/p;)Z

    move-result v8

    if-eqz v8, :cond_f

    sget-object v5, LJb/q;->h:LJb/p;

    :cond_f
    move-object v12, v5

    iget-object v5, v1, LMb/J;->y:LMb/L;

    iget-boolean v13, v5, LMb/H;->f:Z

    iget-object v8, v0, LMb/I;->f:Ljava/lang/Object;

    move-object/from16 v16, v8

    check-cast v16, LJb/c;

    iget-object v8, v0, LMb/I;->e:Ljava/lang/Object;

    check-cast v8, LJb/P;

    if-nez v8, :cond_10

    move-object/from16 v17, v4

    goto :goto_9

    :cond_10
    invoke-interface {v8}, LJb/P;->c()LMb/L;

    move-result-object v8

    move-object/from16 v17, v8

    :goto_9
    iget-boolean v14, v5, LMb/H;->g:Z

    iget-boolean v15, v5, LMb/H;->j:Z

    move-object v8, v6

    move-object v9, v2

    move-object/from16 v18, v19

    invoke-direct/range {v8 .. v18}, LMb/L;-><init>(LJb/P;LKb/h;LJb/B;LJb/p;ZZZLJb/c;LMb/L;LJb/S;)V

    move-object v11, v6

    :goto_a
    if-eqz v11, :cond_14

    iget-object v5, v1, LMb/J;->y:LMb/L;

    invoke-virtual {v5}, LMb/L;->H()Ljava/util/List;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v11

    move-object v12, v7

    move-object v7, v3

    invoke-static/range {v5 .. v10}, LMb/v;->Y0(LJb/v;Ljava/util/List;Lyc/Y;ZZ[Z)Ljava/util/ArrayList;

    move-result-object v5

    const/4 v6, 0x0

    if-nez v5, :cond_11

    iget-object v5, v0, LMb/I;->b:Ljava/lang/Object;

    check-cast v5, LJb/l;

    invoke-static {v5}, Loc/d;->e(LJb/l;)LGb/i;

    move-result-object v5

    invoke-virtual {v5}, LGb/i;->o()Lyc/A;

    move-result-object v5

    iget-object v7, v1, LMb/J;->y:LMb/L;

    invoke-virtual {v7}, LMb/L;->H()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LMb/T;

    check-cast v7, LF3/f;

    invoke-virtual {v7}, LF3/f;->u()LKb/h;

    move-result-object v7

    invoke-static {v11, v5, v7}, LMb/L;->W0(LMb/L;Lyc/w;LKb/h;)LMb/T;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    :cond_11
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_13

    iget-object v7, v1, LMb/J;->y:LMb/L;

    invoke-static {v3, v7}, LMb/J;->X0(Lyc/Y;LJb/O;)LJb/v;

    move-result-object v7

    iput-object v7, v11, LMb/H;->m:LJb/v;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LMb/T;

    if-eqz v5, :cond_12

    iput-object v5, v11, LMb/L;->n:LMb/T;

    goto :goto_b

    :cond_12
    const/4 v0, 0x6

    invoke-static {v0}, LMb/L;->D0(I)V

    throw v4

    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_14
    move-object v12, v7

    :goto_b
    iget-object v5, v1, LMb/J;->z:LMb/t;

    if-nez v5, :cond_15

    move-object v6, v4

    goto :goto_c

    :cond_15
    new-instance v6, LMb/t;

    invoke-virtual {v5}, LF3/f;->u()LKb/h;

    move-result-object v5

    invoke-direct {v6, v5, v2}, LMb/t;-><init>(LKb/h;LMb/J;)V

    :goto_c
    iget-object v5, v1, LMb/J;->A:LMb/t;

    if-nez v5, :cond_16

    goto :goto_d

    :cond_16
    new-instance v4, LMb/t;

    invoke-virtual {v5}, LF3/f;->u()LKb/h;

    move-result-object v5

    invoke-direct {v4, v5, v2}, LMb/t;-><init>(LKb/h;LMb/J;)V

    :goto_d
    invoke-virtual {v2, v12, v11, v6, v4}, LMb/J;->Y0(LMb/K;LMb/L;LMb/t;LMb/t;)V

    iget-boolean v0, v0, LMb/I;->a:Z

    if-eqz v0, :cond_18

    new-instance v0, LHc/i;

    invoke-direct {v0}, Lfb/h;-><init>()V

    invoke-virtual {v1}, LMb/J;->l()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LJb/P;

    invoke-interface {v5, v3}, LJb/P;->f(Lyc/Y;)LJb/P;

    move-result-object v5

    invoke-virtual {v0, v5}, LHc/i;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_17
    iput-object v0, v2, LMb/J;->l:Ljava/util/Collection;

    :cond_18
    invoke-virtual {v1}, LMb/J;->Y()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, v1, LMb/J;->i:Lsb/a;

    if-eqz v0, :cond_19

    iget-object v1, v1, LMb/J;->h:Lxc/h;

    invoke-virtual {v2, v1, v0}, LMb/J;->Z0(Lxc/h;Lsb/a;)V

    :cond_19
    :goto_f
    return-object v2
.end method

.method public c()V
    .locals 2

    iget-boolean v0, p0, LMb/I;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, LMb/I;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, LMb/I;->b:Ljava/lang/Object;

    iget-object v0, p0, LMb/I;->d:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    invoke-static {v0}, LD/a;->e(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, LMb/I;->d:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, LMb/I;->c:Ljava/io/Serializable;

    check-cast v1, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, LMb/I;->c:Ljava/io/Serializable;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, LMb/I;->e:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, LMb/I;->e:Ljava/lang/Object;

    iget-object v0, p0, LMb/I;->f:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    invoke-static {v0}, LD/a;->e(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, LMb/I;->f:Ljava/lang/Object;

    iget-object v0, p0, LMb/I;->g:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    invoke-static {v0}, LD/a;->e(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, LMb/I;->g:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, LMb/I;->h:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, LMb/I;->h:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, LMb/I;->k:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, LMb/I;->k:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, LMb/I;->i:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, LMb/I;->i:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, LMb/I;->j:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, LMb/I;->j:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, LMb/I;->a:Z

    :cond_0
    return-void
.end method
