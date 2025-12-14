.class public abstract Lcom/google/android/material/transformation/FabTransformationBehavior;
.super Lcom/google/android/material/transformation/ExpandableTransformationBehavior;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final c:Landroid/graphics/Rect;

.field public final d:Landroid/graphics/RectF;

.field public final e:Landroid/graphics/RectF;

.field public final f:[I

.field public g:F

.field public h:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/transformation/ExpandableTransformationBehavior;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->c:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->d:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->e:Landroid/graphics/RectF;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->f:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/transformation/ExpandableTransformationBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->c:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->d:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->e:Landroid/graphics/RectF;

    const/4 p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->f:[I

    return-void
.end method

.method public static v(FFZLt9/c;)Landroid/util/Pair;
    .locals 1

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-eqz p0, :cond_4

    cmpl-float p0, p1, v0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    cmpg-float p1, p1, v0

    if-ltz p1, :cond_2

    :cond_1
    if-nez p2, :cond_3

    if-lez p0, :cond_3

    :cond_2
    iget-object p0, p3, Lt9/c;->b:Ljava/lang/Object;

    check-cast p0, Lb6/d;

    const-string p1, "translationXCurveUpwards"

    invoke-virtual {p0, p1}, Lb6/d;->d(Ljava/lang/String;)Lb6/e;

    move-result-object p0

    iget-object p1, p3, Lt9/c;->b:Ljava/lang/Object;

    check-cast p1, Lb6/d;

    const-string p2, "translationYCurveUpwards"

    invoke-virtual {p1, p2}, Lb6/d;->d(Ljava/lang/String;)Lb6/e;

    move-result-object p1

    goto :goto_1

    :cond_3
    iget-object p0, p3, Lt9/c;->b:Ljava/lang/Object;

    check-cast p0, Lb6/d;

    const-string p1, "translationXCurveDownwards"

    invoke-virtual {p0, p1}, Lb6/d;->d(Ljava/lang/String;)Lb6/e;

    move-result-object p0

    iget-object p1, p3, Lt9/c;->b:Ljava/lang/Object;

    check-cast p1, Lb6/d;

    const-string p2, "translationYCurveDownwards"

    invoke-virtual {p1, p2}, Lb6/d;->d(Ljava/lang/String;)Lb6/e;

    move-result-object p1

    goto :goto_1

    :cond_4
    :goto_0
    iget-object p0, p3, Lt9/c;->b:Ljava/lang/Object;

    check-cast p0, Lb6/d;

    const-string p1, "translationXLinear"

    invoke-virtual {p0, p1}, Lb6/d;->d(Ljava/lang/String;)Lb6/e;

    move-result-object p0

    iget-object p1, p3, Lt9/c;->b:Ljava/lang/Object;

    check-cast p1, Lb6/d;

    const-string p2, "translationYLinear"

    invoke-virtual {p1, p2}, Lb6/d;->d(Ljava/lang/String;)Lb6/e;

    move-result-object p1

    :goto_1
    new-instance p2, Landroid/util/Pair;

    invoke-direct {p2, p0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2
.end method

.method public static y(Lt9/c;Lb6/e;F)F
    .locals 6

    iget-wide v0, p1, Lb6/e;->a:J

    iget-object p0, p0, Lt9/c;->b:Ljava/lang/Object;

    check-cast p0, Lb6/d;

    const-string v2, "expansion"

    invoke-virtual {p0, v2}, Lb6/d;->d(Ljava/lang/String;)Lb6/e;

    move-result-object p0

    iget-wide v2, p0, Lb6/e;->a:J

    iget-wide v4, p0, Lb6/e;->b:J

    add-long/2addr v2, v4

    const-wide/16 v4, 0x11

    add-long/2addr v2, v4

    sub-long/2addr v2, v0

    long-to-float p0, v2

    iget-wide v0, p1, Lb6/e;->b:J

    long-to-float v0, v0

    div-float/2addr p0, v0

    invoke-virtual {p1}, Lb6/e;->b()Landroid/animation/TimeInterpolator;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p0

    const/4 p1, 0x0

    invoke-static {p2, p1, p0}, Lb6/a;->a(FFF)F

    move-result p0

    return p0
.end method


# virtual methods
.method public abstract A(Landroid/content/Context;Z)Lt9/c;
.end method

.method public final c(Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p0

    const/16 v0, 0x8

    if-eq p0, v0, :cond_2

    instance-of p0, p2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    check-cast p2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getExpandedComponentIdHint()I

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    if-ne p0, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This behavior cannot be attached to a GONE view. Set the view to INVISIBLE instead."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final d(LR0/d;)V
    .locals 0

    iget p0, p1, LR0/d;->h:I

    if-nez p0, :cond_0

    const/16 p0, 0x50

    iput p0, p1, LR0/d;->h:I

    :cond_0
    return-void
.end method

.method public final u(ZLandroid/view/View;Landroid/view/View;Z)Landroid/animation/AnimatorSet;
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v0, v6, v1}, Lcom/google/android/material/transformation/FabTransformationBehavior;->A(Landroid/content/Context;Z)Lt9/c;

    move-result-object v6

    if-eqz v1, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTranslationX()F

    move-result v7

    iput v7, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->g:F

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTranslationY()F

    move-result v7

    iput v7, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->h:F

    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    sget-object v9, Lf1/W;->a:Ljava/util/WeakHashMap;

    invoke-static/range {p3 .. p3}, Lf1/O;->e(Landroid/view/View;)F

    move-result v9

    invoke-static/range {p2 .. p2}, Lf1/O;->e(Landroid/view/View;)F

    move-result v10

    sub-float/2addr v9, v10

    const/4 v10, 0x0

    if-eqz v1, :cond_2

    if-nez p4, :cond_1

    neg-float v9, v9

    invoke-virtual {v3, v9}, Landroid/view/View;->setTranslationZ(F)V

    :cond_1
    sget-object v9, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v11, v5, [F

    aput v10, v11, v4

    invoke-static {v3, v9, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    goto :goto_0

    :cond_2
    sget-object v11, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    neg-float v9, v9

    new-array v12, v5, [F

    aput v9, v12, v4

    invoke-static {v3, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    :goto_0
    iget-object v11, v6, Lt9/c;->b:Ljava/lang/Object;

    check-cast v11, Lb6/d;

    const-string v12, "elevation"

    invoke-virtual {v11, v12}, Lb6/d;->d(Ljava/lang/String;)Lb6/e;

    move-result-object v11

    invoke-virtual {v11, v9}, Lb6/e;->a(Landroid/animation/ObjectAnimator;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v9, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->d:Landroid/graphics/RectF;

    iget-object v11, v6, Lt9/c;->c:Ljava/lang/Object;

    check-cast v11, LF6/e;

    invoke-virtual {v0, v2, v3, v11}, Lcom/google/android/material/transformation/FabTransformationBehavior;->w(Landroid/view/View;Landroid/view/View;LF6/e;)F

    move-result v11

    iget-object v12, v6, Lt9/c;->c:Ljava/lang/Object;

    check-cast v12, LF6/e;

    invoke-virtual {v0, v2, v3, v12}, Lcom/google/android/material/transformation/FabTransformationBehavior;->x(Landroid/view/View;Landroid/view/View;LF6/e;)F

    move-result v12

    invoke-static {v11, v12, v1, v6}, Lcom/google/android/material/transformation/FabTransformationBehavior;->v(FFZLt9/c;)Landroid/util/Pair;

    move-result-object v13

    iget-object v14, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v14, Lb6/e;

    iget-object v13, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, Lb6/e;

    if-eqz v1, :cond_4

    if-nez p4, :cond_3

    neg-float v15, v11

    invoke-virtual {v3, v15}, Landroid/view/View;->setTranslationX(F)V

    neg-float v15, v12

    invoke-virtual {v3, v15}, Landroid/view/View;->setTranslationY(F)V

    :cond_3
    sget-object v15, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    move-object/from16 v16, v8

    new-array v8, v5, [F

    aput v10, v8, v4

    invoke-static {v3, v15, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    sget-object v15, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    move-object/from16 v17, v8

    new-array v8, v5, [F

    aput v10, v8, v4

    invoke-static {v3, v15, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    neg-float v11, v11

    neg-float v12, v12

    invoke-static {v6, v14, v11}, Lcom/google/android/material/transformation/FabTransformationBehavior;->y(Lt9/c;Lb6/e;F)F

    move-result v11

    invoke-static {v6, v13, v12}, Lcom/google/android/material/transformation/FabTransformationBehavior;->y(Lt9/c;Lb6/e;F)F

    move-result v12

    iget-object v15, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->c:Landroid/graphics/Rect;

    invoke-virtual {v3, v15}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    invoke-virtual {v9, v15}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v15, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->e:Landroid/graphics/RectF;

    invoke-virtual {v0, v3, v15}, Lcom/google/android/material/transformation/FabTransformationBehavior;->z(Landroid/view/View;Landroid/graphics/RectF;)V

    invoke-virtual {v15, v11, v12}, Landroid/graphics/RectF;->offset(FF)V

    invoke-virtual {v15, v9}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    invoke-virtual {v9, v15}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    move-object v11, v8

    move-object/from16 v8, v17

    goto :goto_1

    :cond_4
    move-object/from16 v16, v8

    sget-object v8, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    neg-float v11, v11

    new-array v15, v5, [F

    aput v11, v15, v4

    invoke-static {v3, v8, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    sget-object v11, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    neg-float v12, v12

    new-array v15, v5, [F

    aput v12, v15, v4

    invoke-static {v3, v11, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    :goto_1
    invoke-virtual {v14, v8}, Lb6/e;->a(Landroid/animation/ObjectAnimator;)V

    invoke-virtual {v13, v11}, Lb6/e;->a(Landroid/animation/ObjectAnimator;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    iget-object v8, v6, Lt9/c;->c:Ljava/lang/Object;

    check-cast v8, LF6/e;

    invoke-virtual {v0, v2, v3, v8}, Lcom/google/android/material/transformation/FabTransformationBehavior;->w(Landroid/view/View;Landroid/view/View;LF6/e;)F

    move-result v8

    iget-object v9, v6, Lt9/c;->c:Ljava/lang/Object;

    check-cast v9, LF6/e;

    invoke-virtual {v0, v2, v3, v9}, Lcom/google/android/material/transformation/FabTransformationBehavior;->x(Landroid/view/View;Landroid/view/View;LF6/e;)F

    move-result v9

    invoke-static {v8, v9, v1, v6}, Lcom/google/android/material/transformation/FabTransformationBehavior;->v(FFZLt9/c;)Landroid/util/Pair;

    move-result-object v11

    iget-object v12, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Lb6/e;

    iget-object v11, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Lb6/e;

    sget-object v13, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    iget v8, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->g:F

    :goto_2
    new-array v14, v5, [F

    aput v8, v14, v4

    invoke-static {v2, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    sget-object v13, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    iget v9, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->h:F

    :goto_3
    new-array v0, v5, [F

    aput v9, v0, v4

    invoke-static {v2, v13, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v12, v8}, Lb6/e;->a(Landroid/animation/ObjectAnimator;)V

    invoke-virtual {v11, v0}, Lb6/e;->a(Landroid/animation/ObjectAnimator;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    instance-of v0, v3, Landroid/view/ViewGroup;

    if-nez v0, :cond_7

    goto :goto_6

    :cond_7
    const v8, 0x7f0b0792

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x0

    if-eqz v8, :cond_8

    instance-of v0, v8, Landroid/view/ViewGroup;

    if-eqz v0, :cond_9

    move-object v9, v8

    check-cast v9, Landroid/view/ViewGroup;

    goto :goto_4

    :cond_8
    if-eqz v0, :cond_9

    move-object v9, v3

    check-cast v9, Landroid/view/ViewGroup;

    :cond_9
    :goto_4
    if-nez v9, :cond_a

    goto :goto_6

    :cond_a
    if-eqz v1, :cond_c

    if-nez p4, :cond_b

    sget-object v0, Lb6/b;->a:Lb6/b;

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v0, v9, v8}, Lb6/b;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_b
    sget-object v0, Lb6/b;->a:Lb6/b;

    new-array v8, v5, [F

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v8, v4

    invoke-static {v9, v0, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_5

    :cond_c
    sget-object v0, Lb6/b;->a:Lb6/b;

    new-array v8, v5, [F

    aput v10, v8, v4

    invoke-static {v9, v0, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    :goto_5
    iget-object v6, v6, Lt9/c;->b:Ljava/lang/Object;

    check-cast v6, Lb6/d;

    const-string v8, "contentFade"

    invoke-virtual {v6, v8}, Lb6/d;->d(Ljava/lang/String;)Lb6/e;

    move-result-object v6

    invoke-virtual {v6, v0}, Lb6/e;->a(Landroid/animation/ObjectAnimator;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_6
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-static {v0, v7}, LG5/s;->c(Landroid/animation/AnimatorSet;Ljava/util/ArrayList;)V

    new-instance v6, LN6/b;

    invoke-direct {v6, v1, v3, v2}, LN6/b;-><init>(ZLandroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_7
    if-ge v4, v1, :cond_d

    move-object/from16 v2, v16

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    add-int/2addr v4, v5

    goto :goto_7

    :cond_d
    return-object v0
.end method

.method public final w(Landroid/view/View;Landroid/view/View;LF6/e;)F
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->d:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->e:Landroid/graphics/RectF;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/transformation/FabTransformationBehavior;->z(Landroid/view/View;Landroid/graphics/RectF;)V

    iget p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->g:F

    iget v2, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->h:F

    invoke-virtual {v0, p1, v2}, Landroid/graphics/RectF;->offset(FF)V

    invoke-virtual {p0, p2, v1}, Lcom/google/android/material/transformation/FabTransformationBehavior;->z(Landroid/view/View;Landroid/graphics/RectF;)V

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result p0

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result p1

    sub-float/2addr p0, p1

    const/4 p1, 0x0

    add-float/2addr p0, p1

    return p0
.end method

.method public final x(Landroid/view/View;Landroid/view/View;LF6/e;)F
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->d:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->e:Landroid/graphics/RectF;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/transformation/FabTransformationBehavior;->z(Landroid/view/View;Landroid/graphics/RectF;)V

    iget p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->g:F

    iget v2, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->h:F

    invoke-virtual {v0, p1, v2}, Landroid/graphics/RectF;->offset(FF)V

    invoke-virtual {p0, p2, v1}, Lcom/google/android/material/transformation/FabTransformationBehavior;->z(Landroid/view/View;Landroid/graphics/RectF;)V

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result p0

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    sub-float/2addr p0, p1

    const/4 p1, 0x0

    add-float/2addr p0, p1

    return p0
.end method

.method public final z(Landroid/view/View;Landroid/graphics/RectF;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->f:[I

    invoke-virtual {p1, p0}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v0, 0x0

    aget v0, p0, v0

    int-to-float v0, v0

    const/4 v1, 0x1

    aget p0, p0, v1

    int-to-float p0, p0

    invoke-virtual {p2, v0, p0}, Landroid/graphics/RectF;->offsetTo(FF)V

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p0

    neg-float p0, p0

    float-to-int p0, p0

    int-to-float p0, p0

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    neg-float p1, p1

    float-to-int p1, p1

    int-to-float p1, p1

    invoke-virtual {p2, p0, p1}, Landroid/graphics/RectF;->offset(FF)V

    return-void
.end method
