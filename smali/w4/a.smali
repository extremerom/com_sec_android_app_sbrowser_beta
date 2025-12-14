.class public final Lw4/a;
.super Lw4/b;
.source "SourceFile"


# instance fields
.field public e:Landroid/graphics/Matrix;

.field public f:Landroid/graphics/Matrix;

.field public g:Ly4/c;

.field public h:Ly4/c;

.field public i:F

.field public j:F

.field public k:F

.field public l:Lv4/b;

.field public m:Landroid/view/VelocityTracker;

.field public n:J

.field public o:Ly4/c;

.field public p:Ly4/c;

.field public q:F

.field public r:F


# direct methods
.method public static d(Landroid/view/MotionEvent;)F
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v1, v3

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p0

    sub-float/2addr v0, p0

    mul-float/2addr v1, v1

    mul-float/2addr v0, v0

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method


# virtual methods
.method public final a(FF)Ly4/c;
    .locals 3

    iget-object v0, p0, Lw4/b;->d:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lp4/d;->getViewPortHandler()Ly4/h;

    move-result-object v1

    iget-object v2, v1, Ly4/h;->b:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr p1, v2

    invoke-virtual {p0}, Lw4/a;->b()V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr p0, p2

    iget p2, v1, Ly4/h;->d:F

    iget-object v0, v1, Ly4/h;->b:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p2, v0

    sub-float/2addr p0, p2

    neg-float p0, p0

    invoke-static {p1, p0}, Ly4/c;->b(FF)Ly4/c;

    move-result-object p0

    return-object p0
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lw4/a;->l:Lv4/b;

    iget-object v1, p0, Lw4/b;->d:Lcom/github/mikephil/charting/charts/BarChart;

    if-nez v0, :cond_0

    iget-object v0, v1, Lp4/c;->k0:Lq4/r;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v1, Lp4/c;->l0:Lq4/r;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    iget-object p0, p0, Lw4/a;->l:Lv4/b;

    if-eqz p0, :cond_1

    check-cast p0, Lr4/b;

    iget-object p0, p0, Lr4/b;->d:Lq4/p;

    invoke-virtual {v1, p0}, Lp4/c;->g(Lq4/p;)V

    :cond_1
    return-void
.end method

.method public final c(Landroid/view/MotionEvent;)V
    .locals 2

    iget-object v0, p0, Lw4/a;->f:Landroid/graphics/Matrix;

    iget-object v1, p0, Lw4/a;->e:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lw4/a;->g:Ly4/c;

    iput v0, v1, Ly4/c;->b:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, v1, Ly4/c;->c:F

    iget-object v0, p0, Lw4/b;->d:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Lp4/d;->b(FF)Lt4/c;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, v0, Lp4/d;->b:Lr4/d;

    check-cast v0, Lr4/c;

    iget p1, p1, Lt4/c;->e:I

    invoke-virtual {v0, p1}, Lr4/d;->b(I)Lv4/c;

    move-result-object p1

    check-cast p1, Lv4/b;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lw4/a;->l:Lv4/b;

    return-void
.end method

