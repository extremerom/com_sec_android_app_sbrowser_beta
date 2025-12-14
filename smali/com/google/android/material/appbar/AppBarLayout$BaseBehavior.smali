.class public Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;
.super Lc6/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/appbar/AppBarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BaseBehavior"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/android/material/appbar/AppBarLayout;",
        ">",
        "Lc6/j;"
    }
.end annotation


# instance fields
.field public A:F

.field public B:Z

.field public C:Z

.field public m:I

.field public n:I

.field public o:Landroid/animation/ValueAnimator;

.field public p:Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;

.field public q:Ljava/lang/ref/WeakReference;

.field public r:Lcom/google/android/material/appbar/c;

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:F

.field public w:F

.field public x:Z

.field public y:Z

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lc6/r;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lc6/j;->f:I

    iput v0, p0, Lc6/j;->h:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->t:Z

    iput-boolean v1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->u:Z

    iput-boolean v1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->x:Z

    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->z:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->A:F

    iput-boolean v1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->B:Z

    iput-boolean v1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->C:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lc6/r;-><init>(I)V

    const/4 p2, -0x1

    iput p2, p0, Lc6/j;->f:I

    iput p2, p0, Lc6/j;->h:I

    iput-boolean p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->t:Z

    iput-boolean p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->u:Z

    iput-boolean p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->x:Z

    iput p2, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->z:I

    const/4 p2, 0x0

    iput p2, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->A:F

    iput-boolean p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->B:Z

    iput-boolean p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->C:Z

    return-void
.end method

.method public static A(Lcom/google/android/material/appbar/AppBarLayout;I)I
    .locals 7

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->isLifted()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    add-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_4

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lc6/d;

    iget v5, v2, Lc6/d;->a:I

    const/16 v6, 0x20

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_1

    iget v5, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    sub-int/2addr v3, v5

    iget v2, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v4, v2

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->seslGetAdditionalScrollRange()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->seslGetAdditionalScrollRange()I

    move-result v2

    add-int/2addr v4, v2

    :cond_2
    neg-int v2, p1

    if-gt v3, v2, :cond_3

    if-lt v4, v2, :cond_3

    return v1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    const/4 p0, -0x1

    return p0
.end method

