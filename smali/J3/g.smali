.class public abstract LJ3/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/samsung/android/motionphoto/utils/ex/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ty"

    const-string v1, "d"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/motionphoto/utils/ex/e;->h([Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    move-result-object v0

    sput-object v0, LJ3/g;->a:Lcom/samsung/android/motionphoto/utils/ex/e;

    return-void
.end method

.method public static a(LK3/d;Lz3/g;)LG3/b;
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "o"

    const-string v3, "g"

    const-string v4, "d"

    const/4 v5, 0x3

    const/4 v6, 0x4

    const/4 v7, 0x5

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual/range {p0 .. p0}, LK3/d;->b()V

    const/4 v11, 0x2

    move v12, v11

    :goto_0
    invoke-virtual/range {p0 .. p0}, LK3/d;->f()Z

    move-result v13

    const/4 v14, 0x0

    if-eqz v13, :cond_2

    sget-object v13, LJ3/g;->a:Lcom/samsung/android/motionphoto/utils/ex/e;

    invoke-virtual {v0, v13}, LK3/d;->v(Lcom/samsung/android/motionphoto/utils/ex/e;)I

    move-result v13

    if-eqz v13, :cond_1

    if-eq v13, v10, :cond_0

    invoke-virtual/range {p0 .. p0}, LK3/d;->B()V

    invoke-virtual/range {p0 .. p0}, LK3/d;->E()V

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, LK3/d;->k()I

    move-result v12

    goto :goto_0

    :cond_1
    invoke-virtual/range {p0 .. p0}, LK3/d;->o()Ljava/lang/String;

    move-result-object v13

    goto :goto_1

    :cond_2
    move-object v13, v14

    :goto_1
    if-nez v13, :cond_3

    return-object v14

    :cond_3
    const/4 v15, 0x0

    const/16 v16, 0x64

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v17

    sparse-switch v17, :sswitch_data_0

    :goto_2
    const/4 v8, -0x1

    goto/16 :goto_3

    :sswitch_0
    const-string v8, "tr"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    goto :goto_2

    :cond_4
    const/16 v8, 0xd

    goto/16 :goto_3

    :sswitch_1
    const-string v8, "tm"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    goto :goto_2

    :cond_5
    const/16 v8, 0xc

    goto/16 :goto_3

    :sswitch_2
    const-string v8, "st"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    goto :goto_2

    :cond_6
    const/16 v8, 0xb

    goto/16 :goto_3

    :sswitch_3
    const-string v8, "sr"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    goto :goto_2

    :cond_7
    const/16 v8, 0xa

    goto/16 :goto_3

    :sswitch_4
    const-string v8, "sh"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    goto :goto_2

    :cond_8
    const/16 v8, 0x9

    goto/16 :goto_3

    :sswitch_5
    const-string v8, "rp"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    goto :goto_2

    :cond_9
    const/16 v8, 0x8

    goto/16 :goto_3

    :sswitch_6
    const-string v8, "rd"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    goto :goto_2

    :cond_a
    const/4 v8, 0x7

    goto :goto_3

    :sswitch_7
    const-string v8, "rc"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    goto :goto_2

    :cond_b
    const/4 v8, 0x6

    goto :goto_3

    :sswitch_8
    const-string v8, "mm"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c

    goto :goto_2

    :cond_c
    move v8, v7

    goto :goto_3

    :sswitch_9
    const-string v8, "gs"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d

    goto :goto_2

    :cond_d
    move v8, v6

    goto :goto_3

    :sswitch_a
    const-string v8, "gr"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_e

    goto/16 :goto_2

    :cond_e
    move v8, v5

    goto :goto_3

    :sswitch_b
    const-string v8, "gf"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_f

    goto/16 :goto_2

    :cond_f
    move v8, v11

    goto :goto_3

    :sswitch_c
    const-string v8, "fl"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_10

    goto/16 :goto_2

    :cond_10
    move v8, v10

    goto :goto_3

    :sswitch_d
    const-string v8, "el"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_11

    goto/16 :goto_2

    :cond_11
    move v8, v9

    :goto_3
    packed-switch v8, :pswitch_data_0

    const-string v1, "Unknown shape type "

    invoke-virtual {v1, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LL3/b;->b(Ljava/lang/String;)V

    goto/16 :goto_27

    :pswitch_0
    invoke-static/range {p0 .. p1}, LJ3/c;->a(LK3/d;Lz3/g;)LF3/d;

    move-result-object v14

    goto/16 :goto_27

    :pswitch_1
    sget-object v2, LJ3/E;->a:Lcom/samsung/android/motionphoto/utils/ex/e;

    move/from16 v21, v9

    move-object/from16 v16, v14

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    :goto_4
    invoke-virtual/range {p0 .. p0}, LK3/d;->f()Z

    move-result v2

    if-eqz v2, :cond_1a

    sget-object v2, LJ3/E;->a:Lcom/samsung/android/motionphoto/utils/ex/e;

    invoke-virtual {v0, v2}, LK3/d;->v(Lcom/samsung/android/motionphoto/utils/ex/e;)I

    move-result v2

    if-eqz v2, :cond_19

    if-eq v2, v10, :cond_18

    if-eq v2, v11, :cond_17

    if-eq v2, v5, :cond_16

    if-eq v2, v6, :cond_13

    if-eq v2, v7, :cond_12

    invoke-virtual/range {p0 .. p0}, LK3/d;->E()V

    goto :goto_4

    :cond_12
    invoke-virtual/range {p0 .. p0}, LK3/d;->h()Z

    move-result v21

    goto :goto_4

    :cond_13
    invoke-virtual/range {p0 .. p0}, LK3/d;->k()I

    move-result v2

    if-eq v2, v10, :cond_15

    if-ne v2, v11, :cond_14

    sget-object v2, LG3/w;->INDIVIDUALLY:LG3/w;

    :goto_5
    move-object/from16 v17, v2

    goto :goto_4

    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown trim path type "

    invoke-static {v2, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->i(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    sget-object v2, LG3/w;->SIMULTANEOUSLY:LG3/w;

    goto :goto_5

    :cond_16
    invoke-virtual/range {p0 .. p0}, LK3/d;->o()Ljava/lang/String;

    move-result-object v16

    goto :goto_4

    :cond_17
    invoke-static {v0, v1, v9}, LG5/B3;->e(LK3/c;Lz3/g;Z)LF3/b;

    move-result-object v20

    goto :goto_4

    :cond_18
    invoke-static {v0, v1, v9}, LG5/B3;->e(LK3/c;Lz3/g;Z)LF3/b;

    move-result-object v19

    goto :goto_4

    :cond_19
    invoke-static {v0, v1, v9}, LG5/B3;->e(LK3/c;Lz3/g;Z)LF3/b;

    move-result-object v18

    goto :goto_4

    :cond_1a
    new-instance v14, LG3/m;

    move-object v15, v14

    invoke-direct/range {v15 .. v21}, LG3/m;-><init>(Ljava/lang/String;LG3/w;LF3/b;LF3/b;LF3/b;Z)V

    goto/16 :goto_27

    :pswitch_2
    sget-object v5, LJ3/D;->a:Lcom/samsung/android/motionphoto/utils/ex/e;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move/from16 v28, v9

    move-object v6, v14

    move-object/from16 v19, v6

    move-object/from16 v20, v19

    move-object/from16 v22, v20

    move-object/from16 v24, v22

    move-object/from16 v25, v24

    move-object/from16 v26, v25

    move/from16 v27, v15

    :cond_1b
    :goto_6
    invoke-virtual/range {p0 .. p0}, LK3/d;->f()Z

    move-result v7

    if-eqz v7, :cond_23

    sget-object v7, LJ3/D;->a:Lcom/samsung/android/motionphoto/utils/ex/e;

    invoke-virtual {v0, v7}, LK3/d;->v(Lcom/samsung/android/motionphoto/utils/ex/e;)I

    move-result v7

    packed-switch v7, :pswitch_data_1

    invoke-virtual/range {p0 .. p0}, LK3/d;->E()V

    goto :goto_6

    :pswitch_3
    invoke-virtual/range {p0 .. p0}, LK3/d;->a()V

    :goto_7
    invoke-virtual/range {p0 .. p0}, LK3/d;->f()Z

    move-result v7

    if-eqz v7, :cond_22

    invoke-virtual/range {p0 .. p0}, LK3/d;->b()V

    move-object v7, v14

    move-object v8, v7

    :goto_8
    invoke-virtual/range {p0 .. p0}, LK3/d;->f()Z

    move-result v12

    if-eqz v12, :cond_1e

    sget-object v12, LJ3/D;->b:Lcom/samsung/android/motionphoto/utils/ex/e;

    invoke-virtual {v0, v12}, LK3/d;->v(Lcom/samsung/android/motionphoto/utils/ex/e;)I

    move-result v12

    if-eqz v12, :cond_1d

    if-eq v12, v10, :cond_1c

    invoke-virtual/range {p0 .. p0}, LK3/d;->B()V

    invoke-virtual/range {p0 .. p0}, LK3/d;->E()V

    goto :goto_8

    :cond_1c
    invoke-static {v0, v1, v10}, LG5/B3;->e(LK3/c;Lz3/g;Z)LF3/b;

    move-result-object v8

    goto :goto_8

    :cond_1d
    invoke-virtual/range {p0 .. p0}, LK3/d;->o()Ljava/lang/String;

    move-result-object v7

    goto :goto_8

    :cond_1e
    invoke-virtual/range {p0 .. p0}, LK3/d;->d()V

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_1

    :goto_9
    const/4 v7, -0x1

    goto :goto_a

    :sswitch_e
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1f

    goto :goto_9

    :cond_1f
    move v7, v11

    goto :goto_a

    :sswitch_f
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_20

    goto :goto_9

    :cond_20
    move v7, v10

    goto :goto_a

    :sswitch_10
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_21

    goto :goto_9

    :cond_21
    move v7, v9

    :goto_a
    packed-switch v7, :pswitch_data_2

    goto :goto_7

    :pswitch_4
    move-object/from16 v20, v8

    goto :goto_7

    :pswitch_5
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_22
    invoke-virtual/range {p0 .. p0}, LK3/d;->c()V

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v7, v10, :cond_1b

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LF3/b;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :pswitch_6
    invoke-virtual/range {p0 .. p0}, LK3/d;->h()Z

    move-result v28

    goto/16 :goto_6

    :pswitch_7
    invoke-virtual/range {p0 .. p0}, LK3/d;->j()D

    move-result-wide v7

    double-to-float v7, v7

    move/from16 v27, v7

    goto/16 :goto_6

    :pswitch_8
    invoke-static {}, LG3/u;->values()[LG3/u;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, LK3/d;->k()I

    move-result v8

    sub-int/2addr v8, v10

    aget-object v26, v7, v8

    goto/16 :goto_6

    :pswitch_9
    invoke-static {}, LG3/t;->values()[LG3/t;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, LK3/d;->k()I

    move-result v8

    sub-int/2addr v8, v10

    aget-object v25, v7, v8

    goto/16 :goto_6

    :pswitch_a
    invoke-static/range {p0 .. p1}, LG5/B3;->g(LK3/d;Lz3/g;)LF3/a;

    move-result-object v6

    goto/16 :goto_6

    :pswitch_b
    invoke-static {v0, v1, v10}, LG5/B3;->e(LK3/c;Lz3/g;Z)LF3/b;

    move-result-object v24

    goto/16 :goto_6

    :pswitch_c
    invoke-static/range {p0 .. p1}, LG5/B3;->d(LK3/d;Lz3/g;)LF3/a;

    move-result-object v22

    goto/16 :goto_6

    :pswitch_d
    invoke-virtual/range {p0 .. p0}, LK3/d;->o()Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_6

    :cond_23
    if-nez v6, :cond_24

    new-instance v1, LF3/a;

    new-instance v2, LM3/a;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, LM3/a;-><init>(Ljava/lang/Object;)V

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v11, v2}, LF3/a;-><init>(ILjava/util/List;)V

    move-object/from16 v23, v1

    goto :goto_b

    :cond_24
    move-object/from16 v23, v6

    :goto_b
    new-instance v14, LG3/v;

    move-object/from16 v18, v14

    move-object/from16 v21, v5

    invoke-direct/range {v18 .. v28}, LG3/v;-><init>(Ljava/lang/String;LF3/b;Ljava/util/ArrayList;LF3/a;LF3/a;LF3/b;LG3/t;LG3/u;FZ)V

    goto/16 :goto_27

    :pswitch_e
    sget-object v2, LJ3/v;->a:Lcom/samsung/android/motionphoto/utils/ex/e;

    if-ne v12, v5, :cond_25

    move v2, v10

    goto :goto_c

    :cond_25
    move v2, v9

    :goto_c
    move/from16 v26, v2

    move/from16 v25, v9

    move-object/from16 v16, v14

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    move-object/from16 v21, v20

    move-object/from16 v22, v21

    move-object/from16 v23, v22

    move-object/from16 v24, v23

    :goto_d
    invoke-virtual/range {p0 .. p0}, LK3/d;->f()Z

    move-result v2

    if-eqz v2, :cond_27

    sget-object v2, LJ3/v;->a:Lcom/samsung/android/motionphoto/utils/ex/e;

    invoke-virtual {v0, v2}, LK3/d;->v(Lcom/samsung/android/motionphoto/utils/ex/e;)I

    move-result v2

    packed-switch v2, :pswitch_data_3

    invoke-virtual/range {p0 .. p0}, LK3/d;->B()V

    invoke-virtual/range {p0 .. p0}, LK3/d;->E()V

    goto :goto_d

    :pswitch_f
    invoke-virtual/range {p0 .. p0}, LK3/d;->k()I

    move-result v2

    if-ne v2, v5, :cond_26

    move/from16 v26, v10

    goto :goto_d

    :cond_26
    move/from16 v26, v9

    goto :goto_d

    :pswitch_10
    invoke-virtual/range {p0 .. p0}, LK3/d;->h()Z

    move-result v25

    goto :goto_d

    :pswitch_11
    invoke-static {v0, v1, v9}, LG5/B3;->e(LK3/c;Lz3/g;Z)LF3/b;

    move-result-object v23

    goto :goto_d

    :pswitch_12
    invoke-static {v0, v1, v10}, LG5/B3;->e(LK3/c;Lz3/g;Z)LF3/b;

    move-result-object v21

    goto :goto_d

    :pswitch_13
    invoke-static {v0, v1, v9}, LG5/B3;->e(LK3/c;Lz3/g;Z)LF3/b;

    move-result-object v24

    goto :goto_d

    :pswitch_14
    invoke-static {v0, v1, v10}, LG5/B3;->e(LK3/c;Lz3/g;Z)LF3/b;

    move-result-object v22

    goto :goto_d

    :pswitch_15
    invoke-static {v0, v1, v9}, LG5/B3;->e(LK3/c;Lz3/g;Z)LF3/b;

    move-result-object v20

    goto :goto_d

    :pswitch_16
    invoke-static/range {p0 .. p1}, LJ3/a;->b(LK3/d;Lz3/g;)LF3/e;

    move-result-object v19

    goto :goto_d

    :pswitch_17
    invoke-static {v0, v1, v9}, LG5/B3;->e(LK3/c;Lz3/g;Z)LF3/b;

    move-result-object v18

    goto :goto_d

    :pswitch_18
    invoke-virtual/range {p0 .. p0}, LK3/d;->k()I

    move-result v2

    invoke-static {v2}, LG3/k;->a(I)LG3/k;

    move-result-object v17

    goto :goto_d

    :pswitch_19
    invoke-virtual/range {p0 .. p0}, LK3/d;->o()Ljava/lang/String;

    move-result-object v16

    goto :goto_d

    :cond_27
    new-instance v14, LG3/l;

    move-object v15, v14

    invoke-direct/range {v15 .. v26}, LG3/l;-><init>(Ljava/lang/String;LG3/k;LF3/b;LF3/e;LF3/b;LF3/b;LF3/b;LF3/b;LF3/b;ZZ)V

    goto/16 :goto_27

    :pswitch_1a
    sget-object v2, LJ3/C;->a:Lcom/samsung/android/motionphoto/utils/ex/e;

    move v3, v9

    move v4, v3

    move-object v2, v14

    :goto_e
    invoke-virtual/range {p0 .. p0}, LK3/d;->f()Z

    move-result v6

    if-eqz v6, :cond_2c

    sget-object v6, LJ3/C;->a:Lcom/samsung/android/motionphoto/utils/ex/e;

    invoke-virtual {v0, v6}, LK3/d;->v(Lcom/samsung/android/motionphoto/utils/ex/e;)I

    move-result v6

    if-eqz v6, :cond_2b

    if-eq v6, v10, :cond_2a

    if-eq v6, v11, :cond_29

    if-eq v6, v5, :cond_28

    invoke-virtual/range {p0 .. p0}, LK3/d;->E()V

    goto :goto_e

    :cond_28
    invoke-virtual/range {p0 .. p0}, LK3/d;->h()Z

    move-result v4

    goto :goto_e

    :cond_29
    new-instance v2, LF3/a;

    invoke-static {}, LL3/g;->c()F

    move-result v6

    sget-object v8, LJ3/z;->a:LJ3/z;

    invoke-static {v0, v1, v6, v8, v9}, LJ3/q;->a(LK3/c;Lz3/g;FLJ3/F;Z)Ljava/util/ArrayList;

    move-result-object v6

    invoke-direct {v2, v7, v6}, LF3/a;-><init>(ILjava/util/List;)V

    goto :goto_e

    :cond_2a
    invoke-virtual/range {p0 .. p0}, LK3/d;->k()I

    move-result v3

    goto :goto_e

    :cond_2b
    invoke-virtual/range {p0 .. p0}, LK3/d;->o()Ljava/lang/String;

    move-result-object v14

    goto :goto_e

    :cond_2c
    new-instance v1, LG3/r;

    invoke-direct {v1, v14, v3, v2, v4}, LG3/r;-><init>(Ljava/lang/String;ILF3/a;Z)V

    :goto_f
    move-object v14, v1

    goto/16 :goto_27

    :pswitch_1b
    sget-object v2, LJ3/x;->a:Lcom/samsung/android/motionphoto/utils/ex/e;

    move/from16 v20, v9

    move-object/from16 v16, v14

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    :goto_10
    invoke-virtual/range {p0 .. p0}, LK3/d;->f()Z

    move-result v2

    if-eqz v2, :cond_32

    sget-object v2, LJ3/x;->a:Lcom/samsung/android/motionphoto/utils/ex/e;

    invoke-virtual {v0, v2}, LK3/d;->v(Lcom/samsung/android/motionphoto/utils/ex/e;)I

    move-result v2

    if-eqz v2, :cond_31

    if-eq v2, v10, :cond_30

    if-eq v2, v11, :cond_2f

    if-eq v2, v5, :cond_2e

    if-eq v2, v6, :cond_2d

    invoke-virtual/range {p0 .. p0}, LK3/d;->E()V

    goto :goto_10

    :cond_2d
    invoke-virtual/range {p0 .. p0}, LK3/d;->h()Z

    move-result v20

    goto :goto_10

    :cond_2e
    invoke-static/range {p0 .. p1}, LJ3/c;->a(LK3/d;Lz3/g;)LF3/d;

    move-result-object v19

    goto :goto_10

    :cond_2f
    invoke-static {v0, v1, v9}, LG5/B3;->e(LK3/c;Lz3/g;Z)LF3/b;

    move-result-object v18

    goto :goto_10

    :cond_30
    invoke-static {v0, v1, v9}, LG5/B3;->e(LK3/c;Lz3/g;Z)LF3/b;

    move-result-object v17

    goto :goto_10

    :cond_31
    invoke-virtual/range {p0 .. p0}, LK3/d;->o()Ljava/lang/String;

    move-result-object v16

    goto :goto_10

    :cond_32
    new-instance v14, LG3/m;

    move-object v15, v14

    invoke-direct/range {v15 .. v20}, LG3/m;-><init>(Ljava/lang/String;LF3/b;LF3/b;LF3/d;Z)V

    goto/16 :goto_27

    :pswitch_1c
    sget-object v2, LJ3/y;->a:Lcom/samsung/android/motionphoto/utils/ex/e;

    move-object v2, v14

    move-object v3, v2

    :goto_11
    invoke-virtual/range {p0 .. p0}, LK3/d;->f()Z

    move-result v4

    if-eqz v4, :cond_36

    sget-object v4, LJ3/y;->a:Lcom/samsung/android/motionphoto/utils/ex/e;

    invoke-virtual {v0, v4}, LK3/d;->v(Lcom/samsung/android/motionphoto/utils/ex/e;)I

    move-result v4

    if-eqz v4, :cond_35

    if-eq v4, v10, :cond_34

    if-eq v4, v11, :cond_33

    invoke-virtual/range {p0 .. p0}, LK3/d;->E()V

    goto :goto_11

    :cond_33
    invoke-virtual/range {p0 .. p0}, LK3/d;->h()Z

    move-result v9

    goto :goto_11

    :cond_34
    invoke-static {v0, v1, v10}, LG5/B3;->e(LK3/c;Lz3/g;Z)LF3/b;

    move-result-object v3

    goto :goto_11

    :cond_35
    invoke-virtual/range {p0 .. p0}, LK3/d;->o()Ljava/lang/String;

    move-result-object v2

    goto :goto_11

    :cond_36
    if-eqz v9, :cond_37

    goto/16 :goto_27

    :cond_37
    new-instance v14, LG3/n;

    invoke-direct {v14, v2, v3}, LG3/n;-><init>(Ljava/lang/String;LF3/b;)V

    goto/16 :goto_27

    :pswitch_1d
    sget-object v2, LJ3/w;->a:Lcom/samsung/android/motionphoto/utils/ex/e;

    move/from16 v20, v9

    move-object/from16 v16, v14

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    :goto_12
    invoke-virtual/range {p0 .. p0}, LK3/d;->f()Z

    move-result v2

    if-eqz v2, :cond_3d

    sget-object v2, LJ3/w;->a:Lcom/samsung/android/motionphoto/utils/ex/e;

    invoke-virtual {v0, v2}, LK3/d;->v(Lcom/samsung/android/motionphoto/utils/ex/e;)I

    move-result v2

    if-eqz v2, :cond_3c

    if-eq v2, v10, :cond_3b

    if-eq v2, v11, :cond_3a

    if-eq v2, v5, :cond_39

    if-eq v2, v6, :cond_38

    invoke-virtual/range {p0 .. p0}, LK3/d;->E()V

    goto :goto_12

    :cond_38
    invoke-virtual/range {p0 .. p0}, LK3/d;->h()Z

    move-result v20

    goto :goto_12

    :cond_39
    invoke-static {v0, v1, v10}, LG5/B3;->e(LK3/c;Lz3/g;Z)LF3/b;

    move-result-object v19

    goto :goto_12

    :cond_3a
    invoke-static/range {p0 .. p1}, LG5/B3;->h(LK3/d;Lz3/g;)LF3/a;

    move-result-object v18

    goto :goto_12

    :cond_3b
    invoke-static/range {p0 .. p1}, LJ3/a;->b(LK3/d;Lz3/g;)LF3/e;

    move-result-object v17

    goto :goto_12

    :cond_3c
    invoke-virtual/range {p0 .. p0}, LK3/d;->o()Ljava/lang/String;

    move-result-object v16

    goto :goto_12

    :cond_3d
    new-instance v14, LG3/m;

    move-object v15, v14

    invoke-direct/range {v15 .. v20}, LG3/m;-><init>(Ljava/lang/String;LF3/e;LF3/a;LF3/b;Z)V

    goto/16 :goto_27

    :pswitch_1e
    sget-object v2, LJ3/u;->a:Lcom/samsung/android/motionphoto/utils/ex/e;

    move-object v2, v14

    :goto_13
    invoke-virtual/range {p0 .. p0}, LK3/d;->f()Z

    move-result v3

    if-eqz v3, :cond_46

    sget-object v3, LJ3/u;->a:Lcom/samsung/android/motionphoto/utils/ex/e;

    invoke-virtual {v0, v3}, LK3/d;->v(Lcom/samsung/android/motionphoto/utils/ex/e;)I

    move-result v3

    if-eqz v3, :cond_45

    if-eq v3, v10, :cond_3f

    if-eq v3, v11, :cond_3e

    invoke-virtual/range {p0 .. p0}, LK3/d;->B()V

    invoke-virtual/range {p0 .. p0}, LK3/d;->E()V

    goto :goto_13

    :cond_3e
    invoke-virtual/range {p0 .. p0}, LK3/d;->h()Z

    move-result v9

    goto :goto_13

    :cond_3f
    invoke-virtual/range {p0 .. p0}, LK3/d;->k()I

    move-result v2

    if-eq v2, v10, :cond_44

    if-eq v2, v11, :cond_43

    if-eq v2, v5, :cond_42

    if-eq v2, v6, :cond_41

    if-eq v2, v7, :cond_40

    sget-object v2, LG3/i;->MERGE:LG3/i;

    goto :goto_13

    :cond_40
    sget-object v2, LG3/i;->EXCLUDE_INTERSECTIONS:LG3/i;

    goto :goto_13

    :cond_41
    sget-object v2, LG3/i;->INTERSECT:LG3/i;

    goto :goto_13

    :cond_42
    sget-object v2, LG3/i;->SUBTRACT:LG3/i;

    goto :goto_13

    :cond_43
    sget-object v2, LG3/i;->ADD:LG3/i;

    goto :goto_13

    :cond_44
    sget-object v2, LG3/i;->MERGE:LG3/i;

    goto :goto_13

    :cond_45
    invoke-virtual/range {p0 .. p0}, LK3/d;->o()Ljava/lang/String;

    move-result-object v14

    goto :goto_13

    :cond_46
    new-instance v3, LG3/j;

    invoke-direct {v3, v14, v2, v9}, LG3/j;-><init>(Ljava/lang/String;LG3/i;Z)V

    const-string v2, "Animation contains merge paths. Merge paths are only supported on KitKat+ and must be manually enabled by calling enableMergePathsForKitKatAndAbove()."

    invoke-virtual {v1, v2}, Lz3/g;->a(Ljava/lang/String;)V

    move-object v14, v3

    goto/16 :goto_27

    :pswitch_1f
    sget-object v5, LJ3/m;->a:Lcom/samsung/android/motionphoto/utils/ex/e;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move/from16 v31, v9

    move-object v6, v14

    move-object/from16 v19, v6

    move-object/from16 v20, v19

    move-object/from16 v21, v20

    move-object/from16 v23, v21

    move-object/from16 v24, v23

    move-object/from16 v25, v24

    move-object/from16 v26, v25

    move-object/from16 v27, v26

    move-object/from16 v30, v27

    move/from16 v28, v15

    :cond_47
    :goto_14
    invoke-virtual/range {p0 .. p0}, LK3/d;->f()Z

    move-result v7

    if-eqz v7, :cond_53

    sget-object v7, LJ3/m;->a:Lcom/samsung/android/motionphoto/utils/ex/e;

    invoke-virtual {v0, v7}, LK3/d;->v(Lcom/samsung/android/motionphoto/utils/ex/e;)I

    move-result v7

    packed-switch v7, :pswitch_data_4

    invoke-virtual/range {p0 .. p0}, LK3/d;->B()V

    invoke-virtual/range {p0 .. p0}, LK3/d;->E()V

    goto :goto_14

    :pswitch_20
    invoke-virtual/range {p0 .. p0}, LK3/d;->a()V

    :cond_48
    :goto_15
    invoke-virtual/range {p0 .. p0}, LK3/d;->f()Z

    move-result v7

    if-eqz v7, :cond_4e

    invoke-virtual/range {p0 .. p0}, LK3/d;->b()V

    move-object v7, v14

    move-object v8, v7

    :goto_16
    invoke-virtual/range {p0 .. p0}, LK3/d;->f()Z

    move-result v12

    if-eqz v12, :cond_4b

    sget-object v12, LJ3/m;->c:Lcom/samsung/android/motionphoto/utils/ex/e;

    invoke-virtual {v0, v12}, LK3/d;->v(Lcom/samsung/android/motionphoto/utils/ex/e;)I

    move-result v12

    if-eqz v12, :cond_4a

    if-eq v12, v10, :cond_49

    invoke-virtual/range {p0 .. p0}, LK3/d;->B()V

    invoke-virtual/range {p0 .. p0}, LK3/d;->E()V

    goto :goto_16

    :cond_49
    invoke-static {v0, v1, v10}, LG5/B3;->e(LK3/c;Lz3/g;Z)LF3/b;

    move-result-object v8

    goto :goto_16

    :cond_4a
    invoke-virtual/range {p0 .. p0}, LK3/d;->o()Ljava/lang/String;

    move-result-object v7

    goto :goto_16

    :cond_4b
    invoke-virtual/range {p0 .. p0}, LK3/d;->d()V

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4c

    move-object/from16 v30, v8

    goto :goto_15

    :cond_4c
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4d

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_48

    :cond_4d
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_4e
    invoke-virtual/range {p0 .. p0}, LK3/d;->c()V

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v7, v10, :cond_47

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LF3/b;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :pswitch_21
    invoke-virtual/range {p0 .. p0}, LK3/d;->h()Z

    move-result v31

    goto :goto_14

    :pswitch_22
    invoke-virtual/range {p0 .. p0}, LK3/d;->j()D

    move-result-wide v7

    double-to-float v7, v7

    move/from16 v28, v7

    goto/16 :goto_14

    :pswitch_23
    invoke-static {}, LG3/u;->values()[LG3/u;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, LK3/d;->k()I

    move-result v8

    sub-int/2addr v8, v10

    aget-object v27, v7, v8

    goto/16 :goto_14

    :pswitch_24
    invoke-static {}, LG3/t;->values()[LG3/t;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, LK3/d;->k()I

    move-result v8

    sub-int/2addr v8, v10

    aget-object v26, v7, v8

    goto/16 :goto_14

    :pswitch_25
    invoke-static {v0, v1, v10}, LG5/B3;->e(LK3/c;Lz3/g;Z)LF3/b;

    move-result-object v25

    goto/16 :goto_14

    :pswitch_26
    invoke-static/range {p0 .. p1}, LG5/B3;->h(LK3/d;Lz3/g;)LF3/a;

    move-result-object v24

    goto/16 :goto_14

    :pswitch_27
    invoke-static/range {p0 .. p1}, LG5/B3;->h(LK3/d;Lz3/g;)LF3/a;

    move-result-object v23

    goto/16 :goto_14

    :pswitch_28
    invoke-virtual/range {p0 .. p0}, LK3/d;->k()I

    move-result v7

    if-ne v7, v10, :cond_4f

    sget-object v7, LG3/f;->LINEAR:LG3/f;

    :goto_17
    move-object/from16 v20, v7

    goto/16 :goto_14

    :cond_4f
    sget-object v7, LG3/f;->RADIAL:LG3/f;

    goto :goto_17

    :pswitch_29
    invoke-static/range {p0 .. p1}, LG5/B3;->g(LK3/d;Lz3/g;)LF3/a;

    move-result-object v6

    goto/16 :goto_14

    :pswitch_2a
    invoke-virtual/range {p0 .. p0}, LK3/d;->b()V

    const/4 v7, -0x1

    :goto_18
    invoke-virtual/range {p0 .. p0}, LK3/d;->f()Z

    move-result v8

    if-eqz v8, :cond_52

    sget-object v8, LJ3/m;->b:Lcom/samsung/android/motionphoto/utils/ex/e;

    invoke-virtual {v0, v8}, LK3/d;->v(Lcom/samsung/android/motionphoto/utils/ex/e;)I

    move-result v8

    if-eqz v8, :cond_51

    if-eq v8, v10, :cond_50

    invoke-virtual/range {p0 .. p0}, LK3/d;->B()V

    invoke-virtual/range {p0 .. p0}, LK3/d;->E()V

    goto :goto_18

    :cond_50
    invoke-static {v0, v1, v7}, LG5/B3;->f(LK3/d;Lz3/g;I)LF3/a;

    move-result-object v21

    goto :goto_18

    :cond_51
    invoke-virtual/range {p0 .. p0}, LK3/d;->k()I

    move-result v7

    goto :goto_18

    :cond_52
    invoke-virtual/range {p0 .. p0}, LK3/d;->d()V

    goto/16 :goto_14

    :pswitch_2b
    invoke-virtual/range {p0 .. p0}, LK3/d;->o()Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_14

    :cond_53
    if-nez v6, :cond_54

    new-instance v1, LF3/a;

    new-instance v2, LM3/a;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, LM3/a;-><init>(Ljava/lang/Object;)V

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v11, v2}, LF3/a;-><init>(ILjava/util/List;)V

    move-object/from16 v22, v1

    goto :goto_19

    :cond_54
    move-object/from16 v22, v6

    :goto_19
    new-instance v14, LG3/e;

    move-object/from16 v18, v14

    move-object/from16 v29, v5

    invoke-direct/range {v18 .. v31}, LG3/e;-><init>(Ljava/lang/String;LG3/f;LF3/a;LF3/a;LF3/a;LF3/a;LF3/b;LG3/t;LG3/u;FLjava/util/ArrayList;LF3/b;Z)V

    goto/16 :goto_27

    :pswitch_2c
    sget-object v2, LJ3/B;->a:Lcom/samsung/android/motionphoto/utils/ex/e;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_1a
    invoke-virtual/range {p0 .. p0}, LK3/d;->f()Z

    move-result v3

    if-eqz v3, :cond_5a

    sget-object v3, LJ3/B;->a:Lcom/samsung/android/motionphoto/utils/ex/e;

    invoke-virtual {v0, v3}, LK3/d;->v(Lcom/samsung/android/motionphoto/utils/ex/e;)I

    move-result v3

    if-eqz v3, :cond_59

    if-eq v3, v10, :cond_58

    if-eq v3, v11, :cond_55

    invoke-virtual/range {p0 .. p0}, LK3/d;->E()V

    goto :goto_1a

    :cond_55
    invoke-virtual/range {p0 .. p0}, LK3/d;->a()V

    :cond_56
    :goto_1b
    invoke-virtual/range {p0 .. p0}, LK3/d;->f()Z

    move-result v3

    if-eqz v3, :cond_57

    invoke-static/range {p0 .. p1}, LJ3/g;->a(LK3/d;Lz3/g;)LG3/b;

    move-result-object v3

    if-eqz v3, :cond_56

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_57
    invoke-virtual/range {p0 .. p0}, LK3/d;->c()V

    goto :goto_1a

    :cond_58
    invoke-virtual/range {p0 .. p0}, LK3/d;->h()Z

    move-result v9

    goto :goto_1a

    :cond_59
    invoke-virtual/range {p0 .. p0}, LK3/d;->o()Ljava/lang/String;

    move-result-object v14

    goto :goto_1a

    :cond_5a
    new-instance v1, LG3/q;

    invoke-direct {v1, v14, v9, v2}, LG3/q;-><init>(Ljava/lang/String;ZLjava/util/List;)V

    goto/16 :goto_f

    :pswitch_2d
    sget-object v2, LJ3/l;->a:Lcom/samsung/android/motionphoto/utils/ex/e;

    sget-object v2, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    move-object/from16 v21, v2

    move/from16 v26, v9

    move-object/from16 v19, v14

    move-object/from16 v20, v19

    move-object/from16 v22, v20

    move-object/from16 v24, v22

    move-object/from16 v25, v24

    :goto_1c
    invoke-virtual/range {p0 .. p0}, LK3/d;->f()Z

    move-result v2

    if-eqz v2, :cond_60

    sget-object v2, LJ3/l;->a:Lcom/samsung/android/motionphoto/utils/ex/e;

    invoke-virtual {v0, v2}, LK3/d;->v(Lcom/samsung/android/motionphoto/utils/ex/e;)I

    move-result v2

    packed-switch v2, :pswitch_data_5

    invoke-virtual/range {p0 .. p0}, LK3/d;->B()V

    invoke-virtual/range {p0 .. p0}, LK3/d;->E()V

    goto :goto_1c

    :pswitch_2e
    invoke-virtual/range {p0 .. p0}, LK3/d;->h()Z

    move-result v26

    goto :goto_1c

    :pswitch_2f
    invoke-virtual/range {p0 .. p0}, LK3/d;->k()I

    move-result v2

    if-ne v2, v10, :cond_5b

    sget-object v2, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    :goto_1d
    move-object/from16 v21, v2

    goto :goto_1c

    :cond_5b
    sget-object v2, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    goto :goto_1d

    :pswitch_30
    invoke-static/range {p0 .. p1}, LG5/B3;->h(LK3/d;Lz3/g;)LF3/a;

    move-result-object v25

    goto :goto_1c

    :pswitch_31
    invoke-static/range {p0 .. p1}, LG5/B3;->h(LK3/d;Lz3/g;)LF3/a;

    move-result-object v24

    goto :goto_1c

    :pswitch_32
    invoke-virtual/range {p0 .. p0}, LK3/d;->k()I

    move-result v2

    if-ne v2, v10, :cond_5c

    sget-object v2, LG3/f;->LINEAR:LG3/f;

    :goto_1e
    move-object/from16 v20, v2

    goto :goto_1c

    :cond_5c
    sget-object v2, LG3/f;->RADIAL:LG3/f;

    goto :goto_1e

    :pswitch_33
    invoke-static/range {p0 .. p1}, LG5/B3;->g(LK3/d;Lz3/g;)LF3/a;

    move-result-object v14

    goto :goto_1c

    :pswitch_34
    invoke-virtual/range {p0 .. p0}, LK3/d;->b()V

    const/4 v2, -0x1

    :goto_1f
    invoke-virtual/range {p0 .. p0}, LK3/d;->f()Z

    move-result v3

    if-eqz v3, :cond_5f

    sget-object v3, LJ3/l;->b:Lcom/samsung/android/motionphoto/utils/ex/e;

    invoke-virtual {v0, v3}, LK3/d;->v(Lcom/samsung/android/motionphoto/utils/ex/e;)I

    move-result v3

    if-eqz v3, :cond_5e

    if-eq v3, v10, :cond_5d

    invoke-virtual/range {p0 .. p0}, LK3/d;->B()V

    invoke-virtual/range {p0 .. p0}, LK3/d;->E()V

    goto :goto_1f

    :cond_5d
    invoke-static {v0, v1, v2}, LG5/B3;->f(LK3/d;Lz3/g;I)LF3/a;

    move-result-object v22

    goto :goto_1f

    :cond_5e
    invoke-virtual/range {p0 .. p0}, LK3/d;->k()I

    move-result v2

    goto :goto_1f

    :cond_5f
    invoke-virtual/range {p0 .. p0}, LK3/d;->d()V

    goto :goto_1c

    :pswitch_35
    invoke-virtual/range {p0 .. p0}, LK3/d;->o()Ljava/lang/String;

    move-result-object v19

    goto :goto_1c

    :cond_60
    if-nez v14, :cond_61

    new-instance v1, LF3/a;

    new-instance v2, LM3/a;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, LM3/a;-><init>(Ljava/lang/Object;)V

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v11, v2}, LF3/a;-><init>(ILjava/util/List;)V

    move-object/from16 v23, v1

    goto :goto_20

    :cond_61
    move-object/from16 v23, v14

    :goto_20
    new-instance v14, LG3/d;

    move-object/from16 v18, v14

    invoke-direct/range {v18 .. v26}, LG3/d;-><init>(Ljava/lang/String;LG3/f;Landroid/graphics/Path$FillType;LF3/a;LF3/a;LF3/a;LF3/a;Z)V

    goto/16 :goto_27

    :pswitch_36
    sget-object v2, LJ3/A;->a:Lcom/samsung/android/motionphoto/utils/ex/e;

    move/from16 v19, v9

    move/from16 v23, v19

    move v2, v10

    move-object/from16 v18, v14

    move-object/from16 v21, v18

    :goto_21
    invoke-virtual/range {p0 .. p0}, LK3/d;->f()Z

    move-result v3

    if-eqz v3, :cond_68

    sget-object v3, LJ3/A;->a:Lcom/samsung/android/motionphoto/utils/ex/e;

    invoke-virtual {v0, v3}, LK3/d;->v(Lcom/samsung/android/motionphoto/utils/ex/e;)I

    move-result v3

    if-eqz v3, :cond_67

    if-eq v3, v10, :cond_66

    if-eq v3, v11, :cond_65

    if-eq v3, v5, :cond_64

    if-eq v3, v6, :cond_63

    if-eq v3, v7, :cond_62

    invoke-virtual/range {p0 .. p0}, LK3/d;->B()V

    invoke-virtual/range {p0 .. p0}, LK3/d;->E()V

    goto :goto_21

    :cond_62
    invoke-virtual/range {p0 .. p0}, LK3/d;->h()Z

    move-result v23

    goto :goto_21

    :cond_63
    invoke-virtual/range {p0 .. p0}, LK3/d;->k()I

    move-result v2

    goto :goto_21

    :cond_64
    invoke-virtual/range {p0 .. p0}, LK3/d;->h()Z

    move-result v19

    goto :goto_21

    :cond_65
    invoke-static/range {p0 .. p1}, LG5/B3;->g(LK3/d;Lz3/g;)LF3/a;

    move-result-object v14

    goto :goto_21

    :cond_66
    invoke-static/range {p0 .. p1}, LG5/B3;->d(LK3/d;Lz3/g;)LF3/a;

    move-result-object v21

    goto :goto_21

    :cond_67
    invoke-virtual/range {p0 .. p0}, LK3/d;->o()Ljava/lang/String;

    move-result-object v18

    goto :goto_21

    :cond_68
    if-nez v14, :cond_69

    new-instance v1, LF3/a;

    new-instance v3, LM3/a;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v4}, LM3/a;-><init>(Ljava/lang/Object;)V

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v11, v3}, LF3/a;-><init>(ILjava/util/List;)V

    move-object/from16 v22, v1

    goto :goto_22

    :cond_69
    move-object/from16 v22, v14

    :goto_22
    if-ne v2, v10, :cond_6a

    sget-object v1, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    :goto_23
    move-object/from16 v20, v1

    goto :goto_24

    :cond_6a
    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    goto :goto_23

    :goto_24
    new-instance v14, LG3/p;

    move-object/from16 v17, v14

    invoke-direct/range {v17 .. v23}, LG3/p;-><init>(Ljava/lang/String;ZLandroid/graphics/Path$FillType;LF3/a;LF3/a;Z)V

    goto :goto_27

    :pswitch_37
    sget-object v2, LJ3/e;->a:Lcom/samsung/android/motionphoto/utils/ex/e;

    if-ne v12, v5, :cond_6b

    move v2, v10

    goto :goto_25

    :cond_6b
    move v2, v9

    :goto_25
    move/from16 v19, v2

    move/from16 v20, v9

    move-object/from16 v16, v14

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    :goto_26
    invoke-virtual/range {p0 .. p0}, LK3/d;->f()Z

    move-result v2

    if-eqz v2, :cond_72

    sget-object v2, LJ3/e;->a:Lcom/samsung/android/motionphoto/utils/ex/e;

    invoke-virtual {v0, v2}, LK3/d;->v(Lcom/samsung/android/motionphoto/utils/ex/e;)I

    move-result v2

    if-eqz v2, :cond_71

    if-eq v2, v10, :cond_70

    if-eq v2, v11, :cond_6f

    if-eq v2, v5, :cond_6e

    if-eq v2, v6, :cond_6c

    invoke-virtual/range {p0 .. p0}, LK3/d;->B()V

    invoke-virtual/range {p0 .. p0}, LK3/d;->E()V

    goto :goto_26

    :cond_6c
    invoke-virtual/range {p0 .. p0}, LK3/d;->k()I

    move-result v2

    if-ne v2, v5, :cond_6d

    move/from16 v19, v10

    goto :goto_26

    :cond_6d
    move/from16 v19, v9

    goto :goto_26

    :cond_6e
    invoke-virtual/range {p0 .. p0}, LK3/d;->h()Z

    move-result v20

    goto :goto_26

    :cond_6f
    invoke-static/range {p0 .. p1}, LG5/B3;->h(LK3/d;Lz3/g;)LF3/a;

    move-result-object v18

    goto :goto_26

    :cond_70
    invoke-static/range {p0 .. p1}, LJ3/a;->b(LK3/d;Lz3/g;)LF3/e;

    move-result-object v17

    goto :goto_26

    :cond_71
    invoke-virtual/range {p0 .. p0}, LK3/d;->o()Ljava/lang/String;

    move-result-object v16

    goto :goto_26

    :cond_72
    new-instance v14, LG3/a;

    move-object v15, v14

    invoke-direct/range {v15 .. v20}, LG3/a;-><init>(Ljava/lang/String;LF3/e;LF3/a;ZZ)V

    :goto_27
    invoke-virtual/range {p0 .. p0}, LK3/d;->f()Z

    move-result v1

    if-eqz v1, :cond_73

    invoke-virtual/range {p0 .. p0}, LK3/d;->E()V

    goto :goto_27

    :cond_73
    invoke-virtual/range {p0 .. p0}, LK3/d;->d()V

    return-object v14

    nop

    :sswitch_data_0
    .sparse-switch
        0xca7 -> :sswitch_d
        0xcc6 -> :sswitch_c
        0xcdf -> :sswitch_b
        0xceb -> :sswitch_a
        0xcec -> :sswitch_9
        0xda0 -> :sswitch_8
        0xe31 -> :sswitch_7
        0xe32 -> :sswitch_6
        0xe3e -> :sswitch_5
        0xe55 -> :sswitch_4
        0xe5f -> :sswitch_3
        0xe61 -> :sswitch_2
        0xe79 -> :sswitch_1
        0xe7e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_37
        :pswitch_36
        :pswitch_2d
        :pswitch_2c
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_e
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_3
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x64 -> :sswitch_10
        0x67 -> :sswitch_f
        0x6f -> :sswitch_e
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
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
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
    .end packed-switch
.end method
