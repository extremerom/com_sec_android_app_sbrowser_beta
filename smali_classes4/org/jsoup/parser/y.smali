.class public final enum Lorg/jsoup/parser/y;
.super Lorg/jsoup/parser/C;
.source "SourceFile"


# static fields
.field private static final MaxStackScan:I = 0x18


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "InBody"

    const/4 v1, 0x6

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final e(LF3/f;Lorg/jsoup/parser/b;)Z
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "h4"

    const-string v5, "h3"

    const-string v7, "h2"

    const-string v9, "h1"

    const-string v11, "dt"

    const-string v12, "dd"

    const-string v13, "p"

    const-string v14, "form"

    const-string v15, "li"

    const-string v10, "br"

    sget-object v19, Lorg/jsoup/parser/s;->a:[I

    iget-object v8, v1, LF3/f;->b:Ljava/lang/Object;

    check-cast v8, Lorg/jsoup/parser/O;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v8, v19, v8

    sget-object v6, Lorg/jsoup/parser/B;->i:[Ljava/lang/String;

    sget-object v4, Lorg/jsoup/parser/B;->l:[Ljava/lang/String;

    move-object/from16 v20, v6

    sget-object v6, Lorg/jsoup/parser/B;->q:[Ljava/lang/String;

    move-object/from16 v21, v4

    sget-object v4, Lorg/jsoup/parser/b;->E:[Ljava/lang/String;

    move-object/from16 v22, v4

    const-string v4, "template"

    move-object/from16 v23, v4

    const-string v4, "name"

    move-object/from16 v24, v4

    const-string v4, "body"

    move-object/from16 v25, v13

    packed-switch v8, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v0, 0x1

    goto/16 :goto_32

    :pswitch_0
    iget-object v3, v2, Lorg/jsoup/parser/b;->r:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    sget-object v0, Lorg/jsoup/parser/C;->InTemplate:Lorg/jsoup/parser/C;

    iput-object v1, v2, Lorg/jsoup/parser/b;->g:LF3/f;

    invoke-virtual {v0, v1, v2}, Lorg/jsoup/parser/C;->e(LF3/f;Lorg/jsoup/parser/b;)Z

    move-result v0

    return v0

    :cond_1
    invoke-virtual {v2, v6}, Lorg/jsoup/parser/b;->B([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v2, v0}, Lorg/jsoup/parser/b;->h(Lorg/jsoup/parser/C;)V

    goto :goto_0

    :pswitch_1
    check-cast v1, Lorg/jsoup/parser/H;

    iget-object v3, v1, Lorg/jsoup/parser/H;->c:Ljava/lang/String;

    invoke-static {}, Lorg/jsoup/parser/C;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v0}, Lorg/jsoup/parser/b;->h(Lorg/jsoup/parser/C;)V

    :goto_1
    const/4 v0, 0x0

    return v0

    :cond_2
    iget-boolean v0, v2, Lorg/jsoup/parser/b;->u:Z

    if-eqz v0, :cond_3

    invoke-static {v1}, Lorg/jsoup/parser/C;->a(LF3/f;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->L()V

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/b;->s(Lorg/jsoup/parser/H;)V

    goto :goto_0

    :cond_3
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->L()V

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/b;->s(Lorg/jsoup/parser/H;)V

    const/4 v0, 0x0

    iput-boolean v0, v2, Lorg/jsoup/parser/b;->u:Z

    goto :goto_0

    :pswitch_2
    move-object v8, v1

    check-cast v8, Lorg/jsoup/parser/L;

    iget-object v13, v8, Lorg/jsoup/parser/N;->d:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lorg/jsoup/parser/b;->x:[Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v26

    sparse-switch v26, :sswitch_data_0

    :goto_2
    move-object/from16 v3, v23

    :goto_3
    const/16 v16, -0x1

    goto/16 :goto_5

    :sswitch_0
    const-string v3, "sarcasm"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    const/16 v3, 0x10

    goto :goto_4

    :sswitch_1
    const-string v3, "span"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_2

    :cond_5
    const/16 v3, 0xf

    goto :goto_4

    :sswitch_2
    const-string v3, "html"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_2

    :cond_6
    const/16 v3, 0xe

    goto :goto_4

    :sswitch_3
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_2

    :cond_7
    const/16 v3, 0xd

    goto :goto_4

    :sswitch_4
    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_2

    :cond_8
    const/16 v3, 0xc

    goto :goto_4

    :sswitch_5
    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_2

    :cond_9
    const/16 v3, 0xb

    goto :goto_4

    :sswitch_6
    const-string v3, "h6"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    goto :goto_2

    :cond_a
    const/16 v3, 0xa

    goto :goto_4

    :sswitch_7
    const-string v3, "h5"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    goto :goto_2

    :cond_b
    const/16 v3, 0x9

    :goto_4
    move/from16 v16, v3

    move-object/from16 v3, v23

    goto/16 :goto_5

    :sswitch_8
    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    goto :goto_2

    :cond_c
    move-object/from16 v3, v23

    const/16 v16, 0x8

    goto/16 :goto_5

    :sswitch_9
    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    goto :goto_2

    :cond_d
    move-object/from16 v3, v23

    const/16 v16, 0x7

    goto/16 :goto_5

    :sswitch_a
    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    goto/16 :goto_2

    :cond_e
    move-object/from16 v3, v23

    const/16 v16, 0x6

    goto :goto_5

    :sswitch_b
    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    goto/16 :goto_2

    :cond_f
    move-object/from16 v3, v23

    const/16 v16, 0x5

    goto :goto_5

    :sswitch_c
    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    goto/16 :goto_2

    :cond_10
    move-object/from16 v3, v23

    const/16 v16, 0x4

    goto :goto_5

    :sswitch_d
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    goto/16 :goto_2

    :cond_11
    move-object/from16 v3, v23

    const/16 v16, 0x3

    goto :goto_5

    :sswitch_e
    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    goto/16 :goto_2

    :cond_12
    move-object/from16 v3, v23

    const/16 v16, 0x2

    goto :goto_5

    :sswitch_f
    move-object/from16 v3, v25

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    goto/16 :goto_2

    :cond_13
    move-object/from16 v3, v23

    const/16 v16, 0x1

    goto :goto_5

    :sswitch_10
    move-object/from16 v3, v23

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_14

    goto/16 :goto_3

    :cond_14
    const/16 v16, 0x0

    :goto_5
    packed-switch v16, :pswitch_data_1

    sget-object v1, Lorg/jsoup/parser/B;->r:[Ljava/lang/String;

    invoke-static {v13, v1}, LPd/b;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_33

    iget-object v1, v8, Lorg/jsoup/parser/N;->d:Ljava/lang/String;

    iget-object v3, v2, Lorg/jsoup/parser/b;->e:Ljava/util/ArrayList;

    const/4 v4, 0x0

    :goto_6
    const/16 v6, 0x8

    if-ge v4, v6, :cond_4d

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/b;->k(Ljava/lang/String;)LQd/n;

    move-result-object v5

    if-nez v5, :cond_15

    invoke-virtual/range {p0 .. p2}, Lorg/jsoup/parser/y;->f(LF3/f;Lorg/jsoup/parser/b;)Z

    move-result v13

    goto/16 :goto_1e

    :cond_15
    iget-object v7, v2, Lorg/jsoup/parser/b;->e:Ljava/util/ArrayList;

    invoke-static {v7, v5}, Lorg/jsoup/parser/b;->A(Ljava/util/ArrayList;LQd/n;)Z

    move-result v7

    if-nez v7, :cond_16

    invoke-virtual {v2, v0}, Lorg/jsoup/parser/b;->h(Lorg/jsoup/parser/C;)V

    invoke-virtual {v2, v5}, Lorg/jsoup/parser/b;->M(LQd/n;)V

    goto/16 :goto_1d

    :cond_16
    iget-object v7, v5, LQd/n;->d:Lorg/jsoup/parser/F;

    iget-object v8, v7, Lorg/jsoup/parser/F;->b:Ljava/lang/String;

    invoke-virtual {v2, v8}, Lorg/jsoup/parser/b;->n(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_17

    invoke-virtual {v2, v0}, Lorg/jsoup/parser/b;->h(Lorg/jsoup/parser/C;)V

    goto/16 :goto_1a

    :cond_17
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->f()LQd/n;

    move-result-object v8

    if-eq v8, v5, :cond_18

    invoke-virtual {v2, v0}, Lorg/jsoup/parser/b;->h(Lorg/jsoup/parser/C;)V

    :cond_18
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    :goto_7
    if-ge v12, v8, :cond_1e

    const/16 v13, 0x40

    if-ge v12, v13, :cond_1e

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, LQd/n;

    if-ne v13, v5, :cond_1c

    const/4 v14, 0x1

    add-int/lit8 v9, v12, -0x1

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, LQd/n;

    const/4 v10, 0x0

    :goto_8
    iget-object v11, v2, Lorg/jsoup/parser/b;->q:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_1a

    iget-object v11, v2, Lorg/jsoup/parser/b;->q:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    if-ne v13, v11, :cond_19

    goto :goto_9

    :cond_19
    const/4 v11, 0x1

    add-int/2addr v10, v11

    goto :goto_8

    :cond_1a
    const/4 v10, -0x1

    :goto_9
    move-object/from16 v15, v22

    const/4 v11, 0x1

    :cond_1b
    :goto_a
    const/4 v13, 0x1

    goto :goto_b

    :cond_1c
    if-eqz v11, :cond_1d

    iget-object v14, v13, LQd/n;->d:Lorg/jsoup/parser/F;

    iget-object v14, v14, Lorg/jsoup/parser/F;->b:Ljava/lang/String;

    move-object/from16 v15, v22

    invoke-static {v14, v15}, LPd/b;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1b

    goto :goto_c

    :cond_1d
    move-object/from16 v15, v22

    goto :goto_a

    :goto_b
    add-int/2addr v12, v13

    move-object/from16 v22, v15

    goto :goto_7

    :cond_1e
    move-object/from16 v15, v22

    const/4 v13, 0x0

    :goto_c
    if-nez v13, :cond_1f

    iget-object v0, v7, Lorg/jsoup/parser/F;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lorg/jsoup/parser/b;->E(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lorg/jsoup/parser/b;->M(LQd/n;)V

    goto/16 :goto_1d

    :cond_1f
    move-object v11, v13

    move-object v12, v11

    const/4 v8, 0x0

    :goto_d
    const/4 v14, 0x3

    if-ge v8, v14, :cond_22

    iget-object v6, v2, Lorg/jsoup/parser/b;->e:Ljava/util/ArrayList;

    invoke-static {v6, v11}, Lorg/jsoup/parser/b;->A(Ljava/util/ArrayList;LQd/n;)Z

    move-result v6

    if-eqz v6, :cond_20

    invoke-virtual {v2, v11}, Lorg/jsoup/parser/b;->a(LQd/n;)LQd/n;

    move-result-object v11

    :cond_20
    iget-object v6, v2, Lorg/jsoup/parser/b;->q:Ljava/util/ArrayList;

    invoke-static {v6, v11}, Lorg/jsoup/parser/b;->A(Ljava/util/ArrayList;LQd/n;)Z

    move-result v6

    if-nez v6, :cond_21

    invoke-virtual {v2, v11}, Lorg/jsoup/parser/b;->N(LQd/n;)V

    move-object/from16 v16, v1

    move-object/from16 v17, v3

    :goto_e
    const/4 v1, 0x1

    goto/16 :goto_13

    :cond_21
    if-ne v11, v5, :cond_23

    :cond_22
    move-object/from16 v16, v1

    move-object/from16 v17, v3

    goto/16 :goto_14

    :cond_23
    new-instance v6, LQd/n;

    invoke-virtual {v11}, LQd/n;->p()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v16, v1

    sget-object v1, Lorg/jsoup/parser/E;->d:Lorg/jsoup/parser/E;

    invoke-virtual {v2, v14, v1}, Lorg/jsoup/parser/b;->P(Ljava/lang/String;Lorg/jsoup/parser/E;)Lorg/jsoup/parser/F;

    move-result-object v1

    iget-object v14, v2, Lorg/jsoup/parser/b;->f:Ljava/lang/String;

    move-object/from16 v17, v3

    const/4 v3, 0x0

    invoke-direct {v6, v1, v14, v3}, LQd/n;-><init>(Lorg/jsoup/parser/F;Ljava/lang/String;LQd/c;)V

    iget-object v1, v2, Lorg/jsoup/parser/b;->q:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v14, -0x1

    if-eq v3, v14, :cond_24

    const/16 v18, 0x1

    goto :goto_f

    :cond_24
    const/16 v18, 0x0

    :goto_f
    invoke-static/range {v18 .. v18}, LOd/b;->d(Z)V

    invoke-virtual {v1, v3, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v2, Lorg/jsoup/parser/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v14, :cond_25

    const/4 v11, 0x1

    goto :goto_10

    :cond_25
    const/4 v11, 0x0

    :goto_10
    invoke-static {v11}, LOd/b;->d(Z)V

    invoke-virtual {v1, v3, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    if-ne v12, v13, :cond_28

    const/4 v1, 0x0

    :goto_11
    iget-object v3, v2, Lorg/jsoup/parser/b;->q:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_27

    iget-object v3, v2, Lorg/jsoup/parser/b;->q:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v6, v3, :cond_26

    const/4 v3, 0x1

    goto :goto_12

    :cond_26
    const/4 v3, 0x1

    add-int/2addr v1, v3

    goto :goto_11

    :cond_27
    const/4 v3, 0x1

    const/4 v1, -0x1

    :goto_12
    add-int/lit8 v10, v1, 0x1

    :cond_28
    iget-object v1, v12, LQd/u;->a:LQd/u;

    check-cast v1, LQd/n;

    if-eqz v1, :cond_29

    invoke-virtual {v12}, LQd/u;->w()V

    :cond_29
    invoke-virtual {v6, v12}, LQd/n;->z(LQd/u;)V

    move-object v11, v6

    move-object v12, v11

    goto :goto_e

    :goto_13
    add-int/2addr v8, v1

    move-object/from16 v1, v16

    move-object/from16 v3, v17

    const/16 v6, 0x8

    goto/16 :goto_d

    :goto_14
    if-eqz v9, :cond_2d

    iget-object v1, v9, LQd/n;->d:Lorg/jsoup/parser/F;

    iget-object v1, v1, Lorg/jsoup/parser/F;->b:Ljava/lang/String;

    sget-object v3, Lorg/jsoup/parser/B;->s:[Ljava/lang/String;

    invoke-static {v1, v3}, LPd/b;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b

    iget-object v1, v12, LQd/u;->a:LQd/u;

    check-cast v1, LQd/n;

    if-eqz v1, :cond_2a

    invoke-virtual {v12}, LQd/u;->w()V

    :cond_2a
    invoke-virtual {v2, v12}, Lorg/jsoup/parser/b;->x(LQd/u;)V

    goto :goto_15

    :cond_2b
    iget-object v1, v12, LQd/u;->a:LQd/u;

    check-cast v1, LQd/n;

    if-eqz v1, :cond_2c

    invoke-virtual {v12}, LQd/u;->w()V

    :cond_2c
    invoke-virtual {v9, v12}, LQd/n;->z(LQd/u;)V

    :cond_2d
    :goto_15
    new-instance v1, LQd/n;

    iget-object v3, v2, Lorg/jsoup/parser/b;->f:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v1, v7, v3, v6}, LQd/n;-><init>(Lorg/jsoup/parser/F;Ljava/lang/String;LQd/c;)V

    invoke-virtual {v1}, LQd/n;->e()LQd/c;

    move-result-object v3

    invoke-virtual {v5}, LQd/n;->e()LQd/c;

    move-result-object v6

    invoke-virtual {v3, v6}, LQd/c;->g(LQd/c;)V

    invoke-virtual {v13}, LQd/n;->g()I

    move-result v3

    if-nez v3, :cond_2e

    sget-object v3, LQd/u;->c:Ljava/util/List;

    goto :goto_16

    :cond_2e
    invoke-virtual {v13}, LQd/n;->k()Ljava/util/List;

    move-result-object v3

    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    :goto_16
    if-eqz v3, :cond_32

    iget-object v6, v1, LQd/n;->f:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ltz v6, :cond_2f

    const/4 v7, 0x1

    goto :goto_17

    :cond_2f
    const/4 v7, 0x0

    :goto_17
    if-eqz v7, :cond_31

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v3, 0x0

    new-array v8, v3, [LQd/u;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [LQd/u;

    invoke-virtual {v1, v6, v3}, LQd/u;->b(I[LQd/u;)V

    invoke-virtual {v13, v1}, LQd/n;->z(LQd/u;)V

    invoke-virtual {v2, v5}, Lorg/jsoup/parser/b;->M(LQd/n;)V

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/b;->b(LQd/n;)V

    :try_start_0
    iget-object v3, v2, Lorg/jsoup/parser/b;->q:Ljava/util/ArrayList;

    invoke-virtual {v3, v10, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_18

    :catch_0
    iget-object v3, v2, Lorg/jsoup/parser/b;->q:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_18
    invoke-virtual {v2, v5}, Lorg/jsoup/parser/b;->N(LQd/n;)V

    iget-object v3, v2, Lorg/jsoup/parser/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_30

    const/4 v5, 0x1

    goto :goto_19

    :cond_30
    const/4 v5, 0x0

    :goto_19
    invoke-static {v5}, LOd/b;->d(Z)V

    iget-object v5, v2, Lorg/jsoup/parser/b;->e:Ljava/util/ArrayList;

    const/4 v6, 0x1

    add-int/2addr v3, v6

    invoke-virtual {v5, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/2addr v4, v6

    move-object/from16 v22, v15

    move-object/from16 v1, v16

    move-object/from16 v3, v17

    goto/16 :goto_6

    :cond_31
    new-instance v0, LOd/c;

    const-string v1, "Insert position out of bounds."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_32
    new-instance v0, LOd/c;

    const-string v1, "Children collection to be inserted must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_33
    sget-object v1, Lorg/jsoup/parser/B;->p:[Ljava/lang/String;

    invoke-static {v13, v1}, LPd/b;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-virtual {v2, v13}, Lorg/jsoup/parser/b;->n(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_34

    invoke-virtual {v2, v0}, Lorg/jsoup/parser/b;->h(Lorg/jsoup/parser/C;)V

    :goto_1a
    const/4 v13, 0x0

    goto/16 :goto_1e

    :cond_34
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/b;->j(Z)V

    invoke-virtual {v2, v13}, Lorg/jsoup/parser/b;->g(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_35

    invoke-virtual {v2, v0}, Lorg/jsoup/parser/b;->h(Lorg/jsoup/parser/C;)V

    :cond_35
    invoke-virtual {v2, v13}, Lorg/jsoup/parser/b;->E(Ljava/lang/String;)V

    goto/16 :goto_1d

    :cond_36
    move-object/from16 v1, v21

    invoke-static {v13, v1}, LPd/b;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_39

    move-object/from16 v6, v24

    invoke-virtual {v2, v6}, Lorg/jsoup/parser/b;->n(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4d

    invoke-virtual {v2, v13}, Lorg/jsoup/parser/b;->n(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_37

    invoke-virtual {v2, v0}, Lorg/jsoup/parser/b;->h(Lorg/jsoup/parser/C;)V

    goto :goto_1a

    :cond_37
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/b;->j(Z)V

    invoke-virtual {v2, v13}, Lorg/jsoup/parser/b;->g(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_38

    invoke-virtual {v2, v0}, Lorg/jsoup/parser/b;->h(Lorg/jsoup/parser/C;)V

    :cond_38
    invoke-virtual {v2, v13}, Lorg/jsoup/parser/b;->E(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->c()V

    goto/16 :goto_1d

    :cond_39
    invoke-virtual/range {p0 .. p2}, Lorg/jsoup/parser/y;->f(LF3/f;Lorg/jsoup/parser/b;)Z

    move-result v13

    goto/16 :goto_1e

    :pswitch_3
    invoke-virtual/range {p0 .. p2}, Lorg/jsoup/parser/y;->f(LF3/f;Lorg/jsoup/parser/b;)Z

    move-result v13

    goto/16 :goto_1e

    :pswitch_4
    invoke-virtual {v2, v4}, Lorg/jsoup/parser/b;->z(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3a

    invoke-virtual {v2, v0}, Lorg/jsoup/parser/b;->h(Lorg/jsoup/parser/C;)V

    goto :goto_1a

    :cond_3a
    invoke-virtual {v2, v6}, Lorg/jsoup/parser/b;->B([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-virtual {v2, v0}, Lorg/jsoup/parser/b;->h(Lorg/jsoup/parser/C;)V

    :cond_3b
    sget-object v0, Lorg/jsoup/parser/C;->AfterBody:Lorg/jsoup/parser/C;

    iput-object v0, v2, Lorg/jsoup/parser/b;->l:Lorg/jsoup/parser/C;

    move-object/from16 v8, p1

    invoke-virtual {v2, v8}, Lorg/jsoup/parser/b;->G(LF3/f;)Z

    move-result v13

    goto/16 :goto_1e

    :pswitch_5
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/b;->z(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3f

    iget-object v1, v2, Lorg/jsoup/parser/b;->p:LQd/s;

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/jsoup/parser/b;->p:LQd/s;

    if-eqz v1, :cond_3e

    invoke-virtual {v2, v13}, Lorg/jsoup/parser/b;->n(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3c

    goto :goto_1b

    :cond_3c
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/jsoup/parser/b;->j(Z)V

    invoke-virtual {v2, v13}, Lorg/jsoup/parser/b;->g(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3d

    invoke-virtual {v2, v0}, Lorg/jsoup/parser/b;->h(Lorg/jsoup/parser/C;)V

    :cond_3d
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/b;->N(LQd/n;)V

    goto/16 :goto_1d

    :cond_3e
    :goto_1b
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/b;->h(Lorg/jsoup/parser/C;)V

    goto/16 :goto_1a

    :cond_3f
    invoke-virtual {v2, v13}, Lorg/jsoup/parser/b;->n(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_40

    invoke-virtual {v2, v0}, Lorg/jsoup/parser/b;->h(Lorg/jsoup/parser/C;)V

    goto/16 :goto_1a

    :cond_40
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/b;->j(Z)V

    invoke-virtual {v2, v13}, Lorg/jsoup/parser/b;->g(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_41

    invoke-virtual {v2, v0}, Lorg/jsoup/parser/b;->h(Lorg/jsoup/parser/C;)V

    :cond_41
    invoke-virtual {v2, v13}, Lorg/jsoup/parser/b;->E(Ljava/lang/String;)V

    goto/16 :goto_1d

    :pswitch_6
    invoke-virtual {v2, v4}, Lorg/jsoup/parser/b;->n(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_42

    invoke-virtual {v2, v0}, Lorg/jsoup/parser/b;->h(Lorg/jsoup/parser/C;)V

    goto/16 :goto_1a

    :cond_42
    invoke-virtual {v2, v6}, Lorg/jsoup/parser/b;->B([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-virtual {v2, v0}, Lorg/jsoup/parser/b;->h(Lorg/jsoup/parser/C;)V

    :cond_43
    sget-object v0, Lorg/jsoup/parser/C;->AfterBody:Lorg/jsoup/parser/C;

    iput-object v0, v2, Lorg/jsoup/parser/b;->l:Lorg/jsoup/parser/C;

    goto/16 :goto_1d

    :pswitch_7
    sget-object v3, Lorg/jsoup/parser/b;->y:[Ljava/lang/String;

    iget-object v4, v2, Lorg/jsoup/parser/b;->w:[Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v13, v4, v5

    invoke-virtual {v2, v4, v1, v3}, Lorg/jsoup/parser/b;->p([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_44

    invoke-virtual {v2, v0}, Lorg/jsoup/parser/b;->h(Lorg/jsoup/parser/C;)V

    goto/16 :goto_1a

    :cond_44
    invoke-virtual {v2, v13}, Lorg/jsoup/parser/b;->i(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Lorg/jsoup/parser/b;->g(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_45

    invoke-virtual {v2, v0}, Lorg/jsoup/parser/b;->h(Lorg/jsoup/parser/C;)V

    :cond_45
    invoke-virtual {v2, v13}, Lorg/jsoup/parser/b;->E(Ljava/lang/String;)V

    goto/16 :goto_1d

    :pswitch_8
    move-object/from16 v3, v20

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Lorg/jsoup/parser/b;->p([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_46

    invoke-virtual {v2, v0}, Lorg/jsoup/parser/b;->h(Lorg/jsoup/parser/C;)V

    goto/16 :goto_1a

    :cond_46
    invoke-virtual {v2, v13}, Lorg/jsoup/parser/b;->i(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Lorg/jsoup/parser/b;->g(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_47

    invoke-virtual {v2, v0}, Lorg/jsoup/parser/b;->h(Lorg/jsoup/parser/C;)V

    :cond_47
    iget-object v0, v2, Lorg/jsoup/parser/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_1c
    if-ltz v0, :cond_4d

    iget-object v1, v2, Lorg/jsoup/parser/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LQd/n;

    iget-object v4, v2, Lorg/jsoup/parser/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, v1, LQd/n;->d:Lorg/jsoup/parser/F;

    iget-object v1, v1, Lorg/jsoup/parser/F;->b:Ljava/lang/String;

    invoke-static {v1, v3}, LPd/b;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_48

    goto :goto_1d

    :cond_48
    const/4 v1, -0x1

    add-int/2addr v0, v1

    goto :goto_1c

    :pswitch_9
    invoke-virtual {v2, v13}, Lorg/jsoup/parser/b;->n(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_49

    invoke-virtual {v2, v0}, Lorg/jsoup/parser/b;->h(Lorg/jsoup/parser/C;)V

    goto/16 :goto_1a

    :cond_49
    invoke-virtual {v2, v13}, Lorg/jsoup/parser/b;->i(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Lorg/jsoup/parser/b;->g(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4a

    invoke-virtual {v2, v0}, Lorg/jsoup/parser/b;->h(Lorg/jsoup/parser/C;)V

    :cond_4a
    invoke-virtual {v2, v13}, Lorg/jsoup/parser/b;->E(Ljava/lang/String;)V

    goto :goto_1d

    :pswitch_a
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/b;->h(Lorg/jsoup/parser/C;)V

    invoke-virtual {v2, v10}, Lorg/jsoup/parser/b;->J(Ljava/lang/String;)V

    goto/16 :goto_1a

    :pswitch_b
    invoke-virtual {v2, v13}, Lorg/jsoup/parser/b;->m(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4b

    invoke-virtual {v2, v0}, Lorg/jsoup/parser/b;->h(Lorg/jsoup/parser/C;)V

    invoke-virtual {v2, v13}, Lorg/jsoup/parser/b;->J(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Lorg/jsoup/parser/b;->G(LF3/f;)Z

    move-result v13

    goto :goto_1e

    :cond_4b
    invoke-virtual {v2, v13}, Lorg/jsoup/parser/b;->i(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Lorg/jsoup/parser/b;->g(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4c

    invoke-virtual {v2, v0}, Lorg/jsoup/parser/b;->h(Lorg/jsoup/parser/C;)V

    :cond_4c
    invoke-virtual {v2, v13}, Lorg/jsoup/parser/b;->E(Ljava/lang/String;)V

    goto :goto_1d

    :pswitch_c
    move-object/from16 v8, p1

    sget-object v0, Lorg/jsoup/parser/C;->InHead:Lorg/jsoup/parser/C;

    invoke-virtual {v2, v8, v0}, Lorg/jsoup/parser/b;->H(LF3/f;Lorg/jsoup/parser/C;)Z

    :cond_4d
    :goto_1d
    const/4 v13, 0x1

    :goto_1e
    return v13

    :pswitch_d
    move-object v8, v1

    move-object/from16 v1, v21

    move-object/from16 v13, v25

    const/16 v19, 0x3

    move-object v6, v8

    check-cast v6, Lorg/jsoup/parser/M;

    iget-object v0, v6, Lorg/jsoup/parser/N;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v21, v1

    sget-object v1, Lorg/jsoup/parser/B;->j:[Ljava/lang/String;

    move-object/from16 v25, v1

    const-string v1, "ruby"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v26

    sparse-switch v26, :sswitch_data_1

    :goto_1f
    const/4 v3, -0x1

    goto/16 :goto_20

    :sswitch_11
    const-string v3, "noembed"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4e

    goto :goto_1f

    :cond_4e
    const/16 v3, 0x37

    goto/16 :goto_20

    :sswitch_12
    const-string v3, "isindex"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4f

    goto :goto_1f

    :cond_4f
    const/16 v3, 0x36

    goto/16 :goto_20

    :sswitch_13
    const-string v3, "plaintext"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_50

    goto :goto_1f

    :cond_50
    const/16 v3, 0x35

    goto/16 :goto_20

    :sswitch_14
    const-string v3, "listing"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_51

    goto :goto_1f

    :cond_51
    const/16 v3, 0x34

    goto/16 :goto_20

    :sswitch_15
    const-string v3, "table"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_52

    goto :goto_1f

    :cond_52
    const/16 v3, 0x33

    goto/16 :goto_20

    :sswitch_16
    const-string v3, "small"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_53

    goto :goto_1f

    :cond_53
    const/16 v3, 0x32

    goto/16 :goto_20

    :sswitch_17
    const-string v3, "input"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_54

    goto :goto_1f

    :cond_54
    const/16 v3, 0x31

    goto/16 :goto_20

    :sswitch_18
    const-string v3, "image"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_55

    goto :goto_1f

    :cond_55
    const/16 v3, 0x30

    goto/16 :goto_20

    :sswitch_19
    const-string v3, "embed"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_56

    goto :goto_1f

    :cond_56
    const/16 v3, 0x2f

    goto/16 :goto_20

    :sswitch_1a
    const-string v3, "span"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_57

    goto/16 :goto_1f

    :cond_57
    const/16 v3, 0x2e

    goto/16 :goto_20

    :sswitch_1b
    const-string v3, "nobr"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_58

    goto/16 :goto_1f

    :cond_58
    const/16 v3, 0x2d

    goto/16 :goto_20

    :sswitch_1c
    const-string v3, "math"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_59

    goto/16 :goto_1f

    :cond_59
    const/16 v3, 0x2c

    goto/16 :goto_20

    :sswitch_1d
    const-string v3, "html"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5a

    goto/16 :goto_1f

    :cond_5a
    const/16 v3, 0x2b

    goto/16 :goto_20

    :sswitch_1e
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5b

    goto/16 :goto_1f

    :cond_5b
    const/16 v3, 0x2a

    goto/16 :goto_20

    :sswitch_1f
    const-string v3, "font"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5c

    goto/16 :goto_1f

    :cond_5c
    const/16 v3, 0x29

    goto/16 :goto_20

    :sswitch_20
    const-string v3, "code"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5d

    goto/16 :goto_1f

    :cond_5d
    const/16 v3, 0x28

    goto/16 :goto_20

    :sswitch_21
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5e

    goto/16 :goto_1f

    :cond_5e
    const/16 v3, 0x27

    goto/16 :goto_20

    :sswitch_22
    const-string v3, "area"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5f

    goto/16 :goto_1f

    :cond_5f
    const/16 v3, 0x26

    goto/16 :goto_20

    :sswitch_23
    const-string v3, "xmp"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_60

    goto/16 :goto_1f

    :cond_60
    const/16 v3, 0x25

    goto/16 :goto_20

    :sswitch_24
    const-string v3, "wbr"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_61

    goto/16 :goto_1f

    :cond_61
    const/16 v3, 0x24

    goto/16 :goto_20

    :sswitch_25
    const-string v3, "svg"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_62

    goto/16 :goto_1f

    :cond_62
    const/16 v3, 0x23

    goto/16 :goto_20

    :sswitch_26
    const-string v3, "rtc"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_63

    goto/16 :goto_1f

    :cond_63
    const/16 v3, 0x22

    goto/16 :goto_20

    :sswitch_27
    const-string v3, "pre"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_64

    goto/16 :goto_1f

    :cond_64
    const/16 v3, 0x21

    goto/16 :goto_20

    :sswitch_28
    const-string v3, "img"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_65

    goto/16 :goto_1f

    :cond_65
    const/16 v3, 0x20

    goto/16 :goto_20

    :sswitch_29
    const-string v3, "big"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_66

    goto/16 :goto_1f

    :cond_66
    const/16 v3, 0x1f

    goto/16 :goto_20

    :sswitch_2a
    const-string v3, "tt"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_67

    goto/16 :goto_1f

    :cond_67
    const/16 v3, 0x1e

    goto/16 :goto_20

    :sswitch_2b
    const-string v3, "rt"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_68

    goto/16 :goto_1f

    :cond_68
    const/16 v3, 0x1d

    goto/16 :goto_20

    :sswitch_2c
    const-string v3, "rp"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_69

    goto/16 :goto_1f

    :cond_69
    const/16 v3, 0x1c

    goto/16 :goto_20

    :sswitch_2d
    const-string v3, "rb"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6a

    goto/16 :goto_1f

    :cond_6a
    const/16 v3, 0x1b

    goto/16 :goto_20

    :sswitch_2e
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6b

    goto/16 :goto_1f

    :cond_6b
    const/16 v3, 0x1a

    goto/16 :goto_20

    :sswitch_2f
    const-string v3, "hr"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6c

    goto/16 :goto_1f

    :cond_6c
    const/16 v3, 0x19

    goto/16 :goto_20

    :sswitch_30
    const-string v3, "h6"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6d

    goto/16 :goto_1f

    :cond_6d
    const/16 v3, 0x18

    goto/16 :goto_20

    :sswitch_31
    const-string v3, "h5"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6e

    goto/16 :goto_1f

    :cond_6e
    const/16 v3, 0x17

    goto/16 :goto_20

    :sswitch_32
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6f

    goto/16 :goto_1f

    :cond_6f
    const/16 v3, 0x16

    goto/16 :goto_20

    :sswitch_33
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_70

    goto/16 :goto_1f

    :cond_70
    const/16 v3, 0x15

    goto/16 :goto_20

    :sswitch_34
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_71

    goto/16 :goto_1f

    :cond_71
    const/16 v3, 0x14

    goto/16 :goto_20

    :sswitch_35
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_72

    goto/16 :goto_1f

    :cond_72
    const/16 v3, 0x13

    goto/16 :goto_20

    :sswitch_36
    const-string v3, "em"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_73

    goto/16 :goto_1f

    :cond_73
    const/16 v3, 0x12

    goto/16 :goto_20

    :sswitch_37
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_74

    goto/16 :goto_1f

    :cond_74
    const/16 v3, 0x11

    goto/16 :goto_20

    :sswitch_38
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_75

    goto/16 :goto_1f

    :cond_75
    const/16 v3, 0x10

    goto/16 :goto_20

    :sswitch_39
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_76

    goto/16 :goto_1f

    :cond_76
    const/16 v3, 0xf

    goto/16 :goto_20

    :sswitch_3a
    const-string v3, "u"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_77

    goto/16 :goto_1f

    :cond_77
    const/16 v3, 0xe

    goto/16 :goto_20

    :sswitch_3b
    const-string v3, "s"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_78

    goto/16 :goto_1f

    :cond_78
    const/16 v3, 0xd

    goto/16 :goto_20

    :sswitch_3c
    const-string v3, "i"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_79

    goto/16 :goto_1f

    :cond_79
    const/16 v3, 0xc

    goto/16 :goto_20

    :sswitch_3d
    const-string v3, "b"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7a

    goto/16 :goto_1f

    :cond_7a
    const/16 v3, 0xb

    goto/16 :goto_20

    :sswitch_3e
    const-string v3, "a"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7b

    goto/16 :goto_1f

    :cond_7b
    const/16 v3, 0xa

    goto/16 :goto_20

    :sswitch_3f
    const-string v3, "optgroup"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7c

    goto/16 :goto_1f

    :cond_7c
    const/16 v3, 0x9

    goto/16 :goto_20

    :sswitch_40
    const-string v3, "strong"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7d

    goto/16 :goto_1f

    :cond_7d
    const/16 v3, 0x8

    goto/16 :goto_20

    :sswitch_41
    const-string v3, "strike"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7e

    goto/16 :goto_1f

    :cond_7e
    const/4 v3, 0x7

    goto :goto_20

    :sswitch_42
    const-string v3, "select"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7f

    goto/16 :goto_1f

    :cond_7f
    const/4 v3, 0x6

    goto :goto_20

    :sswitch_43
    const-string v3, "textarea"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_80

    goto/16 :goto_1f

    :cond_80
    const/4 v3, 0x5

    goto :goto_20

    :sswitch_44
    const-string v3, "option"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_81

    goto/16 :goto_1f

    :cond_81
    const/4 v3, 0x4

    goto :goto_20

    :sswitch_45
    const-string v3, "keygen"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_82

    goto/16 :goto_1f

    :cond_82
    move/from16 v3, v19

    goto :goto_20

    :sswitch_46
    const-string v3, "iframe"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_83

    goto/16 :goto_1f

    :cond_83
    const/4 v3, 0x2

    goto :goto_20

    :sswitch_47
    const-string v3, "button"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_84

    goto/16 :goto_1f

    :cond_84
    const/4 v3, 0x1

    goto :goto_20

    :sswitch_48
    const-string v3, "frameset"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_85

    goto/16 :goto_1f

    :cond_85
    const/4 v3, 0x0

    :goto_20
    packed-switch v3, :pswitch_data_2

    sget-object v1, Lorg/jsoup/parser/F;->j:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_86

    invoke-virtual {v2, v6}, Lorg/jsoup/parser/b;->r(Lorg/jsoup/parser/M;)LQd/n;

    goto/16 :goto_30

    :cond_86
    sget-object v1, Lorg/jsoup/parser/B;->h:[Ljava/lang/String;

    invoke-static {v0, v1}, LPd/b;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_88

    invoke-virtual {v2, v13}, Lorg/jsoup/parser/b;->m(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_87

    invoke-virtual {v2, v13}, Lorg/jsoup/parser/b;->I(Ljava/lang/String;)Z

    :cond_87
    invoke-virtual {v2, v6}, Lorg/jsoup/parser/b;->r(Lorg/jsoup/parser/M;)LQd/n;

    goto/16 :goto_30

    :cond_88
    sget-object v1, Lorg/jsoup/parser/B;->g:[Ljava/lang/String;

    invoke-static {v0, v1}, LPd/b;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_89

    sget-object v0, Lorg/jsoup/parser/C;->InHead:Lorg/jsoup/parser/C;

    iput-object v8, v2, Lorg/jsoup/parser/b;->g:LF3/f;

    invoke-virtual {v0, v8, v2}, Lorg/jsoup/parser/C;->e(LF3/f;Lorg/jsoup/parser/b;)Z

    move-result v13

    goto/16 :goto_31

    :cond_89
    move-object/from16 v1, v21

    invoke-static {v0, v1}, LPd/b;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8a

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->L()V

    invoke-virtual {v2, v6}, Lorg/jsoup/parser/b;->r(Lorg/jsoup/parser/M;)LQd/n;

    iget-object v0, v2, Lorg/jsoup/parser/b;->q:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-boolean v0, v2, Lorg/jsoup/parser/b;->u:Z

    goto/16 :goto_30

    :cond_8a
    sget-object v1, Lorg/jsoup/parser/B;->m:[Ljava/lang/String;

    invoke-static {v0, v1}, LPd/b;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8b

    invoke-virtual {v2, v6}, Lorg/jsoup/parser/b;->v(Lorg/jsoup/parser/M;)LQd/n;

    goto/16 :goto_30

    :cond_8b
    sget-object v1, Lorg/jsoup/parser/B;->o:[Ljava/lang/String;

    invoke-static {v0, v1}, LPd/b;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8d

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lorg/jsoup/parser/b;->h(Lorg/jsoup/parser/C;)V

    :cond_8c
    :goto_21
    const/4 v13, 0x0

    goto/16 :goto_31

    :cond_8d
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->L()V

    invoke-virtual {v2, v6}, Lorg/jsoup/parser/b;->r(Lorg/jsoup/parser/M;)LQd/n;

    goto/16 :goto_30

    :pswitch_e
    invoke-static {v6, v2}, Lorg/jsoup/parser/C;->c(Lorg/jsoup/parser/M;Lorg/jsoup/parser/b;)V

    goto/16 :goto_30

    :pswitch_f
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lorg/jsoup/parser/b;->h(Lorg/jsoup/parser/C;)V

    iget-object v0, v2, Lorg/jsoup/parser/b;->p:LQd/s;

    if-eqz v0, :cond_8e

    :goto_22
    goto :goto_21

    :cond_8e
    invoke-virtual {v2, v14}, Lorg/jsoup/parser/b;->J(Ljava/lang/String;)V

    iget-object v0, v6, Lorg/jsoup/parser/N;->m:LQd/c;

    if-eqz v0, :cond_8f

    const-string v1, "action"

    invoke-virtual {v0, v1}, LQd/c;->s(Ljava/lang/String;)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_8f

    iget-object v0, v2, Lorg/jsoup/parser/b;->p:LQd/s;

    if-eqz v0, :cond_8f

    iget-object v4, v6, Lorg/jsoup/parser/N;->m:LQd/c;

    if-eqz v4, :cond_8f

    invoke-virtual {v4, v1}, LQd/c;->s(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v3, :cond_8f

    iget-object v3, v6, Lorg/jsoup/parser/N;->m:LQd/c;

    invoke-virtual {v3, v1}, LQd/c;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, LQd/n;->e()LQd/c;

    move-result-object v0

    invoke-virtual {v0, v1, v3}, LQd/c;->y(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8f
    const-string v0, "hr"

    invoke-virtual {v2, v0}, Lorg/jsoup/parser/b;->J(Ljava/lang/String;)V

    const-string v1, "label"

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/b;->J(Ljava/lang/String;)V

    iget-object v3, v6, Lorg/jsoup/parser/N;->m:LQd/c;

    if-eqz v3, :cond_90

    const-string v4, "prompt"

    invoke-virtual {v3, v4}, LQd/c;->s(Ljava/lang/String;)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_90

    iget-object v3, v6, Lorg/jsoup/parser/N;->m:LQd/c;

    invoke-virtual {v3, v4}, LQd/c;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_23

    :cond_90
    const-string v3, "This is a searchable index. Enter search keywords: "

    :goto_23
    new-instance v4, Lorg/jsoup/parser/H;

    invoke-direct {v4}, Lorg/jsoup/parser/H;-><init>()V

    iput-object v3, v4, Lorg/jsoup/parser/H;->c:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lorg/jsoup/parser/b;->G(LF3/f;)Z

    new-instance v3, LQd/c;

    invoke-direct {v3}, LQd/c;-><init>()V

    invoke-virtual {v6}, Lorg/jsoup/parser/N;->W0()Z

    move-result v4

    if-eqz v4, :cond_93

    iget-object v4, v6, Lorg/jsoup/parser/N;->m:LQd/c;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v13, 0x0

    :cond_91
    :goto_24
    iget v5, v4, LQd/c;->a:I

    if-ge v13, v5, :cond_92

    iget-object v5, v4, LQd/c;->b:[Ljava/lang/String;

    aget-object v5, v5, v13

    invoke-static {v5}, LQd/c;->w(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_92

    const/4 v5, 0x1

    add-int/2addr v13, v5

    goto :goto_24

    :cond_92
    iget v5, v4, LQd/c;->a:I

    if-ge v13, v5, :cond_93

    new-instance v5, LQd/a;

    iget-object v6, v4, LQd/c;->b:[Ljava/lang/String;

    aget-object v6, v6, v13

    iget-object v7, v4, LQd/c;->c:[Ljava/lang/Object;

    aget-object v7, v7, v13

    check-cast v7, Ljava/lang/String;

    invoke-direct {v5, v6, v7, v4}, LQd/a;-><init>(Ljava/lang/String;Ljava/lang/String;LQd/c;)V

    const/4 v6, 0x1

    add-int/2addr v13, v6

    iget-object v6, v5, LQd/a;->a:Ljava/lang/String;

    sget-object v7, Lorg/jsoup/parser/B;->n:[Ljava/lang/String;

    invoke-static {v6, v7}, LPd/b;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_91

    invoke-virtual {v3, v5}, LQd/c;->x(LQd/a;)V

    goto :goto_24

    :cond_93
    const-string v4, "isindex"

    move-object/from16 v5, v24

    invoke-virtual {v3, v5, v4}, LQd/c;->y(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v2, Lorg/jsoup/parser/b;->g:LF3/f;

    iget-object v5, v2, Lorg/jsoup/parser/b;->j:Lorg/jsoup/parser/M;

    const-string v6, "input"

    if-ne v4, v5, :cond_94

    new-instance v4, Lorg/jsoup/parser/M;

    invoke-direct {v4}, Lorg/jsoup/parser/M;-><init>()V

    iput-object v6, v4, Lorg/jsoup/parser/N;->c:Ljava/lang/String;

    iput-object v3, v4, Lorg/jsoup/parser/N;->m:LQd/c;

    invoke-static {v6}, LG5/u;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lorg/jsoup/parser/N;->d:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lorg/jsoup/parser/b;->G(LF3/f;)Z

    goto :goto_25

    :cond_94
    invoke-virtual {v5}, Lorg/jsoup/parser/M;->a1()Lorg/jsoup/parser/N;

    iput-object v6, v5, Lorg/jsoup/parser/N;->c:Ljava/lang/String;

    iput-object v3, v5, Lorg/jsoup/parser/N;->m:LQd/c;

    invoke-static {v6}, LG5/u;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v5, Lorg/jsoup/parser/N;->d:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lorg/jsoup/parser/b;->G(LF3/f;)Z

    :goto_25
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/b;->I(Ljava/lang/String;)Z

    invoke-virtual {v2, v0}, Lorg/jsoup/parser/b;->J(Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Lorg/jsoup/parser/b;->I(Ljava/lang/String;)Z

    goto/16 :goto_30

    :pswitch_10
    invoke-virtual {v2, v13}, Lorg/jsoup/parser/b;->m(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_95

    invoke-virtual {v2, v13}, Lorg/jsoup/parser/b;->I(Ljava/lang/String;)Z

    :cond_95
    invoke-virtual {v2, v6}, Lorg/jsoup/parser/b;->r(Lorg/jsoup/parser/M;)LQd/n;

    iget-object v0, v2, Lorg/jsoup/parser/b;->c:Lorg/jsoup/parser/S;

    sget-object v1, Lorg/jsoup/parser/i1;->PLAINTEXT:Lorg/jsoup/parser/i1;

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/S;->p(Lorg/jsoup/parser/i1;)V

    goto/16 :goto_30

    :pswitch_11
    iget-object v0, v2, Lorg/jsoup/parser/b;->d:LQd/j;

    iget-object v0, v0, LQd/j;->l:LQd/i;

    sget-object v1, LQd/i;->quirks:LQd/i;

    if-eq v0, v1, :cond_96

    invoke-virtual {v2, v13}, Lorg/jsoup/parser/b;->m(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_96

    invoke-virtual {v2, v13}, Lorg/jsoup/parser/b;->I(Ljava/lang/String;)Z

    :cond_96
    invoke-virtual {v2, v6}, Lorg/jsoup/parser/b;->r(Lorg/jsoup/parser/M;)LQd/n;

    const/4 v0, 0x0

    iput-boolean v0, v2, Lorg/jsoup/parser/b;->u:Z

    sget-object v0, Lorg/jsoup/parser/C;->InTable:Lorg/jsoup/parser/C;

    iput-object v0, v2, Lorg/jsoup/parser/b;->l:Lorg/jsoup/parser/C;

    goto/16 :goto_30

    :pswitch_12
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->L()V

    invoke-virtual {v2, v6}, Lorg/jsoup/parser/b;->v(Lorg/jsoup/parser/M;)LQd/n;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1}, LQd/u;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "hidden"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_be

    const/4 v0, 0x0

    iput-boolean v0, v2, Lorg/jsoup/parser/b;->u:Z

    goto/16 :goto_30

    :pswitch_13
    const-string v0, "svg"

    invoke-virtual {v2, v0}, Lorg/jsoup/parser/b;->l(Ljava/lang/String;)LQd/n;

    move-result-object v0

    if-nez v0, :cond_97

    const-string v0, "img"

    invoke-virtual {v6, v0}, Lorg/jsoup/parser/N;->Y0(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Lorg/jsoup/parser/b;->G(LF3/f;)Z

    move-result v13

    goto/16 :goto_31

    :cond_97
    invoke-virtual {v2, v6}, Lorg/jsoup/parser/b;->r(Lorg/jsoup/parser/M;)LQd/n;

    goto/16 :goto_30

    :pswitch_14
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->L()V

    invoke-virtual {v2, v6}, Lorg/jsoup/parser/b;->r(Lorg/jsoup/parser/M;)LQd/n;

    goto/16 :goto_30

    :pswitch_15
    move-object/from16 v0, p0

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->L()V

    const-string v1, "nobr"

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/b;->n(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_98

    invoke-virtual {v2, v0}, Lorg/jsoup/parser/b;->h(Lorg/jsoup/parser/C;)V

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/b;->I(Ljava/lang/String;)Z

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->L()V

    :cond_98
    invoke-virtual {v2, v6}, Lorg/jsoup/parser/b;->r(Lorg/jsoup/parser/M;)LQd/n;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/jsoup/parser/b;->b(LQd/n;)V

    iget-object v1, v2, Lorg/jsoup/parser/b;->q:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_30

    :pswitch_16
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->L()V

    invoke-virtual {v2, v6}, Lorg/jsoup/parser/b;->r(Lorg/jsoup/parser/M;)LQd/n;

    goto/16 :goto_30

    :pswitch_17
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lorg/jsoup/parser/b;->h(Lorg/jsoup/parser/C;)V

    move-object/from16 v1, v23

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/b;->z(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_99

    goto/16 :goto_22

    :cond_99
    iget-object v0, v2, Lorg/jsoup/parser/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_be

    iget-object v0, v2, Lorg/jsoup/parser/b;->e:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQd/n;

    invoke-virtual {v6}, Lorg/jsoup/parser/N;->W0()Z

    move-result v1

    if-eqz v1, :cond_be

    iget-object v1, v6, Lorg/jsoup/parser/N;->m:LQd/c;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v13, 0x0

    :cond_9a
    :goto_26
    iget v2, v1, LQd/c;->a:I

    if-ge v13, v2, :cond_9b

    iget-object v2, v1, LQd/c;->b:[Ljava/lang/String;

    aget-object v2, v2, v13

    invoke-static {v2}, LQd/c;->w(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9b

    const/4 v2, 0x1

    add-int/2addr v13, v2

    goto :goto_26

    :cond_9b
    iget v2, v1, LQd/c;->a:I

    if-ge v13, v2, :cond_be

    new-instance v2, LQd/a;

    iget-object v3, v1, LQd/c;->b:[Ljava/lang/String;

    aget-object v3, v3, v13

    iget-object v4, v1, LQd/c;->c:[Ljava/lang/Object;

    aget-object v4, v4, v13

    check-cast v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4, v1}, LQd/a;-><init>(Ljava/lang/String;Ljava/lang/String;LQd/c;)V

    const/4 v3, 0x1

    add-int/2addr v13, v3

    iget-object v3, v2, LQd/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, LQd/u;->l(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9a

    invoke-virtual {v0}, LQd/n;->e()LQd/c;

    move-result-object v3

    invoke-virtual {v3, v2}, LQd/c;->x(LQd/a;)V

    goto :goto_26

    :pswitch_18
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    iget-object v3, v2, Lorg/jsoup/parser/b;->p:LQd/s;

    if-eqz v3, :cond_9c

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/b;->z(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9c

    invoke-virtual {v2, v0}, Lorg/jsoup/parser/b;->h(Lorg/jsoup/parser/C;)V

    goto/16 :goto_21

    :cond_9c
    invoke-virtual {v2, v13}, Lorg/jsoup/parser/b;->m(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9e

    invoke-virtual {v2, v13}, Lorg/jsoup/parser/b;->i(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->f()LQd/n;

    move-result-object v0

    iget-object v0, v0, LQd/n;->d:Lorg/jsoup/parser/F;

    iget-object v0, v0, Lorg/jsoup/parser/F;->b:Ljava/lang/String;

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9d

    iget-object v0, v2, Lorg/jsoup/parser/b;->l:Lorg/jsoup/parser/C;

    invoke-virtual {v2, v0}, Lorg/jsoup/parser/b;->h(Lorg/jsoup/parser/C;)V

    :cond_9d
    invoke-virtual {v2, v13}, Lorg/jsoup/parser/b;->E(Ljava/lang/String;)V

    :cond_9e
    const/4 v3, 0x1

    invoke-virtual {v2, v6, v3, v3}, Lorg/jsoup/parser/b;->w(Lorg/jsoup/parser/M;ZZ)V

    goto/16 :goto_30

    :pswitch_19
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    const/4 v3, 0x1

    invoke-virtual {v2, v0}, Lorg/jsoup/parser/b;->h(Lorg/jsoup/parser/C;)V

    iget-object v0, v2, Lorg/jsoup/parser/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eq v5, v3, :cond_8c

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v7, 0x2

    if-le v5, v7, :cond_9f

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQd/n;

    iget-object v0, v0, LQd/n;->d:Lorg/jsoup/parser/F;

    iget-object v0, v0, Lorg/jsoup/parser/F;->b:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8c

    :cond_9f
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/b;->z(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a0

    goto/16 :goto_21

    :cond_a0
    const/4 v0, 0x0

    iput-boolean v0, v2, Lorg/jsoup/parser/b;->u:Z

    invoke-virtual {v6}, Lorg/jsoup/parser/N;->W0()Z

    move-result v0

    if-eqz v0, :cond_be

    invoke-virtual {v2, v4}, Lorg/jsoup/parser/b;->l(Ljava/lang/String;)LQd/n;

    move-result-object v0

    if-eqz v0, :cond_be

    iget-object v1, v6, Lorg/jsoup/parser/N;->m:LQd/c;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v13, 0x0

    :cond_a1
    :goto_27
    iget v2, v1, LQd/c;->a:I

    if-ge v13, v2, :cond_a2

    iget-object v2, v1, LQd/c;->b:[Ljava/lang/String;

    aget-object v2, v2, v13

    invoke-static {v2}, LQd/c;->w(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a2

    const/4 v2, 0x1

    add-int/2addr v13, v2

    goto :goto_27

    :cond_a2
    iget v2, v1, LQd/c;->a:I

    if-ge v13, v2, :cond_be

    new-instance v2, LQd/a;

    iget-object v3, v1, LQd/c;->b:[Ljava/lang/String;

    aget-object v3, v3, v13

    iget-object v4, v1, LQd/c;->c:[Ljava/lang/Object;

    aget-object v4, v4, v13

    check-cast v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4, v1}, LQd/a;-><init>(Ljava/lang/String;Ljava/lang/String;LQd/c;)V

    const/4 v3, 0x1

    add-int/2addr v13, v3

    iget-object v3, v2, LQd/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, LQd/u;->l(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a1

    invoke-virtual {v0}, LQd/n;->e()LQd/c;

    move-result-object v3

    invoke-virtual {v3, v2}, LQd/c;->x(LQd/a;)V

    goto :goto_27

    :pswitch_1a
    invoke-virtual {v2, v13}, Lorg/jsoup/parser/b;->m(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a3

    invoke-virtual {v2, v13}, Lorg/jsoup/parser/b;->I(Ljava/lang/String;)Z

    :cond_a3
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->L()V

    const/4 v0, 0x0

    iput-boolean v0, v2, Lorg/jsoup/parser/b;->u:Z

    invoke-static {v6, v2}, Lorg/jsoup/parser/C;->c(Lorg/jsoup/parser/M;Lorg/jsoup/parser/b;)V

    goto/16 :goto_30

    :pswitch_1b
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->L()V

    invoke-virtual {v2, v6}, Lorg/jsoup/parser/b;->r(Lorg/jsoup/parser/M;)LQd/n;

    goto/16 :goto_30

    :pswitch_1c
    invoke-virtual {v2, v13}, Lorg/jsoup/parser/b;->m(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a4

    invoke-virtual {v2, v13}, Lorg/jsoup/parser/b;->I(Ljava/lang/String;)Z

    :cond_a4
    invoke-virtual {v2, v6}, Lorg/jsoup/parser/b;->r(Lorg/jsoup/parser/M;)LQd/n;

    iget-object v0, v2, Lorg/jsoup/parser/b;->b:Lorg/jsoup/parser/a;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/a;->p(Ljava/lang/String;)Z

    const/4 v0, 0x0

    iput-boolean v0, v2, Lorg/jsoup/parser/b;->u:Z

    goto/16 :goto_30

    :pswitch_1d
    move-object/from16 v0, p0

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/b;->n(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a5

    const-string v3, "rtc"

    invoke-virtual {v2, v3}, Lorg/jsoup/parser/b;->i(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/jsoup/parser/b;->g(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a5

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/b;->g(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a5

    invoke-virtual {v2, v0}, Lorg/jsoup/parser/b;->h(Lorg/jsoup/parser/C;)V

    :cond_a5
    invoke-virtual {v2, v6}, Lorg/jsoup/parser/b;->r(Lorg/jsoup/parser/M;)LQd/n;

    goto/16 :goto_30

    :pswitch_1e
    move-object/from16 v0, p0

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/b;->n(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a6

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/jsoup/parser/b;->j(Z)V

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/b;->g(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a6

    invoke-virtual {v2, v0}, Lorg/jsoup/parser/b;->h(Lorg/jsoup/parser/C;)V

    :cond_a6
    invoke-virtual {v2, v6}, Lorg/jsoup/parser/b;->r(Lorg/jsoup/parser/M;)LQd/n;

    goto/16 :goto_30

    :pswitch_1f
    const/4 v3, 0x0

    iput-boolean v3, v2, Lorg/jsoup/parser/b;->u:Z

    iget-object v0, v2, Lorg/jsoup/parser/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    :goto_28
    if-lez v1, :cond_aa

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LQd/n;

    iget-object v4, v3, LQd/n;->d:Lorg/jsoup/parser/F;

    iget-object v4, v4, Lorg/jsoup/parser/F;->b:Ljava/lang/String;

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a7

    invoke-virtual {v2, v15}, Lorg/jsoup/parser/b;->I(Ljava/lang/String;)Z

    goto :goto_2b

    :cond_a7
    iget-object v3, v3, LQd/n;->d:Lorg/jsoup/parser/F;

    iget-object v4, v3, Lorg/jsoup/parser/F;->b:Ljava/lang/String;

    move-object/from16 v5, v22

    invoke-static {v4, v5}, LPd/b;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a9

    iget-object v3, v3, Lorg/jsoup/parser/F;->b:Ljava/lang/String;

    move-object/from16 v4, v25

    invoke-static {v3, v4}, LPd/b;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a8

    goto :goto_2b

    :cond_a8
    :goto_29
    const/4 v3, -0x1

    goto :goto_2a

    :cond_a9
    move-object/from16 v4, v25

    goto :goto_29

    :goto_2a
    add-int/2addr v1, v3

    move-object/from16 v25, v4

    move-object/from16 v22, v5

    goto :goto_28

    :cond_aa
    :goto_2b
    invoke-virtual {v2, v13}, Lorg/jsoup/parser/b;->m(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ab

    invoke-virtual {v2, v13}, Lorg/jsoup/parser/b;->I(Ljava/lang/String;)Z

    :cond_ab
    invoke-virtual {v2, v6}, Lorg/jsoup/parser/b;->r(Lorg/jsoup/parser/M;)LQd/n;

    goto/16 :goto_30

    :pswitch_20
    invoke-virtual {v2, v13}, Lorg/jsoup/parser/b;->m(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ac

    invoke-virtual {v2, v13}, Lorg/jsoup/parser/b;->I(Ljava/lang/String;)Z

    :cond_ac
    invoke-virtual {v2, v6}, Lorg/jsoup/parser/b;->v(Lorg/jsoup/parser/M;)LQd/n;

    const/4 v0, 0x0

    iput-boolean v0, v2, Lorg/jsoup/parser/b;->u:Z

    goto/16 :goto_30

    :pswitch_21
    move-object/from16 v0, p0

    invoke-virtual {v2, v13}, Lorg/jsoup/parser/b;->m(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ad

    invoke-virtual {v2, v13}, Lorg/jsoup/parser/b;->I(Ljava/lang/String;)Z

    :cond_ad
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->f()LQd/n;

    move-result-object v1

    iget-object v1, v1, LQd/n;->d:Lorg/jsoup/parser/F;

    iget-object v1, v1, Lorg/jsoup/parser/F;->b:Ljava/lang/String;

    move-object/from16 v3, v20

    invoke-static {v1, v3}, LPd/b;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ae

    invoke-virtual {v2, v0}, Lorg/jsoup/parser/b;->h(Lorg/jsoup/parser/C;)V

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->D()V

    :cond_ae
    invoke-virtual {v2, v6}, Lorg/jsoup/parser/b;->r(Lorg/jsoup/parser/M;)LQd/n;

    goto/16 :goto_30

    :pswitch_22
    move-object/from16 v5, v22

    move-object/from16 v4, v25

    const/4 v0, 0x0

    iput-boolean v0, v2, Lorg/jsoup/parser/b;->u:Z

    iget-object v0, v2, Lorg/jsoup/parser/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x1

    add-int/lit8 v7, v1, -0x1

    const/16 v3, 0x18

    if-lt v7, v3, :cond_af

    add-int/lit8 v1, v1, -0x19

    goto :goto_2c

    :cond_af
    const/4 v1, 0x0

    :goto_2c
    if-lt v7, v1, :cond_b2

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LQd/n;

    iget-object v8, v3, LQd/n;->d:Lorg/jsoup/parser/F;

    iget-object v8, v8, Lorg/jsoup/parser/F;->b:Ljava/lang/String;

    sget-object v9, Lorg/jsoup/parser/B;->k:[Ljava/lang/String;

    invoke-static {v8, v9}, LPd/b;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v8

    iget-object v3, v3, LQd/n;->d:Lorg/jsoup/parser/F;

    if-eqz v8, :cond_b0

    iget-object v0, v3, Lorg/jsoup/parser/F;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lorg/jsoup/parser/b;->I(Ljava/lang/String;)Z

    goto :goto_2d

    :cond_b0
    iget-object v8, v3, Lorg/jsoup/parser/F;->b:Ljava/lang/String;

    invoke-static {v8, v5}, LPd/b;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b1

    iget-object v3, v3, Lorg/jsoup/parser/F;->b:Ljava/lang/String;

    invoke-static {v3, v4}, LPd/b;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b1

    goto :goto_2d

    :cond_b1
    const/4 v3, -0x1

    add-int/2addr v7, v3

    goto :goto_2c

    :cond_b2
    :goto_2d
    invoke-virtual {v2, v13}, Lorg/jsoup/parser/b;->m(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b3

    invoke-virtual {v2, v13}, Lorg/jsoup/parser/b;->I(Ljava/lang/String;)Z

    :cond_b3
    invoke-virtual {v2, v6}, Lorg/jsoup/parser/b;->r(Lorg/jsoup/parser/M;)LQd/n;

    goto/16 :goto_30

    :pswitch_23
    move-object/from16 v0, p0

    const-string v1, "a"

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/b;->k(Ljava/lang/String;)LQd/n;

    move-result-object v3

    if-eqz v3, :cond_b4

    invoke-virtual {v2, v0}, Lorg/jsoup/parser/b;->h(Lorg/jsoup/parser/C;)V

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/b;->I(Ljava/lang/String;)Z

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/b;->l(Ljava/lang/String;)LQd/n;

    move-result-object v0

    if-eqz v0, :cond_b4

    invoke-virtual {v2, v0}, Lorg/jsoup/parser/b;->M(LQd/n;)V

    invoke-virtual {v2, v0}, Lorg/jsoup/parser/b;->N(LQd/n;)V

    :cond_b4
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->L()V

    invoke-virtual {v2, v6}, Lorg/jsoup/parser/b;->r(Lorg/jsoup/parser/M;)LQd/n;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/jsoup/parser/b;->b(LQd/n;)V

    iget-object v1, v2, Lorg/jsoup/parser/b;->q:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_30

    :pswitch_24
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->L()V

    invoke-virtual {v2, v6}, Lorg/jsoup/parser/b;->r(Lorg/jsoup/parser/M;)LQd/n;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/jsoup/parser/b;->b(LQd/n;)V

    iget-object v1, v2, Lorg/jsoup/parser/b;->q:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_30

    :pswitch_25
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->L()V

    invoke-virtual {v2, v6}, Lorg/jsoup/parser/b;->r(Lorg/jsoup/parser/M;)LQd/n;

    const/4 v0, 0x0

    iput-boolean v0, v2, Lorg/jsoup/parser/b;->u:Z

    iget-boolean v0, v6, Lorg/jsoup/parser/N;->l:Z

    if-eqz v0, :cond_b5

    goto/16 :goto_30

    :cond_b5
    iget-object v0, v2, Lorg/jsoup/parser/b;->l:Lorg/jsoup/parser/C;

    sget-object v1, Lorg/jsoup/parser/C;->InTable:Lorg/jsoup/parser/C;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b7

    sget-object v1, Lorg/jsoup/parser/C;->InCaption:Lorg/jsoup/parser/C;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b7

    sget-object v1, Lorg/jsoup/parser/C;->InTableBody:Lorg/jsoup/parser/C;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b7

    sget-object v1, Lorg/jsoup/parser/C;->InRow:Lorg/jsoup/parser/C;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b7

    sget-object v1, Lorg/jsoup/parser/C;->InCell:Lorg/jsoup/parser/C;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b6

    goto :goto_2e

    :cond_b6
    sget-object v0, Lorg/jsoup/parser/C;->InSelect:Lorg/jsoup/parser/C;

    iput-object v0, v2, Lorg/jsoup/parser/b;->l:Lorg/jsoup/parser/C;

    goto/16 :goto_30

    :cond_b7
    :goto_2e
    sget-object v0, Lorg/jsoup/parser/C;->InSelectInTable:Lorg/jsoup/parser/C;

    iput-object v0, v2, Lorg/jsoup/parser/b;->l:Lorg/jsoup/parser/C;

    goto/16 :goto_30

    :pswitch_26
    invoke-virtual {v2, v6}, Lorg/jsoup/parser/b;->r(Lorg/jsoup/parser/M;)LQd/n;

    iget-boolean v0, v6, Lorg/jsoup/parser/N;->l:Z

    if-nez v0, :cond_be

    iget-object v0, v2, Lorg/jsoup/parser/b;->c:Lorg/jsoup/parser/S;

    sget-object v1, Lorg/jsoup/parser/i1;->Rcdata:Lorg/jsoup/parser/i1;

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/S;->p(Lorg/jsoup/parser/i1;)V

    iget-object v0, v2, Lorg/jsoup/parser/b;->l:Lorg/jsoup/parser/C;

    iput-object v0, v2, Lorg/jsoup/parser/b;->m:Lorg/jsoup/parser/C;

    const/4 v0, 0x0

    iput-boolean v0, v2, Lorg/jsoup/parser/b;->u:Z

    sget-object v0, Lorg/jsoup/parser/C;->Text:Lorg/jsoup/parser/C;

    iput-object v0, v2, Lorg/jsoup/parser/b;->l:Lorg/jsoup/parser/C;

    goto/16 :goto_30

    :pswitch_27
    const-string v0, "option"

    invoke-virtual {v2, v0}, Lorg/jsoup/parser/b;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b8

    invoke-virtual {v2, v0}, Lorg/jsoup/parser/b;->I(Ljava/lang/String;)Z

    :cond_b8
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->L()V

    invoke-virtual {v2, v6}, Lorg/jsoup/parser/b;->r(Lorg/jsoup/parser/M;)LQd/n;

    goto/16 :goto_30

    :pswitch_28
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->L()V

    invoke-virtual {v2, v6}, Lorg/jsoup/parser/b;->v(Lorg/jsoup/parser/M;)LQd/n;

    const/4 v0, 0x0

    iput-boolean v0, v2, Lorg/jsoup/parser/b;->u:Z

    goto/16 :goto_30

    :pswitch_29
    const/4 v0, 0x0

    iput-boolean v0, v2, Lorg/jsoup/parser/b;->u:Z

    invoke-static {v6, v2}, Lorg/jsoup/parser/C;->c(Lorg/jsoup/parser/M;Lorg/jsoup/parser/b;)V

    goto/16 :goto_30

    :pswitch_2a
    move-object/from16 v0, p0

    const-string v1, "button"

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/b;->m(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b9

    invoke-virtual {v2, v0}, Lorg/jsoup/parser/b;->h(Lorg/jsoup/parser/C;)V

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/b;->I(Ljava/lang/String;)Z

    invoke-virtual {v2, v6}, Lorg/jsoup/parser/b;->G(LF3/f;)Z

    goto :goto_30

    :cond_b9
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->L()V

    invoke-virtual {v2, v6}, Lorg/jsoup/parser/b;->r(Lorg/jsoup/parser/M;)LQd/n;

    const/4 v0, 0x0

    iput-boolean v0, v2, Lorg/jsoup/parser/b;->u:Z

    goto :goto_30

    :pswitch_2b
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lorg/jsoup/parser/b;->h(Lorg/jsoup/parser/C;)V

    iget-object v0, v2, Lorg/jsoup/parser/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_8c

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v5, 0x2

    if-le v1, v5, :cond_ba

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LQd/n;

    iget-object v1, v1, LQd/n;->d:Lorg/jsoup/parser/F;

    iget-object v1, v1, Lorg/jsoup/parser/F;->b:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ba

    goto/16 :goto_21

    :cond_ba
    iget-boolean v1, v2, Lorg/jsoup/parser/b;->u:Z

    if-nez v1, :cond_bb

    goto/16 :goto_22

    :cond_bb
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LQd/n;

    iget-object v4, v3, LQd/u;->a:LQd/u;

    check-cast v4, LQd/n;

    if-eqz v4, :cond_bc

    invoke-virtual {v3}, LQd/u;->w()V

    :cond_bc
    :goto_2f
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v1, :cond_bd

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v1, 0x1

    goto :goto_2f

    :cond_bd
    invoke-virtual {v2, v6}, Lorg/jsoup/parser/b;->r(Lorg/jsoup/parser/M;)LQd/n;

    sget-object v0, Lorg/jsoup/parser/C;->InFrameset:Lorg/jsoup/parser/C;

    iput-object v0, v2, Lorg/jsoup/parser/b;->l:Lorg/jsoup/parser/C;

    :cond_be
    :goto_30
    const/4 v13, 0x1

    :goto_31
    return v13

    :pswitch_2c
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/b;->h(Lorg/jsoup/parser/C;)V

    goto/16 :goto_1

    :pswitch_2d
    move-object v8, v1

    move-object v0, v8

    check-cast v0, Lorg/jsoup/parser/I;

    invoke-virtual {v2, v0}, Lorg/jsoup/parser/b;->u(Lorg/jsoup/parser/I;)V

    goto/16 :goto_0

    :goto_32
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_2c
        :pswitch_d
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x4ec53386 -> :sswitch_10
        0x70 -> :sswitch_f
        0xc50 -> :sswitch_e
        0xc80 -> :sswitch_d
        0xc90 -> :sswitch_c
        0xcc9 -> :sswitch_b
        0xcca -> :sswitch_a
        0xccb -> :sswitch_9
        0xccc -> :sswitch_8
        0xccd -> :sswitch_7
        0xcce -> :sswitch_6
        0xd7d -> :sswitch_5
        0x2e39a2 -> :sswitch_4
        0x300cc4 -> :sswitch_3
        0x3107ab -> :sswitch_2
        0x35f74a -> :sswitch_1
        0x6f67a51c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x620c002b -> :sswitch_48
        -0x521dd8ce -> :sswitch_47
        -0x47007d5c -> :sswitch_46
        -0x43a19f6f -> :sswitch_45
        -0x3c35778b -> :sswitch_44
        -0x3bcc48c6 -> :sswitch_43
        -0x3600cb04 -> :sswitch_42
        -0x352aa04e -> :sswitch_41
        -0x352a8969 -> :sswitch_40
        -0x4d08054 -> :sswitch_3f
        0x61 -> :sswitch_3e
        0x62 -> :sswitch_3d
        0x69 -> :sswitch_3c
        0x73 -> :sswitch_3b
        0x75 -> :sswitch_3a
        0xc50 -> :sswitch_39
        0xc80 -> :sswitch_38
        0xc90 -> :sswitch_37
        0xca8 -> :sswitch_36
        0xcc9 -> :sswitch_35
        0xcca -> :sswitch_34
        0xccb -> :sswitch_33
        0xccc -> :sswitch_32
        0xccd -> :sswitch_31
        0xcce -> :sswitch_30
        0xd0a -> :sswitch_2f
        0xd7d -> :sswitch_2e
        0xe30 -> :sswitch_2d
        0xe3e -> :sswitch_2c
        0xe42 -> :sswitch_2b
        0xe80 -> :sswitch_2a
        0x17d00 -> :sswitch_29
        0x197c3 -> :sswitch_28
        0x1b2a3 -> :sswitch_27
        0x1ba61 -> :sswitch_26
        0x1be64 -> :sswitch_25
        0x1cb07 -> :sswitch_24
        0x1d01b -> :sswitch_23
        0x2dd08d -> :sswitch_22
        0x2e39a2 -> :sswitch_21
        0x2eaded -> :sswitch_20
        0x300c4f -> :sswitch_1f
        0x300cc4 -> :sswitch_1e
        0x3107ab -> :sswitch_1d
        0x330708 -> :sswitch_1c
        0x33add1 -> :sswitch_1b
        0x35f74a -> :sswitch_1a
        0x5c24ed9 -> :sswitch_19
        0x5faa95b -> :sswitch_18
        0x5fb57ca -> :sswitch_17
        0x6879507 -> :sswitch_16
        0x6903bce -> :sswitch_15
        0xad8ba84 -> :sswitch_14
        0x759d29f7 -> :sswitch_13
        0x7ca6c5e8 -> :sswitch_12
        0x7e19b1b8 -> :sswitch_11
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_24
        :pswitch_27
        :pswitch_23
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_28
        :pswitch_22
        :pswitch_22
        :pswitch_24
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1d
        :pswitch_24
        :pswitch_24
        :pswitch_28
        :pswitch_1c
        :pswitch_1e
        :pswitch_1b
        :pswitch_28
        :pswitch_1a
        :pswitch_28
        :pswitch_19
        :pswitch_24
        :pswitch_24
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_28
        :pswitch_13
        :pswitch_12
        :pswitch_24
        :pswitch_11
        :pswitch_1c
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch
.end method

.method public final f(LF3/f;Lorg/jsoup/parser/b;)Z
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lorg/jsoup/parser/L;

    iget-object p1, p1, Lorg/jsoup/parser/N;->d:Ljava/lang/String;

    iget-object v0, p2, Lorg/jsoup/parser/b;->e:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->l(Ljava/lang/String;)LQd/n;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->h(Lorg/jsoup/parser/C;)V

    return v2

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    :goto_0
    if-ltz v1, :cond_4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LQd/n;

    iget-object v5, v4, LQd/n;->d:Lorg/jsoup/parser/F;

    iget-object v5, v5, Lorg/jsoup/parser/F;->b:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->i(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->h(Lorg/jsoup/parser/C;)V

    :cond_1
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->E(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v4, v4, LQd/n;->d:Lorg/jsoup/parser/F;

    iget-object v4, v4, Lorg/jsoup/parser/F;->b:Ljava/lang/String;

    sget-object v5, Lorg/jsoup/parser/b;->E:[Ljava/lang/String;

    invoke-static {v4, v5}, LPd/b;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->h(Lorg/jsoup/parser/C;)V

    return v2

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_4
    :goto_1
    return v3
.end method