.method public final onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 9

    iget-object v0, p0, Lw4/b;->d:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lp4/d;->getOnChartGestureListener()Lw4/c;

    iget-boolean v1, v0, Lp4/c;->F:Z

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lp4/d;->getData()Lr4/d;

    move-result-object v1

    check-cast v1, Lr4/c;

    invoke-virtual {v1}, Lr4/d;->d()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0, v1, v2}, Lw4/a;->a(FF)Ly4/c;

    move-result-object v1

    iget-boolean v2, v0, Lp4/c;->J:Z

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3fb33333    # 1.4f

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iget-boolean v5, v0, Lp4/c;->c0:Z

    if-eqz v5, :cond_1

    move v3, v4

    :cond_1
    iget v4, v1, Ly4/c;->b:F

    iget v5, v1, Ly4/c;->c:F

    neg-float v5, v5

    iget-object v6, v0, Lp4/c;->u0:Landroid/graphics/Matrix;

    iget-object v7, v0, Lp4/d;->r:Ly4/h;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Landroid/graphics/Matrix;->reset()V

    iget-object v8, v7, Ly4/h;->a:Landroid/graphics/Matrix;

    invoke-virtual {v6, v8}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    invoke-virtual {v6, v2, v3, v4, v5}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    const/4 v2, 0x0

    invoke-virtual {v7, v6, v0, v2}, Ly4/h;->e(Landroid/graphics/Matrix;Lp4/d;Z)V

    invoke-virtual {v0}, Lp4/c;->a()V

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    iget-boolean v0, v0, Lp4/d;->a:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Double-Tap, Zooming In, x: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v1, Ly4/c;->b:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", y: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Ly4/c;->c:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BarlineChartTouch"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-object v0, Ly4/c;->d:Ly4/e;

    invoke-virtual {v0, v1}, Ly4/e;->c(Ly4/d;)V

    :cond_3
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    iget-object v0, p0, Lw4/b;->d:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lp4/d;->getOnChartGestureListener()Lw4/c;

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    return p0
.end method

