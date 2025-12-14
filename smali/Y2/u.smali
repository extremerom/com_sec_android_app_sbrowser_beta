.class public final LY2/u;
.super LY2/f0;
.source "SourceFile"


# static fields
.field public static final d:[Ljava/lang/String;

.field public static final e:LY2/d;

.field public static final f:LY2/d;

.field public static final g:Z


# instance fields
.field public a:Z

.field public b:Z

.field public c:Landroid/graphics/Matrix;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "android:changeTransform:parentMatrix"

    const-string v1, "android:changeTransform:matrix"

    const-string v2, "android:changeTransform:transforms"

    filled-new-array {v1, v2, v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, LY2/u;->d:[Ljava/lang/String;

    new-instance v0, LY2/d;

    const-class v1, [F

    const-string v2, "nonTranslations"

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, LY2/d;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    sput-object v0, LY2/u;->e:LY2/d;

    new-instance v0, LY2/d;

    const-class v1, Landroid/graphics/PointF;

    const-string v2, "translations"

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, LY2/d;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    sput-object v0, LY2/u;->f:LY2/d;

    const/4 v0, 0x1

    sput-boolean v0, LY2/u;->g:Z

    return-void
.end method


# virtual methods
.method public final captureEndValues(LY2/q0;)V
    .locals 0

    invoke-virtual {p0, p1}, LY2/u;->f(LY2/q0;)V

    return-void
.end method

.method public final captureStartValues(LY2/q0;)V
    .locals 0

    invoke-virtual {p0, p1}, LY2/u;->f(LY2/q0;)V

    sget-boolean p0, LY2/u;->g:Z

    if-nez p0, :cond_0

    iget-object p0, p1, LY2/q0;->b:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final createAnimator(Landroid/view/ViewGroup;LY2/q0;LY2/q0;)Landroid/animation/Animator;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v5, 0x1

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    iget-object v7, v2, LY2/q0;->a:Ljava/util/HashMap;

    const-string v8, "android:changeTransform:parent"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, v3, LY2/q0;->a:Ljava/util/HashMap;

    invoke-virtual {v9, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    :cond_0
    const/4 v0, 0x0

    goto/16 :goto_14

    :cond_1
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    iget-boolean v12, v0, LY2/u;->b:Z

    if-eqz v12, :cond_5

    invoke-virtual {v0, v10}, LY2/f0;->isValidTarget(Landroid/view/View;)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-virtual {v0, v11}, LY2/f0;->isValidTarget(Landroid/view/View;)Z

    move-result v12

    if-nez v12, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v10, v5}, LY2/f0;->getMatchedTransitionValues(Landroid/view/View;Z)LY2/q0;

    move-result-object v12

    if-eqz v12, :cond_4

    iget-object v12, v12, LY2/q0;->b:Landroid/view/View;

    if-ne v11, v12, :cond_4

    goto :goto_1

    :cond_3
    :goto_0
    if-ne v10, v11, :cond_4

    goto :goto_1

    :cond_4
    move v11, v5

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v11, 0x0

    :goto_2
    const-string v12, "android:changeTransform:intermediateMatrix"

    invoke-virtual {v7, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Matrix;

    const-string v14, "android:changeTransform:matrix"

    if-eqz v12, :cond_6

    invoke-virtual {v7, v14, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    const-string v12, "android:changeTransform:intermediateParentMatrix"

    invoke-virtual {v7, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Matrix;

    const-string v15, "android:changeTransform:parentMatrix"

    if-eqz v12, :cond_7

    invoke-virtual {v7, v15, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget-object v3, v3, LY2/q0;->b:Landroid/view/View;

    if-eqz v11, :cond_9

    invoke-virtual {v9, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Matrix;

    const v6, 0x7f0b0885

    invoke-virtual {v3, v6, v12}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object v6, v0, LY2/u;->c:Landroid/graphics/Matrix;

    invoke-virtual {v6}, Landroid/graphics/Matrix;->reset()V

    invoke-virtual {v12, v6}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    invoke-virtual {v7, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Matrix;

    if-nez v12, :cond_8

    new-instance v12, Landroid/graphics/Matrix;

    invoke-direct {v12}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v7, v14, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    invoke-virtual {v7, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v5, v16

    check-cast v5, Landroid/graphics/Matrix;

    invoke-virtual {v12, v5}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    invoke-virtual {v12, v6}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    :cond_9
    invoke-virtual {v7, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Matrix;

    invoke-virtual {v9, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Matrix;

    if-nez v5, :cond_a

    sget-object v5, LY2/K;->a:LY2/J;

    :cond_a
    if-nez v6, :cond_b

    sget-object v6, LY2/K;->a:LY2/J;

    :cond_b
    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v12

    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    if-eqz v12, :cond_c

    move-object/from16 v22, v7

    move-object/from16 v21, v10

    move v10, v14

    move-object v12, v15

    const/4 v4, 0x0

    goto/16 :goto_3

    :cond_c
    const-string v12, "android:changeTransform:transforms"

    invoke-virtual {v9, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v16, v12

    check-cast v16, LY2/t;

    invoke-virtual {v3, v13}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v3, v13}, Landroid/view/View;->setTranslationY(F)V

    sget-object v12, Lf1/W;->a:Ljava/util/WeakHashMap;

    invoke-static {v3, v13}, Lf1/O;->o(Landroid/view/View;F)V

    invoke-virtual {v3, v14}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v3, v14}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {v3, v13}, Landroid/view/View;->setRotationX(F)V

    invoke-virtual {v3, v13}, Landroid/view/View;->setRotationY(F)V

    invoke-virtual {v3, v13}, Landroid/view/View;->setRotation(F)V

    const/16 v12, 0x9

    new-array v14, v12, [F

    invoke-virtual {v5, v14}, Landroid/graphics/Matrix;->getValues([F)V

    new-array v5, v12, [F

    invoke-virtual {v6, v5}, Landroid/graphics/Matrix;->getValues([F)V

    new-instance v13, LY2/s;

    invoke-direct {v13, v3, v14}, LY2/s;-><init>(Landroid/view/View;[F)V

    new-instance v4, LY2/P;

    new-array v12, v12, [F

    move-object/from16 v17, v15

    const/4 v15, 0x2

    invoke-direct {v4, v15}, LY2/P;-><init>(I)V

    iput-object v12, v4, LY2/P;->b:Ljava/lang/Object;

    filled-new-array {v14, v5}, [[F

    move-result-object v12

    sget-object v15, LY2/u;->e:LY2/d;

    invoke-static {v15, v4, v12}, Landroid/animation/PropertyValuesHolder;->ofObject(Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, LY2/f0;->getPathMotion()LY2/M;

    move-result-object v12

    move-object/from16 v21, v10

    const/4 v15, 0x2

    aget v10, v14, v15

    const/16 v18, 0x5

    aget v14, v14, v18

    move-object/from16 v22, v7

    aget v7, v5, v15

    aget v5, v5, v18

    invoke-virtual {v12, v10, v14, v7, v5}, LY2/M;->a(FFFF)Landroid/graphics/Path;

    move-result-object v5

    sget-object v7, LY2/u;->f:LY2/d;

    invoke-static {v7, v5}, LY2/O;->a(Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    filled-new-array {v4, v5}, [Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    invoke-static {v13, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    new-instance v5, LY2/r;

    iget-boolean v7, v0, LY2/u;->a:Z

    const/high16 v10, 0x3f800000    # 1.0f

    move-object v14, v5

    move-object/from16 v12, v17

    move-object v15, v3

    move-object/from16 v17, v13

    move-object/from16 v18, v6

    move/from16 v19, v11

    move/from16 v20, v7

    invoke-direct/range {v14 .. v20}, LY2/r;-><init>(Landroid/view/View;LY2/t;LY2/s;Landroid/graphics/Matrix;ZZ)V

    invoke-virtual {v4, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v4, v5}, Landroid/animation/Animator;->addPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V

    :goto_3
    iget-object v2, v2, LY2/q0;->b:Landroid/view/View;

    sget-boolean v5, LY2/u;->g:Z

    if-eqz v11, :cond_21

    if-eqz v4, :cond_21

    iget-boolean v6, v0, LY2/u;->a:Z

    if-eqz v6, :cond_21

    invoke-virtual {v9, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Matrix;

    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7, v6}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    sget-object v6, LY2/u0;->a:LY2/d;

    invoke-virtual {v1, v7}, Landroid/view/View;->transformMatrixToLocal(Landroid/graphics/Matrix;)V

    sget v6, LY2/H;->g:I

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    instance-of v6, v6, Landroid/view/ViewGroup;

    if-eqz v6, :cond_20

    sget v6, LY2/F;->c:I

    const v6, 0x7f0b054c

    invoke-virtual {v1, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, LY2/F;

    const v11, 0x7f0b054b

    invoke-virtual {v3, v11}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, LY2/H;

    if-eqz v11, :cond_d

    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    check-cast v12, LY2/F;

    if-eq v12, v9, :cond_d

    iget v13, v11, LY2/H;->d:I

    invoke-virtual {v12, v11}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v11, 0x0

    goto :goto_4

    :cond_d
    const/4 v13, 0x0

    :goto_4
    if-nez v11, :cond_1d

    new-instance v11, LY2/H;

    invoke-direct {v11, v3}, LY2/H;-><init>(Landroid/view/View;)V

    iput-object v7, v11, LY2/H;->e:Landroid/graphics/Matrix;

    if-nez v9, :cond_e

    new-instance v9, LY2/F;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v9, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x0

    invoke-virtual {v9, v7}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    iput-object v1, v9, LY2/F;->a:Landroid/view/ViewGroup;

    invoke-virtual {v1, v6, v9}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    const/4 v6, 0x1

    iput-boolean v6, v9, LY2/F;->b:Z

    goto :goto_5

    :cond_e
    iget-boolean v6, v9, LY2/F;->b:Z

    if-eqz v6, :cond_1c

    iget-object v6, v9, LY2/F;->a:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    :goto_5
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v14

    add-int/2addr v14, v12

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v15

    add-int/2addr v15, v12

    invoke-virtual {v9, v6, v7, v14, v15}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v14

    add-int/2addr v14, v12

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v1, v12

    invoke-virtual {v11, v6, v7, v14, v1}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, v11, LY2/H;->c:Landroid/view/View;

    invoke-static {v6, v1}, LY2/F;->a(Landroid/view/View;Ljava/util/ArrayList;)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    const/4 v12, 0x1

    sub-int/2addr v7, v12

    move v12, v7

    const/4 v7, 0x0

    :goto_6
    if-gt v7, v12, :cond_19

    add-int v14, v7, v12

    const/4 v15, 0x2

    div-int/2addr v14, v15

    invoke-virtual {v9, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    move-object/from16 v15, v16

    check-cast v15, LY2/H;

    iget-object v15, v15, LY2/H;->c:Landroid/view/View;

    invoke-static {v15, v6}, LY2/F;->a(Landroid/view/View;Ljava/util/ArrayList;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_f

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_f

    const/4 v15, 0x0

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eq v10, v0, :cond_10

    :cond_f
    move-object/from16 p1, v1

    goto :goto_8

    :cond_10
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v10, 0x1

    :goto_7
    if-ge v10, v0, :cond_17

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v15, v16

    check-cast v15, Landroid/view/View;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 p1, v1

    move-object/from16 v1, v16

    check-cast v1, Landroid/view/View;

    if-eq v15, v1, :cond_16

    invoke-virtual {v15}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    invoke-static {v15}, LY2/E;->a(Landroid/view/View;)F

    move-result v16

    invoke-static {v1}, LY2/E;->a(Landroid/view/View;)F

    move-result v17

    cmpl-float v16, v16, v17

    if-eqz v16, :cond_13

    invoke-static {v15}, LY2/E;->a(Landroid/view/View;)F

    move-result v0

    invoke-static {v1}, LY2/E;->a(Landroid/view/View;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_12

    :goto_8
    move/from16 v16, v12

    :cond_11
    :goto_9
    const/16 v17, 0x1

    goto :goto_d

    :cond_12
    :goto_a
    const/16 v17, 0x1

    goto :goto_c

    :cond_13
    move/from16 v16, v12

    const/4 v12, 0x0

    :goto_b
    if-ge v12, v10, :cond_11

    move/from16 p2, v10

    invoke-static {v0, v12}, LY2/t0;->a(Landroid/view/ViewGroup;I)I

    move-result v10

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    if-ne v10, v15, :cond_14

    goto :goto_a

    :cond_14
    if-ne v10, v1, :cond_15

    goto :goto_9

    :cond_15
    const/16 v17, 0x1

    add-int/lit8 v12, v12, 0x1

    move/from16 v10, p2

    goto :goto_b

    :cond_16
    move/from16 v16, v12

    const/16 v17, 0x1

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, p1

    const/4 v15, 0x0

    goto :goto_7

    :cond_17
    move-object/from16 p1, v1

    move/from16 v16, v12

    const/16 v17, 0x1

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v0, :cond_18

    goto :goto_d

    :cond_18
    :goto_c
    add-int/lit8 v14, v14, -0x1

    move v12, v14

    goto :goto_e

    :goto_d
    add-int/lit8 v14, v14, 0x1

    move v7, v14

    move/from16 v12, v16

    :goto_e
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/high16 v10, 0x3f800000    # 1.0f

    goto/16 :goto_6

    :cond_19
    if-ltz v7, :cond_1b

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lt v7, v0, :cond_1a

    goto :goto_f

    :cond_1a
    invoke-virtual {v9, v11, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_10

    :cond_1b
    :goto_f
    invoke-virtual {v9, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_10
    iput v13, v11, LY2/H;->d:I

    goto :goto_11

    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This GhostViewHolder is detached!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    iput-object v7, v11, LY2/H;->e:Landroid/graphics/Matrix;

    :goto_11
    iget v0, v11, LY2/H;->d:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v11, LY2/H;->d:I

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v11, LY2/H;->a:Landroid/view/ViewGroup;

    iput-object v2, v11, LY2/H;->b:Landroid/view/View;

    move-object/from16 v0, p0

    :goto_12
    iget-object v1, v0, LY2/f0;->mParent:LY2/n0;

    if-eqz v1, :cond_1e

    move-object v0, v1

    goto :goto_12

    :cond_1e
    new-instance v1, LY2/q;

    invoke-direct {v1}, LY2/q;-><init>()V

    iput-object v3, v1, LY2/q;->b:Ljava/lang/Object;

    iput-object v11, v1, LY2/q;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1}, LY2/f0;->addListener(LY2/d0;)LY2/f0;

    if-eqz v5, :cond_22

    if-eq v2, v3, :cond_1f

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/view/View;->setTransitionAlpha(F)V

    :cond_1f
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v3, v0}, Landroid/view/View;->setTransitionAlpha(F)V

    goto :goto_13

    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Ghosted views must be parented by a ViewGroup"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    if-nez v5, :cond_22

    move-object/from16 v10, v21

    invoke-virtual {v10, v2}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    :cond_22
    :goto_13
    return-object v4

    :goto_14
    return-object v0
.end method

.method public final f(LY2/q0;)V
    .locals 3

    iget-object v0, p1, LY2/q0;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    iget-object p1, p1, LY2/q0;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const-string v2, "android:changeTransform:parent"

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, LY2/t;

    invoke-direct {v1, v0}, LY2/t;-><init>(Landroid/view/View;)V

    const-string v2, "android:changeTransform:transforms"

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x0

    :goto_1
    const-string v1, "android:changeTransform:matrix"

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean p0, p0, LY2/u;->b:Z

    if-eqz p0, :cond_3

    new-instance p0, Landroid/graphics/Matrix;

    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    sget-object v2, LY2/u0;->a:LY2/d;

    invoke-virtual {v1, p0}, Landroid/view/View;->transformMatrixToGlobal(Landroid/graphics/Matrix;)V

    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p0, v2, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    const-string v1, "android:changeTransform:parentMatrix"

    invoke-virtual {p1, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const p0, 0x7f0b0ddd

    invoke-virtual {v0, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    const-string v1, "android:changeTransform:intermediateMatrix"

    invoke-virtual {p1, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const p0, 0x7f0b0885

    invoke-virtual {v0, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "android:changeTransform:intermediateParentMatrix"

    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public final getTransitionProperties()[Ljava/lang/String;
    .locals 0

    sget-object p0, LY2/u;->d:[Ljava/lang/String;

    return-object p0
.end method
