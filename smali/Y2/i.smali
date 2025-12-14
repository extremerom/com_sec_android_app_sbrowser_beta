.class public final LY2/i;
.super LY2/f0;
.source "SourceFile"


# static fields
.field public static final b:[Ljava/lang/String;

.field public static final c:LY2/d;

.field public static final d:LY2/d;

.field public static final e:LY2/d;

.field public static final f:LY2/d;

.field public static final g:LY2/d;

.field public static final h:LY2/P;


# instance fields
.field public a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "android:changeBounds:clip"

    const-string v1, "android:changeBounds:parent"

    const-string v2, "android:changeBounds:bounds"

    const-string v3, "android:changeBounds:windowX"

    const-string v4, "android:changeBounds:windowY"

    filled-new-array {v2, v0, v1, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, LY2/i;->b:[Ljava/lang/String;

    new-instance v0, LY2/d;

    const-class v1, Landroid/graphics/PointF;

    const-string v2, "topLeft"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, LY2/d;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    sput-object v0, LY2/i;->c:LY2/d;

    new-instance v0, LY2/d;

    const-string v3, "bottomRight"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v3, v4}, LY2/d;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    sput-object v0, LY2/i;->d:LY2/d;

    new-instance v0, LY2/d;

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, LY2/d;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    sput-object v0, LY2/i;->e:LY2/d;

    new-instance v0, LY2/d;

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, LY2/d;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    sput-object v0, LY2/i;->f:LY2/d;

    new-instance v0, LY2/d;

    const-string v2, "position"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, LY2/d;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    sput-object v0, LY2/i;->g:LY2/d;

    new-instance v0, LY2/P;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LY2/P;-><init>(I)V

    sput-object v0, LY2/i;->h:LY2/P;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, LY2/f0;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, LY2/i;->a:Z

    return-void
.end method


# virtual methods
.method public final captureEndValues(LY2/q0;)V
    .locals 0

    invoke-virtual {p0, p1}, LY2/i;->f(LY2/q0;)V

    return-void
.end method

.method public final captureStartValues(LY2/q0;)V
    .locals 1

    invoke-virtual {p0, p1}, LY2/i;->f(LY2/q0;)V

    iget-boolean p0, p0, LY2/i;->a:Z

    if-eqz p0, :cond_0

    iget-object p0, p1, LY2/q0;->b:Landroid/view/View;

    const v0, 0x7f0b0dd6

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Rect;

    if-eqz p0, :cond_0

    iget-object p1, p1, LY2/q0;->a:Ljava/util/HashMap;

    const-string v0, "android:changeBounds:clip"

    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final createAnimator(Landroid/view/ViewGroup;LY2/q0;LY2/q0;)Landroid/animation/Animator;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    if-eqz v1, :cond_0

    if-nez v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    goto/16 :goto_12

    :cond_1
    iget-object v1, v1, LY2/q0;->a:Ljava/util/HashMap;

    iget-object v7, v2, LY2/q0;->a:Ljava/util/HashMap;

    const-string v8, "android:changeBounds:parent"

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    if-eqz v9, :cond_2

    if-nez v8, :cond_3

    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_12

    :cond_3
    const-string v8, "android:changeBounds:bounds"

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Rect;

    iget v15, v9, Landroid/graphics/Rect;->left:I

    iget v14, v8, Landroid/graphics/Rect;->left:I

    iget v13, v9, Landroid/graphics/Rect;->top:I

    iget v12, v8, Landroid/graphics/Rect;->top:I

    iget v11, v9, Landroid/graphics/Rect;->right:I

    iget v10, v8, Landroid/graphics/Rect;->right:I

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int v6, v11, v15

    sub-int v4, v9, v13

    sub-int v3, v10, v14

    sub-int v5, v8, v12

    const-string v2, "android:changeBounds:clip"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    if-eqz v6, :cond_4

    if-nez v4, :cond_5

    :cond_4
    if-eqz v3, :cond_9

    if-eqz v5, :cond_9

    :cond_5
    if-ne v15, v14, :cond_7

    if-eq v13, v12, :cond_6

    goto :goto_0

    :cond_6
    const/4 v7, 0x0

    goto :goto_1

    :cond_7
    :goto_0
    const/4 v7, 0x1

    :goto_1
    if-ne v11, v10, :cond_8

    if-eq v9, v8, :cond_a

    :cond_8
    const/16 v16, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_9
    const/4 v7, 0x0

    :cond_a
    :goto_2
    if-eqz v1, :cond_c

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_b

    goto :goto_4

    :cond_b
    :goto_3
    const/16 v16, 0x1

    goto :goto_5

    :cond_c
    :goto_4
    if-nez v1, :cond_d

    if-eqz v2, :cond_d

    goto :goto_3

    :goto_5
    add-int/lit8 v7, v7, 0x1

    :cond_d
    if-lez v7, :cond_1d

    move-object/from16 p2, v2

    iget-boolean v2, v0, LY2/i;->a:Z

    move-object/from16 v0, p3

    iget-object v0, v0, LY2/q0;->b:Landroid/view/View;

    move-object/from16 v16, v1

    sget-object v1, LY2/i;->g:LY2/d;

    if-nez v2, :cond_12

    sget-object v2, LY2/u0;->a:LY2/d;

    invoke-virtual {v0, v15, v13, v11, v9}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    const/4 v2, 0x2

    if-ne v7, v2, :cond_f

    if-ne v6, v3, :cond_e

    if-ne v4, v5, :cond_e

    invoke-virtual/range {p0 .. p0}, LY2/f0;->getPathMotion()LY2/M;

    move-result-object v2

    int-to-float v3, v15

    int-to-float v4, v13

    int-to-float v5, v14

    int-to-float v6, v12

    invoke-virtual {v2, v3, v4, v5, v6}, LY2/M;->a(FFFF)Landroid/graphics/Path;

    move-result-object v2

    invoke-static {v0, v1, v2}, LY2/L;->a(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    :goto_6
    move-object/from16 v2, p0

    :goto_7
    move-object v3, v1

    :goto_8
    const/4 v1, 0x1

    goto/16 :goto_11

    :cond_e
    new-instance v1, LY2/h;

    invoke-direct {v1, v0}, LY2/h;-><init>(Landroid/view/View;)V

    invoke-virtual/range {p0 .. p0}, LY2/f0;->getPathMotion()LY2/M;

    move-result-object v2

    int-to-float v3, v15

    int-to-float v4, v13

    int-to-float v5, v14

    int-to-float v6, v12

    invoke-virtual {v2, v3, v4, v5, v6}, LY2/M;->a(FFFF)Landroid/graphics/Path;

    move-result-object v2

    sget-object v3, LY2/i;->c:LY2/d;

    invoke-static {v1, v3, v2}, LY2/L;->a(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, LY2/f0;->getPathMotion()LY2/M;

    move-result-object v3

    int-to-float v4, v11

    int-to-float v5, v9

    int-to-float v6, v10

    int-to-float v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, LY2/M;->a(FFFF)Landroid/graphics/Path;

    move-result-object v3

    sget-object v4, LY2/i;->d:LY2/d;

    invoke-static {v1, v4, v3}, LY2/L;->a(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v5, 0x2

    new-array v5, v5, [Landroid/animation/Animator;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v2, 0x1

    aput-object v3, v5, v2

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v2, LY2/e;

    invoke-direct {v2, v1}, LY2/e;-><init>(LY2/h;)V

    invoke-virtual {v4, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/4 v1, 0x1

    move-object/from16 v2, p0

    move-object v3, v4

    goto/16 :goto_11

    :cond_f
    if-ne v15, v14, :cond_11

    if-eq v13, v12, :cond_10

    goto :goto_9

    :cond_10
    invoke-virtual/range {p0 .. p0}, LY2/f0;->getPathMotion()LY2/M;

    move-result-object v1

    int-to-float v2, v11

    int-to-float v3, v9

    int-to-float v4, v10

    int-to-float v5, v8

    invoke-virtual {v1, v2, v3, v4, v5}, LY2/M;->a(FFFF)Landroid/graphics/Path;

    move-result-object v1

    sget-object v2, LY2/i;->e:LY2/d;

    invoke-static {v0, v2, v1}, LY2/L;->a(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    goto :goto_6

    :cond_11
    :goto_9
    invoke-virtual/range {p0 .. p0}, LY2/f0;->getPathMotion()LY2/M;

    move-result-object v1

    int-to-float v2, v15

    int-to-float v3, v13

    int-to-float v4, v14

    int-to-float v5, v12

    invoke-virtual {v1, v2, v3, v4, v5}, LY2/M;->a(FFFF)Landroid/graphics/Path;

    move-result-object v1

    sget-object v2, LY2/i;->f:LY2/d;

    invoke-static {v0, v2, v1}, LY2/L;->a(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    goto :goto_6

    :cond_12
    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int/2addr v2, v15

    add-int/2addr v7, v13

    sget-object v17, LY2/u0;->a:LY2/d;

    invoke-virtual {v0, v15, v13, v2, v7}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    if-ne v15, v14, :cond_14

    if-eq v13, v12, :cond_13

    goto :goto_a

    :cond_13
    move/from16 v17, v10

    move/from16 v18, v11

    move/from16 v19, v13

    const/4 v1, 0x0

    goto :goto_b

    :cond_14
    :goto_a
    invoke-virtual/range {p0 .. p0}, LY2/f0;->getPathMotion()LY2/M;

    move-result-object v2

    int-to-float v7, v15

    move/from16 v17, v10

    int-to-float v10, v13

    move/from16 v18, v11

    int-to-float v11, v14

    move/from16 v19, v13

    int-to-float v13, v12

    invoke-virtual {v2, v7, v10, v11, v13}, LY2/M;->a(FFFF)Landroid/graphics/Path;

    move-result-object v2

    invoke-static {v0, v1, v2}, LY2/L;->a(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    :goto_b
    if-nez v16, :cond_15

    const/4 v13, 0x1

    goto :goto_c

    :cond_15
    const/4 v13, 0x0

    :goto_c
    if-eqz v13, :cond_16

    new-instance v2, Landroid/graphics/Rect;

    const/4 v7, 0x0

    invoke-direct {v2, v7, v7, v6, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_d

    :cond_16
    const/4 v7, 0x0

    move-object/from16 v2, v16

    :goto_d
    if-nez p2, :cond_17

    const/4 v4, 0x1

    goto :goto_e

    :cond_17
    move v4, v7

    :goto_e
    if-eqz v4, :cond_18

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v7, v7, v3, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_f

    :cond_18
    move-object/from16 v6, p2

    :goto_f
    invoke-virtual {v2, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    invoke-virtual {v0, v2}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    filled-new-array {v2, v6}, [Ljava/lang/Object;

    move-result-object v3

    const-string v5, "clipBounds"

    sget-object v7, LY2/i;->h:LY2/P;

    invoke-static {v0, v5, v7, v3}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-instance v5, LY2/f;

    move/from16 v7, v17

    move-object v10, v5

    move-object v11, v0

    move/from16 v21, v12

    move-object v12, v2

    move/from16 v2, v19

    move/from16 v20, v14

    move-object v14, v6

    move v6, v15

    move v15, v4

    move/from16 v16, v6

    move/from16 v17, v2

    move/from16 v19, v9

    move/from16 v22, v7

    move/from16 v23, v8

    invoke-direct/range {v10 .. v23}, LY2/f;-><init>(Landroid/view/View;Landroid/graphics/Rect;ZLandroid/graphics/Rect;ZIIIIIIII)V

    invoke-virtual {v3, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v2, p0

    invoke-virtual {v2, v5}, LY2/f0;->addListener(LY2/d0;)LY2/f0;

    move-object v6, v3

    goto :goto_10

    :cond_19
    move-object/from16 v2, p0

    const/4 v6, 0x0

    :goto_10
    if-nez v1, :cond_1a

    move-object v3, v6

    goto/16 :goto_8

    :cond_1a
    if-nez v6, :cond_1b

    goto/16 :goto_7

    :cond_1b
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v6, v4, v1

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :goto_11
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v4, v4, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1c

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0, v1}, LY2/t0;->b(Landroid/view/ViewGroup;Z)V

    invoke-virtual/range {p0 .. p0}, LY2/f0;->getRootTransition()LY2/f0;

    move-result-object v1

    new-instance v2, LY2/g;

    invoke-direct {v2, v0}, LY2/g;-><init>(Landroid/view/ViewGroup;)V

    invoke-virtual {v1, v2}, LY2/f0;->addListener(LY2/d0;)LY2/f0;

    :cond_1c
    return-object v3

    :cond_1d
    const/4 v0, 0x0

    :goto_12
    return-object v0
.end method

.method public final f(LY2/q0;)V
    .locals 7

    iget-object v0, p1, LY2/q0;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isLaidOut()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p1, LY2/q0;->a:Ljava/util/HashMap;

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v3, "android:changeBounds:bounds"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, LY2/q0;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const-string v2, "android:changeBounds:parent"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean p0, p0, LY2/i;->a:Z

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;

    move-result-object p0

    const-string p1, "android:changeBounds:clip"

    invoke-virtual {v1, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public final getTransitionProperties()[Ljava/lang/String;
    .locals 0

    sget-object p0, LY2/i;->b:[Ljava/lang/String;

    return-object p0
.end method