.method public static B(Lcom/google/android/material/appbar/AppBarLayout;)I
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, LR0/d;

    iget-object v0, v0, LR0/d;->a:LR0/c;

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout$Behavior;

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getCanScroll()Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v0, v0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->seslGetCollapsedHeight()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->seslGetAdditionalScrollRange()I

    move-result p0

    add-int/2addr p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static L(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;II)V
    .locals 8

    const/4 v0, 0x1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x0

    if-ge v4, v2, :cond_1

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v7

    if-lt v1, v7, :cond_0

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v7

    if-gt v1, v7, :cond_0

    goto :goto_1

    :cond_0
    add-int/2addr v4, v0

    goto :goto_0

    :cond_1
    move-object v6, v5

    :goto_1
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lc6/d;

    iget v1, v1, Lc6/d;->a:I

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_3

    sget-object v2, Lf1/W;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v6}, Landroid/view/View;->getMinimumHeight()I

    move-result v2

    if-lez p3, :cond_2

    and-int/lit8 p3, v1, 0xc

    if-eqz p3, :cond_2

    neg-int p2, p2

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result p3

    sub-int/2addr p3, v2

    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    move-result v1

    sub-int/2addr p3, v1

    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getImmersiveTopInset()I

    move-result v1

    sub-int/2addr p3, v1

    if-lt p2, p3, :cond_3

    :goto_2
    move p2, v0

    goto :goto_3

    :cond_2
    and-int/lit8 p3, v1, 0x2

    if-eqz p3, :cond_3

    neg-int p2, p2

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result p3

    sub-int/2addr p3, v2

    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    move-result v1

    sub-int/2addr p3, v1

    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getImmersiveTopInset()I

    move-result v1

    sub-int/2addr p3, v1

    if-lt p2, p3, :cond_3

    goto :goto_2

    :cond_3
    move p2, v3

    :goto_3
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->isLiftOnScroll()Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    move p3, v3

    :goto_4
    if-ge p3, p2, :cond_6

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lf1/q;

    if-nez v2, :cond_5

    instance-of v2, v1, Landroid/widget/AbsListView;

    if-nez v2, :cond_5

    instance-of v2, v1, Landroid/widget/ScrollView;

    if-eqz v2, :cond_4

    goto :goto_5

    :cond_4
    add-int/2addr p3, v0

    goto :goto_4

    :cond_5
    :goto_5
    move-object v5, v1

    :cond_6
    invoke-virtual {p1, v5}, Lcom/google/android/material/appbar/AppBarLayout;->shouldLift(Landroid/view/View;)Z

    move-result p2

    :cond_7
    invoke-virtual {p1, p2}, Lcom/google/android/material/appbar/AppBarLayout;->setLiftedState(Z)Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-virtual {p0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getDependents(Landroid/view/View;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    :goto_6
    if-ge v3, p2, :cond_b

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, LR0/d;

    iget-object p3, p3, LR0/d;->a:LR0/c;

    instance-of v1, p3, Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;

    if-eqz v1, :cond_a

    check-cast p3, Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;

    iget p0, p3, Lc6/k;->f:I

    if-eqz p0, :cond_b

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_8

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_9

    invoke-virtual {p1}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getStateListAnimator()Landroid/animation/StateListAnimator;

    move-result-object p0

    if-eqz p0, :cond_b

    invoke-virtual {p1}, Landroid/view/View;->getStateListAnimator()Landroid/animation/StateListAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/StateListAnimator;->jumpToCurrentState()V

    goto :goto_7

    :cond_a
    add-int/2addr v3, v0

    goto :goto_6

    :cond_b
    :goto_7
    return-void
.end method

.method public static y(Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;Landroidx/coordinatorlayout/widget/CoordinatorLayout;)Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, LR0/d;

    iget-object v2, v2, LR0/d;->a:LR0/c;

    instance-of v2, v2, Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return-object v1
.end method


# virtual methods
.method public final C()I
    .locals 1

    invoke-virtual {p0}, Lc6/r;->t()I

    move-result v0

    iget p0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->m:I

    add-int/2addr v0, p0

    return v0
.end method

.method public D(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;III)Z
    .locals 7

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, LR0/d;

    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 p5, -0x2

    const/4 v0, 0x0

    if-ne p0, p5, :cond_0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v1 .. v6}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onMeasureChild(Landroid/view/View;IIII)V

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method public E(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;II[II)V
    .locals 14

    move-object v6, p0

    move-object/from16 v7, p2

    move/from16 v8, p5

    if-eqz v8, :cond_7

    const/4 v9, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-gez v8, :cond_2

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v2

    neg-int v2, v2

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/material/appbar/AppBarLayout;->getDownNestedPreScrollRange()I

    move-result v3

    add-int/2addr v3, v2

    iput-boolean v9, v6, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->t:Z

    iput-boolean v1, v6, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->u:Z

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-double v4, v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v10

    int-to-double v10, v10

    const-wide v12, 0x3fe0a3d70a3d70a4L    # 0.52

    mul-double/2addr v10, v12

    cmpl-double v4, v4, v10

    if-ltz v4, :cond_0

    iput-boolean v9, v6, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->B:Z

    :cond_0
    const/16 v4, -0x1e

    if-ge v8, v4, :cond_1

    iput-boolean v9, v6, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->t:Z

    goto :goto_0

    :cond_1
    iput v0, v6, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->A:F

    iput-boolean v1, v6, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->t:Z

    :goto_0
    move v4, v2

    move v5, v3

    goto :goto_2

    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/material/appbar/AppBarLayout;->getUpNestedPreScrollRange()I

    move-result v2

    neg-int v2, v2

    iput-boolean v1, v6, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->t:Z

    iput-boolean v9, v6, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->u:Z

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v3

    int-to-double v3, v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-double v10, v5

    const-wide v12, 0x3fdb851eb851eb85L    # 0.43

    mul-double/2addr v10, v12

    cmpg-double v3, v3, v10

    if-gtz v3, :cond_3

    iput-boolean v9, v6, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->B:Z

    :cond_3
    const/16 v3, 0x1e

    if-le v8, v3, :cond_4

    iput-boolean v9, v6, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->u:Z

    goto :goto_1

    :cond_4
    iput v0, v6, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->A:F

    iput-boolean v1, v6, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->u:Z

    :goto_1
    invoke-virtual {p0}, Lc6/r;->t()I

    move-result v0

    if-ne v0, v2, :cond_5

    iput-boolean v9, v6, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->C:Z

    :cond_5
    move v5, v1

    move v4, v2

    :goto_2
    iget-object v0, v6, Lc6/j;->c:LN3/g;

    if-eqz v0, :cond_6

    iget-object v0, v6, Lc6/j;->d:Landroid/widget/OverScroller;

    if-eqz v0, :cond_6

    invoke-virtual {v0, v9}, Landroid/widget/OverScroller;->forceFinished(Z)V

    :cond_6
    if-eq v4, v5, :cond_7

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->C()I

    move-result v0

    sub-int v3, v0, v8

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->w(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I

    move-result v0

    aput v0, p6, v9

    :cond_7
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/material/appbar/AppBarLayout;->isLiftOnScroll()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual/range {p2 .. p3}, Lcom/google/android/material/appbar/AppBarLayout;->shouldLift(Landroid/view/View;)Z

    move-result v0

    invoke-virtual {v7, v0}, Lcom/google/android/material/appbar/AppBarLayout;->setLiftedState(Z)Z

    :cond_8
    move-object/from16 v0, p3

    move/from16 v1, p7

    invoke-virtual {p0, v8, v7, v0, v1}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->K(ILcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;I)V

    return-void
.end method

.method public F(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;IIIII[I)V
    .locals 6

    iget-boolean p4, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->y:Z

    const/4 p5, 0x1

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->C()I

    move-result p4

    invoke-static {p2, p4}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->A(Lcom/google/android/material/appbar/AppBarLayout;I)I

    move-result p4

    if-ltz p4, :cond_1

    invoke-virtual {p2, p4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    check-cast p4, Lc6/d;

    iget p4, p4, Lc6/d;->a:I

    const/high16 p6, 0x10000

    and-int/2addr p4, p6

    if-ne p4, p6, :cond_1

    :goto_0
    if-gez p7, :cond_3

    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getDownNestedScrollRange()I

    move-result p4

    neg-int v4, p4

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->C()I

    move-result p4

    sub-int v3, p4, p7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->w(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I

    move-result p4

    aput p4, p9, p5

    invoke-virtual {p0, p7, p2, p3, p8}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->K(ILcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;I)V

    goto :goto_1

    :cond_1
    if-gez p7, :cond_2

    iget-boolean p4, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->C:Z

    if-nez p4, :cond_2

    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getDownNestedScrollRange()I

    move-result p4

    neg-int v4, p4

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->C()I

    move-result p4

    sub-int v3, p4, p7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->w(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I

    move-result p4

    aput p4, p9, p5

    invoke-virtual {p0, p7, p2, p3, p8}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->K(ILcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;I)V

    goto :goto_1

    :cond_2
    sget-object p4, Lf1/W;->a:Ljava/util/WeakHashMap;

    instance-of p4, p3, Lf1/q;

    if-eqz p4, :cond_3

    check-cast p3, Lf1/q;

    invoke-interface {p3, p5}, Lf1/q;->stopNestedScroll(I)V

    :cond_3
    :goto_1
    if-nez p7, :cond_5

    sget-object p3, Lf1/W;->a:Ljava/util/WeakHashMap;

    invoke-static {p1}, Lf1/T;->a(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    move-result-object p3

    if-eqz p3, :cond_4

    goto :goto_2

    :cond_4
    new-instance p3, Lcom/google/android/material/appbar/b;

    invoke-direct {p3, p1, p0, p2}, Lcom/google/android/material/appbar/b;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;Lcom/google/android/material/appbar/AppBarLayout;)V

    invoke-static {p1, p3}, Lf1/W;->j(Landroid/view/View;Lf1/b;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public G(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;Landroid/view/View;II)Z
    .locals 1

    and-int/lit8 p4, p5, 0x2

    const/4 p5, 0x0

    const/4 v0, 0x1

    if-eqz p4, :cond_1

    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->isLiftOnScroll()Z

    move-result p4

    if-nez p4, :cond_0

    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->hasScrollableChildren()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    sub-int/2addr p1, p3

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p3

    if-gt p1, p3, :cond_1

    :cond_0
    move p1, v0

    goto :goto_0

    :cond_1
    move p1, p5

    :goto_0
    if-eqz p1, :cond_2

    iget-object p3, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->o:Landroid/animation/ValueAnimator;

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->seslGetCollapsedHeight()F

    move-result p4

    cmpg-float p3, p3, p4

    if-gtz p3, :cond_3

    iput-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->s:Z

    invoke-virtual {p2, v0}, Lcom/google/android/material/appbar/AppBarLayout;->setLifted(Z)Z

    const/4 p3, 0x0

    iput p3, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->v:F

    goto :goto_1

    :cond_3
    iput-boolean p5, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->s:Z

    invoke-virtual {p2, p5}, Lcom/google/android/material/appbar/AppBarLayout;->setLifted(Z)Z

    :goto_1
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->updateInternalCollapsedHeight()V

    const/4 p3, 0x0

    iput-object p3, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->q:Ljava/lang/ref/WeakReference;

    iput p6, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->n:I

    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getIsMouse()Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->y:Z

    return p1
.end method

.method public H(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;I)V
    .locals 3

    iget v0, p0, Lc6/j;->k:I

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    iget v0, p0, Lc6/j;->j:I

    if-eq v0, v2, :cond_0

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->J(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V

    :cond_1
    iget p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->n:I

    if-eqz p1, :cond_2

    if-ne p4, v1, :cond_4

    :cond_2
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->isLiftOnScroll()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p2, p3}, Lcom/google/android/material/appbar/AppBarLayout;->shouldLift(Landroid/view/View;)Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/google/android/material/appbar/AppBarLayout;->setLiftedState(Z)Z

    :cond_3
    iget-boolean p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->C:Z

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->C:Z

    :cond_4
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->q:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final I(Landroid/os/Parcelable;Lcom/google/android/material/appbar/AppBarLayout;)Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;
    .locals 7

    const/4 v0, 0x1

    invoke-virtual {p0}, Lc6/r;->t()I

    move-result p0

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_5

    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v5

    add-int/2addr v5, p0

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v6

    add-int/2addr v6, p0

    if-gtz v6, :cond_4

    if-ltz v5, :cond_4

    new-instance v1, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;

    if-nez p1, :cond_0

    sget-object p1, Landroidx/customview/view/AbsSavedState;->b:Landroidx/customview/view/AbsSavedState;

    :cond_0
    invoke-direct {v1, p1}, Landroidx/customview/view/AbsSavedState;-><init>(Landroid/os/Parcelable;)V

    if-nez p0, :cond_1

    move p1, v0

    goto :goto_1

    :cond_1
    move p1, v2

    :goto_1
    iput-boolean p1, v1, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;->d:Z

    if-nez p1, :cond_2

    neg-int p0, p0

    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result p1

    if-lt p0, p1, :cond_2

    move p0, v0

    goto :goto_2

    :cond_2
    move p0, v2

    :goto_2
    iput-boolean p0, v1, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;->c:Z

    iput v3, v1, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;->e:I

    sget-object p0, Lf1/W;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v4}, Landroid/view/View;->getMinimumHeight()I

    move-result p0

    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    move-result p1

    add-int/2addr p1, p0

    if-ne v5, p1, :cond_3

    goto :goto_3

    :cond_3
    move v0, v2

    :goto_3
    iput-boolean v0, v1, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;->g:Z

    int-to-float p0, v5

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p0, p1

    iput p0, v1, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;->f:F

    return-object v1

    :cond_4
    add-int/2addr v3, v0

    goto :goto_0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method public final J(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V
    .locals 12

    const/4 v0, 0x5

    const/4 v1, 0x2

    const/16 v2, 0x1000

    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->C()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-static {p2, v3}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->A(Lcom/google/android/material/appbar/AppBarLayout;I)I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-ltz v4, :cond_12

    invoke-virtual {p2, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lc6/d;

    iget v9, v8, Lc6/d;->a:I

    and-int/lit16 v10, v9, 0x1000

    if-ne v10, v2, :cond_0

    iput-boolean v5, p0, Lc6/j;->l:Z

    goto/16 :goto_9

    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lc6/j;->l:Z

    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getCanScroll()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->seslGetAdditionalScrollRange()I

    move-result v5

    goto :goto_0

    :cond_1
    move v5, v2

    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->seslGetCollapsedHeight()F

    move-result v11

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_e

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v5

    neg-int v5, v5

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v10

    neg-int v10, v10

    if-nez v4, :cond_2

    sget-object v4, Lf1/W;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p2}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v7}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    move-result v4

    sub-int/2addr v5, v4

    :cond_2
    and-int/lit8 v4, v9, 0x2

    if-ne v4, v1, :cond_4

    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getCanScroll()Z

    move-result v0

    if-eqz v0, :cond_3

    int-to-float v0, v10

    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->seslGetCollapsedHeight()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v1, v4

    add-float/2addr v1, v0

    float-to-int v10, v1

    goto :goto_1

    :cond_3
    sget-object v0, Lf1/W;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v7}, Landroid/view/View;->getMinimumHeight()I

    move-result v0

    add-int/2addr v10, v0

    goto :goto_1

    :cond_4
    and-int/lit8 v1, v9, 0x5

    if-ne v1, v0, :cond_6

    sget-object v0, Lf1/W;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v7}, Landroid/view/View;->getMinimumHeight()I

    move-result v0

    add-int/2addr v0, v10

    if-ge v3, v0, :cond_5

    move v5, v0

    goto :goto_1

    :cond_5
    move v10, v0

    :cond_6
    :goto_1
    const/16 v0, 0x20

    and-int/lit8 v1, v9, 0x20

    if-ne v1, v0, :cond_7

    iget v0, v8, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v5, v0

    iget v0, v8, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v10, v0

    :cond_7
    iget-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->s:Z

    if-eqz v0, :cond_a

    int-to-double v0, v3

    add-int v3, v10, v5

    int-to-double v3, v3

    const-wide v7, 0x3fe0a3d70a3d70a4L    # 0.52

    mul-double/2addr v3, v7

    cmpl-double v0, v0, v3

    if-ltz v0, :cond_9

    :cond_8
    move v0, v5

    goto :goto_3

    :cond_9
    :goto_2
    move v0, v10

    goto :goto_3

    :cond_a
    int-to-double v0, v3

    add-int v3, v10, v5

    int-to-double v3, v3

    const-wide v7, 0x3fdb851eb851eb85L    # 0.43

    mul-double/2addr v3, v7

    cmpg-double v0, v0, v3

    if-gez v0, :cond_8

    goto :goto_2

    :goto_3
    if-nez v6, :cond_b

    invoke-static {}, Lcom/google/android/material/appbar/AppBarLayout;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v3, "coordinatorLayout.getChildAt(1) is null"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v0

    goto :goto_5

    :cond_b
    iget-boolean v1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->u:Z

    if-eqz v1, :cond_c

    iput-boolean v2, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->u:Z

    iput-boolean v2, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->t:Z

    goto :goto_4

    :cond_c
    move v10, v0

    :goto_4
    iget-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->t:Z

    if-eqz v0, :cond_d

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->seslGetCollapsedHeight()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_d

    iput-boolean v2, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->t:Z

    goto :goto_5

    :cond_d
    move v5, v10

    :goto_5
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    neg-int v0, v0

    invoke-static {v5, v0, v2}, LG5/L3;->e(III)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->z(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;I)V

    goto :goto_9

    :cond_e
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getCanScroll()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->seslGetCollapsedHeight()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/2addr v0, v5

    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v3

    add-int/2addr v3, v5

    int-to-double v3, v3

    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->seslGetCollapsedHeight()F

    move-result v5

    float-to-double v5, v5

    const-wide v7, 0x3fdeb851eb851eb8L    # 0.48

    mul-double/2addr v5, v7

    cmpl-double v3, v3, v5

    if-ltz v3, :cond_f

    move v3, v0

    goto :goto_6

    :cond_f
    move v3, v1

    :goto_6
    iget-boolean v4, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->u:Z

    if-eqz v4, :cond_10

    goto :goto_7

    :cond_10
    move v1, v3

    :goto_7
    iget-boolean v3, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->t:Z

    if-eqz v3, :cond_11

    goto :goto_8

    :cond_11
    move v0, v1

    :goto_8
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v1

    neg-int v1, v1

    invoke-static {v0, v1, v2}, LG5/L3;->e(III)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->z(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;I)V

    :cond_12
    :goto_9
    return-void
.end method

.method public final K(ILcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p4, v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->C()I

    move-result p0

    if-gez p1, :cond_0

    if-eqz p0, :cond_1

    :cond_0
    if-lez p1, :cond_2

    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getDownNestedScrollRange()I

    move-result p1

    neg-int p1, p1

    if-ne p0, p1, :cond_2

    :cond_1
    sget-object p0, Lf1/W;->a:Ljava/util/WeakHashMap;

    instance-of p0, p3, Lf1/q;

    if-eqz p0, :cond_2

    check-cast p3, Lf1/q;

    invoke-interface {p3, v0}, Lf1/q;->stopNestedScroll(I)V

    :cond_2
    return-void
.end method

.method public final i(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 5

    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-super {p0, p1, p2, p3}, Lc6/r;->i(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z

    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getPendingAction()I

    move-result p3

    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->p:Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    and-int/lit8 v3, p3, 0x8

    if-nez v3, :cond_3

    iget-boolean p3, v0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;->c:Z

    if-eqz p3, :cond_0

    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result p3

    neg-int p3, p3

    invoke-virtual {p0, p1, p2, p3}, Lc6/j;->x(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V

    goto/16 :goto_2

    :cond_0
    iget-boolean p3, v0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;->d:Z

    if-eqz p3, :cond_1

    invoke-virtual {p0, p1, p2, v1}, Lc6/j;->x(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V

    goto/16 :goto_2

    :cond_1
    iget p3, v0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;->e:I

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v0

    neg-int v0, v0

    iget-object v3, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->p:Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;

    iget-boolean v3, v3, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;->g:Z

    if-eqz v3, :cond_2

    sget-object v3, Lf1/W;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p3}, Landroid/view/View;->getMinimumHeight()I

    move-result p3

    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    move-result v3

    add-int/2addr v3, p3

    add-int/2addr v3, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    int-to-float p3, p3

    iget-object v3, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->p:Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;

    iget v3, v3, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;->f:F

    mul-float/2addr p3, v3

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    add-int v3, p3, v0

    :goto_0
    invoke-virtual {p0, p1, p2, v3}, Lc6/j;->x(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V

    goto/16 :goto_2

    :cond_3
    if-eqz p3, :cond_b

    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_4

    move v0, v2

    goto :goto_1

    :cond_4
    move v0, v1

    :goto_1
    and-int/lit8 v3, p3, 0x2

    if-eqz v3, :cond_6

    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result p3

    neg-int p3, p3

    invoke-static {p2}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->B(Lcom/google/android/material/appbar/AppBarLayout;)I

    move-result v3

    add-int/2addr v3, p3

    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getImmersiveTopInset()I

    move-result p3

    sub-int/2addr v3, p3

    int-to-float p3, v3

    if-eqz v0, :cond_5

    float-to-int p3, p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->z(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;I)V

    goto :goto_2

    :cond_5
    float-to-int p3, p3

    invoke-virtual {p0, p1, p2, p3}, Lc6/j;->x(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V

    goto :goto_2

    :cond_6
    and-int/lit16 v3, p3, 0x200

    if-eqz v3, :cond_9

    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result p3

    neg-int p3, p3

    invoke-static {p2}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->B(Lcom/google/android/material/appbar/AppBarLayout;)I

    move-result v3

    add-int/2addr v3, p3

    int-to-float p3, v3

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v2, :cond_7

    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getImmersiveTopInset()I

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->seslGetHeightProPortion()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_7

    move p3, v4

    :cond_7
    if-eqz v0, :cond_8

    float-to-int p3, p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->z(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;I)V

    goto :goto_2

    :cond_8
    float-to-int p3, p3

    invoke-virtual {p0, p1, p2, p3}, Lc6/j;->x(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V

    goto :goto_2

    :cond_9
    and-int/2addr p3, v2

    if-eqz p3, :cond_b

    if-eqz v0, :cond_a

    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->z(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;I)V

    goto :goto_2

    :cond_a
    invoke-virtual {p0, p1, p2, v1}, Lc6/j;->x(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V

    :cond_b
    :goto_2
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->resetPendingAction()V

    const/4 p3, 0x0

    iput-object p3, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->p:Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;

    invoke-virtual {p0}, Lc6/r;->t()I

    move-result p3

    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    neg-int v0, v0

    invoke-static {p3, v0, v1}, LG5/L3;->e(III)I

    move-result p3

    invoke-virtual {p0, p3}, Lc6/r;->v(I)Z

    invoke-virtual {p0}, Lc6/r;->t()I

    move-result p3

    invoke-static {p1, p2, p3, v1}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->L(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;II)V

    invoke-virtual {p0}, Lc6/r;->t()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/google/android/material/appbar/AppBarLayout;->onOffsetChanged(I)V

    sget-object p3, Lf1/W;->a:Ljava/util/WeakHashMap;

    invoke-static {p1}, Lf1/T;->a(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    move-result-object p3

    if-eqz p3, :cond_c

    goto :goto_3

    :cond_c
    new-instance p3, Lcom/google/android/material/appbar/b;

    invoke-direct {p3, p1, p0, p2}, Lcom/google/android/material/appbar/b;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;Lcom/google/android/material/appbar/AppBarLayout;)V

    invoke-static {p1, p3}, Lf1/W;->j(Landroid/view/View;Lf1/b;)V

    :goto_3
    return v2
.end method

.method public bridge synthetic j(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)Z
    .locals 0

    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual/range {p0 .. p5}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->D(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;III)Z

    move-result p0

    return p0
.end method

.method public final k(Landroid/view/View;Landroid/view/View;F)Z
    .locals 1

    check-cast p1, Lcom/google/android/material/appbar/AppBarLayout;

    iput p3, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->A:F

    const/high16 p1, -0x3c6a0000    # -300.0f

    cmpg-float p1, p3, p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-gez p1, :cond_0

    iput-boolean p2, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->t:Z

    iput-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->u:Z

    goto :goto_0

    :cond_0
    const/high16 p1, 0x43960000    # 300.0f

    cmpl-float p1, p3, p1

    if-lez p1, :cond_1

    iput-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->t:Z

    iput-boolean p2, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->u:Z

    :goto_0
    move p2, v0

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->A:F

    iput-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->t:Z

    iput-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->u:Z

    :goto_1
    return p2
.end method

.method public bridge synthetic l(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[II)V
    .locals 0

    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual/range {p0 .. p7}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->E(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;II[II)V

    return-void
.end method

.method public bridge synthetic m(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIIII[I)V
    .locals 0

    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual/range {p0 .. p9}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->F(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;IIIII[I)V

    return-void
.end method

.method public final o(Landroid/view/View;Landroid/os/Parcelable;)V
    .locals 0

    check-cast p1, Lcom/google/android/material/appbar/AppBarLayout;

    instance-of p1, p2, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;

    if-eqz p1, :cond_0

    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;

    iput-object p2, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->p:Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->p:Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;

    :goto_0
    return-void
.end method

.method public final p(Landroid/view/View;)Landroid/os/Parcelable;
    .locals 1

    check-cast p1, Lcom/google/android/material/appbar/AppBarLayout;

    sget-object v0, Landroid/view/View$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->I(Landroid/os/Parcelable;Lcom/google/android/material/appbar/AppBarLayout;)Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic q(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
    .locals 0

    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual/range {p0 .. p6}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->G(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;Landroid/view/View;II)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic r(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->H(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;I)V

    return-void
.end method

.method public final s(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 21

    move-object/from16 v6, p0

    move-object/from16 v7, p3

    move-object/from16 v8, p2

    check-cast v8, Lcom/google/android/material/appbar/AppBarLayout;

    iget v0, v6, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->z:I

    if-gez v0, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, v6, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->z:I

    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {v8}, Lcom/google/android/material/appbar/AppBarLayout;->getIsMouse()Z

    move-result v1

    iput-boolean v1, v6, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->y:Z

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v9, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_8

    if-eq v0, v1, :cond_4

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_4

    :cond_1
    :goto_0
    move-object/from16 v5, p1

    goto :goto_2

    :cond_2
    iput-boolean v1, v6, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->x:Z

    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v5, v6, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->w:F

    sub-float v5, v0, v5

    cmpl-float v4, v5, v4

    if-eqz v4, :cond_3

    iput v5, v6, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->v:F

    :cond_3
    iget v4, v6, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->v:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, v6, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->z:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    iput v0, v6, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->w:F

    goto :goto_0

    :cond_4
    iget v0, v6, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->v:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v5, 0x41a80000    # 21.0f

    cmpl-float v0, v0, v5

    if-lez v0, :cond_6

    iget v0, v6, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->v:F

    cmpg-float v5, v0, v4

    if-gez v5, :cond_5

    iput-boolean v1, v6, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->u:Z

    iput-boolean v9, v6, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->t:Z

    goto :goto_1

    :cond_5
    cmpl-float v0, v0, v4

    if-lez v0, :cond_7

    iput-boolean v9, v6, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->u:Z

    iput-boolean v1, v6, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->t:Z

    goto :goto_1

    :cond_6
    iput-boolean v9, v6, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->u:Z

    iput-boolean v9, v6, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->t:Z

    iput v4, v6, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->w:F

    :cond_7
    :goto_1
    iget-boolean v0, v6, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->x:Z

    if-eqz v0, :cond_1

    iput-boolean v9, v6, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->x:Z

    move-object/from16 v5, p1

    invoke-virtual {v6, v5, v8}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->J(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V

    goto :goto_2

    :cond_8
    move-object/from16 v5, p1

    iput-boolean v1, v6, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->x:Z

    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getX()F

    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, v6, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->w:F

    iput v4, v6, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->v:F

    :goto_2
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iput v0, v6, Lc6/j;->k:I

    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v10, 0x0

    const/4 v11, -0x1

    if-eq v0, v1, :cond_d

    if-eq v0, v3, :cond_b

    if-eq v0, v2, :cond_11

    const/4 v2, 0x6

    if-eq v0, v2, :cond_9

    goto/16 :goto_5

    :cond_9
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    if-nez v0, :cond_a

    goto :goto_3

    :cond_a
    move v1, v9

    :goto_3
    invoke-virtual {v7, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v6, Lc6/j;->f:I

    invoke-virtual {v7, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v6, Lc6/j;->g:I

    goto/16 :goto_5

    :cond_b
    iget v0, v6, Lc6/j;->f:I

    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ne v0, v11, :cond_c

    goto/16 :goto_6

    :cond_c
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    iget v1, v6, Lc6/j;->g:I

    sub-int/2addr v1, v0

    iput v0, v6, Lc6/j;->g:I

    invoke-virtual {v8}, Lcom/google/android/material/appbar/AppBarLayout;->getDownNestedScrollRange()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {v8}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    move-result v2

    add-int v4, v2, v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->C()I

    move-result v0

    sub-int v3, v0, v1

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v8

    move v5, v9

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->w(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I

    goto/16 :goto_5

    :cond_d
    iget-boolean v0, v6, Lc6/j;->l:Z

    if-eqz v0, :cond_11

    iget-object v0, v6, Lc6/j;->i:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_11

    invoke-virtual {v0, v7}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object v0, v6, Lc6/j;->i:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object v0, v6, Lc6/j;->i:Landroid/view/VelocityTracker;

    iget v2, v6, Lc6/j;->f:I

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v0

    invoke-virtual {v8}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v2

    neg-int v2, v2

    iget-object v3, v6, Lc6/j;->c:LN3/g;

    if-eqz v3, :cond_e

    invoke-virtual {v8, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iput-object v10, v6, Lc6/j;->c:LN3/g;

    :cond_e
    iget-object v3, v6, Lc6/j;->d:Landroid/widget/OverScroller;

    if-nez v3, :cond_f

    new-instance v3, Landroid/widget/OverScroller;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v3, v6, Lc6/j;->d:Landroid/widget/OverScroller;

    :cond_f
    iget-object v12, v6, Lc6/j;->d:Landroid/widget/OverScroller;

    invoke-virtual/range {p0 .. p0}, Lc6/r;->t()I

    move-result v14

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v16

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    move/from16 v19, v2

    invoke-virtual/range {v12 .. v20}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    iget-object v0, v6, Lc6/j;->d:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v12, LN3/g;

    const/4 v1, 0x5

    const/4 v13, 0x0

    move-object v0, v12

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object v4, v8

    move v5, v13

    invoke-direct/range {v0 .. v5}, LN3/g;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)V

    iput-object v12, v6, Lc6/j;->c:LN3/g;

    sget-object v0, Lf1/W;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v8, v12}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_4

    :cond_10
    iget-object v0, v6, Lc6/j;->d:Landroid/widget/OverScroller;

    if-eqz v0, :cond_11

    invoke-virtual {v0, v1}, Landroid/widget/OverScroller;->forceFinished(Z)V

    :cond_11
    :goto_4
    iput-boolean v9, v6, Lc6/j;->e:Z

    iput v11, v6, Lc6/j;->f:I

    iget-object v0, v6, Lc6/j;->i:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    iput-object v10, v6, Lc6/j;->i:Landroid/view/VelocityTracker;

    :cond_12
    :goto_5
    iget-object v0, v6, Lc6/j;->i:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_13

    invoke-virtual {v0, v7}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_13
    iget-boolean v9, v6, Lc6/j;->e:Z

    :goto_6
    return v9
.end method

.method public final w(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    const/4 v3, 0x1

    move-object/from16 v4, p2

    check-cast v4, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->C()I

    move-result v5

    const/4 v6, 0x0

    if-eqz v2, :cond_b

    if-lt v5, v2, :cond_b

    move/from16 v7, p5

    if-gt v5, v7, :cond_b

    invoke-static/range {p3 .. p5}, LG5/L3;->e(III)I

    move-result v2

    if-eq v5, v2, :cond_c

    invoke-virtual {v4}, Lcom/google/android/material/appbar/AppBarLayout;->hasChildWithInterpolator()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v7

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    move v9, v6

    :goto_0
    if-ge v9, v8, :cond_4

    invoke-virtual {v4, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Lc6/d;

    iget-object v12, v11, Lc6/d;->c:Landroid/view/animation/Interpolator;

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v13

    if-lt v7, v13, :cond_3

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v13

    if-gt v7, v13, :cond_3

    if-eqz v12, :cond_4

    iget v8, v11, Lc6/d;->a:I

    and-int/lit8 v9, v8, 0x1

    if-eqz v9, :cond_0

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v9

    iget v13, v11, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v9, v13

    iget v11, v11, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v9, v11

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_1

    sget-object v8, Lf1/W;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v10}, Landroid/view/View;->getMinimumHeight()I

    move-result v8

    sub-int/2addr v9, v8

    goto :goto_1

    :cond_0
    move v9, v6

    :cond_1
    :goto_1
    sget-object v8, Lf1/W;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v10}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v4}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    move-result v8

    sub-int/2addr v9, v8

    :cond_2
    if-lez v9, :cond_4

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v8, v9

    int-to-float v7, v7

    div-float/2addr v7, v8

    invoke-interface {v12, v7}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v7

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-static {v2}, Ljava/lang/Integer;->signum(I)I

    move-result v8

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v9

    add-int/2addr v9, v7

    mul-int/2addr v9, v8

    goto :goto_2

    :cond_3
    add-int/2addr v9, v3

    goto :goto_0

    :cond_4
    move v9, v2

    :goto_2
    invoke-virtual {v0, v9}, Lc6/r;->v(I)Z

    move-result v7

    sub-int v8, v5, v2

    sub-int v9, v2, v9

    iput v9, v0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->m:I

    if-eqz v7, :cond_8

    move v9, v6

    :goto_3
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    if-ge v9, v10, :cond_8

    invoke-virtual {v4, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lc6/d;

    iget-object v11, v10, Lc6/d;->b:Lo3/l;

    if-eqz v11, :cond_7

    iget v10, v10, Lc6/d;->a:I

    and-int/2addr v10, v3

    if-eqz v10, :cond_7

    invoke-virtual {v4, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lc6/r;->t()I

    move-result v12

    int-to-float v12, v12

    iget-object v13, v11, Lo3/l;->a:Ljava/lang/Object;

    check-cast v13, Landroid/graphics/Rect;

    invoke-virtual {v10, v13}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    invoke-virtual {v4, v10, v13}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {v4}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    move-result v14

    neg-int v14, v14

    invoke-virtual {v13, v6, v14}, Landroid/graphics/Rect;->offset(II)V

    iget v14, v13, Landroid/graphics/Rect;->top:I

    int-to-float v14, v14

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    sub-float/2addr v14, v12

    const/4 v12, 0x0

    cmpg-float v15, v14, v12

    if-gtz v15, :cond_6

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v15

    int-to-float v15, v15

    div-float v15, v14, v15

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v15, v12, v3}, LG5/L3;->d(FFF)F

    move-result v12

    neg-float v14, v14

    sub-float v12, v3, v12

    mul-float/2addr v12, v12

    sub-float/2addr v3, v12

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v12

    int-to-float v12, v12

    const v13, 0x3e99999a    # 0.3f

    mul-float/2addr v12, v13

    mul-float/2addr v12, v3

    sub-float/2addr v14, v12

    invoke-virtual {v10, v14}, Landroid/view/View;->setTranslationY(F)V

    iget-object v3, v11, Lo3/l;->b:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/Rect;

    invoke-virtual {v10, v3}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    neg-float v11, v14

    float-to-int v11, v11

    invoke-virtual {v3, v6, v11}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v11

    int-to-float v11, v11

    cmpl-float v11, v14, v11

    if-ltz v11, :cond_5

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_5
    invoke-virtual {v10, v6}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    sget-object v11, Lf1/W;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v10, v3}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    goto :goto_5

    :cond_6
    sget-object v3, Lf1/W;->a:Ljava/util/WeakHashMap;

    const/4 v3, 0x0

    invoke-virtual {v10, v3}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v10, v12}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {v10, v6}, Landroid/view/View;->setVisibility(I)V

    :goto_5
    const/4 v3, 0x1

    :cond_7
    add-int/2addr v9, v3

    goto/16 :goto_3

    :cond_8
    if-nez v7, :cond_9

    invoke-virtual {v4}, Lcom/google/android/material/appbar/AppBarLayout;->hasChildWithInterpolator()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {v1, v4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->dispatchDependentViewsChanged(Landroid/view/View;)V

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lc6/r;->t()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/google/android/material/appbar/AppBarLayout;->onOffsetChanged(I)V

    if-ge v2, v5, :cond_a

    const/4 v3, -0x1

    :cond_a
    invoke-static {v1, v4, v2, v3}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->L(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;II)V

    move v6, v8

    goto :goto_6

    :cond_b
    iput v6, v0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->m:I

    :cond_c
    :goto_6
    sget-object v2, Lf1/W;->a:Ljava/util/WeakHashMap;

    invoke-static/range {p1 .. p1}, Lf1/T;->a(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    move-result-object v2

    if-eqz v2, :cond_d

    goto :goto_7

    :cond_d
    new-instance v2, Lcom/google/android/material/appbar/b;

    invoke-direct {v2, v1, v0, v4}, Lcom/google/android/material/appbar/b;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;Lcom/google/android/material/appbar/AppBarLayout;)V

    invoke-static {v1, v2}, Lf1/W;->j(Landroid/view/View;Lf1/b;)V

    :goto_7
    return v6
.end method

.method public final z(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 7

    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->A:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/16 v2, 0xfa

    if-lez v0, :cond_0

    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->A:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v3, 0x453b8000    # 3000.0f

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->A:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float/2addr v3, v0

    float-to-double v3, v3

    const-wide v5, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v3, v5

    double-to-int v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-gt v0, v2, :cond_1

    move v0, v2

    :cond_1
    iget-boolean v3, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->B:Z

    if-eqz v3, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->B:Z

    goto :goto_1

    :cond_2
    move v2, v0

    :goto_1
    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->A:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v3, 0x44fa0000    # 2000.0f

    cmpg-float v0, v0, v3

    if-gez v0, :cond_5

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->C()I

    move-result v0

    if-ne v0, p3, :cond_3

    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->o:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->o:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_3

    :cond_3
    iget-object v3, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->o:Landroid/animation/ValueAnimator;

    if-nez v3, :cond_4

    new-instance v3, Landroid/animation/ValueAnimator;

    invoke-direct {v3}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v3, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->o:Landroid/animation/ValueAnimator;

    sget-object v4, Ll/a;->d:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v3, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->o:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/google/android/material/appbar/a;

    invoke-direct {v4, p1, p0, p2}, Lcom/google/android/material/appbar/a;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;Lcom/google/android/material/appbar/AppBarLayout;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    :goto_2
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->o:Landroid/animation/ValueAnimator;

    const/16 p2, 0x1c2

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    int-to-long v2, p2

    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->o:Landroid/animation/ValueAnimator;

    filled-new-array {v0, p3}, [I

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->o:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_5
    :goto_3
    iput v1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->A:F

    return-void
.end method
