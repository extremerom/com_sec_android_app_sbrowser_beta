.class public final Landroidx/recyclerview/widget/X;
.super Landroidx/recyclerview/widget/F0;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/L0;


# instance fields
.field public A:Landroid/graphics/Rect;

.field public B:J

.field public final a:Ljava/util/ArrayList;

.field public final b:[F

.field public c:Landroidx/recyclerview/widget/h1;

.field public d:F

.field public e:F

.field public f:F

.field public g:F

.field public h:F

.field public i:F

.field public j:F

.field public k:F

.field public l:I

.field public final m:Landroidx/recyclerview/widget/U;

.field public n:I

.field public o:I

.field public final p:Ljava/util/ArrayList;

.field public q:I

.field public r:Landroidx/recyclerview/widget/RecyclerView;

.field public final s:Landroidx/recyclerview/widget/F;

.field public t:Landroid/view/VelocityTracker;

.field public u:Ljava/util/ArrayList;

.field public v:Ljava/util/ArrayList;

.field public w:Landroid/view/View;

.field public x:Lf1/j;

.field public y:Landroidx/recyclerview/widget/V;

.field public final z:Landroidx/recyclerview/widget/Q;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/U;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/X;->a:Ljava/util/ArrayList;

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Landroidx/recyclerview/widget/X;->b:[F

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/recyclerview/widget/X;->c:Landroidx/recyclerview/widget/h1;

    const/4 v1, -0x1

    iput v1, p0, Landroidx/recyclerview/widget/X;->l:I

    const/4 v1, 0x0

    iput v1, p0, Landroidx/recyclerview/widget/X;->n:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/recyclerview/widget/X;->p:Ljava/util/ArrayList;

    new-instance v1, Landroidx/recyclerview/widget/F;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Landroidx/recyclerview/widget/F;-><init>(ILjava/lang/Object;)V

    iput-object v1, p0, Landroidx/recyclerview/widget/X;->s:Landroidx/recyclerview/widget/F;

    iput-object v0, p0, Landroidx/recyclerview/widget/X;->w:Landroid/view/View;

    new-instance v0, Landroidx/recyclerview/widget/Q;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/Q;-><init>(Landroidx/recyclerview/widget/X;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/X;->z:Landroidx/recyclerview/widget/Q;

    iput-object p1, p0, Landroidx/recyclerview/widget/X;->m:Landroidx/recyclerview/widget/U;

    return-void
.end method

.method public static j(Landroid/view/View;FFFF)Z
    .locals 1

    cmpl-float v0, p1, p3

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p3, v0

    cmpg-float p1, p1, p3

    if-gtz p1, :cond_0

    cmpl-float p1, p2, p4

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    add-float/2addr p4, p0

    cmpg-float p0, p2, p4

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/X;->l(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/X;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/h1;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/X;->c:Landroidx/recyclerview/widget/h1;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v1}, Landroidx/recyclerview/widget/X;->m(Landroidx/recyclerview/widget/h1;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, v1}, Landroidx/recyclerview/widget/X;->g(Landroidx/recyclerview/widget/h1;Z)V

    iget-object v0, p0, Landroidx/recyclerview/widget/X;->a:Ljava/util/ArrayList;

    iget-object v1, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/recyclerview/widget/X;->m:Landroidx/recyclerview/widget/U;

    iget-object p0, p0, Landroidx/recyclerview/widget/X;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0, p1}, Landroidx/recyclerview/widget/U;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/h1;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final b(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public final c(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 6

    iget-object v0, p0, Landroidx/recyclerview/widget/X;->r:Landroidx/recyclerview/widget/RecyclerView;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/X;->z:Landroidx/recyclerview/widget/Q;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/F0;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/X;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeOnItemTouchListener(Landroidx/recyclerview/widget/N0;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/X;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnChildAttachStateChangeListener(Landroidx/recyclerview/widget/L0;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/X;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    const/4 v3, 0x0

    if-ltz v2, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/S;

    iget-object v4, v3, Landroidx/recyclerview/widget/S;->g:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v4, p0, Landroidx/recyclerview/widget/X;->r:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, v3, Landroidx/recyclerview/widget/S;->e:Landroidx/recyclerview/widget/h1;

    iget-object v5, p0, Landroidx/recyclerview/widget/X;->m:Landroidx/recyclerview/widget/U;

    invoke-virtual {v5, v4, v3}, Landroidx/recyclerview/widget/U;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/h1;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/recyclerview/widget/X;->w:Landroid/view/View;

    iget-object v2, p0, Landroidx/recyclerview/widget/X;->t:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->recycle()V

    iput-object v0, p0, Landroidx/recyclerview/widget/X;->t:Landroid/view/VelocityTracker;

    :cond_2
    iget-object v2, p0, Landroidx/recyclerview/widget/X;->y:Landroidx/recyclerview/widget/V;

    if-eqz v2, :cond_3

    iput-boolean v3, v2, Landroidx/recyclerview/widget/V;->a:Z

    iput-object v0, p0, Landroidx/recyclerview/widget/X;->y:Landroidx/recyclerview/widget/V;

    :cond_3
    iget-object v2, p0, Landroidx/recyclerview/widget/X;->x:Lf1/j;

    if-eqz v2, :cond_4

    iput-object v0, p0, Landroidx/recyclerview/widget/X;->x:Lf1/j;

    :cond_4
    iput-object p1, p0, Landroidx/recyclerview/widget/X;->r:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0706a2

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/X;->f:F

    const v0, 0x7f0706a1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/X;->g:F

    iget-object p1, p0, Landroidx/recyclerview/widget/X;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/X;->q:I

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    iget-object p1, p0, Landroidx/recyclerview/widget/X;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/F0;)V

    iget-object p1, p0, Landroidx/recyclerview/widget/X;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/N0;)V

    iget-object p1, p0, Landroidx/recyclerview/widget/X;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->addOnChildAttachStateChangeListener(Landroidx/recyclerview/widget/L0;)V

    new-instance p1, Landroidx/recyclerview/widget/V;

    invoke-direct {p1, p0}, Landroidx/recyclerview/widget/V;-><init>(Landroidx/recyclerview/widget/X;)V

    iput-object p1, p0, Landroidx/recyclerview/widget/X;->y:Landroidx/recyclerview/widget/V;

    new-instance p1, Lf1/j;

    iget-object v0, p0, Landroidx/recyclerview/widget/X;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroidx/recyclerview/widget/X;->y:Landroidx/recyclerview/widget/V;

    invoke-direct {p1, v0, v1}, Lf1/j;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Landroidx/recyclerview/widget/X;->x:Lf1/j;

    :cond_5
    return-void
.end method

.method public final d(Landroidx/recyclerview/widget/h1;I)I
    .locals 8

    and-int/lit8 v0, p2, 0xc

    if-eqz v0, :cond_3

    iget v0, p0, Landroidx/recyclerview/widget/X;->h:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v2, 0x4

    const/16 v3, 0x8

    if-lez v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v4, p0, Landroidx/recyclerview/widget/X;->t:Landroid/view/VelocityTracker;

    iget-object v5, p0, Landroidx/recyclerview/widget/X;->m:Landroidx/recyclerview/widget/U;

    if-eqz v4, :cond_2

    iget v6, p0, Landroidx/recyclerview/widget/X;->l:I

    const/4 v7, -0x1

    if-le v6, v7, :cond_2

    iget v6, p0, Landroidx/recyclerview/widget/X;->g:F

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/U;->getSwipeVelocityThreshold(F)F

    move-result v6

    const/16 v7, 0x3e8

    invoke-virtual {v4, v7, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v4, p0, Landroidx/recyclerview/widget/X;->t:Landroid/view/VelocityTracker;

    iget v6, p0, Landroidx/recyclerview/widget/X;->l:I

    invoke-virtual {v4, v6}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v4

    iget-object v6, p0, Landroidx/recyclerview/widget/X;->t:Landroid/view/VelocityTracker;

    iget v7, p0, Landroidx/recyclerview/widget/X;->l:I

    invoke-virtual {v6, v7}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v6

    cmpl-float v1, v4, v1

    if-lez v1, :cond_1

    move v2, v3

    :cond_1
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    and-int v3, v2, p2

    if-eqz v3, :cond_2

    if-ne v0, v2, :cond_2

    iget v3, p0, Landroidx/recyclerview/widget/X;->f:F

    invoke-virtual {v5, v3}, Landroidx/recyclerview/widget/U;->getSwipeEscapeVelocity(F)F

    move-result v3

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_2

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Landroidx/recyclerview/widget/X;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v5, p1}, Landroidx/recyclerview/widget/U;->getSwipeThreshold(Landroidx/recyclerview/widget/h1;)F

    move-result p1

    mul-float/2addr p1, v1

    and-int/2addr p2, v0

    if-eqz p2, :cond_3

    iget p0, p0, Landroidx/recyclerview/widget/X;->h:F

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpl-float p0, p0, p1

    if-lez p0, :cond_3

    return v0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public final e(Landroid/view/MotionEvent;II)V
    .locals 8

    iget-object v0, p0, Landroidx/recyclerview/widget/X;->c:Landroidx/recyclerview/widget/h1;

    if-nez v0, :cond_e

    const/4 v0, 0x2

    if-ne p2, v0, :cond_e

    iget p2, p0, Landroidx/recyclerview/widget/X;->n:I

    if-eq p2, v0, :cond_e

    iget-object p2, p0, Landroidx/recyclerview/widget/X;->m:Landroidx/recyclerview/widget/U;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/U;->isItemViewSwipeEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/X;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Landroidx/recyclerview/widget/X;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/J0;

    move-result-object v1

    iget v3, p0, Landroidx/recyclerview/widget/X;->l:I

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    iget v6, p0, Landroidx/recyclerview/widget/X;->d:F

    sub-float/2addr v4, v6

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iget v6, p0, Landroidx/recyclerview/widget/X;->e:F

    sub-float/2addr v3, v6

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v6, p0, Landroidx/recyclerview/widget/X;->q:I

    int-to-float v6, v6

    cmpg-float v7, v4, v6

    if-gez v7, :cond_3

    cmpg-float v6, v3, v6

    if-gez v6, :cond_3

    goto :goto_0

    :cond_3
    cmpl-float v6, v4, v3

    if-lez v6, :cond_4

    invoke-virtual {v1}, Landroidx/recyclerview/widget/J0;->canScrollHorizontally()Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_0

    :cond_4
    cmpl-float v3, v3, v4

    if-lez v3, :cond_5

    invoke-virtual {v1}, Landroidx/recyclerview/widget/J0;->canScrollVertically()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/X;->h(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    iget-object v3, p0, Landroidx/recyclerview/widget/X;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/h1;

    move-result-object v5

    :goto_0
    if-nez v5, :cond_7

    return-void

    :cond_7
    iget-object v1, p0, Landroidx/recyclerview/widget/X;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, v1, v5}, Landroidx/recyclerview/widget/U;->getAbsoluteMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/h1;)I

    move-result p2

    const v1, 0xff00

    and-int/2addr p2, v1

    shr-int/lit8 p2, p2, 0x8

    if-nez p2, :cond_8

    return-void

    :cond_8
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getY(I)F

    move-result p3

    iget v3, p0, Landroidx/recyclerview/widget/X;->d:F

    sub-float/2addr v1, v3

    iget v3, p0, Landroidx/recyclerview/widget/X;->e:F

    sub-float/2addr p3, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v6, p0, Landroidx/recyclerview/widget/X;->q:I

    int-to-float v6, v6

    cmpg-float v7, v3, v6

    if-gez v7, :cond_9

    cmpg-float v6, v4, v6

    if-gez v6, :cond_9

    return-void

    :cond_9
    cmpl-float v3, v3, v4

    const/4 v4, 0x0

    if-lez v3, :cond_b

    cmpg-float p3, v1, v4

    if-gez p3, :cond_a

    and-int/lit8 p3, p2, 0x4

    if-nez p3, :cond_a

    return-void

    :cond_a
    cmpl-float p3, v1, v4

    if-lez p3, :cond_d

    and-int/lit8 p2, p2, 0x8

    if-nez p2, :cond_d

    return-void

    :cond_b
    cmpg-float v1, p3, v4

    if-gez v1, :cond_c

    and-int/lit8 v1, p2, 0x1

    if-nez v1, :cond_c

    return-void

    :cond_c
    cmpl-float p3, p3, v4

    if-lez p3, :cond_d

    and-int/2addr p2, v0

    if-nez p2, :cond_d

    return-void

    :cond_d
    iput v4, p0, Landroidx/recyclerview/widget/X;->i:F

    iput v4, p0, Landroidx/recyclerview/widget/X;->h:F

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/X;->l:I

    invoke-virtual {p0, v5, v2}, Landroidx/recyclerview/widget/X;->m(Landroidx/recyclerview/widget/h1;I)V

    :cond_e
    :goto_1
    return-void
.end method

.method public final f(Landroidx/recyclerview/widget/h1;I)I
    .locals 8

    and-int/lit8 v0, p2, 0x3

    if-eqz v0, :cond_3

    iget v0, p0, Landroidx/recyclerview/widget/X;->i:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-lez v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v4, p0, Landroidx/recyclerview/widget/X;->t:Landroid/view/VelocityTracker;

    iget-object v5, p0, Landroidx/recyclerview/widget/X;->m:Landroidx/recyclerview/widget/U;

    if-eqz v4, :cond_2

    iget v6, p0, Landroidx/recyclerview/widget/X;->l:I

    const/4 v7, -0x1

    if-le v6, v7, :cond_2

    iget v6, p0, Landroidx/recyclerview/widget/X;->g:F

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/U;->getSwipeVelocityThreshold(F)F

    move-result v6

    const/16 v7, 0x3e8

    invoke-virtual {v4, v7, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v4, p0, Landroidx/recyclerview/widget/X;->t:Landroid/view/VelocityTracker;

    iget v6, p0, Landroidx/recyclerview/widget/X;->l:I

    invoke-virtual {v4, v6}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v4

    iget-object v6, p0, Landroidx/recyclerview/widget/X;->t:Landroid/view/VelocityTracker;

    iget v7, p0, Landroidx/recyclerview/widget/X;->l:I

    invoke-virtual {v6, v7}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v6

    cmpl-float v1, v6, v1

    if-lez v1, :cond_1

    move v2, v3

    :cond_1
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v1

    and-int v3, v2, p2

    if-eqz v3, :cond_2

    if-ne v2, v0, :cond_2

    iget v3, p0, Landroidx/recyclerview/widget/X;->f:F

    invoke-virtual {v5, v3}, Landroidx/recyclerview/widget/U;->getSwipeEscapeVelocity(F)F

    move-result v3

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Landroidx/recyclerview/widget/X;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v5, p1}, Landroidx/recyclerview/widget/U;->getSwipeThreshold(Landroidx/recyclerview/widget/h1;)F

    move-result p1

    mul-float/2addr p1, v1

    and-int/2addr p2, v0

    if-eqz p2, :cond_3

    iget p0, p0, Landroidx/recyclerview/widget/X;->i:F

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpl-float p0, p0, p1

    if-lez p0, :cond_3

    return v0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public final g(Landroidx/recyclerview/widget/h1;Z)V
    .locals 3

    iget-object p0, p0, Landroidx/recyclerview/widget/X;->p:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/S;

    iget-object v2, v1, Landroidx/recyclerview/widget/S;->e:Landroidx/recyclerview/widget/h1;

    if-ne v2, p1, :cond_1

    iget-boolean p1, v1, Landroidx/recyclerview/widget/S;->k:Z

    or-int/2addr p1, p2

    iput-boolean p1, v1, Landroidx/recyclerview/widget/S;->k:Z

    iget-boolean p1, v1, Landroidx/recyclerview/widget/S;->l:Z

    if-nez p1, :cond_0

    iget-object p1, v1, Landroidx/recyclerview/widget/S;->g:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/d1;)V
    .locals 0

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    return-void
.end method

.method public final h(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v1, p0, Landroidx/recyclerview/widget/X;->c:Landroidx/recyclerview/widget/h1;

    if-eqz v1, :cond_0

    iget-object v1, v1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    iget v2, p0, Landroidx/recyclerview/widget/X;->j:F

    iget v3, p0, Landroidx/recyclerview/widget/X;->h:F

    add-float/2addr v2, v3

    iget v3, p0, Landroidx/recyclerview/widget/X;->k:F

    iget v4, p0, Landroidx/recyclerview/widget/X;->i:F

    add-float/2addr v3, v4

    invoke-static {v1, v0, p1, v2, v3}, Landroidx/recyclerview/widget/X;->j(Landroid/view/View;FFFF)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/X;->p:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/S;

    iget-object v4, v3, Landroidx/recyclerview/widget/S;->e:Landroidx/recyclerview/widget/h1;

    iget-object v4, v4, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    iget v5, v3, Landroidx/recyclerview/widget/S;->i:F

    iget v3, v3, Landroidx/recyclerview/widget/S;->j:F

    invoke-static {v4, v0, p1, v5, v3}, Landroidx/recyclerview/widget/X;->j(Landroid/view/View;FFFF)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v4

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    iget-object p0, p0, Landroidx/recyclerview/widget/X;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final i([FI)V
    .locals 5

    iget v0, p0, Landroidx/recyclerview/widget/X;->o:I

    and-int/lit8 v0, v0, 0xc

    const-string v1, " outPosition[0] = "

    const-string v2, "ItemTouchHelper"

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/recyclerview/widget/X;->j:F

    iget v4, p0, Landroidx/recyclerview/widget/X;->h:F

    add-float/2addr v0, v4

    iget-object v4, p0, Landroidx/recyclerview/widget/X;->c:Landroidx/recyclerview/widget/h1;

    iget-object v4, v4, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v0, v4

    aput v0, p1, v3

    const-string v0, "getSelectedDxDy: #1 calledBy = "

    invoke-static {p2, v0, v1}, Lt/b;->l(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    aget v0, p1, v3

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", mSelectedStartX = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroidx/recyclerview/widget/X;->j:F

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", mDx = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroidx/recyclerview/widget/X;->h:F

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", mSelected.itemView.getLeft() = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/recyclerview/widget/X;->c:Landroidx/recyclerview/widget/h1;

    iget-object v0, v0, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/X;->c:Landroidx/recyclerview/widget/h1;

    iget-object v0, v0, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    aput v0, p1, v3

    const-string v0, "getSelectedDxDy: #2 calledBy = "

    invoke-static {p2, v0, v1}, Lt/b;->l(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Landroidx/recyclerview/widget/X;->c:Landroidx/recyclerview/widget/h1;

    iget-object v0, v0, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget p2, p0, Landroidx/recyclerview/widget/X;->o:I

    and-int/lit8 p2, p2, 0x3

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    iget p2, p0, Landroidx/recyclerview/widget/X;->k:F

    iget v1, p0, Landroidx/recyclerview/widget/X;->i:F

    add-float/2addr p2, v1

    iget-object p0, p0, Landroidx/recyclerview/widget/X;->c:Landroidx/recyclerview/widget/h1;

    iget-object p0, p0, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr p2, p0

    aput p2, p1, v0

    goto :goto_1

    :cond_1
    iget-object p0, p0, Landroidx/recyclerview/widget/X;->c:Landroidx/recyclerview/widget/h1;

    iget-object p0, p0, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result p0

    aput p0, p1, v0

    :goto_1
    return-void
.end method

.method public final k(Landroidx/recyclerview/widget/h1;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    iget-object v1, v0, Landroidx/recyclerview/widget/X;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget v1, v0, Landroidx/recyclerview/widget/X;->n:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    return-void

    :cond_1
    iget-object v1, v0, Landroidx/recyclerview/widget/X;->m:Landroidx/recyclerview/widget/U;

    invoke-virtual {v1, v9}, Landroidx/recyclerview/widget/U;->getMoveThreshold(Landroidx/recyclerview/widget/h1;)F

    move-result v3

    iget v4, v0, Landroidx/recyclerview/widget/X;->j:F

    iget v5, v0, Landroidx/recyclerview/widget/X;->h:F

    add-float/2addr v4, v5

    float-to-int v7, v4

    iget v4, v0, Landroidx/recyclerview/widget/X;->k:F

    iget v5, v0, Landroidx/recyclerview/widget/X;->i:F

    add-float/2addr v4, v5

    float-to-int v8, v4

    iget-object v4, v9, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int v4, v8, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, v9, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    iget-object v4, v9, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int v4, v7, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, v9, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    cmpg-float v3, v4, v5

    if-gez v3, :cond_2

    return-void

    :cond_2
    iget-object v3, v0, Landroidx/recyclerview/widget/X;->u:Ljava/util/ArrayList;

    if-nez v3, :cond_3

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Landroidx/recyclerview/widget/X;->u:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Landroidx/recyclerview/widget/X;->v:Ljava/util/ArrayList;

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, v0, Landroidx/recyclerview/widget/X;->v:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    :goto_0
    invoke-virtual {v1}, Landroidx/recyclerview/widget/U;->getBoundingBoxMargin()I

    move-result v3

    iget v4, v0, Landroidx/recyclerview/widget/X;->j:F

    iget v5, v0, Landroidx/recyclerview/widget/X;->h:F

    add-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    sub-int/2addr v4, v3

    iget v5, v0, Landroidx/recyclerview/widget/X;->k:F

    iget v6, v0, Landroidx/recyclerview/widget/X;->i:F

    add-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    sub-int/2addr v5, v3

    iget-object v6, v9, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v6, v4

    mul-int/2addr v3, v2

    add-int/2addr v6, v3

    iget-object v10, v9, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int/2addr v10, v5

    add-int/2addr v10, v3

    add-int v3, v4, v6

    div-int/2addr v3, v2

    add-int v11, v5, v10

    div-int/2addr v11, v2

    iget-object v12, v0, Landroidx/recyclerview/widget/X;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/J0;

    move-result-object v12

    invoke-virtual {v12}, Landroidx/recyclerview/widget/J0;->getChildCount()I

    move-result v13

    new-instance v14, Landroid/graphics/Rect;

    iget-object v15, v0, Landroidx/recyclerview/widget/X;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v15}, Landroid/view/View;->getWidth()I

    move-result v15

    iget-object v2, v0, Landroidx/recyclerview/widget/X;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    move/from16 v16, v7

    const/4 v7, 0x0

    invoke-direct {v14, v7, v7, v15, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v4, v5, v6, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    instance-of v15, v12, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/16 v17, 0x1

    if-eqz v15, :cond_7

    invoke-virtual {v12}, Landroidx/recyclerview/widget/J0;->canScrollVertically()Z

    move-result v15

    if-eqz v15, :cond_7

    if-gez v4, :cond_4

    iget v15, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v15, v4

    iput v15, v2, Landroid/graphics/Rect;->right:I

    iput v7, v2, Landroid/graphics/Rect;->left:I

    move v4, v7

    goto :goto_1

    :cond_4
    move/from16 v4, v17

    :goto_1
    iget-object v15, v0, Landroidx/recyclerview/widget/X;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v15}, Landroid/view/View;->getWidth()I

    move-result v15

    if-le v6, v15, :cond_5

    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget-object v15, v0, Landroidx/recyclerview/widget/X;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v15}, Landroid/view/View;->getWidth()I

    move-result v15

    sub-int/2addr v6, v15

    sub-int/2addr v4, v6

    iput v4, v2, Landroid/graphics/Rect;->left:I

    iget-object v4, v0, Landroidx/recyclerview/widget/X;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    iput v4, v2, Landroid/graphics/Rect;->right:I

    move v4, v7

    :cond_5
    if-gez v5, :cond_6

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->bottom:I

    iput v7, v2, Landroid/graphics/Rect;->top:I

    move v4, v7

    :cond_6
    iget-object v5, v0, Landroidx/recyclerview/widget/X;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    if-le v10, v5, :cond_8

    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget-object v5, v0, Landroidx/recyclerview/widget/X;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v10, v5

    sub-int/2addr v4, v10

    iput v4, v2, Landroid/graphics/Rect;->top:I

    iget-object v4, v0, Landroidx/recyclerview/widget/X;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    iput v4, v2, Landroid/graphics/Rect;->bottom:I

    move v4, v7

    goto :goto_2

    :cond_7
    move/from16 v4, v17

    :cond_8
    :goto_2
    move v5, v7

    :goto_3
    if-ge v5, v13, :cond_f

    invoke-virtual {v12, v5}, Landroidx/recyclerview/widget/J0;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_9

    :goto_4
    move-object/from16 v18, v12

    move/from16 v19, v13

    goto/16 :goto_6

    :cond_9
    iget-object v10, v9, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    if-ne v6, v10, :cond_a

    goto :goto_4

    :cond_a
    new-instance v10, Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v15

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v7

    move-object/from16 v18, v12

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v12

    move/from16 v19, v13

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v13

    invoke-direct {v10, v15, v7, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {v2, v10}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v7

    if-nez v7, :cond_b

    goto :goto_6

    :cond_b
    if-nez v4, :cond_c

    invoke-virtual {v14, v10}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v7

    if-nez v7, :cond_c

    goto :goto_6

    :cond_c
    iget-object v7, v0, Landroidx/recyclerview/widget/X;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v7, v6}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/h1;

    move-result-object v7

    iget-object v10, v0, Landroidx/recyclerview/widget/X;->r:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v12, v0, Landroidx/recyclerview/widget/X;->c:Landroidx/recyclerview/widget/h1;

    invoke-virtual {v1, v10, v12, v7}, Landroidx/recyclerview/widget/U;->canDropOver(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/h1;Landroidx/recyclerview/widget/h1;)Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v10

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v12

    add-int/2addr v12, v10

    const/4 v10, 0x2

    div-int/2addr v12, v10

    sub-int v12, v3, v12

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v13

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    add-int/2addr v6, v13

    div-int/2addr v6, v10

    sub-int v6, v11, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    mul-int/2addr v12, v12

    mul-int/2addr v6, v6

    add-int/2addr v6, v12

    iget-object v12, v0, Landroidx/recyclerview/widget/X;->u:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x0

    const/4 v15, 0x0

    :goto_5
    if-ge v13, v12, :cond_d

    iget-object v10, v0, Landroidx/recyclerview/widget/X;->v:Ljava/util/ArrayList;

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-le v6, v10, :cond_d

    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v13, v13, 0x1

    const/4 v10, 0x2

    goto :goto_5

    :cond_d
    iget-object v10, v0, Landroidx/recyclerview/widget/X;->u:Ljava/util/ArrayList;

    invoke-virtual {v10, v15, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v7, v0, Landroidx/recyclerview/widget/X;->v:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v7, v15, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_e
    :goto_6
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v12, v18

    move/from16 v13, v19

    const/4 v7, 0x0

    goto/16 :goto_3

    :cond_f
    iget-object v2, v0, Landroidx/recyclerview/widget/X;->u:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_10

    return-void

    :cond_10
    move/from16 v7, v16

    invoke-virtual {v1, v9, v2, v7, v8}, Landroidx/recyclerview/widget/U;->chooseDropTarget(Landroidx/recyclerview/widget/h1;Ljava/util/List;II)Landroidx/recyclerview/widget/h1;

    move-result-object v5

    if-nez v5, :cond_11

    iget-object v1, v0, Landroidx/recyclerview/widget/X;->u:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v0, Landroidx/recyclerview/widget/X;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void

    :cond_11
    invoke-virtual {v5}, Landroidx/recyclerview/widget/h1;->getAbsoluteAdapterPosition()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/h1;->getAbsoluteAdapterPosition()I

    move-result v4

    iget-object v2, v0, Landroidx/recyclerview/widget/X;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v2, v9, v5}, Landroidx/recyclerview/widget/U;->onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/h1;Landroidx/recyclerview/widget/h1;)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, v0, Landroidx/recyclerview/widget/X;->m:Landroidx/recyclerview/widget/U;

    iget-object v2, v0, Landroidx/recyclerview/widget/X;->r:Landroidx/recyclerview/widget/RecyclerView;

    move-object/from16 v3, p1

    move v6, v10

    invoke-virtual/range {v1 .. v8}, Landroidx/recyclerview/widget/U;->onMoved(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/h1;ILandroidx/recyclerview/widget/h1;III)V

    iget-object v1, v9, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    const/16 v2, 0x29

    invoke-static {v2}, LG5/a3;->d(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->performHapticFeedback(I)Z

    iget-object v1, v0, Landroidx/recyclerview/widget/X;->c:Landroidx/recyclerview/widget/h1;

    iget-object v1, v1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    iget-object v0, v0, Landroidx/recyclerview/widget/X;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    add-int/lit8 v10, v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x7f1404a9

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_12
    return-void
.end method

.method public final l(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/X;->w:Landroid/view/View;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/recyclerview/widget/X;->w:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public final m(Landroidx/recyclerview/widget/h1;I)V
    .locals 22

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move/from16 v12, p2

    const/16 v13, 0x8

    iget-object v0, v10, Landroidx/recyclerview/widget/X;->c:Landroidx/recyclerview/widget/h1;

    if-ne v11, v0, :cond_0

    iget v0, v10, Landroidx/recyclerview/widget/X;->n:I

    if-ne v12, v0, :cond_0

    return-void

    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, v10, Landroidx/recyclerview/widget/X;->B:J

    iget v3, v10, Landroidx/recyclerview/widget/X;->n:I

    const/4 v14, 0x1

    invoke-virtual {v10, v11, v14}, Landroidx/recyclerview/widget/X;->g(Landroidx/recyclerview/widget/h1;Z)V

    iput v12, v10, Landroidx/recyclerview/widget/X;->n:I

    const/4 v15, 0x2

    if-ne v12, v15, :cond_2

    if-eqz v11, :cond_1

    iget-object v0, v11, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    iput-object v0, v10, Landroidx/recyclerview/widget/X;->w:Landroid/view/View;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must pass a ViewHolder when dragging"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    mul-int/lit8 v0, v12, 0x8

    add-int/2addr v0, v13

    shl-int v0, v14, v0

    add-int/lit8 v16, v0, -0x1

    iget-object v9, v10, Landroidx/recyclerview/widget/X;->c:Landroidx/recyclerview/widget/h1;

    iget-object v8, v10, Landroidx/recyclerview/widget/X;->m:Landroidx/recyclerview/widget/U;

    const/4 v7, 0x0

    if-eqz v9, :cond_11

    iget-object v0, v9, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v6, 0x0

    if-eqz v0, :cond_10

    if-ne v3, v15, :cond_3

    move v5, v7

    goto/16 :goto_3

    :cond_3
    iget v0, v10, Landroidx/recyclerview/widget/X;->n:I

    if-ne v0, v15, :cond_5

    :cond_4
    :goto_1
    move v2, v7

    goto :goto_2

    :cond_5
    iget-object v0, v10, Landroidx/recyclerview/widget/X;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v8, v0, v9}, Landroidx/recyclerview/widget/U;->getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/h1;)I

    move-result v0

    iget-object v1, v10, Landroidx/recyclerview/widget/X;->r:Landroidx/recyclerview/widget/RecyclerView;

    sget-object v2, Lf1/W;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    invoke-virtual {v8, v0, v1}, Landroidx/recyclerview/widget/U;->convertToAbsoluteDirection(II)I

    move-result v1

    const v2, 0xff00

    and-int/2addr v1, v2

    shr-int/2addr v1, v13

    if-nez v1, :cond_6

    goto :goto_1

    :cond_6
    and-int/2addr v0, v2

    shr-int/2addr v0, v13

    iget v2, v10, Landroidx/recyclerview/widget/X;->h:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v4, v10, Landroidx/recyclerview/widget/X;->i:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v2, v2, v4

    if-lez v2, :cond_8

    invoke-virtual {v10, v9, v1}, Landroidx/recyclerview/widget/X;->d(Landroidx/recyclerview/widget/h1;I)I

    move-result v2

    if-lez v2, :cond_7

    and-int/2addr v0, v2

    if-nez v0, :cond_a

    iget-object v0, v10, Landroidx/recyclerview/widget/X;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    invoke-static {v2, v0}, Landroidx/recyclerview/widget/U;->convertToRelativeDirection(II)I

    move-result v2

    goto :goto_2

    :cond_7
    invoke-virtual {v10, v9, v1}, Landroidx/recyclerview/widget/X;->f(Landroidx/recyclerview/widget/h1;I)I

    move-result v2

    if-lez v2, :cond_4

    goto :goto_2

    :cond_8
    invoke-virtual {v10, v9, v1}, Landroidx/recyclerview/widget/X;->f(Landroidx/recyclerview/widget/h1;I)I

    move-result v2

    if-lez v2, :cond_9

    goto :goto_2

    :cond_9
    invoke-virtual {v10, v9, v1}, Landroidx/recyclerview/widget/X;->d(Landroidx/recyclerview/widget/h1;I)I

    move-result v2

    if-lez v2, :cond_4

    and-int/2addr v0, v2

    if-nez v0, :cond_a

    iget-object v0, v10, Landroidx/recyclerview/widget/X;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    invoke-static {v2, v0}, Landroidx/recyclerview/widget/U;->convertToRelativeDirection(II)I

    move-result v2

    :cond_a
    :goto_2
    move v5, v2

    :goto_3
    iget-object v0, v10, Landroidx/recyclerview/widget/X;->t:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    iput-object v6, v10, Landroidx/recyclerview/widget/X;->t:Landroid/view/VelocityTracker;

    :cond_b
    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eq v5, v14, :cond_d

    if-eq v5, v15, :cond_d

    if-eq v5, v0, :cond_c

    if-eq v5, v13, :cond_c

    const/16 v2, 0x10

    if-eq v5, v2, :cond_c

    const/16 v2, 0x20

    if-eq v5, v2, :cond_c

    move/from16 v17, v1

    move/from16 v18, v17

    goto :goto_4

    :cond_c
    iget v2, v10, Landroidx/recyclerview/widget/X;->h:F

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    iget-object v4, v10, Landroidx/recyclerview/widget/X;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v2, v4

    move/from16 v18, v1

    move/from16 v17, v2

    goto :goto_4

    :cond_d
    iget v2, v10, Landroidx/recyclerview/widget/X;->i:F

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    iget-object v4, v10, Landroidx/recyclerview/widget/X;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v2, v4

    move/from16 v17, v1

    move/from16 v18, v2

    :goto_4
    if-ne v3, v15, :cond_e

    iget-object v0, v10, Landroidx/recyclerview/widget/X;->c:Landroidx/recyclerview/widget/h1;

    iget-object v0, v0, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    iget-object v1, v10, Landroidx/recyclerview/widget/X;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v10, Landroidx/recyclerview/widget/X;->c:Landroidx/recyclerview/widget/h1;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/h1;->getLayoutPosition()I

    move-result v2

    add-int/2addr v2, v14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v4, 0x7f1404aa

    invoke-virtual {v1, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    move v4, v13

    goto :goto_5

    :cond_e
    if-lez v5, :cond_f

    move v4, v15

    goto :goto_5

    :cond_f
    move v4, v0

    :goto_5
    iget-object v0, v10, Landroidx/recyclerview/widget/X;->b:[F

    const/4 v1, 0x3

    invoke-virtual {v10, v0, v1}, Landroidx/recyclerview/widget/X;->i([FI)V

    aget v19, v0, v7

    aget v20, v0, v14

    new-instance v2, Landroidx/recyclerview/widget/S;

    move-object v0, v2

    move-object/from16 v1, p0

    move-object v14, v2

    move-object v2, v9

    move v15, v4

    move/from16 v4, v19

    move/from16 v21, v5

    move/from16 v5, v20

    move-object v13, v6

    move/from16 v6, v17

    move v13, v7

    move/from16 v7, v18

    move-object v13, v8

    move/from16 v8, v21

    move-object/from16 v21, v9

    invoke-direct/range {v0 .. v9}, Landroidx/recyclerview/widget/S;-><init>(Landroidx/recyclerview/widget/X;Landroidx/recyclerview/widget/h1;IFFFFILandroidx/recyclerview/widget/h1;)V

    iget-object v0, v10, Landroidx/recyclerview/widget/X;->r:Landroidx/recyclerview/widget/RecyclerView;

    sub-float v1, v17, v19

    sub-float v2, v18, v20

    invoke-virtual {v13, v0, v15, v1, v2}, Landroidx/recyclerview/widget/U;->getAnimationDuration(Landroidx/recyclerview/widget/RecyclerView;IFF)J

    move-result-wide v0

    const-string v2, "select: setDuration = "

    const-string v3, "ItemTouchHelper"

    invoke-static {v0, v1, v2, v3}, Landroidx/recyclerview/widget/P;->k(JLjava/lang/String;Ljava/lang/String;)V

    iget-object v2, v14, Landroidx/recyclerview/widget/S;->g:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, v10, Landroidx/recyclerview/widget/X;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v14, Landroidx/recyclerview/widget/S;->e:Landroidx/recyclerview/widget/h1;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/h1;->setIsRecyclable(Z)V

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    move-object/from16 v0, v21

    const/4 v1, 0x0

    const/4 v7, 0x1

    goto :goto_6

    :cond_10
    move-object v13, v8

    move-object v0, v9

    iget-object v1, v0, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {v10, v1}, Landroidx/recyclerview/widget/X;->l(Landroid/view/View;)V

    iget-object v1, v10, Landroidx/recyclerview/widget/X;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v13, v1, v0}, Landroidx/recyclerview/widget/U;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/h1;)V

    const/4 v1, 0x0

    const/4 v7, 0x0

    :goto_6
    iput-object v1, v10, Landroidx/recyclerview/widget/X;->c:Landroidx/recyclerview/widget/h1;

    goto :goto_7

    :cond_11
    move-object v13, v8

    move-object v0, v9

    const/4 v7, 0x0

    :goto_7
    if-eqz v11, :cond_12

    iget-object v1, v10, Landroidx/recyclerview/widget/X;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v13, v1, v11}, Landroidx/recyclerview/widget/U;->getAbsoluteMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/h1;)I

    move-result v1

    and-int v1, v1, v16

    iget v2, v10, Landroidx/recyclerview/widget/X;->n:I

    const/16 v3, 0x8

    mul-int/2addr v2, v3

    shr-int/2addr v1, v2

    iput v1, v10, Landroidx/recyclerview/widget/X;->o:I

    iget-object v1, v11, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    iput v1, v10, Landroidx/recyclerview/widget/X;->j:F

    iget-object v1, v11, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    iput v1, v10, Landroidx/recyclerview/widget/X;->k:F

    iput-object v11, v10, Landroidx/recyclerview/widget/X;->c:Landroidx/recyclerview/widget/h1;

    :cond_12
    iget-object v1, v10, Landroidx/recyclerview/widget/X;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_14

    iget-object v2, v10, Landroidx/recyclerview/widget/X;->c:Landroidx/recyclerview/widget/h1;

    if-eqz v2, :cond_13

    const/4 v2, 0x1

    goto :goto_8

    :cond_13
    const/4 v2, 0x0

    :goto_8
    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_14
    if-nez v7, :cond_15

    iget-object v1, v10, Landroidx/recyclerview/widget/X;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/J0;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/J0;->requestSimpleAnimationsInNextLayout()V

    :cond_15
    iget v1, v10, Landroidx/recyclerview/widget/X;->n:I

    if-nez v1, :cond_16

    invoke-virtual {v13, v0, v1}, Landroidx/recyclerview/widget/U;->onSelectedChanged(Landroidx/recyclerview/widget/h1;I)V

    :goto_9
    const/4 v0, 0x2

    goto :goto_a

    :cond_16
    iget-object v0, v10, Landroidx/recyclerview/widget/X;->c:Landroidx/recyclerview/widget/h1;

    invoke-virtual {v13, v0, v1}, Landroidx/recyclerview/widget/U;->onSelectedChanged(Landroidx/recyclerview/widget/h1;I)V

    goto :goto_9

    :goto_a
    if-ne v12, v0, :cond_17

    iget-object v0, v10, Landroidx/recyclerview/widget/X;->c:Landroidx/recyclerview/widget/h1;

    iget-object v0, v0, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    iget-object v0, v10, Landroidx/recyclerview/widget/X;->c:Landroidx/recyclerview/widget/h1;

    iget-object v0, v0, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    iget-object v1, v10, Landroidx/recyclerview/widget/X;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v10, Landroidx/recyclerview/widget/X;->c:Landroidx/recyclerview/widget/h1;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/h1;->getLayoutPosition()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x7f1404ab

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_17
    iget-object v0, v10, Landroidx/recyclerview/widget/X;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final n(Landroidx/recyclerview/widget/h1;)V
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/X;->m:Landroidx/recyclerview/widget/U;

    iget-object v1, p0, Landroidx/recyclerview/widget/X;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/U;->hasDragFlag(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/h1;)Z

    move-result v0

    const-string v1, "ItemTouchHelper"

    if-nez v0, :cond_0

    const-string v0, "Start drag has been called but dragging is not enabled"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    iget-object p0, p0, Landroidx/recyclerview/widget/X;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/h1;->getLayoutPosition()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const v1, 0x7f1404ac

    invoke-virtual {p0, v1, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v2, p0, Landroidx/recyclerview/widget/X;->r:Landroidx/recyclerview/widget/RecyclerView;

    if-eq v0, v2, :cond_1

    const-string p0, "Start drag has been called with a view holder which is not a child of the RecyclerView which is controlled by this ItemTouchHelper."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/X;->t:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    :cond_2
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroidx/recyclerview/widget/X;->t:Landroid/view/VelocityTracker;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/X;->i:F

    iput v0, p0, Landroidx/recyclerview/widget/X;->h:F

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/X;->m(Landroidx/recyclerview/widget/h1;I)V

    return-void
.end method

.method public final o(Landroid/view/MotionEvent;II)V
    .locals 2

    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iget p3, p0, Landroidx/recyclerview/widget/X;->d:F

    sub-float p3, v0, p3

    iput p3, p0, Landroidx/recyclerview/widget/X;->h:F

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "updateDxDy: mDx = "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/recyclerview/widget/X;->h:F

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " = (x = "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " - mInitialTouchX = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroidx/recyclerview/widget/X;->d:F

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "ItemTouchHelper"

    invoke-static {v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget p3, p0, Landroidx/recyclerview/widget/X;->e:F

    sub-float/2addr p1, p3

    iput p1, p0, Landroidx/recyclerview/widget/X;->i:F

    and-int/lit8 p1, p2, 0x4

    const/4 p3, 0x0

    if-nez p1, :cond_0

    iget p1, p0, Landroidx/recyclerview/widget/X;->h:F

    invoke-static {p3, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/X;->h:F

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "updateDxDy: direction LEFT mDx = "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/recyclerview/widget/X;->h:F

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    and-int/lit8 p1, p2, 0x8

    if-nez p1, :cond_1

    iget p1, p0, Landroidx/recyclerview/widget/X;->h:F

    invoke-static {p3, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/X;->h:F

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "updateDxDy: direction RIGHT mDx = "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/recyclerview/widget/X;->h:F

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    and-int/lit8 p1, p2, 0x1

    if-nez p1, :cond_2

    iget p1, p0, Landroidx/recyclerview/widget/X;->i:F

    invoke-static {p3, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/X;->i:F

    :cond_2
    and-int/lit8 p1, p2, 0x2

    if-nez p1, :cond_3

    iget p1, p0, Landroidx/recyclerview/widget/X;->i:F

    invoke-static {p3, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/X;->i:F

    :cond_3
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/d1;)V
    .locals 9

    iget-object p3, p0, Landroidx/recyclerview/widget/X;->c:Landroidx/recyclerview/widget/h1;

    if-eqz p3, :cond_0

    iget-object p3, p0, Landroidx/recyclerview/widget/X;->b:[F

    const/4 v0, 0x2

    invoke-virtual {p0, p3, v0}, Landroidx/recyclerview/widget/X;->i([FI)V

    const/4 v0, 0x0

    aget v0, p3, v0

    const/4 v1, 0x1

    aget p3, p3, v1

    move v8, p3

    move v7, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move v7, v0

    move v8, v7

    :goto_0
    iget-object v4, p0, Landroidx/recyclerview/widget/X;->c:Landroidx/recyclerview/widget/h1;

    iget-object v5, p0, Landroidx/recyclerview/widget/X;->p:Ljava/util/ArrayList;

    iget v6, p0, Landroidx/recyclerview/widget/X;->n:I

    iget-object v1, p0, Landroidx/recyclerview/widget/X;->m:Landroidx/recyclerview/widget/U;

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v8}, Landroidx/recyclerview/widget/U;->onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/h1;Ljava/util/List;IFF)V

    return-void
.end method

.method public final onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/d1;)V
    .locals 10

    iget-object p3, p0, Landroidx/recyclerview/widget/X;->c:Landroidx/recyclerview/widget/h1;

    if-eqz p3, :cond_0

    iget-object p3, p0, Landroidx/recyclerview/widget/X;->b:[F

    const/4 v0, 0x1

    invoke-virtual {p0, p3, v0}, Landroidx/recyclerview/widget/X;->i([FI)V

    const/4 v1, 0x0

    aget v1, p3, v1

    aget p3, p3, v0

    move v9, p3

    move v8, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    move v8, v1

    move v9, v8

    :goto_0
    iget-object v5, p0, Landroidx/recyclerview/widget/X;->c:Landroidx/recyclerview/widget/h1;

    iget-object v6, p0, Landroidx/recyclerview/widget/X;->p:Ljava/util/ArrayList;

    iget v7, p0, Landroidx/recyclerview/widget/X;->n:I

    iget-object v2, p0, Landroidx/recyclerview/widget/X;->m:Landroidx/recyclerview/widget/U;

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v2 .. v9}, Landroidx/recyclerview/widget/U;->onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/h1;Ljava/util/List;IFF)V

    return-void
.end method
