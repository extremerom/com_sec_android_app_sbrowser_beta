.class public final Landroidx/recyclerview/widget/Q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/N0;


# instance fields
.field public final synthetic a:Landroidx/recyclerview/widget/X;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/X;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/Q;->a:Landroidx/recyclerview/widget/X;

    return-void
.end method


# virtual methods
.method public final onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 8

    iget-object p0, p0, Landroidx/recyclerview/widget/Q;->a:Landroidx/recyclerview/widget/X;

    iget-object p1, p0, Landroidx/recyclerview/widget/X;->x:Lf1/j;

    iget-object p1, p1, Lf1/j;->a:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_5

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/X;->l:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/X;->d:F

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "onInterceptTouchEvent: #1 set mInitialTouchX = "

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Landroidx/recyclerview/widget/X;->d:F

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "ItemTouchHelper"

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/X;->e:F

    iget-object p1, p0, Landroidx/recyclerview/widget/X;->t:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    :cond_0
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p1

    iput-object p1, p0, Landroidx/recyclerview/widget/X;->t:Landroid/view/VelocityTracker;

    iget-object p1, p0, Landroidx/recyclerview/widget/X;->c:Landroidx/recyclerview/widget/h1;

    if-nez p1, :cond_8

    iget-object p1, p0, Landroidx/recyclerview/widget/X;->p:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/X;->h(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v1

    :goto_0
    if-ltz v5, :cond_3

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/S;

    iget-object v7, v6, Landroidx/recyclerview/widget/S;->e:Landroidx/recyclerview/widget/h1;

    iget-object v7, v7, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    if-ne v7, v4, :cond_2

    move-object v0, v6

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz v0, :cond_8

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v4, "onInterceptTouchEvent: #2 mInitialTouchX = "

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Landroidx/recyclerview/widget/X;->d:F

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " animation.mX = "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Landroidx/recyclerview/widget/S;->i:F

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p0, Landroidx/recyclerview/widget/X;->d:F

    iget v4, v0, Landroidx/recyclerview/widget/S;->i:F

    sub-float/2addr p1, v4

    iput p1, p0, Landroidx/recyclerview/widget/X;->d:F

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v4, "onInterceptTouchEvent: #2 set mInitialTouchX = "

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Landroidx/recyclerview/widget/X;->d:F

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p0, Landroidx/recyclerview/widget/X;->e:F

    iget v3, v0, Landroidx/recyclerview/widget/S;->j:F

    sub-float/2addr p1, v3

    iput p1, p0, Landroidx/recyclerview/widget/X;->e:F

    iget-object p1, v0, Landroidx/recyclerview/widget/S;->e:Landroidx/recyclerview/widget/h1;

    invoke-virtual {p0, p1, v1}, Landroidx/recyclerview/widget/X;->g(Landroidx/recyclerview/widget/h1;Z)V

    iget-object v3, p0, Landroidx/recyclerview/widget/X;->a:Ljava/util/ArrayList;

    iget-object v4, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroidx/recyclerview/widget/X;->m:Landroidx/recyclerview/widget/U;

    iget-object v4, p0, Landroidx/recyclerview/widget/X;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v4, p1}, Landroidx/recyclerview/widget/U;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/h1;)V

    :cond_4
    iget v0, v0, Landroidx/recyclerview/widget/S;->f:I

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/X;->m(Landroidx/recyclerview/widget/h1;I)V

    iget p1, p0, Landroidx/recyclerview/widget/X;->o:I

    invoke-virtual {p0, p2, p1, v2}, Landroidx/recyclerview/widget/X;->o(Landroid/view/MotionEvent;II)V

    goto :goto_3

    :cond_5
    const/4 v3, 0x3

    const/4 v4, -0x1

    if-eq p1, v3, :cond_7

    if-ne p1, v1, :cond_6

    goto :goto_2

    :cond_6
    iget v0, p0, Landroidx/recyclerview/widget/X;->l:I

    if-eq v0, v4, :cond_8

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ltz v0, :cond_8

    invoke-virtual {p0, p2, p1, v0}, Landroidx/recyclerview/widget/X;->e(Landroid/view/MotionEvent;II)V

    goto :goto_3

    :cond_7
    :goto_2
    iput v4, p0, Landroidx/recyclerview/widget/X;->l:I

    invoke-virtual {p0, v0, v2}, Landroidx/recyclerview/widget/X;->m(Landroidx/recyclerview/widget/h1;I)V

    :cond_8
    :goto_3
    iget-object p1, p0, Landroidx/recyclerview/widget/X;->t:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_9

    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_9
    iget-object p0, p0, Landroidx/recyclerview/widget/X;->c:Landroidx/recyclerview/widget/h1;

    if-eqz p0, :cond_a

    goto :goto_4

    :cond_a
    move v1, v2

    :goto_4
    return v1
