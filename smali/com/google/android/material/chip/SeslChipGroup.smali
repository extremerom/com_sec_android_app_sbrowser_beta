.class public Lcom/google/android/material/chip/SeslChipGroup;
.super Ll6/j;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
.end annotation


# static fields
.field public static final synthetic o:I


# instance fields
.field public j:Z

.field public final k:Landroid/animation/LayoutTransition;

.field public l:I

.field public m:I

.field public n:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-direct {p0, p1, p2}, Ll6/j;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v1, p0, Lcom/google/android/material/chip/SeslChipGroup;->j:Z

    new-instance p1, Landroid/animation/LayoutTransition;

    invoke-direct {p1}, Landroid/animation/LayoutTransition;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/chip/SeslChipGroup;->k:Landroid/animation/LayoutTransition;

    iput v0, p0, Lcom/google/android/material/chip/SeslChipGroup;->n:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v3, 0x7f070292

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/view/View;->setLayoutDirection(I)V

    invoke-virtual {p1, v2}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    invoke-virtual {p1, v0}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    invoke-virtual {p1, v1}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    const-wide/16 v4, 0x0

    invoke-virtual {p1, v2, v4, v5}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    invoke-virtual {p1, p2, v4, v5}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    invoke-virtual {p1, v3, v4, v5}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    invoke-virtual {p1, v0, v4, v5}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    invoke-virtual {p1, v1, v4, v5}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c009e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    new-array v7, v2, [F

    fill-array-data v7, :array_0

    invoke-static {v7}, Ll6/q;->b([F)Ll6/q;

    move-result-object v7

    int-to-long v8, v6

    invoke-virtual {v7, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v7, v4, v5}, Landroid/animation/Animator;->setStartDelay(J)V

    new-instance v4, Ll6/k;

    invoke-direct {v4, v0}, Ll6/k;-><init>(I)V

    invoke-virtual {v7, v4}, Ll6/q;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-direct {p0}, Lcom/google/android/material/chip/SeslChipGroup;->getAddRemAnimListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v4

    invoke-virtual {v7, v4}, Ll6/q;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1, v2, v7}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    new-array v4, v2, [F

    fill-array-data v4, :array_1

    invoke-static {v4}, Ll6/q;->b([F)Ll6/q;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v5, Ll6/k;

    invoke-direct {v5, v1}, Ll6/k;-><init>(I)V

    invoke-virtual {v4, v5}, Ll6/q;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-direct {p0}, Lcom/google/android/material/chip/SeslChipGroup;->getAddRemAnimListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v5

    invoke-virtual {v4, v5}, Ll6/q;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1, p2, v4}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0d001d

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {p1, p2, v4}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    invoke-virtual {p1, v2, v4}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    invoke-virtual {p1, v3, v4}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    invoke-virtual {p1, v0, v4}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    invoke-virtual {p1, v1, v4}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    invoke-direct {p0}, Lcom/google/android/material/chip/SeslChipGroup;->getChipTransitionListener()Landroid/animation/LayoutTransition$TransitionListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private getAddRemAnimListener()Landroid/animation/AnimatorListenerAdapter;
    .locals 1

    new-instance p0, Ll6/n;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ll6/n;-><init>(I)V

    return-object p0
.end method

.method private getChipTransitionListener()Landroid/animation/LayoutTransition$TransitionListener;
    .locals 0

    new-instance p0, Ll6/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/material/chip/SeslChipGroup;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/SeslChipGroup;->b(F)I

    move-result v1

    sub-int/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07028e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c009e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0d001d

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v3, LK6/l;

    const/16 v4, 0x9

    invoke-direct {v3, v4, p0}, LK6/l;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v3, Ll6/l;

    invoke-direct {v3, p0, v0, v1}, Ll6/l;-><init>(Lcom/google/android/material/chip/SeslChipGroup;II)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/material/chip/SeslChipGroup;->n:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/SeslChipGroup;->k:Landroid/animation/LayoutTransition;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/google/android/material/chip/SeslChipGroup;->c()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/chip/SeslChipGroup;->a()V

    instance-of p2, p1, Lcom/google/android/material/chip/Chip;

    if-eqz p2, :cond_3

    check-cast p1, Lcom/google/android/material/chip/Chip;

    iget-boolean p2, p0, Lcom/google/android/material/chip/SeslChipGroup;->j:Z

    if-eqz p2, :cond_3

    iget p0, p0, Lcom/google/android/material/chip/SeslChipGroup;->l:I

    if-lez p0, :cond_2

    invoke-virtual {p1, p0}, Lcom/google/android/material/chip/Chip;->setMaxWidth(I)V

    :cond_2
    sget-object p0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, p0}, Lcom/google/android/material/chip/Chip;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :cond_3
    return-void
.end method

.method public final b(F)I
    .locals 10

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v3

    invoke-virtual {p0}, Ll6/j;->getChipSpacingHorizontal()I

    move-result v4

    add-int v5, v2, v3

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v6, v5

    add-int/2addr v6, v4

    const/4 v5, 0x1

    move v7, v6

    move v6, v5

    :goto_0
    if-ge v5, v0, :cond_2

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/google/android/material/chip/Chip;

    invoke-virtual {v8}, Lcom/google/android/material/chip/Chip;->getChipDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    add-int v9, v7, v8

    int-to-float v9, v9

    cmpg-float v9, v9, p1

    if-gez v9, :cond_1

    add-int/2addr v8, v4

    add-int/2addr v8, v7

    :goto_1
    move v7, v8

    goto :goto_2

    :cond_1
    add-int/2addr v8, v4

    add-int/2addr v8, v2

    add-int/2addr v8, v3

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ll6/j;->getChipSpacingVertical()I

    move-result p1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v0, p1

    mul-int/2addr v0, v6

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p0

    add-int/2addr p0, v1

    sub-int/2addr p0, p1

    return p0
.end method

.method public final c()Z
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/SeslChipGroup;->b(F)I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Ls6/c;->c:Z

    if-eqz v0, :cond_0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final d()V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/chip/SeslChipGroup;->n:I

    return-void
.end method

.method public getRowCount()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/chip/SeslChipGroup;->m:I

    return p0
.end method

.method public getTotalWidth()I
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    invoke-virtual {p0}, Ll6/j;->getChipSpacingHorizontal()I

    move-result p0

    add-int/lit8 v0, v0, -0x2

    mul-int/2addr v0, p0

    add-int/2addr v1, v0

    :cond_1
    return v1
.end method

.method public final onLayout(ZIIII)V
    .locals 18

    move-object/from16 v0, p0

    const/4 v1, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    iput v3, v0, Lcom/google/android/material/chip/SeslChipGroup;->m:I

    return-void

    :cond_0
    iput v1, v0, Lcom/google/android/material/chip/SeslChipGroup;->m:I

    sget-object v2, Lf1/W;->a:Ljava/util/WeakHashMap;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    if-ne v2, v1, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    goto :goto_1

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    :goto_1
    if-eqz v2, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    goto :goto_2

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Ls6/c;->getLineSpacing()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Ls6/c;->getItemSpacing()I

    move-result v8

    sub-int v9, p4, p2

    sub-int v5, v9, v5

    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    move v9, v5

    :goto_3
    move v11, v3

    move v12, v4

    move v10, v6

    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v13

    if-ge v11, v13, :cond_9

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v14

    const/16 v15, 0x8

    const v3, 0x7f0b0a1a

    if-ne v14, v15, :cond_5

    const/4 v14, -0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v3, v14}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_8

    :cond_5
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    instance-of v15, v14, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v15, :cond_6

    check-cast v14, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v14}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v15

    invoke-virtual {v14}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v14

    goto :goto_5

    :cond_6
    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_5
    add-int v16, v12, v15

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    add-int v3, v17, v16

    iget-boolean v1, v0, Ls6/c;->c:Z

    if-nez v1, :cond_7

    if-le v3, v5, :cond_7

    add-int v10, v6, v7

    iget v1, v0, Lcom/google/android/material/chip/SeslChipGroup;->m:I

    const/4 v3, 0x1

    add-int/2addr v1, v3

    iput v1, v0, Lcom/google/android/material/chip/SeslChipGroup;->m:I

    move v12, v4

    goto :goto_6

    :cond_7
    const/4 v3, 0x1

    :goto_6
    iget v1, v0, Lcom/google/android/material/chip/SeslChipGroup;->m:I

    sub-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v3, 0x7f0b0a1a

    invoke-virtual {v13, v3, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    add-int v1, v12, v15

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v10

    if-eqz v2, :cond_8

    sub-int v1, v9, v3

    sub-int v3, v9, v12

    sub-int/2addr v3, v15

    invoke-virtual {v13, v1, v10, v3, v6}, Landroid/view/View;->layout(IIII)V

    goto :goto_7

    :cond_8
    invoke-virtual {v13, v1, v10, v3, v6}, Landroid/view/View;->layout(IIII)V

    :goto_7
    add-int/2addr v15, v14

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v15

    add-int/2addr v1, v8

    add-int/2addr v12, v1

    const/4 v1, 0x1

    :goto_8
    add-int/2addr v11, v1

    const/4 v3, 0x0

    goto :goto_4

    :cond_9
    return-void
.end method

.method public final onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Ls6/c;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-gtz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    iget p2, p0, Lcom/google/android/material/chip/SeslChipGroup;->n:I

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    :cond_0
    return-void
.end method

.method public final removeAllViews()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/material/chip/SeslChipGroup;->d()V

    invoke-super {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {p0}, Lcom/google/android/material/chip/SeslChipGroup;->a()V

    return-void
.end method

.method public final removeAllViewsInLayout()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/material/chip/SeslChipGroup;->d()V

    invoke-super {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    invoke-virtual {p0}, Lcom/google/android/material/chip/SeslChipGroup;->a()V

    return-void
.end method

.method public final removeView(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/SeslChipGroup;->k:Landroid/animation/LayoutTransition;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/SeslChipGroup;->d()V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/google/android/material/chip/SeslChipGroup;->a()V

    return-void
.end method

.method public final removeViewAt(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/material/chip/SeslChipGroup;->d()V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    invoke-virtual {p0}, Lcom/google/android/material/chip/SeslChipGroup;->a()V

    return-void
.end method

.method public final removeViewInLayout(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/material/chip/SeslChipGroup;->d()V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/google/android/material/chip/SeslChipGroup;->a()V

    return-void
.end method

.method public final removeViews(II)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/material/chip/SeslChipGroup;->d()V

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeViews(II)V

    invoke-virtual {p0}, Lcom/google/android/material/chip/SeslChipGroup;->a()V

    return-void
.end method

.method public final removeViewsInLayout(II)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/material/chip/SeslChipGroup;->d()V

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeViewsInLayout(II)V

    invoke-virtual {p0}, Lcom/google/android/material/chip/SeslChipGroup;->a()V

    return-void
.end method

.method public setDynamicTruncation(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/google/android/material/chip/SeslChipGroup;->j:Z

    const-string p0, "dynamic truncation state: "

    const-string v0, "SeslChipGroup"

    invoke-static {p0, v0, p1}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public setMaxChipWidth(I)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070576

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v2

    add-int/2addr v2, v1

    add-int/2addr v2, v0

    sub-int/2addr p1, v2

    iput p1, p0, Lcom/google/android/material/chip/SeslChipGroup;->l:I

    return-void
.end method

.method public setOnChipAddListener(Ll6/o;)V
    .locals 0

    return-void
.end method

.method public setOnChipRemovedListener(Ll6/p;)V
    .locals 0

    return-void
.end method
