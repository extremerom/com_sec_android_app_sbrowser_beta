.class public abstract LJ3/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroid/view/animation/LinearInterpolator;

.field public static final b:Lcom/samsung/android/motionphoto/utils/ex/e;

.field public static final c:Lcom/samsung/android/motionphoto/utils/ex/e;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, LJ3/p;->a:Landroid/view/animation/LinearInterpolator;

    const-string v5, "i"

    const-string v6, "h"

    const-string v1, "t"

    const-string v2, "s"

    const-string v3, "e"

    const-string v4, "o"

    const-string v7, "to"

    const-string v8, "ti"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/motionphoto/utils/ex/e;->h([Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    move-result-object v0

    sput-object v0, LJ3/p;->b:Lcom/samsung/android/motionphoto/utils/ex/e;

    const-string v0, "x"

    const-string v1, "y"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/motionphoto/utils/ex/e;->h([Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    move-result-object v0

    sput-object v0, LJ3/p;->c:Lcom/samsung/android/motionphoto/utils/ex/e;

    return-void
.end method

.method public static a(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/view/animation/BaseInterpolator;
    .locals 6

    iget v0, p0, Landroid/graphics/PointF;->x:F

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, LL3/e;->b(FFF)F

    move-result v0

    iput v0, p0, Landroid/graphics/PointF;->x:F

    iget v0, p0, Landroid/graphics/PointF;->y:F

    const/high16 v3, -0x3d380000    # -100.0f

    const/high16 v4, 0x42c80000    # 100.0f

    invoke-static {v0, v3, v4}, LL3/e;->b(FFF)F

    move-result v0

    iput v0, p0, Landroid/graphics/PointF;->y:F

    iget v0, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v0, v1, v2}, LL3/e;->b(FFF)F

    move-result v0

    iput v0, p1, Landroid/graphics/PointF;->x:F

    iget v0, p1, Landroid/graphics/PointF;->y:F

    invoke-static {v0, v3, v4}, LL3/e;->b(FFF)F

    move-result v0

    iput v0, p1, Landroid/graphics/PointF;->y:F

    sget-object v1, LL3/g;->a:LL3/f;

    :try_start_0
    iget v1, p0, Landroid/graphics/PointF;->x:F

    iget v3, p0, Landroid/graphics/PointF;->y:F

    iget v4, p1, Landroid/graphics/PointF;->x:F

    new-instance v5, Landroid/view/animation/PathInterpolator;

    invoke-direct {v5, v1, v3, v4, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "The Path cannot loop back on itself."

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/graphics/PointF;->x:F

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget p0, p0, Landroid/graphics/PointF;->y:F

    iget v1, p1, Landroid/graphics/PointF;->x:F

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget p1, p1, Landroid/graphics/PointF;->y:F

    new-instance v5, Landroid/view/animation/PathInterpolator;

    invoke-direct {v5, v0, p0, v1, p1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    goto :goto_0

    :cond_0
    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    :goto_0
    return-object v5
.end method

.method public static b(LK3/c;Lz3/g;FLJ3/F;ZZ)LM3/a;
    .locals 23

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    sget-object v3, LJ3/p;->a:Landroid/view/animation/LinearInterpolator;

    sget-object v4, LJ3/p;->b:Lcom/samsung/android/motionphoto/utils/ex/e;

    if-eqz p4, :cond_16

    if-eqz p5, :cond_16

    invoke-virtual/range {p0 .. p0}, LK3/c;->b()V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    :goto_0
    invoke-virtual/range {p0 .. p0}, LK3/c;->f()Z

    move-result v20

    if-eqz v20, :cond_11

    invoke-virtual {v0, v4}, LK3/c;->v(Lcom/samsung/android/motionphoto/utils/ex/e;)I

    move-result v20

    sget-object v5, LJ3/p;->c:Lcom/samsung/android/motionphoto/utils/ex/e;

    packed-switch v20, :pswitch_data_0

    invoke-virtual/range {p0 .. p0}, LK3/c;->E()V

    goto :goto_0

    :pswitch_0
    invoke-static {v0, v1}, LJ3/o;->b(LK3/c;F)Landroid/graphics/PointF;

    move-result-object v8

    goto :goto_0

    :pswitch_1
    invoke-static {v0, v1}, LJ3/o;->b(LK3/c;F)Landroid/graphics/PointF;

    move-result-object v7

    goto :goto_0

    :pswitch_2
    invoke-virtual/range {p0 .. p0}, LK3/c;->k()I

    move-result v5

    const/4 v9, 0x1

    if-ne v5, v9, :cond_0

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    :pswitch_3
    move-object/from16 v20, v3

    invoke-virtual/range {p0 .. p0}, LK3/c;->q()LK3/b;

    move-result-object v3

    move-object/from16 v21, v4

    sget-object v4, LK3/b;->BEGIN_OBJECT:LK3/b;

    if-ne v3, v4, :cond_8

    invoke-virtual/range {p0 .. p0}, LK3/c;->b()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v15, 0x0

    :goto_1
    invoke-virtual/range {p0 .. p0}, LK3/c;->f()Z

    move-result v22

    if-eqz v22, :cond_7

    move-object/from16 v22, v8

    invoke-virtual {v0, v5}, LK3/c;->v(Lcom/samsung/android/motionphoto/utils/ex/e;)I

    move-result v8

    if-eqz v8, :cond_4

    move-object/from16 p4, v7

    const/4 v7, 0x1

    if-eq v8, v7, :cond_1

    invoke-virtual/range {p0 .. p0}, LK3/c;->E()V

    move-object/from16 v7, p4

    :goto_2
    move-object/from16 v8, v22

    goto :goto_1

    :cond_1
    invoke-virtual/range {p0 .. p0}, LK3/c;->q()LK3/b;

    move-result-object v4

    sget-object v7, LK3/b;->NUMBER:LK3/b;

    if-ne v4, v7, :cond_2

    invoke-virtual/range {p0 .. p0}, LK3/c;->j()D

    move-result-wide v7

    double-to-float v15, v7

    move-object/from16 v7, p4

    move v4, v15

    goto :goto_2

    :cond_2
    invoke-virtual/range {p0 .. p0}, LK3/c;->a()V

    move-object/from16 p5, v13

    move-object v8, v14

    invoke-virtual/range {p0 .. p0}, LK3/c;->j()D

    move-result-wide v13

    double-to-float v4, v13

    invoke-virtual/range {p0 .. p0}, LK3/c;->q()LK3/b;

    move-result-object v13

    if-ne v13, v7, :cond_3

    invoke-virtual/range {p0 .. p0}, LK3/c;->j()D

    move-result-wide v13

    double-to-float v7, v13

    move v15, v7

    goto :goto_3

    :cond_3
    move v15, v4

    :goto_3
    invoke-virtual/range {p0 .. p0}, LK3/c;->c()V

    :goto_4
    move-object/from16 v7, p4

    move-object/from16 v13, p5

    :goto_5
    move-object v14, v8

    goto :goto_2

    :cond_4
    move-object/from16 p4, v7

    move-object/from16 p5, v13

    move-object v8, v14

    invoke-virtual/range {p0 .. p0}, LK3/c;->q()LK3/b;

    move-result-object v3

    sget-object v6, LK3/b;->NUMBER:LK3/b;

    if-ne v3, v6, :cond_5

    invoke-virtual/range {p0 .. p0}, LK3/c;->j()D

    move-result-wide v6

    double-to-float v6, v6

    move-object/from16 v7, p4

    move-object/from16 v13, p5

    move v3, v6

    goto :goto_5

    :cond_5
    invoke-virtual/range {p0 .. p0}, LK3/c;->a()V

    invoke-virtual/range {p0 .. p0}, LK3/c;->j()D

    move-result-wide v13

    double-to-float v3, v13

    invoke-virtual/range {p0 .. p0}, LK3/c;->q()LK3/b;

    move-result-object v7

    if-ne v7, v6, :cond_6

    invoke-virtual/range {p0 .. p0}, LK3/c;->j()D

    move-result-wide v6

    double-to-float v6, v6

    goto :goto_6

    :cond_6
    move v6, v3

    :goto_6
    invoke-virtual/range {p0 .. p0}, LK3/c;->c()V

    goto :goto_4

    :cond_7
    move-object/from16 p4, v7

    move-object/from16 v22, v8

    move-object/from16 p5, v13

    move-object v8, v14

    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, v6, v15}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual/range {p0 .. p0}, LK3/c;->d()V

    move-object v6, v3

    move-object v15, v5

    :goto_7
    move-object/from16 v3, v20

    move-object/from16 v4, v21

    :goto_8
    move-object/from16 v8, v22

    goto/16 :goto_0

    :cond_8
    move-object/from16 p4, v7

    move-object/from16 v22, v8

    move-object/from16 p5, v13

    move-object v8, v14

    invoke-static {v0, v1}, LJ3/o;->b(LK3/c;F)Landroid/graphics/PointF;

    move-result-object v11

    goto :goto_7

    :pswitch_4
    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move-object/from16 p4, v7

    move-object/from16 v22, v8

    move-object/from16 p5, v13

    move-object v8, v14

    invoke-virtual/range {p0 .. p0}, LK3/c;->q()LK3/b;

    move-result-object v3

    sget-object v4, LK3/b;->BEGIN_OBJECT:LK3/b;

    if-ne v3, v4, :cond_10

    invoke-virtual/range {p0 .. p0}, LK3/c;->b()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_9
    invoke-virtual/range {p0 .. p0}, LK3/c;->f()Z

    move-result v12

    if-eqz v12, :cond_f

    invoke-virtual {v0, v5}, LK3/c;->v(Lcom/samsung/android/motionphoto/utils/ex/e;)I

    move-result v12

    if-eqz v12, :cond_c

    const/4 v13, 0x1

    if-eq v12, v13, :cond_9

    invoke-virtual/range {p0 .. p0}, LK3/c;->E()V

    goto :goto_9

    :cond_9
    invoke-virtual/range {p0 .. p0}, LK3/c;->q()LK3/b;

    move-result-object v4

    sget-object v8, LK3/b;->NUMBER:LK3/b;

    if-ne v4, v8, :cond_a

    invoke-virtual/range {p0 .. p0}, LK3/c;->j()D

    move-result-wide v12

    double-to-float v8, v12

    move v4, v8

    goto :goto_9

    :cond_a
    invoke-virtual/range {p0 .. p0}, LK3/c;->a()V

    invoke-virtual/range {p0 .. p0}, LK3/c;->j()D

    move-result-wide v12

    double-to-float v4, v12

    invoke-virtual/range {p0 .. p0}, LK3/c;->q()LK3/b;

    move-result-object v12

    if-ne v12, v8, :cond_b

    invoke-virtual/range {p0 .. p0}, LK3/c;->j()D

    move-result-wide v12

    double-to-float v8, v12

    goto :goto_a

    :cond_b
    move v8, v4

    :goto_a
    invoke-virtual/range {p0 .. p0}, LK3/c;->c()V

    goto :goto_9

    :cond_c
    invoke-virtual/range {p0 .. p0}, LK3/c;->q()LK3/b;

    move-result-object v3

    sget-object v7, LK3/b;->NUMBER:LK3/b;

    if-ne v3, v7, :cond_d

    invoke-virtual/range {p0 .. p0}, LK3/c;->j()D

    move-result-wide v12

    double-to-float v7, v12

    move v3, v7

    goto :goto_9

    :cond_d
    invoke-virtual/range {p0 .. p0}, LK3/c;->a()V

    invoke-virtual/range {p0 .. p0}, LK3/c;->j()D

    move-result-wide v12

    double-to-float v3, v12

    invoke-virtual/range {p0 .. p0}, LK3/c;->q()LK3/b;

    move-result-object v12

    if-ne v12, v7, :cond_e

    invoke-virtual/range {p0 .. p0}, LK3/c;->j()D

    move-result-wide v12

    double-to-float v7, v12

    goto :goto_b

    :cond_e
    move v7, v3

    :goto_b
    invoke-virtual/range {p0 .. p0}, LK3/c;->c()V

    goto :goto_9

    :cond_f
    new-instance v12, Landroid/graphics/PointF;

    invoke-direct {v12, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v14, Landroid/graphics/PointF;

    invoke-direct {v14, v7, v8}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual/range {p0 .. p0}, LK3/c;->d()V

    move-object/from16 v7, p4

    move-object/from16 v13, p5

    goto/16 :goto_7

    :cond_10
    invoke-static {v0, v1}, LJ3/o;->b(LK3/c;F)Landroid/graphics/PointF;

    move-result-object v10

    move-object/from16 v7, p4

    move-object/from16 v13, p5

    move-object v14, v8

    goto/16 :goto_7

    :pswitch_5
    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move-object/from16 p4, v7

    move-object/from16 v22, v8

    move-object/from16 p5, v13

    move-object v8, v14

    invoke-interface {v2, v0, v1}, LJ3/F;->f(LK3/c;F)Ljava/lang/Object;

    move-result-object v19

    goto/16 :goto_8

    :pswitch_6
    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move-object/from16 p4, v7

    move-object/from16 v22, v8

    move-object v8, v14

    invoke-interface {v2, v0, v1}, LJ3/F;->f(LK3/c;F)Ljava/lang/Object;

    move-result-object v13

    goto/16 :goto_8

    :pswitch_7
    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move-object/from16 p4, v7

    move-object/from16 v22, v8

    move-object/from16 p5, v13

    move-object v8, v14

    invoke-virtual/range {p0 .. p0}, LK3/c;->j()D

    move-result-wide v3

    double-to-float v3, v3

    move/from16 v17, v3

    goto/16 :goto_7

    :cond_11
    move-object/from16 v20, v3

    move-object/from16 p4, v7

    move-object/from16 v22, v8

    move-object/from16 p5, v13

    move-object v8, v14

    invoke-virtual/range {p0 .. p0}, LK3/c;->d()V

    if-eqz v9, :cond_12

    move-object/from16 v14, p5

    :goto_c
    const/4 v15, 0x0

    const/16 v16, 0x0

    goto :goto_d

    :cond_12
    if-eqz v10, :cond_14

    if-eqz v11, :cond_14

    invoke-static {v10, v11}, LJ3/p;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/view/animation/BaseInterpolator;

    move-result-object v3

    move-object/from16 v20, v3

    :cond_13
    move-object/from16 v14, v19

    goto :goto_c

    :cond_14
    if-eqz v12, :cond_13

    if-eqz v8, :cond_13

    if-eqz v15, :cond_13

    if-eqz v6, :cond_13

    invoke-static {v12, v15}, LJ3/p;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/view/animation/BaseInterpolator;

    move-result-object v0

    invoke-static {v8, v6}, LJ3/p;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/view/animation/BaseInterpolator;

    move-result-object v1

    move-object v15, v0

    move-object/from16 v16, v1

    move-object/from16 v14, v19

    const/16 v20, 0x0

    :goto_d
    if-eqz v15, :cond_15

    if-eqz v16, :cond_15

    new-instance v0, LM3/a;

    move-object v11, v0

    move-object/from16 v12, p1

    move-object/from16 v13, p5

    invoke-direct/range {v11 .. v17}, LM3/a;-><init>(Lz3/g;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/BaseInterpolator;Landroid/view/animation/BaseInterpolator;F)V

    :goto_e
    move-object/from16 v7, p4

    goto :goto_f

    :cond_15
    new-instance v0, LM3/a;

    const/4 v1, 0x0

    move-object v11, v0

    move-object/from16 v12, p1

    move-object/from16 v13, p5

    move-object/from16 v15, v20

    move/from16 v16, v17

    move-object/from16 v17, v1

    invoke-direct/range {v11 .. v17}, LM3/a;-><init>(Lz3/g;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/BaseInterpolator;FLjava/lang/Float;)V

    goto :goto_e

    :goto_f
    iput-object v7, v0, LM3/a;->o:Landroid/graphics/PointF;

    move-object/from16 v8, v22

    iput-object v8, v0, LM3/a;->p:Landroid/graphics/PointF;

    return-object v0

    :cond_16
    move-object/from16 v20, v3

    move-object/from16 v21, v4

    if-eqz p4, :cond_1b

    invoke-virtual/range {p0 .. p0}, LK3/c;->b()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v18, 0x0

    :goto_10
    invoke-virtual/range {p0 .. p0}, LK3/c;->f()Z

    move-result v7

    if-eqz v7, :cond_18

    move-object/from16 v7, v21

    invoke-virtual {v0, v7}, LK3/c;->v(Lcom/samsung/android/motionphoto/utils/ex/e;)I

    move-result v11

    const/high16 v12, 0x3f800000    # 1.0f

    packed-switch v11, :pswitch_data_1

    invoke-virtual/range {p0 .. p0}, LK3/c;->E()V

    :goto_11
    move-object/from16 v21, v7

    goto :goto_10

    :pswitch_8
    invoke-static {v0, v1}, LJ3/o;->b(LK3/c;F)Landroid/graphics/PointF;

    move-result-object v10

    goto :goto_11

    :pswitch_9
    invoke-static {v0, v1}, LJ3/o;->b(LK3/c;F)Landroid/graphics/PointF;

    move-result-object v9

    goto :goto_11

    :pswitch_a
    invoke-virtual/range {p0 .. p0}, LK3/c;->k()I

    move-result v5

    const/4 v11, 0x1

    if-ne v5, v11, :cond_17

    move v5, v11

    goto :goto_11

    :cond_17
    const/4 v5, 0x0

    goto :goto_11

    :pswitch_b
    const/4 v11, 0x1

    invoke-static {v0, v12}, LJ3/o;->b(LK3/c;F)Landroid/graphics/PointF;

    move-result-object v4

    goto :goto_11

    :pswitch_c
    const/4 v11, 0x1

    invoke-static {v0, v12}, LJ3/o;->b(LK3/c;F)Landroid/graphics/PointF;

    move-result-object v8

    goto :goto_11

    :pswitch_d
    const/4 v11, 0x1

    invoke-interface {v2, v0, v1}, LJ3/F;->f(LK3/c;F)Ljava/lang/Object;

    move-result-object v18

    goto :goto_11

    :pswitch_e
    const/4 v11, 0x1

    invoke-interface {v2, v0, v1}, LJ3/F;->f(LK3/c;F)Ljava/lang/Object;

    move-result-object v3

    goto :goto_11

    :pswitch_f
    const/4 v11, 0x1

    invoke-virtual/range {p0 .. p0}, LK3/c;->j()D

    move-result-wide v12

    double-to-float v6, v12

    goto :goto_11

    :cond_18
    invoke-virtual/range {p0 .. p0}, LK3/c;->d()V

    if-eqz v5, :cond_19

    move-object v4, v3

    :goto_12
    move-object/from16 v5, v20

    goto :goto_13

    :cond_19
    if-eqz v8, :cond_1a

    if-eqz v4, :cond_1a

    invoke-static {v8, v4}, LJ3/p;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/view/animation/BaseInterpolator;

    move-result-object v0

    move-object v5, v0

    move-object/from16 v4, v18

    goto :goto_13

    :cond_1a
    move-object/from16 v4, v18

    goto :goto_12

    :goto_13
    new-instance v0, LM3/a;

    const/4 v7, 0x0

    move-object v1, v0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v7}, LM3/a;-><init>(Lz3/g;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/BaseInterpolator;FLjava/lang/Float;)V

    iput-object v9, v0, LM3/a;->o:Landroid/graphics/PointF;

    iput-object v10, v0, LM3/a;->p:Landroid/graphics/PointF;

    return-object v0

    :cond_1b
    invoke-interface {v2, v0, v1}, LJ3/F;->f(LK3/c;F)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, LM3/a;

    invoke-direct {v1, v0}, LM3/a;-><init>(Ljava/lang/Object;)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method
