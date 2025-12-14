.class public abstract LJ3/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/samsung/android/motionphoto/utils/ex/e;

.field public static final b:Lcom/samsung/android/motionphoto/utils/ex/e;

.field public static final c:Lcom/samsung/android/motionphoto/utils/ex/e;

.field public static final d:Lcom/samsung/android/motionphoto/utils/ex/e;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const-string v9, "chars"

    const-string v10, "markers"

    const-string v0, "w"

    const-string v1, "h"

    const-string v2, "ip"

    const-string v3, "op"

    const-string v4, "fr"

    const-string v5, "v"

    const-string v6, "layers"

    const-string v7, "assets"

    const-string v8, "fonts"

    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/motionphoto/utils/ex/e;->h([Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    move-result-object v0

    sput-object v0, LJ3/t;->a:Lcom/samsung/android/motionphoto/utils/ex/e;

    const-string v5, "p"

    const-string v6, "u"

    const-string v1, "id"

    const-string v2, "layers"

    const-string v3, "w"

    const-string v4, "h"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/motionphoto/utils/ex/e;->h([Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    move-result-object v0

    sput-object v0, LJ3/t;->b:Lcom/samsung/android/motionphoto/utils/ex/e;

    const-string v0, "list"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/motionphoto/utils/ex/e;->h([Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    move-result-object v0

    sput-object v0, LJ3/t;->c:Lcom/samsung/android/motionphoto/utils/ex/e;

    const-string v0, "tm"

    const-string v1, "dr"

    const-string v2, "cm"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/motionphoto/utils/ex/e;->h([Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    move-result-object v0

    sput-object v0, LJ3/t;->d:Lcom/samsung/android/motionphoto/utils/ex/e;

    return-void
.end method

.method public static a(LK3/d;)Lz3/g;
    .locals 29

    move-object/from16 v0, p0

    const/4 v1, 0x1

    invoke-static {}, LL3/g;->c()F

    move-result v2

    new-instance v3, LN/k;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, LN/k;-><init>(Ljava/lang/Object;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, LN/B;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, LN/B;-><init>(I)V

    new-instance v12, Lz3/g;

    invoke-direct {v12}, Lz3/g;-><init>()V

    invoke-virtual/range {p0 .. p0}, LK3/d;->b()V

    move v14, v11

    move v15, v14

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_0
    invoke-virtual/range {p0 .. p0}, LK3/d;->f()Z

    move-result v18

    if-eqz v18, :cond_2a

    sget-object v4, LJ3/t;->a:Lcom/samsung/android/motionphoto/utils/ex/e;

    invoke-virtual {v0, v4}, LK3/d;->v(Lcom/samsung/android/motionphoto/utils/ex/e;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    invoke-virtual/range {p0 .. p0}, LK3/d;->B()V

    invoke-virtual/range {p0 .. p0}, LK3/d;->E()V

    move v4, v1

    move v11, v2

    move-object/from16 v22, v8

    move-object/from16 v21, v9

    move-object/from16 v23, v10

    move/from16 v20, v13

    move/from16 v19, v14

    move/from16 v24, v15

    goto/16 :goto_18

    :pswitch_0
    invoke-virtual/range {p0 .. p0}, LK3/d;->a()V

    :goto_1
    invoke-virtual/range {p0 .. p0}, LK3/d;->f()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual/range {p0 .. p0}, LK3/d;->b()V

    const/4 v4, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    :goto_2
    invoke-virtual/range {p0 .. p0}, LK3/d;->f()Z

    move-result v19

    if-eqz v19, :cond_3

    sget-object v11, LJ3/t;->d:Lcom/samsung/android/motionphoto/utils/ex/e;

    invoke-virtual {v0, v11}, LK3/d;->v(Lcom/samsung/android/motionphoto/utils/ex/e;)I

    move-result v11

    if-eqz v11, :cond_2

    if-eq v11, v1, :cond_1

    const/4 v1, 0x2

    if-eq v11, v1, :cond_0

    invoke-virtual/range {p0 .. p0}, LK3/d;->B()V

    invoke-virtual/range {p0 .. p0}, LK3/d;->E()V

    :goto_3
    const/4 v1, 0x1

    goto :goto_2

    :cond_0
    move v11, v2

    invoke-virtual/range {p0 .. p0}, LK3/d;->j()D

    move-result-wide v1

    double-to-float v1, v1

    move/from16 v21, v1

    :goto_4
    move v2, v11

    goto :goto_3

    :cond_1
    move v11, v2

    invoke-virtual/range {p0 .. p0}, LK3/d;->j()D

    move-result-wide v1

    double-to-float v1, v1

    move/from16 v20, v1

    goto :goto_4

    :cond_2
    move v11, v2

    invoke-virtual/range {p0 .. p0}, LK3/d;->o()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_3
    move v11, v2

    invoke-virtual/range {p0 .. p0}, LK3/d;->d()V

    new-instance v1, LE3/i;

    move/from16 v2, v20

    move/from16 v20, v13

    move/from16 v13, v21

    invoke-direct {v1, v4, v2, v13}, LE3/i;-><init>(Ljava/lang/String;FF)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v11

    move/from16 v13, v20

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    move v11, v2

    move/from16 v20, v13

    invoke-virtual/range {p0 .. p0}, LK3/d;->c()V

    :goto_5
    move-object/from16 v22, v8

    move-object/from16 v21, v9

    :goto_6
    move-object/from16 v23, v10

    move/from16 v19, v14

    move/from16 v24, v15

    :goto_7
    const/4 v4, 0x1

    goto/16 :goto_18

    :pswitch_1
    move v11, v2

    move/from16 v20, v13

    invoke-virtual/range {p0 .. p0}, LK3/d;->a()V

    :goto_8
    invoke-virtual/range {p0 .. p0}, LK3/d;->f()Z

    move-result v1

    if-eqz v1, :cond_f

    sget-object v1, LJ3/j;->a:Lcom/samsung/android/motionphoto/utils/ex/e;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p0 .. p0}, LK3/d;->b()V

    const-wide/16 v22, 0x0

    move-wide/from16 v25, v22

    const/16 v24, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    :goto_9
    invoke-virtual/range {p0 .. p0}, LK3/d;->f()Z

    move-result v2

    if-eqz v2, :cond_e

    sget-object v2, LJ3/j;->a:Lcom/samsung/android/motionphoto/utils/ex/e;

    invoke-virtual {v0, v2}, LK3/d;->v(Lcom/samsung/android/motionphoto/utils/ex/e;)I

    move-result v2

    if-eqz v2, :cond_d

    const/4 v4, 0x1

    if-eq v2, v4, :cond_c

    const/4 v4, 0x2

    if-eq v2, v4, :cond_b

    const/4 v4, 0x3

    if-eq v2, v4, :cond_a

    const/4 v4, 0x4

    if-eq v2, v4, :cond_9

    const/4 v4, 0x5

    if-eq v2, v4, :cond_5

    invoke-virtual/range {p0 .. p0}, LK3/d;->B()V

    invoke-virtual/range {p0 .. p0}, LK3/d;->E()V

    goto :goto_9

    :cond_5
    invoke-virtual/range {p0 .. p0}, LK3/d;->b()V

    :goto_a
    invoke-virtual/range {p0 .. p0}, LK3/d;->f()Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, LJ3/j;->b:Lcom/samsung/android/motionphoto/utils/ex/e;

    invoke-virtual {v0, v2}, LK3/d;->v(Lcom/samsung/android/motionphoto/utils/ex/e;)I

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual/range {p0 .. p0}, LK3/d;->B()V

    invoke-virtual/range {p0 .. p0}, LK3/d;->E()V

    goto :goto_a

    :cond_6
    invoke-virtual/range {p0 .. p0}, LK3/d;->a()V

    :goto_b
    invoke-virtual/range {p0 .. p0}, LK3/d;->f()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {v0, v12}, LJ3/g;->a(LK3/d;Lz3/g;)LG3/b;

    move-result-object v2

    check-cast v2, LG3/q;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_7
    invoke-virtual/range {p0 .. p0}, LK3/d;->c()V

    goto :goto_a

    :cond_8
    invoke-virtual/range {p0 .. p0}, LK3/d;->d()V

    goto :goto_9

    :cond_9
    invoke-virtual/range {p0 .. p0}, LK3/d;->o()Ljava/lang/String;

    move-result-object v28

    goto :goto_9

    :cond_a
    invoke-virtual/range {p0 .. p0}, LK3/d;->o()Ljava/lang/String;

    move-result-object v27

    goto :goto_9

    :cond_b
    invoke-virtual/range {p0 .. p0}, LK3/d;->j()D

    move-result-wide v25

    goto :goto_9

    :cond_c
    invoke-virtual/range {p0 .. p0}, LK3/d;->j()D

    goto :goto_9

    :cond_d
    invoke-virtual/range {p0 .. p0}, LK3/d;->o()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v24

    goto :goto_9

    :cond_e
    invoke-virtual/range {p0 .. p0}, LK3/d;->d()V

    new-instance v2, LE3/e;

    move-object/from16 v22, v2

    move-object/from16 v23, v1

    invoke-direct/range {v22 .. v28}, LE3/e;-><init>(Ljava/util/ArrayList;CDLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, LE3/e;->hashCode()I

    move-result v1

    invoke-virtual {v10, v1, v2}, LN/B;->c(ILjava/lang/Object;)V

    goto/16 :goto_8

    :cond_f
    invoke-virtual/range {p0 .. p0}, LK3/d;->c()V

    goto/16 :goto_5

    :pswitch_2
    move v11, v2

    move/from16 v20, v13

    invoke-virtual/range {p0 .. p0}, LK3/d;->b()V

    :goto_c
    invoke-virtual/range {p0 .. p0}, LK3/d;->f()Z

    move-result v1

    if-eqz v1, :cond_17

    sget-object v1, LJ3/t;->c:Lcom/samsung/android/motionphoto/utils/ex/e;

    invoke-virtual {v0, v1}, LK3/d;->v(Lcom/samsung/android/motionphoto/utils/ex/e;)I

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual/range {p0 .. p0}, LK3/d;->B()V

    invoke-virtual/range {p0 .. p0}, LK3/d;->E()V

    goto :goto_c

    :cond_10
    invoke-virtual/range {p0 .. p0}, LK3/d;->a()V

    :goto_d
    invoke-virtual/range {p0 .. p0}, LK3/d;->f()Z

    move-result v1

    if-eqz v1, :cond_16

    sget-object v1, LJ3/k;->a:Lcom/samsung/android/motionphoto/utils/ex/e;

    invoke-virtual/range {p0 .. p0}, LK3/d;->b()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_e
    invoke-virtual/range {p0 .. p0}, LK3/d;->f()Z

    move-result v13

    if-eqz v13, :cond_15

    sget-object v13, LJ3/k;->a:Lcom/samsung/android/motionphoto/utils/ex/e;

    invoke-virtual {v0, v13}, LK3/d;->v(Lcom/samsung/android/motionphoto/utils/ex/e;)I

    move-result v13

    if-eqz v13, :cond_14

    move-object/from16 v21, v9

    const/4 v9, 0x1

    if-eq v13, v9, :cond_13

    const/4 v9, 0x2

    if-eq v13, v9, :cond_12

    const/4 v9, 0x3

    if-eq v13, v9, :cond_11

    invoke-virtual/range {p0 .. p0}, LK3/d;->B()V

    invoke-virtual/range {p0 .. p0}, LK3/d;->E()V

    :goto_f
    move-object/from16 v9, v21

    goto :goto_e

    :cond_11
    invoke-virtual/range {p0 .. p0}, LK3/d;->j()D

    goto :goto_f

    :cond_12
    invoke-virtual/range {p0 .. p0}, LK3/d;->o()Ljava/lang/String;

    move-result-object v4

    goto :goto_f

    :cond_13
    invoke-virtual/range {p0 .. p0}, LK3/d;->o()Ljava/lang/String;

    move-result-object v2

    goto :goto_f

    :cond_14
    move-object/from16 v21, v9

    invoke-virtual/range {p0 .. p0}, LK3/d;->o()Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    :cond_15
    move-object/from16 v21, v9

    invoke-virtual/range {p0 .. p0}, LK3/d;->d()V

    new-instance v9, LE3/d;

    invoke-direct {v9, v1, v2, v4}, LE3/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v9, v21

    goto :goto_d

    :cond_16
    move-object/from16 v21, v9

    invoke-virtual/range {p0 .. p0}, LK3/d;->c()V

    goto :goto_c

    :cond_17
    move-object/from16 v21, v9

    invoke-virtual/range {p0 .. p0}, LK3/d;->d()V

    move-object/from16 v22, v8

    goto/16 :goto_6

    :pswitch_3
    move v11, v2

    move-object/from16 v21, v9

    move/from16 v20, v13

    invoke-virtual/range {p0 .. p0}, LK3/d;->a()V

    :goto_10
    invoke-virtual/range {p0 .. p0}, LK3/d;->f()Z

    move-result v1

    if-eqz v1, :cond_21

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, LN/k;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, LN/k;-><init>(Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, LK3/d;->b()V

    move-object/from16 v22, v8

    const/4 v9, 0x0

    const/4 v13, 0x0

    move-object v8, v4

    :goto_11
    invoke-virtual/range {p0 .. p0}, LK3/d;->f()Z

    move-result v23

    if-eqz v23, :cond_1f

    move-object/from16 v23, v10

    sget-object v10, LJ3/t;->b:Lcom/samsung/android/motionphoto/utils/ex/e;

    invoke-virtual {v0, v10}, LK3/d;->v(Lcom/samsung/android/motionphoto/utils/ex/e;)I

    move-result v10

    if-eqz v10, :cond_1e

    move/from16 v24, v15

    const/4 v15, 0x1

    if-eq v10, v15, :cond_1c

    const/4 v15, 0x2

    if-eq v10, v15, :cond_1b

    const/4 v15, 0x3

    if-eq v10, v15, :cond_1a

    const/4 v15, 0x4

    if-eq v10, v15, :cond_19

    const/4 v15, 0x5

    if-eq v10, v15, :cond_18

    invoke-virtual/range {p0 .. p0}, LK3/d;->B()V

    invoke-virtual/range {p0 .. p0}, LK3/d;->E()V

    move/from16 v19, v14

    goto :goto_14

    :cond_18
    invoke-virtual/range {p0 .. p0}, LK3/d;->o()Ljava/lang/String;

    :goto_12
    move-object/from16 v10, v23

    move/from16 v15, v24

    goto :goto_11

    :cond_19
    const/4 v15, 0x5

    invoke-virtual/range {p0 .. p0}, LK3/d;->o()Ljava/lang/String;

    move-result-object v4

    goto :goto_12

    :cond_1a
    const/4 v15, 0x5

    invoke-virtual/range {p0 .. p0}, LK3/d;->k()I

    move-result v13

    goto :goto_12

    :cond_1b
    const/4 v15, 0x5

    invoke-virtual/range {p0 .. p0}, LK3/d;->k()I

    move-result v9

    goto :goto_12

    :cond_1c
    const/4 v15, 0x5

    invoke-virtual/range {p0 .. p0}, LK3/d;->a()V

    :goto_13
    invoke-virtual/range {p0 .. p0}, LK3/d;->f()Z

    move-result v10

    if-eqz v10, :cond_1d

    invoke-static {v0, v12}, LJ3/s;->a(LK3/d;Lz3/g;)LH3/i;

    move-result-object v10

    move/from16 v19, v14

    iget-wide v14, v10, LH3/i;->d:J

    invoke-virtual {v2, v14, v15, v10}, LN/k;->e(JLjava/lang/Object;)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v14, v19

    const/4 v15, 0x5

    goto :goto_13

    :cond_1d
    move/from16 v19, v14

    invoke-virtual/range {p0 .. p0}, LK3/d;->c()V

    :goto_14
    move/from16 v14, v19

    goto :goto_12

    :cond_1e
    move/from16 v19, v14

    move/from16 v24, v15

    invoke-virtual/range {p0 .. p0}, LK3/d;->o()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v10, v23

    goto :goto_11

    :cond_1f
    move-object/from16 v23, v10

    move/from16 v19, v14

    move/from16 v24, v15

    invoke-virtual/range {p0 .. p0}, LK3/d;->d()V

    if-eqz v4, :cond_20

    new-instance v1, Lz3/u;

    invoke-direct {v1, v9, v8, v13, v4}, Lz3/u;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v7, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    :cond_20
    invoke-virtual {v6, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_15
    move/from16 v14, v19

    move-object/from16 v8, v22

    move-object/from16 v10, v23

    move/from16 v15, v24

    goto/16 :goto_10

    :cond_21
    move-object/from16 v22, v8

    move-object/from16 v23, v10

    move/from16 v19, v14

    move/from16 v24, v15

    invoke-virtual/range {p0 .. p0}, LK3/d;->c()V

    goto/16 :goto_7

    :pswitch_4
    move v11, v2

    move-object/from16 v22, v8

    move-object/from16 v21, v9

    move-object/from16 v23, v10

    move/from16 v20, v13

    move/from16 v19, v14

    move/from16 v24, v15

    invoke-virtual/range {p0 .. p0}, LK3/d;->a()V

    const/4 v1, 0x0

    :cond_22
    :goto_16
    invoke-virtual/range {p0 .. p0}, LK3/d;->f()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-static {v0, v12}, LJ3/s;->a(LK3/d;Lz3/g;)LH3/i;

    move-result-object v2

    sget-object v4, LH3/g;->IMAGE:LH3/g;

    iget-object v8, v2, LH3/i;->e:LH3/g;

    if-ne v8, v4, :cond_23

    const/4 v4, 0x1

    add-int/2addr v1, v4

    :cond_23
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v8, v2, LH3/i;->d:J

    invoke-virtual {v3, v8, v9, v2}, LN/k;->e(JLjava/lang/Object;)V

    const/4 v2, 0x4

    if-le v1, v2, :cond_22

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "You have "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " images. Lottie should primarily be used with shapes. If you are using Adobe Illustrator, convert the Illustrator layers to shape layers."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LL3/b;->b(Ljava/lang/String;)V

    goto :goto_16

    :cond_24
    invoke-virtual/range {p0 .. p0}, LK3/d;->c()V

    goto/16 :goto_7

    :pswitch_5
    move v11, v2

    move-object/from16 v22, v8

    move-object/from16 v21, v9

    move-object/from16 v23, v10

    move/from16 v20, v13

    move/from16 v19, v14

    move/from16 v24, v15

    invoke-virtual/range {p0 .. p0}, LK3/d;->o()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\."

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v4, v1, v2

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x1

    aget-object v8, v1, v4

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x2

    aget-object v1, v1, v9

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v9, 0x4

    if-ge v2, v9, :cond_25

    goto :goto_17

    :cond_25
    if-le v2, v9, :cond_26

    goto :goto_18

    :cond_26
    if-ge v8, v9, :cond_27

    goto :goto_17

    :cond_27
    if-le v8, v9, :cond_28

    goto :goto_18

    :cond_28
    if-ltz v1, :cond_29

    goto :goto_18

    :cond_29
    :goto_17
    const-string v1, "Lottie only supports bodymovin >= 4.4.0"

    invoke-virtual {v12, v1}, Lz3/g;->a(Ljava/lang/String;)V

    :goto_18
    move v1, v4

    move v2, v11

    move/from16 v14, v19

    move/from16 v13, v20

    move-object/from16 v9, v21

    move-object/from16 v8, v22

    move-object/from16 v10, v23

    move/from16 v15, v24

    :goto_19
    const/4 v4, 0x0

    const/4 v11, 0x0

    goto/16 :goto_0

    :pswitch_6
    move v4, v1

    move v11, v2

    move-object/from16 v22, v8

    move-object/from16 v21, v9

    move-object/from16 v23, v10

    move/from16 v20, v13

    move/from16 v19, v14

    move/from16 v24, v15

    invoke-virtual/range {p0 .. p0}, LK3/d;->j()D

    move-result-wide v1

    double-to-float v1, v1

    move/from16 v17, v1

    :goto_1a
    move v1, v4

    move v2, v11

    goto :goto_19

    :pswitch_7
    move v4, v1

    move v11, v2

    move-object/from16 v22, v8

    move-object/from16 v21, v9

    move-object/from16 v23, v10

    move/from16 v20, v13

    move/from16 v19, v14

    move/from16 v24, v15

    invoke-virtual/range {p0 .. p0}, LK3/d;->j()D

    move-result-wide v1

    double-to-float v1, v1

    const v2, 0x3c23d70a    # 0.01f

    sub-float v16, v1, v2

    goto :goto_1a

    :pswitch_8
    move v4, v1

    move v11, v2

    move-object/from16 v22, v8

    move-object/from16 v21, v9

    move-object/from16 v23, v10

    move/from16 v19, v14

    move/from16 v24, v15

    invoke-virtual/range {p0 .. p0}, LK3/d;->j()D

    move-result-wide v1

    double-to-float v13, v1

    goto :goto_1a

    :pswitch_9
    move v4, v1

    move v11, v2

    move-object/from16 v22, v8

    move-object/from16 v21, v9

    move-object/from16 v23, v10

    move/from16 v20, v13

    move/from16 v19, v14

    invoke-virtual/range {p0 .. p0}, LK3/d;->k()I

    move-result v15

    goto :goto_19

    :pswitch_a
    move v4, v1

    move v11, v2

    move-object/from16 v22, v8

    move-object/from16 v21, v9

    move-object/from16 v23, v10

    move/from16 v20, v13

    move/from16 v24, v15

    invoke-virtual/range {p0 .. p0}, LK3/d;->k()I

    move-result v14

    goto :goto_19

    :cond_2a
    move v11, v2

    move-object/from16 v22, v8

    move-object/from16 v21, v9

    move-object/from16 v23, v10

    move/from16 v20, v13

    move/from16 v24, v15

    int-to-float v0, v14

    mul-float/2addr v0, v11

    float-to-int v0, v0

    int-to-float v1, v15

    mul-float/2addr v1, v11

    float-to-int v1, v1

    new-instance v2, Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-direct {v2, v4, v4, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, v12, Lz3/g;->j:Landroid/graphics/Rect;

    move/from16 v13, v20

    iput v13, v12, Lz3/g;->k:F

    move/from16 v13, v16

    iput v13, v12, Lz3/g;->l:F

    move/from16 v1, v17

    iput v1, v12, Lz3/g;->m:F

    iput-object v5, v12, Lz3/g;->i:Ljava/util/ArrayList;

    iput-object v3, v12, Lz3/g;->h:LN/k;

    iput-object v6, v12, Lz3/g;->c:Ljava/util/HashMap;

    iput-object v7, v12, Lz3/g;->d:Ljava/util/HashMap;

    move-object/from16 v0, v23

    iput-object v0, v12, Lz3/g;->g:LN/B;

    move-object/from16 v0, v22

    iput-object v0, v12, Lz3/g;->e:Ljava/util/HashMap;

    move-object/from16 v0, v21

    iput-object v0, v12, Lz3/g;->f:Ljava/util/ArrayList;

    return-object v12

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