.method public final onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    iget-object p0, p0, Lw4/b;->d:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {p0}, Lp4/d;->getOnChartGestureListener()Lw4/c;

    return-void
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lw4/b;->d:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lp4/d;->getOnChartGestureListener()Lw4/c;

    iget-boolean v1, v0, Lp4/d;->c:Z

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lp4/d;->b(FF)Lt4/c;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lw4/b;->b:Lt4/c;

    invoke-virtual {v1, v2}, Lt4/c;->a(Lt4/c;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Lp4/d;->c(Lt4/c;)V

    iput-object v1, p0, Lw4/b;->b:Lt4/c;

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lp4/d;->c(Lt4/c;)V

    iput-object v1, p0, Lw4/b;->b:Lt4/c;

    :goto_1
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12

    iget-object p1, p0, Lw4/a;->m:Landroid/view/VelocityTracker;

    if-nez p1, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p1

    iput-object p1, p0, Lw4/a;->m:Landroid/view/VelocityTracker;

    :cond_0
    iget-object p1, p0, Lw4/a;->m:Landroid/view/VelocityTracker;

    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lw4/a;->m:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    iput-object v0, p0, Lw4/a;->m:Landroid/view/VelocityTracker;

    :cond_1
    iget p1, p0, Lw4/b;->a:I

    if-nez p1, :cond_2

    iget-object p1, p0, Lw4/b;->c:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_2
    iget-object p1, p0, Lw4/b;->d:Lcom/github/mikephil/charting/charts/BarChart;

    iget-boolean v2, p1, Lp4/c;->H:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_4

    iget-boolean v2, p1, Lp4/c;->I:Z

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_1

    :cond_4
    :goto_0
    move v2, v4

    :goto_1
    if-nez v2, :cond_5

    iget-boolean v2, p1, Lp4/c;->J:Z

    if-nez v2, :cond_5

    iget-boolean v2, p1, Lp4/c;->c0:Z

    if-nez v2, :cond_5

    return v4

    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    const/4 v5, 0x0

    if-eqz v2, :cond_33

    const/16 v6, 0x3e8

    const/4 v7, 0x5

    const/4 v8, 0x4

    const/4 v9, 0x2

    if-eq v2, v4, :cond_2c

    iget-object v0, p0, Lw4/a;->h:Ly4/c;

    if-eq v2, v9, :cond_12

    if-eq v2, v1, :cond_11

    if-eq v2, v7, :cond_a

    const/4 v0, 0x6

    if-eq v2, v0, :cond_6

    goto/16 :goto_11

    :cond_6
    iget-object v0, p0, Lw4/a;->m:Landroid/view/VelocityTracker;

    sget v1, Ly4/g;->c:I

    int-to-float v1, v1

    invoke-virtual {v0, v6, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v6

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v8

    :goto_2
    if-ge v3, v8, :cond_9

    if-ne v3, v1, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    invoke-virtual {v0, v9}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v10

    mul-float/2addr v10, v6

    invoke-virtual {v0, v9}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v9

    mul-float/2addr v9, v2

    add-float/2addr v9, v10

    cmpg-float v9, v9, v5

    if-gez v9, :cond_8

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_4

    :cond_8
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_9
    :goto_4
    iput v7, p0, Lw4/b;->a:I

    goto/16 :goto_11

    :cond_a
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-lt v2, v9, :cond_34

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-interface {v2, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_b
    invoke-virtual {p0, p2}, Lw4/a;->c(Landroid/view/MotionEvent;)V

    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    sub-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iput v2, p0, Lw4/a;->i:F

    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    sub-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iput v2, p0, Lw4/a;->j:F

    invoke-static {p2}, Lw4/a;->d(Landroid/view/MotionEvent;)F

    move-result v2

    iput v2, p0, Lw4/a;->k:F

    const/high16 v5, 0x41200000    # 10.0f

    cmpl-float v2, v2, v5

    if-lez v2, :cond_10

    iget-boolean v2, p1, Lp4/c;->E:Z

    if-eqz v2, :cond_c

    iput v8, p0, Lw4/b;->a:I

    goto :goto_5

    :cond_c
    iget-boolean v2, p1, Lp4/c;->J:Z

    iget-boolean v5, p1, Lp4/c;->c0:Z

    if-eq v2, v5, :cond_e

    if-eqz v2, :cond_d

    move v1, v9

    :cond_d
    iput v1, p0, Lw4/b;->a:I

    goto :goto_5

    :cond_e
    iget v2, p0, Lw4/a;->i:F

    iget v5, p0, Lw4/a;->j:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_f

    move v1, v9

    :cond_f
    iput v1, p0, Lw4/b;->a:I

    :cond_10
    :goto_5
    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    add-float/2addr v2, v1

    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result p2

    add-float/2addr p2, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v2, v1

    iput v2, v0, Ly4/c;->b:F

    div-float/2addr p2, v1

    iput p2, v0, Ly4/c;->c:F

    goto/16 :goto_11

    :cond_11
    iput v3, p0, Lw4/b;->a:I

    iget-object p2, p0, Lw4/b;->d:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {p2}, Lp4/d;->getOnChartGestureListener()Lw4/c;

    goto/16 :goto_11

    :cond_12
    iget v2, p0, Lw4/b;->a:I

    iget-object v6, p0, Lw4/a;->g:Ly4/c;

    if-ne v2, v4, :cond_16

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-interface {v0, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_13
    iget-boolean v0, p1, Lp4/c;->H:Z

    if-eqz v0, :cond_14

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, v6, Ly4/c;->b:F

    sub-float/2addr v0, v1

    goto :goto_6

    :cond_14
    move v0, v5

    :goto_6
    iget-boolean v1, p1, Lp4/c;->I:Z

    if-eqz v1, :cond_15

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    iget v1, v6, Ly4/c;->c:F

    sub-float v5, p2, v1

    :cond_15
    iget-object p2, p0, Lw4/a;->e:Landroid/graphics/Matrix;

    iget-object v1, p0, Lw4/a;->f:Landroid/graphics/Matrix;

    invoke-virtual {p2, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object p2, p0, Lw4/b;->d:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {p2}, Lp4/d;->getOnChartGestureListener()Lw4/c;

    invoke-virtual {p0}, Lw4/a;->b()V

    iget-object p2, p0, Lw4/a;->e:Landroid/graphics/Matrix;

    invoke-virtual {p2, v0, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_11

    :cond_16
    const/high16 v7, 0x3f800000    # 1.0f

    if-eq v2, v9, :cond_1c

    if-eq v2, v1, :cond_1c

    if-ne v2, v8, :cond_17

    goto/16 :goto_7

    :cond_17
    if-nez v2, :cond_34

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, v6, Ly4/c;->b:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, v6, Ly4/c;->c:F

    sub-float/2addr v0, v1

    sub-float/2addr v2, v3

    mul-float/2addr v0, v0

    mul-float/2addr v2, v2

    add-float/2addr v2, v0

    float-to-double v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lw4/a;->q:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_34

    iget-boolean v0, p1, Lp4/c;->H:Z

    if-nez v0, :cond_18

    iget-boolean v0, p1, Lp4/c;->I:Z

    if-eqz v0, :cond_34

    :cond_18
    iget-object v0, p1, Lp4/d;->r:Ly4/h;

    iget v1, v0, Ly4/h;->i:F

    iget v2, v0, Ly4/h;->g:F

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_19

    cmpl-float v1, v2, v7

    if-gtz v1, :cond_19

    iget v1, v0, Ly4/h;->j:F

    iget v2, v0, Ly4/h;->e:F

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_19

    cmpl-float v1, v2, v7

    if-gtz v1, :cond_19

    iget v1, v0, Ly4/h;->l:F

    cmpg-float v1, v1, v5

    if-gtz v1, :cond_19

    iget v0, v0, Ly4/h;->m:F

    cmpg-float v0, v0, v5

    if-gtz v0, :cond_19

    iget-boolean v0, p1, Lp4/c;->G:Z

    if-eqz v0, :cond_34

    if-eqz v0, :cond_34

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1, v0, p2}, Lp4/d;->b(FF)Lt4/c;

    move-result-object p2

    if-eqz p2, :cond_34

    iget-object v0, p0, Lw4/b;->b:Lt4/c;

    invoke-virtual {p2, v0}, Lt4/c;->a(Lt4/c;)Z

    move-result v0

    if-nez v0, :cond_34

    iput-object p2, p0, Lw4/b;->b:Lt4/c;

    invoke-virtual {p1, p2}, Lp4/d;->c(Lt4/c;)V

    goto/16 :goto_11

    :cond_19
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, v6, Ly4/c;->b:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    iget v1, v6, Ly4/c;->c:F

    sub-float/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget-boolean v1, p1, Lp4/c;->H:Z

    if-nez v1, :cond_1a

    cmpl-float v1, p2, v0

    if-ltz v1, :cond_34

    :cond_1a
    iget-boolean v1, p1, Lp4/c;->I:Z

    if-nez v1, :cond_1b

    cmpg-float p2, p2, v0

    if-gtz p2, :cond_34

    :cond_1b
    iput v4, p0, Lw4/b;->a:I

    goto/16 :goto_11

    :cond_1c
    :goto_7
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_1d

    invoke-interface {v2, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_1d
    iget-boolean v2, p1, Lp4/c;->J:Z

    if-nez v2, :cond_1e

    iget-boolean v2, p1, Lp4/c;->c0:Z

    if-eqz v2, :cond_34

    :cond_1e
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-lt v2, v9, :cond_34

    invoke-virtual {p1}, Lp4/d;->getOnChartGestureListener()Lw4/c;

    invoke-static {p2}, Lw4/a;->d(Landroid/view/MotionEvent;)F

    move-result v2

    iget v5, p0, Lw4/a;->r:F

    cmpl-float v5, v2, v5

    if-lez v5, :cond_34

    iget v5, v0, Ly4/c;->b:F

    iget v0, v0, Ly4/c;->c:F

    invoke-virtual {p0, v5, v0}, Lw4/a;->a(FF)Ly4/c;

    move-result-object v0

    invoke-virtual {p1}, Lp4/d;->getViewPortHandler()Ly4/h;

    move-result-object v5

    iget v6, p0, Lw4/b;->a:I

    iget-object v10, p0, Lw4/a;->f:Landroid/graphics/Matrix;

    if-ne v6, v8, :cond_27

    iget p2, p0, Lw4/a;->k:F

    div-float/2addr v2, p2

    cmpg-float p2, v2, v7

    if-gez p2, :cond_1f

    move p2, v4

    goto :goto_8

    :cond_1f
    move p2, v3

    :goto_8
    if-eqz p2, :cond_21

    iget v1, v5, Ly4/h;->i:F

    iget v6, v5, Ly4/h;->g:F

    cmpl-float v1, v1, v6

    if-lez v1, :cond_20

    :goto_9
    move v1, v4

    goto :goto_a

    :cond_20
    move v1, v3

    goto :goto_a

    :cond_21
    iget v1, v5, Ly4/h;->i:F

    iget v6, v5, Ly4/h;->h:F

    cmpg-float v1, v1, v6

    if-gez v1, :cond_20

    goto :goto_9

    :goto_a
    if-eqz p2, :cond_22

    iget p2, v5, Ly4/h;->j:F

    iget v5, v5, Ly4/h;->e:F

    cmpl-float p2, p2, v5

    if-lez p2, :cond_23

    :goto_b
    move v3, v4

    goto :goto_c

    :cond_22
    iget p2, v5, Ly4/h;->j:F

    iget v5, v5, Ly4/h;->f:F

    cmpg-float p2, p2, v5

    if-gez p2, :cond_23

    goto :goto_b

    :cond_23
    :goto_c
    iget-boolean p2, p1, Lp4/c;->J:Z

    if-eqz p2, :cond_24

    move p2, v2

    goto :goto_d

    :cond_24
    move p2, v7

    :goto_d
    iget-boolean v5, p1, Lp4/c;->c0:Z

    if-eqz v5, :cond_25

    move v7, v2

    :cond_25
    if-nez v3, :cond_26

    if-eqz v1, :cond_2b

    :cond_26
    iget-object v1, p0, Lw4/a;->e:Landroid/graphics/Matrix;

    invoke-virtual {v1, v10}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v1, p0, Lw4/a;->e:Landroid/graphics/Matrix;

    iget v2, v0, Ly4/c;->b:F

    iget v3, v0, Ly4/c;->c:F

    invoke-virtual {v1, p2, v7, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    goto/16 :goto_10

    :cond_27
    if-ne v6, v9, :cond_29

    iget-boolean v2, p1, Lp4/c;->J:Z

    if-eqz v2, :cond_29

    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result p2

    sub-float/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget v1, p0, Lw4/a;->i:F

    div-float/2addr p2, v1

    cmpg-float v1, p2, v7

    if-gez v1, :cond_28

    iget v1, v5, Ly4/h;->i:F

    iget v2, v5, Ly4/h;->g:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2b

    goto :goto_e

    :cond_28
    iget v1, v5, Ly4/h;->i:F

    iget v2, v5, Ly4/h;->h:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2b

    :goto_e
    iget-object v1, p0, Lw4/a;->e:Landroid/graphics/Matrix;

    invoke-virtual {v1, v10}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v1, p0, Lw4/a;->e:Landroid/graphics/Matrix;

    iget v2, v0, Ly4/c;->b:F

    iget v3, v0, Ly4/c;->c:F

    invoke-virtual {v1, p2, v7, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    goto :goto_10

    :cond_29
    if-ne v6, v1, :cond_2b

    iget-boolean v1, p1, Lp4/c;->c0:Z

    if-eqz v1, :cond_2b

    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result p2

    sub-float/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget v1, p0, Lw4/a;->j:F

    div-float/2addr p2, v1

    cmpg-float v1, p2, v7

    if-gez v1, :cond_2a

    iget v1, v5, Ly4/h;->j:F

    iget v2, v5, Ly4/h;->e:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2b

    goto :goto_f

    :cond_2a
    iget v1, v5, Ly4/h;->j:F

    iget v2, v5, Ly4/h;->f:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2b

    :goto_f
    iget-object v1, p0, Lw4/a;->e:Landroid/graphics/Matrix;

    invoke-virtual {v1, v10}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v1, p0, Lw4/a;->e:Landroid/graphics/Matrix;

    iget v2, v0, Ly4/c;->b:F

    iget v3, v0, Ly4/c;->c:F

    invoke-virtual {v1, v7, p2, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    :cond_2b
    :goto_10
    sget-object p2, Ly4/c;->d:Ly4/e;

    invoke-virtual {p2, v0}, Ly4/e;->c(Ly4/d;)V

    goto/16 :goto_11

    :cond_2c
    iget-object v2, p0, Lw4/a;->m:Landroid/view/VelocityTracker;

    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    sget v11, Ly4/g;->c:I

    int-to-float v11, v11

    invoke-virtual {v2, v6, v11}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    invoke-virtual {v2, v10}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v6

    invoke-virtual {v2, v10}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v10

    sget v11, Ly4/g;->b:I

    int-to-float v11, v11

    cmpl-float v10, v10, v11

    if-gtz v10, :cond_2d

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v10

    sget v11, Ly4/g;->b:I

    int-to-float v11, v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_2e

    :cond_2d
    iget v10, p0, Lw4/b;->a:I

    if-ne v10, v4, :cond_2e

    iget-boolean v10, p1, Lp4/d;->d:Z

    if-eqz v10, :cond_2e

    iget-object v10, p0, Lw4/a;->p:Ly4/c;

    iput v5, v10, Ly4/c;->b:F

    iput v5, v10, Ly4/c;->c:F

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v10

    iput-wide v10, p0, Lw4/a;->n:J

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget-object v10, p0, Lw4/a;->o:Ly4/c;

    iput v5, v10, Ly4/c;->b:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    iput p2, v10, Ly4/c;->c:F

    iget-object p2, p0, Lw4/a;->p:Ly4/c;

    iput v2, p2, Ly4/c;->b:F

    iput v6, p2, Ly4/c;->c:F

    invoke-virtual {p1}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_2e
    iget p2, p0, Lw4/b;->a:I

    if-eq p2, v9, :cond_2f

    if-eq p2, v1, :cond_2f

    if-eq p2, v8, :cond_2f

    if-ne p2, v7, :cond_30

    :cond_2f
    invoke-virtual {p1}, Lp4/c;->a()V

    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    :cond_30
    iput v3, p0, Lw4/b;->a:I

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_31

    invoke-interface {p2, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_31
    iget-object p2, p0, Lw4/a;->m:Landroid/view/VelocityTracker;

    if-eqz p2, :cond_32

    invoke-virtual {p2}, Landroid/view/VelocityTracker;->recycle()V

    iput-object v0, p0, Lw4/a;->m:Landroid/view/VelocityTracker;

    :cond_32
    iget-object p2, p0, Lw4/b;->d:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {p2}, Lp4/d;->getOnChartGestureListener()Lw4/c;

    goto :goto_11

    :cond_33
    invoke-virtual {p1}, Lp4/d;->getOnChartGestureListener()Lw4/c;

    iget-object v0, p0, Lw4/a;->p:Ly4/c;

    iput v5, v0, Ly4/c;->b:F

    iput v5, v0, Ly4/c;->c:F

    invoke-virtual {p0, p2}, Lw4/a;->c(Landroid/view/MotionEvent;)V

    :cond_34
    :goto_11
    invoke-virtual {p1}, Lp4/d;->getViewPortHandler()Ly4/h;

    move-result-object p2

    iget-object v0, p0, Lw4/a;->e:Landroid/graphics/Matrix;

    invoke-virtual {p2, v0, p1, v4}, Ly4/h;->e(Landroid/graphics/Matrix;Lp4/d;Z)V

    iput-object v0, p0, Lw4/a;->e:Landroid/graphics/Matrix;

    return v4
.end method