.end method

.method public final onRequestDisallowInterceptTouchEvent(Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    const/4 v0, 0x0

    iget-object p0, p0, Landroidx/recyclerview/widget/Q;->a:Landroidx/recyclerview/widget/X;

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/X;->m(Landroidx/recyclerview/widget/h1;I)V

    return-void
.end method

.method public final onTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 7

    iget-object p0, p0, Landroidx/recyclerview/widget/Q;->a:Landroidx/recyclerview/widget/X;

    iget-object p1, p0, Landroidx/recyclerview/widget/X;->x:Lf1/j;

    iget-object p1, p1, Lf1/j;->a:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object p1, p0, Landroidx/recyclerview/widget/X;->t:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_0
    iget p1, p0, Landroidx/recyclerview/widget/X;->l:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    iget v1, p0, Landroidx/recyclerview/widget/X;->l:I

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    if-ltz v1, :cond_2

    invoke-virtual {p0, p2, p1, v1}, Landroidx/recyclerview/widget/X;->e(Landroid/view/MotionEvent;II)V

    :cond_2
    iget-object v2, p0, Landroidx/recyclerview/widget/X;->c:Landroidx/recyclerview/widget/h1;

    if-nez v2, :cond_3

    return-void

    :cond_3
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq p1, v4, :cond_9

    const/4 v6, 0x2

    if-eq p1, v6, :cond_7

    const/4 v1, 0x3

    if-eq p1, v1, :cond_6

    const/4 v0, 0x6

    if-eq p1, v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iget v1, p0, Landroidx/recyclerview/widget/X;->l:I

    if-ne v0, v1, :cond_a

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    move v4, v5

    :goto_0
    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/X;->l:I

    iget v0, p0, Landroidx/recyclerview/widget/X;->o:I

    invoke-virtual {p0, p2, v0, p1}, Landroidx/recyclerview/widget/X;->o(Landroid/view/MotionEvent;II)V

    goto :goto_2

    :cond_6
    iget-object p1, p0, Landroidx/recyclerview/widget/X;->t:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_1

    :cond_7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getButtonState()I

    move-result p1

    const/16 v4, 0x20

    if-ne p1, v4, :cond_8

    invoke-virtual {p0, v3, v5}, Landroidx/recyclerview/widget/X;->m(Landroidx/recyclerview/widget/h1;I)V

    iput v0, p0, Landroidx/recyclerview/widget/X;->l:I

    goto :goto_2

    :cond_8
    if-ltz v1, :cond_a

    iget p1, p0, Landroidx/recyclerview/widget/X;->o:I

    invoke-virtual {p0, p2, p1, v1}, Landroidx/recyclerview/widget/X;->o(Landroid/view/MotionEvent;II)V

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/X;->k(Landroidx/recyclerview/widget/h1;)V

    iget-object p1, p0, Landroidx/recyclerview/widget/X;->r:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Landroidx/recyclerview/widget/X;->s:Landroidx/recyclerview/widget/F;

    invoke-virtual {p1, p2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {p2}, Landroidx/recyclerview/widget/F;->run()V

    iget-object p0, p0, Landroidx/recyclerview/widget/X;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_2

    :cond_9
    :goto_1
    invoke-virtual {p0, v3, v5}, Landroidx/recyclerview/widget/X;->m(Landroidx/recyclerview/widget/h1;I)V

    iput v0, p0, Landroidx/recyclerview/widget/X;->l:I

    :cond_a
    :goto_2
    return-void
.end method
