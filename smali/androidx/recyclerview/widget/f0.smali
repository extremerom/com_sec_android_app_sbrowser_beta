.class public abstract Landroidx/recyclerview/widget/f0;
.super Landroidx/recyclerview/widget/q1;
.source "SourceFile"


# instance fields
.field private mDeccelateTimeRatio:I

.field private final mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private mHorizontalHelper:Landroidx/recyclerview/widget/m0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mMillisecondsPerInch:F

.field private mVelocityRatio:F

.field private mVerticalHelper:Landroidx/recyclerview/widget/m0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/q1;-><init>()V

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/f0;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Landroidx/recyclerview/widget/f0;->mMillisecondsPerInch:F

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Landroidx/recyclerview/widget/f0;->mVelocityRatio:F

    const/4 v0, 0x1

    iput v0, p0, Landroidx/recyclerview/widget/f0;->mDeccelateTimeRatio:I

    return-void
.end method

.method public static synthetic access$000(Landroidx/recyclerview/widget/f0;)I
    .locals 0

    iget p0, p0, Landroidx/recyclerview/widget/f0;->mDeccelateTimeRatio:I

    return p0
.end method

.method public static synthetic access$100(Landroidx/recyclerview/widget/f0;)F
    .locals 0

    iget p0, p0, Landroidx/recyclerview/widget/f0;->mMillisecondsPerInch:F

    return p0
.end method


# virtual methods
.method public final a(Landroidx/recyclerview/widget/J0;Landroidx/recyclerview/widget/m0;II[I)I
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual {v2, v3, v4}, Landroidx/recyclerview/widget/q1;->seslCalculateScrollDistanceForLinear(II)[I

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/J0;->getChildCount()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, -0x1

    const/high16 v9, 0x3f800000    # 1.0f

    if-nez v5, :cond_0

    goto :goto_2

    :cond_0
    const/4 v10, 0x0

    const v11, 0x7fffffff

    const/high16 v12, -0x80000000

    move v13, v12

    const/4 v14, 0x0

    move v12, v11

    move-object v11, v10

    :goto_0
    if-ge v14, v5, :cond_4

    invoke-virtual {v0, v14}, Landroidx/recyclerview/widget/J0;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v0, v15}, Landroidx/recyclerview/widget/J0;->getPosition(Landroid/view/View;)I

    move-result v8

    if-ne v8, v7, :cond_1

    goto :goto_1

    :cond_1
    if-ge v8, v12, :cond_2

    move v12, v8

    move-object v10, v15

    :cond_2
    if-le v8, v13, :cond_3

    move v13, v8

    move-object v11, v15

    :cond_3
    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_4
    if-eqz v10, :cond_7

    if-nez v11, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v1, v10}, Landroidx/recyclerview/widget/m0;->e(Landroid/view/View;)I

    move-result v5

    invoke-virtual {v1, v11}, Landroidx/recyclerview/widget/m0;->e(Landroid/view/View;)I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v1, v10}, Landroidx/recyclerview/widget/m0;->b(Landroid/view/View;)I

    move-result v8

    invoke-virtual {v1, v11}, Landroidx/recyclerview/widget/m0;->b(Landroid/view/View;)I

    move-result v1

    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int/2addr v1, v5

    if-nez v1, :cond_6

    goto :goto_2

    :cond_6
    int-to-float v1, v1

    mul-float/2addr v1, v9

    sub-int/2addr v13, v12

    add-int/2addr v13, v6

    int-to-float v5, v13

    div-float v9, v1, v5

    :cond_7
    :goto_2
    const/4 v1, 0x0

    cmpg-float v1, v9, v1

    if-gtz v1, :cond_8

    const/4 v1, 0x0

    return v1

    :cond_8
    const/4 v1, 0x0

    aget v5, v2, v1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    aget v8, v2, v6

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-le v5, v8, :cond_9

    aget v2, v2, v1

    goto :goto_3

    :cond_9
    aget v2, v2, v6

    :goto_3
    int-to-float v1, v2

    div-float/2addr v1, v9

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/J0;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_4

    :cond_a
    move v3, v4

    :goto_4
    if-eqz v0, :cond_b

    const/4 v0, 0x0

    aget v0, p5, v0

    goto :goto_5

    :cond_b
    aget v0, p5, v6

    :goto_5
    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    cmpl-float v0, v3, v0

    if-eqz v0, :cond_d

    if-nez v1, :cond_d

    if-gez v2, :cond_c

    move v6, v7

    :cond_c
    move v1, v6

    :cond_d
    return v1
.end method

.method public createScroller(Landroidx/recyclerview/widget/J0;)Landroidx/recyclerview/widget/c1;
    .locals 2

    instance-of p1, p1, Landroidx/recyclerview/widget/b1;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p1, Landroidx/recyclerview/widget/e0;

    iget-object v0, p0, Landroidx/recyclerview/widget/q1;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, p0}, Landroidx/recyclerview/widget/e0;-><init>(Landroid/content/Context;ILjava/lang/Object;)V

    return-object p1
.end method

.method public findTargetSnapPosition(Landroidx/recyclerview/widget/J0;II)I
    .locals 17

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v0, p2

    int-to-float v0, v0

    iget v1, v6, Landroidx/recyclerview/widget/f0;->mVelocityRatio:F

    mul-float/2addr v0, v1

    float-to-int v3, v0

    move/from16 v0, p3

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v8, v0

    instance-of v0, v7, Landroidx/recyclerview/widget/b1;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/J0;->getItemCount()I

    move-result v9

    if-nez v9, :cond_1

    return v1

    :cond_1
    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/q1;->findSnapView(Landroidx/recyclerview/widget/J0;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {v7, v0}, Landroidx/recyclerview/widget/J0;->getPosition(Landroid/view/View;)I

    move-result v10

    if-ne v10, v1, :cond_3

    return v1

    :cond_3
    move-object v2, v7

    check-cast v2, Landroidx/recyclerview/widget/b1;

    add-int/lit8 v11, v9, -0x1

    invoke-interface {v2, v11}, Landroidx/recyclerview/widget/b1;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object v12

    if-nez v12, :cond_4

    return v1

    :cond_4
    invoke-virtual {v6, v7, v0}, Landroidx/recyclerview/widget/q1;->calculateDistanceToFinalSnap(Landroidx/recyclerview/widget/J0;Landroid/view/View;)[I

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/J0;->canScrollHorizontally()Z

    move-result v0

    const/4 v14, 0x0

    const/4 v15, 0x0

    if-eqz v0, :cond_8

    iget-object v0, v6, Landroidx/recyclerview/widget/f0;->mHorizontalHelper:Landroidx/recyclerview/widget/m0;

    if-eqz v0, :cond_5

    iget-object v0, v0, Landroidx/recyclerview/widget/m0;->a:Landroidx/recyclerview/widget/J0;

    if-eq v0, v7, :cond_6

    :cond_5
    new-instance v0, Landroidx/recyclerview/widget/l0;

    const/4 v1, 0x0

    invoke-direct {v0, v7, v1}, Landroidx/recyclerview/widget/l0;-><init>(Landroidx/recyclerview/widget/J0;I)V

    iput-object v0, v6, Landroidx/recyclerview/widget/f0;->mHorizontalHelper:Landroidx/recyclerview/widget/m0;

    :cond_6
    iget-object v2, v6, Landroidx/recyclerview/widget/f0;->mHorizontalHelper:Landroidx/recyclerview/widget/m0;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v5, v13

    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/f0;->a(Landroidx/recyclerview/widget/J0;Landroidx/recyclerview/widget/m0;II[I)I

    move-result v0

    iget v1, v12, Landroid/graphics/PointF;->x:F

    cmpg-float v1, v1, v14

    if-gez v1, :cond_7

    neg-int v0, v0

    :cond_7
    move/from16 v16, v0

    goto :goto_0

    :cond_8
    move/from16 v16, v15

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/J0;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, v6, Landroidx/recyclerview/widget/f0;->mVerticalHelper:Landroidx/recyclerview/widget/m0;

    if-eqz v0, :cond_9

    iget-object v0, v0, Landroidx/recyclerview/widget/m0;->a:Landroidx/recyclerview/widget/J0;

    if-eq v0, v7, :cond_a

    :cond_9
    new-instance v0, Landroidx/recyclerview/widget/l0;

    const/4 v1, 0x1

    invoke-direct {v0, v7, v1}, Landroidx/recyclerview/widget/l0;-><init>(Landroidx/recyclerview/widget/J0;I)V

    iput-object v0, v6, Landroidx/recyclerview/widget/f0;->mVerticalHelper:Landroidx/recyclerview/widget/m0;

    :cond_a
    iget-object v2, v6, Landroidx/recyclerview/widget/f0;->mVerticalHelper:Landroidx/recyclerview/widget/m0;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v4, v8

    move-object v5, v13

    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/f0;->a(Landroidx/recyclerview/widget/J0;Landroidx/recyclerview/widget/m0;II[I)I

    move-result v0

    iget v1, v12, Landroid/graphics/PointF;->y:F

    cmpg-float v1, v1, v14

    if-gez v1, :cond_c

    neg-int v0, v0

    goto :goto_1

    :cond_b
    move v0, v15

    :cond_c
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/J0;->canScrollVertically()Z

    move-result v1

    if-eqz v1, :cond_d

    move/from16 v16, v0

    :cond_d
    add-int v10, v10, v16

    if-gez v10, :cond_e

    goto :goto_2

    :cond_e
    move v15, v10

    :goto_2
    if-lt v15, v9, :cond_f

    goto :goto_3

    :cond_f
    move v11, v15

    :goto_3
    return v11
.end method
