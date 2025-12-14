.class public abstract Lp4/c;
.super Lp4/d;
.source "SourceFile"

# interfaces
.implements Lu4/b;


# instance fields
.field public C:I

.field public D:Z

.field public E:Z

.field public F:Z

.field public G:Z

.field public H:Z

.field public I:Z

.field public J:Z

.field public c0:Z

.field public d0:Landroid/graphics/Paint;

.field public e0:Landroid/graphics/Paint;

.field public f0:Z

.field public g0:Z

.field public h0:Z

.field public i0:F

.field public j0:Z

.field public k0:Lq4/r;

.field public l0:Lq4/r;

.field public m0:Lx4/j;

.field public n0:Lx4/j;

.field public o0:Ly4/f;

.field public p0:Ly4/f;

.field public q0:Lx4/i;

.field public r0:J

.field public s0:J

.field public t0:Landroid/graphics/RectF;

.field public u0:Landroid/graphics/Matrix;

.field public v0:Z

.field public w0:Ly4/b;

.field public x0:Ly4/b;

.field public y0:[F


# virtual methods
.method public final a()V
    .locals 11

    iget-boolean v0, p0, Lp4/c;->v0:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lp4/c;->t0:Landroid/graphics/RectF;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v2, p0, Lp4/d;->l:Lq4/l;

    iget-object v3, p0, Lp4/d;->r:Ly4/h;

    if-eqz v2, :cond_9

    iget-boolean v4, v2, Lq4/b;->a:Z

    if-eqz v4, :cond_9

    sget-object v4, Lp4/b;->c:[I

    iget-object v2, v2, Lq4/l;->i:Lq4/i;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v4, v2

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_0

    goto/16 :goto_0

    :cond_0
    sget-object v2, Lp4/b;->a:[I

    iget-object v6, p0, Lp4/d;->l:Lq4/l;

    iget-object v6, v6, Lq4/l;->h:Lq4/k;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v2, v2, v6

    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_1

    goto/16 :goto_0

    :cond_1
    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lp4/d;->l:Lq4/l;

    iget v5, v4, Lq4/l;->s:F

    iget v6, v3, Ly4/h;->d:F

    iget v4, v4, Lq4/l;->q:F

    mul-float/2addr v6, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iget-object v5, p0, Lp4/d;->l:Lq4/l;

    iget v5, v5, Lq4/b;->c:F

    add-float/2addr v4, v5

    add-float/2addr v4, v2

    iput v4, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Lp4/d;->getXAxis()Lq4/o;

    move-result-object v2

    iget-boolean v2, v2, Lq4/b;->a:Z

    if-eqz v2, :cond_9

    invoke-virtual {p0}, Lp4/d;->getXAxis()Lq4/o;

    move-result-object v2

    iget-boolean v2, v2, Lq4/a;->r:Z

    if-eqz v2, :cond_9

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Lp4/d;->getXAxis()Lq4/o;

    move-result-object v4

    iget v4, v4, Lq4/o;->A:I

    int-to-float v4, v4

    add-float/2addr v2, v4

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_0

    :cond_2
    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lp4/d;->l:Lq4/l;

    iget v5, v4, Lq4/l;->s:F

    iget v6, v3, Ly4/h;->d:F

    iget v4, v4, Lq4/l;->q:F

    mul-float/2addr v6, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iget-object v5, p0, Lp4/d;->l:Lq4/l;

    iget v5, v5, Lq4/b;->c:F

    add-float/2addr v4, v5

    add-float/2addr v4, v2

    iput v4, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Lp4/d;->getXAxis()Lq4/o;

    move-result-object v2

    iget-boolean v2, v2, Lq4/b;->a:Z

    if-eqz v2, :cond_9

    invoke-virtual {p0}, Lp4/d;->getXAxis()Lq4/o;

    move-result-object v2

    iget-boolean v2, v2, Lq4/a;->r:Z

    if-eqz v2, :cond_9

    iget v2, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Lp4/d;->getXAxis()Lq4/o;

    move-result-object v4

    iget v4, v4, Lq4/o;->A:I

    int-to-float v4, v4

    add-float/2addr v2, v4

    iput v2, v0, Landroid/graphics/RectF;->top:F

    goto/16 :goto_0

    :cond_3
    sget-object v2, Lp4/b;->b:[I

    iget-object v6, p0, Lp4/d;->l:Lq4/l;

    iget-object v6, v6, Lq4/l;->g:Lq4/h;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v2, v2, v6

    if-eq v2, v5, :cond_8

    if-eq v2, v4, :cond_7

    const/4 v6, 0x3

    if-eq v2, v6, :cond_4

    goto :goto_0

    :cond_4
    sget-object v2, Lp4/b;->a:[I

    iget-object v6, p0, Lp4/d;->l:Lq4/l;

    iget-object v6, v6, Lq4/l;->h:Lq4/k;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v2, v2, v6

    if-eq v2, v5, :cond_6

    if-eq v2, v4, :cond_5

    goto :goto_0

    :cond_5
    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lp4/d;->l:Lq4/l;

    iget v5, v4, Lq4/l;->s:F

    iget v6, v3, Ly4/h;->d:F

    iget v4, v4, Lq4/l;->q:F

    mul-float/2addr v6, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iget-object v5, p0, Lp4/d;->l:Lq4/l;

    iget v5, v5, Lq4/b;->c:F

    add-float/2addr v4, v5

    add-float/2addr v4, v2

    iput v4, v0, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    :cond_6
    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lp4/d;->l:Lq4/l;

    iget v5, v4, Lq4/l;->s:F

    iget v6, v3, Ly4/h;->d:F

    iget v4, v4, Lq4/l;->q:F

    mul-float/2addr v6, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iget-object v5, p0, Lp4/d;->l:Lq4/l;

    iget v5, v5, Lq4/b;->c:F

    add-float/2addr v4, v5

    add-float/2addr v4, v2

    iput v4, v0, Landroid/graphics/RectF;->top:F

    goto :goto_0

    :cond_7
    iget v2, v0, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lp4/d;->l:Lq4/l;

    iget v5, v4, Lq4/l;->r:F

    iget v6, v3, Ly4/h;->c:F

    iget v4, v4, Lq4/l;->q:F

    mul-float/2addr v6, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iget-object v5, p0, Lp4/d;->l:Lq4/l;

    iget v5, v5, Lq4/b;->b:F

    add-float/2addr v4, v5

    add-float/2addr v4, v2

    iput v4, v0, Landroid/graphics/RectF;->right:F

    goto :goto_0

    :cond_8
    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lp4/d;->l:Lq4/l;

    iget v5, v4, Lq4/l;->r:F

    iget v6, v3, Ly4/h;->c:F

    iget v4, v4, Lq4/l;->q:F

    mul-float/2addr v6, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iget-object v5, p0, Lp4/d;->l:Lq4/l;

    iget v5, v5, Lq4/b;->b:F

    add-float/2addr v4, v5

    add-float/2addr v4, v2

    iput v4, v0, Landroid/graphics/RectF;->left:F

    :cond_9
    :goto_0
    iget v2, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v1

    iget v4, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v1

    iget v5, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v5, v1

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lp4/c;->k0:Lq4/r;

    iget-boolean v6, v1, Lq4/b;->a:Z

    if-eqz v6, :cond_a

    iget-boolean v6, v1, Lq4/a;->r:Z

    if-eqz v6, :cond_a

    sget-object v6, Lq4/q;->OUTSIDE_CHART:Lq4/q;

    iget-object v7, v1, Lq4/r;->E:Lq4/q;

    if-ne v7, v6, :cond_a

    iget-object v6, p0, Lp4/c;->m0:Lx4/j;

    invoke-virtual {v6}, Lx4/a;->getPaintAxisLabels()Landroid/graphics/Paint;

    move-result-object v6

    invoke-virtual {v1, v6}, Lq4/r;->h(Landroid/graphics/Paint;)F

    move-result v1

    add-float/2addr v2, v1

    :cond_a
    iget-object v1, p0, Lp4/c;->l0:Lq4/r;

    iget-boolean v6, v1, Lq4/b;->a:Z

    if-eqz v6, :cond_b

    iget-boolean v6, v1, Lq4/a;->r:Z

    if-eqz v6, :cond_b

    sget-object v6, Lq4/q;->OUTSIDE_CHART:Lq4/q;

    iget-object v7, v1, Lq4/r;->E:Lq4/q;

    if-ne v7, v6, :cond_b

    iget-object v6, p0, Lp4/c;->n0:Lx4/j;

    invoke-virtual {v6}, Lx4/a;->getPaintAxisLabels()Landroid/graphics/Paint;

    move-result-object v6

    invoke-virtual {v1, v6}, Lq4/r;->h(Landroid/graphics/Paint;)F

    move-result v1

    add-float/2addr v5, v1

    :cond_b
    iget-object v1, p0, Lp4/d;->i:Lq4/o;

    iget-boolean v6, v1, Lq4/b;->a:Z

    if-eqz v6, :cond_e

    iget-boolean v6, v1, Lq4/a;->r:Z

    if-eqz v6, :cond_e

    iget v6, v1, Lq4/o;->A:I

    int-to-float v6, v6

    iget v7, v1, Lq4/b;->c:F

    add-float/2addr v6, v7

    iget-object v1, v1, Lq4/o;->B:Lq4/n;

    sget-object v7, Lq4/n;->BOTTOM:Lq4/n;

    if-ne v1, v7, :cond_c

    add-float/2addr v0, v6

    goto :goto_2

    :cond_c
    sget-object v7, Lq4/n;->TOP:Lq4/n;

    if-ne v1, v7, :cond_d

    :goto_1
    add-float/2addr v4, v6

    goto :goto_2

    :cond_d
    sget-object v7, Lq4/n;->BOTH_SIDED:Lq4/n;

    if-ne v1, v7, :cond_e

    add-float/2addr v0, v6

    goto :goto_1

    :cond_e
    :goto_2
    invoke-virtual {p0}, Lp4/d;->getExtraTopOffset()F

    move-result v1

    add-float/2addr v1, v4

    invoke-virtual {p0}, Lp4/d;->getExtraRightOffset()F

    move-result v4

    add-float/2addr v4, v5

    invoke-virtual {p0}, Lp4/d;->getExtraBottomOffset()F

    move-result v5

    add-float/2addr v5, v0

    invoke-virtual {p0}, Lp4/d;->getExtraLeftOffset()F

    move-result v0

    add-float/2addr v0, v2

    iget v2, p0, Lp4/c;->i0:F

    invoke-static {v2}, Ly4/g;->c(F)F

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v6

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v7

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v8

    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget-object v9, v3, Ly4/h;->b:Landroid/graphics/RectF;

    iget v10, v3, Ly4/h;->c:F

    sub-float/2addr v10, v8

    iget v8, v3, Ly4/h;->d:F

    sub-float/2addr v8, v2

    invoke-virtual {v9, v6, v7, v10, v8}, Landroid/graphics/RectF;->set(FFFF)V

    iget-boolean v2, p0, Lp4/d;->a:Z

    if-eqz v2, :cond_f

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "offsetLeft: "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", offsetTop: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", offsetRight: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", offsetBottom: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MPAndroidChart"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Content: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v3, Ly4/h;->b:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    iget-object v0, p0, Lp4/c;->p0:Ly4/f;

    iget-object v1, p0, Lp4/c;->l0:Lq4/r;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ly4/f;->e()V

    iget-object v0, p0, Lp4/c;->o0:Ly4/f;

    iget-object v1, p0, Lp4/c;->k0:Lq4/r;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ly4/f;->e()V

    invoke-virtual {p0}, Lp4/c;->h()V

    return-void
.end method

.method public final computeScroll()V
    .locals 14

    iget-object p0, p0, Lp4/d;->m:Lw4/b;

    instance-of v0, p0, Lw4/a;

    if-eqz v0, :cond_5

    check-cast p0, Lw4/a;

    iget-object v0, p0, Lw4/a;->p:Ly4/c;

    iget v1, v0, Ly4/c;->b:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, v0, Ly4/c;->c:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v11

    iget v1, v0, Ly4/c;->b:F

    iget-object v13, p0, Lw4/b;->d:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v13}, Lp4/d;->getDragDecelerationFrictionCoef()F

    move-result v3

    mul-float/2addr v3, v1

    iput v3, v0, Ly4/c;->b:F

    iget v1, v0, Ly4/c;->c:F

    invoke-virtual {v13}, Lp4/d;->getDragDecelerationFrictionCoef()F

    move-result v3

    mul-float/2addr v3, v1

    iput v3, v0, Ly4/c;->c:F

    iget-wide v4, p0, Lw4/a;->n:J

    sub-long v4, v11, v4

    long-to-float v1, v4

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v1, v4

    iget v4, v0, Ly4/c;->b:F

    mul-float/2addr v4, v1

    mul-float/2addr v3, v1

    iget-object v1, p0, Lw4/a;->o:Ly4/c;

    iget v5, v1, Ly4/c;->b:F

    add-float v8, v5, v4

    iput v8, v1, Ly4/c;->b:F

    iget v4, v1, Ly4/c;->c:F

    add-float v9, v4, v3

    iput v9, v1, Ly4/c;->c:F

    const/4 v7, 0x2

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide v5, v11

    invoke-static/range {v3 .. v10}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v3

    iget-boolean v4, v13, Lp4/c;->H:Z

    iget-object v5, p0, Lw4/a;->g:Ly4/c;

    if-eqz v4, :cond_1

    iget v4, v1, Ly4/c;->b:F

    iget v6, v5, Ly4/c;->b:F

    sub-float/2addr v4, v6

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    iget-boolean v6, v13, Lp4/c;->I:Z

    if-eqz v6, :cond_2

    iget v1, v1, Ly4/c;->c:F

    iget v5, v5, Ly4/c;->c:F

    sub-float/2addr v1, v5

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    iget-object v5, p0, Lw4/a;->e:Landroid/graphics/Matrix;

    iget-object v6, p0, Lw4/a;->f:Landroid/graphics/Matrix;

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v5, p0, Lw4/b;->d:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v5}, Lp4/d;->getOnChartGestureListener()Lw4/c;

    invoke-virtual {p0}, Lw4/a;->b()V

    iget-object v5, p0, Lw4/a;->e:Landroid/graphics/Matrix;

    invoke-virtual {v5, v4, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    invoke-virtual {v13}, Lp4/d;->getViewPortHandler()Ly4/h;

    move-result-object v1

    iget-object v3, p0, Lw4/a;->e:Landroid/graphics/Matrix;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v13, v4}, Ly4/h;->e(Landroid/graphics/Matrix;Lp4/d;Z)V

    iput-object v3, p0, Lw4/a;->e:Landroid/graphics/Matrix;

    iput-wide v11, p0, Lw4/a;->n:J

    iget v1, v0, Ly4/c;->b:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v3, v1

    const-wide v5, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v1, v3, v5

    if-gez v1, :cond_4

    iget v0, v0, Ly4/c;->c:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    cmpl-double v0, v0, v5

    if-ltz v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v13}, Lp4/c;->a()V

    invoke-virtual {v13}, Landroid/view/View;->postInvalidate()V

    iget-object p0, p0, Lw4/a;->p:Ly4/c;

    iput v2, p0, Ly4/c;->b:F

    iput v2, p0, Ly4/c;->c:F

    goto :goto_3

    :cond_4
    :goto_2
    sget-object p0, Ly4/g;->a:Landroid/util/DisplayMetrics;

    invoke-virtual {v13}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_5
    :goto_3
    return-void
.end method

.method public final d()V
    .locals 6

    iget-object v0, p0, Lp4/d;->b:Lr4/d;

    const-string v1, "MPAndroidChart"

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lp4/d;->a:Z

    if-eqz p0, :cond_0

    const-string p0, "Preparing... DATA NOT SET."

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lp4/d;->a:Z

    if-eqz v0, :cond_2

    const-string v0, "Preparing..."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lp4/d;->p:Lx4/e;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lx4/e;->initBuffers()V

    :cond_3
    move-object v0, p0

    check-cast v0, Lcom/github/mikephil/charting/charts/BarChart;

    iget-boolean v1, v0, Lcom/github/mikephil/charting/charts/BarChart;->C0:Z

    if-eqz v1, :cond_4

    iget-object v1, v0, Lp4/d;->i:Lq4/o;

    iget-object v2, v0, Lp4/d;->b:Lr4/d;

    check-cast v2, Lr4/a;

    iget v3, v2, Lr4/d;->d:F

    iget v4, v2, Lr4/a;->j:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget v2, v2, Lr4/d;->c:F

    add-float/2addr v4, v2

    invoke-virtual {v1, v3, v4}, Lq4/a;->a(FF)V

    goto :goto_0

    :cond_4
    iget-object v1, v0, Lp4/d;->i:Lq4/o;

    iget-object v2, v0, Lp4/d;->b:Lr4/d;

    check-cast v2, Lr4/a;

    iget v3, v2, Lr4/d;->d:F

    iget v2, v2, Lr4/d;->c:F

    invoke-virtual {v1, v3, v2}, Lq4/a;->a(FF)V

    :goto_0
    iget-object v1, v0, Lp4/c;->k0:Lq4/r;

    iget-object v2, v0, Lp4/d;->b:Lr4/d;

    check-cast v2, Lr4/a;

    sget-object v3, Lq4/p;->LEFT:Lq4/p;

    invoke-virtual {v2, v3}, Lr4/d;->f(Lq4/p;)F

    move-result v2

    iget-object v4, v0, Lp4/d;->b:Lr4/d;

    check-cast v4, Lr4/a;

    invoke-virtual {v4, v3}, Lr4/d;->e(Lq4/p;)F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lq4/r;->a(FF)V

    iget-object v1, v0, Lp4/c;->l0:Lq4/r;

    iget-object v2, v0, Lp4/d;->b:Lr4/d;

    check-cast v2, Lr4/a;

    sget-object v3, Lq4/p;->RIGHT:Lq4/p;

    invoke-virtual {v2, v3}, Lr4/d;->f(Lq4/p;)F

    move-result v2

    iget-object v0, v0, Lp4/d;->b:Lr4/d;

    check-cast v0, Lr4/a;

    invoke-virtual {v0, v3}, Lr4/d;->e(Lq4/p;)F

    move-result v0

    invoke-virtual {v1, v2, v0}, Lq4/r;->a(FF)V

    iget-object v0, p0, Lp4/c;->m0:Lx4/j;

    iget-object v1, p0, Lp4/c;->k0:Lq4/r;

    iget v2, v1, Lq4/a;->y:F

    iget v1, v1, Lq4/a;->x:F

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lx4/a;->computeAxis(FFZ)V

    iget-object v0, p0, Lp4/c;->n0:Lx4/j;

    iget-object v1, p0, Lp4/c;->l0:Lq4/r;

    iget v2, v1, Lq4/a;->y:F

    iget v1, v1, Lq4/a;->x:F

    invoke-virtual {v0, v2, v1, v3}, Lx4/a;->computeAxis(FFZ)V

    iget-object v0, p0, Lp4/c;->q0:Lx4/i;

    iget-object v1, p0, Lp4/d;->i:Lq4/o;

    iget v2, v1, Lq4/a;->y:F

    iget v1, v1, Lq4/a;->x:F

    invoke-virtual {v0, v2, v1, v3}, Lx4/i;->computeAxis(FFZ)V

    iget-object v0, p0, Lp4/d;->l:Lq4/l;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lp4/d;->o:Lx4/g;

    iget-object v1, p0, Lp4/d;->b:Lr4/d;

    invoke-virtual {v0, v1}, Lx4/g;->a(Lr4/d;)V

    :cond_5
    invoke-virtual {p0}, Lp4/c;->a()V

    return-void
.end method

.method public final f(Lq4/p;)Ly4/f;
    .locals 1

    sget-object v0, Lq4/p;->LEFT:Lq4/p;

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lp4/c;->o0:Ly4/f;

    return-object p0

    :cond_0
    iget-object p0, p0, Lp4/c;->p0:Ly4/f;

    return-object p0
.end method

.method public final g(Lq4/p;)V
    .locals 1

    sget-object v0, Lq4/p;->LEFT:Lq4/p;

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lp4/c;->k0:Lq4/r;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lp4/c;->l0:Lq4/r;

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public getAxisLeft()Lq4/r;
    .locals 0

    iget-object p0, p0, Lp4/c;->k0:Lq4/r;

    return-object p0
.end method

.method public getAxisRight()Lq4/r;
    .locals 0

    iget-object p0, p0, Lp4/c;->l0:Lq4/r;

    return-object p0
.end method

.method public bridge synthetic getData()Lr4/c;
    .locals 0

    invoke-super {p0}, Lp4/d;->getData()Lr4/d;

    move-result-object p0

    check-cast p0, Lr4/c;

    return-object p0
.end method

.method public getDrawListener()Lw4/e;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getHighestVisibleX()F
    .locals 4

    sget-object v0, Lq4/p;->LEFT:Lq4/p;

    invoke-virtual {p0, v0}, Lp4/c;->f(Lq4/p;)Ly4/f;

    move-result-object v0

    iget-object v1, p0, Lp4/d;->r:Ly4/h;

    iget-object v1, v1, Ly4/h;->b:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->right:F

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v3, p0, Lp4/c;->x0:Ly4/b;

    invoke-virtual {v0, v2, v1, v3}, Ly4/f;->b(FFLy4/b;)V

    iget-object p0, p0, Lp4/d;->i:Lq4/o;

    iget p0, p0, Lq4/a;->x:F

    float-to-double v0, p0

    iget-wide v2, v3, Ly4/b;->b:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public getLowestVisibleX()F
    .locals 4

    sget-object v0, Lq4/p;->LEFT:Lq4/p;

    invoke-virtual {p0, v0}, Lp4/c;->f(Lq4/p;)Ly4/f;

    move-result-object v0

    iget-object v1, p0, Lp4/d;->r:Ly4/h;

    iget-object v1, v1, Ly4/h;->b:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v3, p0, Lp4/c;->w0:Ly4/b;

    invoke-virtual {v0, v2, v1, v3}, Ly4/f;->b(FFLy4/b;)V

    iget-object p0, p0, Lp4/d;->i:Lq4/o;

    iget p0, p0, Lq4/a;->y:F

    float-to-double v0, p0

    iget-wide v2, v3, Ly4/b;->b:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public getMaxVisibleCount()I
    .locals 0

    iget p0, p0, Lp4/c;->C:I

    return p0
.end method

.method public getMinOffset()F
    .locals 0

    iget p0, p0, Lp4/c;->i0:F

    return p0
.end method

.method public getRendererLeftYAxis()Lx4/j;
    .locals 0

    iget-object p0, p0, Lp4/c;->m0:Lx4/j;

    return-object p0
.end method

.method public getRendererRightYAxis()Lx4/j;
    .locals 0

    iget-object p0, p0, Lp4/c;->n0:Lx4/j;

    return-object p0
.end method

.method public getRendererXAxis()Lx4/i;
    .locals 0

    iget-object p0, p0, Lp4/c;->q0:Lx4/i;

    return-object p0
.end method

.method public getScaleX()F
    .locals 0

    iget-object p0, p0, Lp4/d;->r:Ly4/h;

    if-nez p0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    :cond_0
    iget p0, p0, Ly4/h;->i:F

    return p0
.end method

.method public getScaleY()F
    .locals 0

    iget-object p0, p0, Lp4/d;->r:Ly4/h;

    if-nez p0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    :cond_0
    iget p0, p0, Ly4/h;->j:F

    return p0
.end method

.method public getVisibleXRange()F
    .locals 1

    invoke-virtual {p0}, Lp4/c;->getHighestVisibleX()F

    move-result v0

    invoke-virtual {p0}, Lp4/c;->getLowestVisibleX()F

    move-result p0

    sub-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    return p0
.end method

.method public getYChartMax()F
    .locals 1

    iget-object v0, p0, Lp4/c;->k0:Lq4/r;

    iget v0, v0, Lq4/a;->x:F

    iget-object p0, p0, Lp4/c;->l0:Lq4/r;

    iget p0, p0, Lq4/a;->x:F

    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public getYChartMin()F
    .locals 1

    iget-object v0, p0, Lp4/c;->k0:Lq4/r;

    iget v0, v0, Lq4/a;->y:F

    iget-object p0, p0, Lp4/c;->l0:Lq4/r;

    iget p0, p0, Lq4/a;->y:F

    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method public final h()V
    .locals 5

    iget-boolean v0, p0, Lp4/d;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Preparing Value-Px Matrix, xmin: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lp4/d;->i:Lq4/o;

    iget v1, v1, Lq4/a;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", xmax: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lp4/d;->i:Lq4/o;

    iget v1, v1, Lq4/a;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", xdelta: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lp4/d;->i:Lq4/o;

    iget v1, v1, Lq4/a;->z:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MPAndroidChart"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lp4/c;->p0:Ly4/f;

    iget-object v1, p0, Lp4/d;->i:Lq4/o;

    iget v2, v1, Lq4/a;->y:F

    iget v1, v1, Lq4/a;->z:F

    iget-object v3, p0, Lp4/c;->l0:Lq4/r;

    iget v4, v3, Lq4/a;->z:F

    iget v3, v3, Lq4/a;->y:F

    invoke-virtual {v0, v2, v1, v4, v3}, Ly4/f;->f(FFFF)V

    iget-object v0, p0, Lp4/c;->o0:Ly4/f;

    iget-object v1, p0, Lp4/d;->i:Lq4/o;

    iget v2, v1, Lq4/a;->y:F

    iget v1, v1, Lq4/a;->z:F

    iget-object p0, p0, Lp4/c;->k0:Lq4/r;

    iget v3, p0, Lq4/a;->z:F

    iget p0, p0, Lq4/a;->y:F

    invoke-virtual {v0, v2, v1, v3, p0}, Ly4/f;->f(FFFF)V

    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    invoke-super {p0, p1}, Lp4/d;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lp4/d;->b:Lr4/d;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-boolean v2, p0, Lp4/c;->f0:Z

    iget-object v3, p0, Lp4/d;->r:Ly4/h;

    if-eqz v2, :cond_1

    iget-object v2, v3, Ly4/h;->b:Landroid/graphics/RectF;

    iget-object v4, p0, Lp4/c;->d0:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_1
    iget-boolean v2, p0, Lp4/c;->g0:Z

    if-eqz v2, :cond_2

    iget-object v2, v3, Ly4/h;->b:Landroid/graphics/RectF;

    iget-object v4, p0, Lp4/c;->e0:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_2
    iget-boolean v2, p0, Lp4/c;->D:Z

    if-eqz v2, :cond_a

    invoke-virtual {p0}, Lp4/c;->getLowestVisibleX()F

    move-result v2

    invoke-virtual {p0}, Lp4/c;->getHighestVisibleX()F

    move-result v4

    iget-object v5, p0, Lp4/d;->b:Lr4/d;

    check-cast v5, Lr4/c;

    iget-object v6, v5, Lr4/d;->i:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lv4/c;

    check-cast v7, Lr4/b;

    iget-object v8, v7, Lr4/b;->o:Ljava/util/ArrayList;

    if-eqz v8, :cond_3

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_4

    goto :goto_0

    :cond_4
    const v9, -0x800001

    iput v9, v7, Lr4/b;->p:F

    const v9, 0x7f7fffff    # Float.MAX_VALUE

    iput v9, v7, Lr4/b;->q:F

    sget-object v9, Lr4/e;->DOWN:Lr4/e;

    const/high16 v10, 0x7fc00000    # Float.NaN

    invoke-virtual {v7, v2, v10, v9}, Lr4/b;->c(FFLr4/e;)I

    move-result v9

    sget-object v11, Lr4/e;->UP:Lr4/e;

    invoke-virtual {v7, v4, v10, v11}, Lr4/b;->c(FFLr4/e;)I

    move-result v10

    :goto_1
    if-gt v9, v10, :cond_3

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {v11}, Lcom/github/mikephil/charting/data/Entry;->a()F

    move-result v12

    iget v13, v7, Lr4/b;->q:F

    cmpg-float v12, v12, v13

    if-gez v12, :cond_5

    invoke-virtual {v11}, Lcom/github/mikephil/charting/data/Entry;->a()F

    move-result v12

    iput v12, v7, Lr4/b;->q:F

    :cond_5
    invoke-virtual {v11}, Lcom/github/mikephil/charting/data/Entry;->a()F

    move-result v12

    iget v13, v7, Lr4/b;->p:F

    cmpl-float v12, v12, v13

    if-lez v12, :cond_6

    invoke-virtual {v11}, Lcom/github/mikephil/charting/data/Entry;->a()F

    move-result v11

    iput v11, v7, Lr4/b;->p:F

    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_7
    invoke-virtual {v5}, Lr4/d;->a()V

    iget-object v2, p0, Lp4/d;->i:Lq4/o;

    iget-object v4, p0, Lp4/d;->b:Lr4/d;

    check-cast v4, Lr4/c;

    iget v5, v4, Lr4/d;->d:F

    iget v4, v4, Lr4/d;->c:F

    invoke-virtual {v2, v5, v4}, Lq4/a;->a(FF)V

    iget-object v2, p0, Lp4/c;->k0:Lq4/r;

    iget-boolean v4, v2, Lq4/b;->a:Z

    if-eqz v4, :cond_8

    iget-object v4, p0, Lp4/d;->b:Lr4/d;

    check-cast v4, Lr4/c;

    sget-object v5, Lq4/p;->LEFT:Lq4/p;

    invoke-virtual {v4, v5}, Lr4/d;->f(Lq4/p;)F

    move-result v4

    iget-object v6, p0, Lp4/d;->b:Lr4/d;

    check-cast v6, Lr4/c;

    invoke-virtual {v6, v5}, Lr4/d;->e(Lq4/p;)F

    move-result v5

    invoke-virtual {v2, v4, v5}, Lq4/r;->a(FF)V

    :cond_8
    iget-object v2, p0, Lp4/c;->l0:Lq4/r;

    iget-boolean v4, v2, Lq4/b;->a:Z

    if-eqz v4, :cond_9

    iget-object v4, p0, Lp4/d;->b:Lr4/d;

    check-cast v4, Lr4/c;

    sget-object v5, Lq4/p;->RIGHT:Lq4/p;

    invoke-virtual {v4, v5}, Lr4/d;->f(Lq4/p;)F

    move-result v4

    iget-object v6, p0, Lp4/d;->b:Lr4/d;

    check-cast v6, Lr4/c;

    invoke-virtual {v6, v5}, Lr4/d;->e(Lq4/p;)F

    move-result v5

    invoke-virtual {v2, v4, v5}, Lq4/r;->a(FF)V

    :cond_9
    invoke-virtual {p0}, Lp4/c;->a()V

    :cond_a
    iget-object v2, p0, Lp4/c;->k0:Lq4/r;

    iget-boolean v4, v2, Lq4/b;->a:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_b

    iget-object v4, p0, Lp4/c;->m0:Lx4/j;

    iget v6, v2, Lq4/a;->y:F

    iget v2, v2, Lq4/a;->x:F

    invoke-virtual {v4, v6, v2, v5}, Lx4/a;->computeAxis(FFZ)V

    :cond_b
    iget-object v2, p0, Lp4/c;->l0:Lq4/r;

    iget-boolean v4, v2, Lq4/b;->a:Z

    if-eqz v4, :cond_c

    iget-object v4, p0, Lp4/c;->n0:Lx4/j;

    iget v6, v2, Lq4/a;->y:F

    iget v2, v2, Lq4/a;->x:F

    invoke-virtual {v4, v6, v2, v5}, Lx4/a;->computeAxis(FFZ)V

    :cond_c
    iget-object v2, p0, Lp4/d;->i:Lq4/o;

    iget-boolean v4, v2, Lq4/b;->a:Z

    if-eqz v4, :cond_d

    iget-object v4, p0, Lp4/c;->q0:Lx4/i;

    iget v6, v2, Lq4/a;->y:F

    iget v2, v2, Lq4/a;->x:F

    invoke-virtual {v4, v6, v2, v5}, Lx4/i;->computeAxis(FFZ)V

    :cond_d
    iget-object v2, p0, Lp4/c;->q0:Lx4/i;

    invoke-virtual {v2, p1}, Lx4/i;->renderAxisLine(Landroid/graphics/Canvas;)V

    iget-object v2, p0, Lp4/c;->m0:Lx4/j;

    invoke-virtual {v2, p1}, Lx4/j;->renderAxisLine(Landroid/graphics/Canvas;)V

    iget-object v2, p0, Lp4/c;->n0:Lx4/j;

    invoke-virtual {v2, p1}, Lx4/j;->renderAxisLine(Landroid/graphics/Canvas;)V

    iget-object v2, p0, Lp4/c;->q0:Lx4/i;

    invoke-virtual {v2, p1}, Lx4/i;->renderGridLines(Landroid/graphics/Canvas;)V

    iget-object v2, p0, Lp4/c;->m0:Lx4/j;

    invoke-virtual {v2, p1}, Lx4/j;->renderGridLines(Landroid/graphics/Canvas;)V

    iget-object v2, p0, Lp4/c;->n0:Lx4/j;

    invoke-virtual {v2, p1}, Lx4/j;->renderGridLines(Landroid/graphics/Canvas;)V

    iget-object v2, p0, Lp4/d;->i:Lq4/o;

    iget-boolean v2, v2, Lq4/b;->a:Z

    iget-object v2, p0, Lp4/c;->k0:Lq4/r;

    iget-boolean v2, v2, Lq4/b;->a:Z

    iget-object v2, p0, Lp4/c;->l0:Lq4/r;

    iget-boolean v2, v2, Lq4/b;->a:Z

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    iget-object v4, v3, Ly4/h;->b:Landroid/graphics/RectF;

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    iget-object v4, p0, Lp4/d;->p:Lx4/e;

    invoke-virtual {v4, p1}, Lx4/e;->drawData(Landroid/graphics/Canvas;)V

    iget-object v4, p0, Lp4/d;->y:[Lt4/c;

    if-eqz v4, :cond_f

    array-length v6, v4

    if-lez v6, :cond_f

    aget-object v5, v4, v5

    if-nez v5, :cond_e

    goto :goto_2

    :cond_e
    iget-object v5, p0, Lp4/d;->p:Lx4/e;

    invoke-virtual {v5, p1, v4}, Lx4/e;->drawHighlighted(Landroid/graphics/Canvas;[Lt4/c;)V

    :cond_f
    :goto_2
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget-object v2, p0, Lp4/d;->p:Lx4/e;

    invoke-virtual {v2, p1}, Lx4/e;->drawExtras(Landroid/graphics/Canvas;)V

    iget-object v2, p0, Lp4/d;->i:Lq4/o;

    iget-boolean v2, v2, Lq4/b;->a:Z

    if-eqz v2, :cond_10

    iget-object v2, p0, Lp4/c;->q0:Lx4/i;

    invoke-virtual {v2, p1}, Lx4/i;->renderLimitLines(Landroid/graphics/Canvas;)V

    :cond_10
    iget-object v2, p0, Lp4/c;->k0:Lq4/r;

    iget-boolean v2, v2, Lq4/b;->a:Z

    if-eqz v2, :cond_11

    iget-object v2, p0, Lp4/c;->m0:Lx4/j;

    invoke-virtual {v2, p1}, Lx4/j;->renderLimitLines(Landroid/graphics/Canvas;)V

    :cond_11
    iget-object v2, p0, Lp4/c;->l0:Lq4/r;

    iget-boolean v2, v2, Lq4/b;->a:Z

    if-eqz v2, :cond_12

    iget-object v2, p0, Lp4/c;->n0:Lx4/j;

    invoke-virtual {v2, p1}, Lx4/j;->renderLimitLines(Landroid/graphics/Canvas;)V

    :cond_12
    iget-object v2, p0, Lp4/c;->q0:Lx4/i;

    invoke-virtual {v2, p1}, Lx4/i;->renderAxisLabels(Landroid/graphics/Canvas;)V

    iget-object v2, p0, Lp4/c;->m0:Lx4/j;

    invoke-virtual {v2, p1}, Lx4/j;->renderAxisLabels(Landroid/graphics/Canvas;)V

    iget-object v2, p0, Lp4/c;->n0:Lx4/j;

    invoke-virtual {v2, p1}, Lx4/j;->renderAxisLabels(Landroid/graphics/Canvas;)V

    iget-boolean v2, p0, Lp4/c;->h0:Z

    if-eqz v2, :cond_13

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    iget-object v4, v3, Ly4/h;->b:Landroid/graphics/RectF;

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    iget-object v4, p0, Lp4/d;->p:Lx4/e;

    invoke-virtual {v4, p1}, Lx4/e;->drawValues(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_3

    :cond_13
    iget-object v2, p0, Lp4/d;->p:Lx4/e;

    invoke-virtual {v2, p1}, Lx4/e;->drawValues(Landroid/graphics/Canvas;)V

    :goto_3
    iget-object v2, p0, Lp4/d;->o:Lx4/g;

    invoke-virtual {v2, p1}, Lx4/g;->c(Landroid/graphics/Canvas;)V

    iget-object v2, p0, Lp4/d;->k:Lq4/c;

    if-eqz v2, :cond_14

    iget-boolean v2, v2, Lq4/b;->a:Z

    if-eqz v2, :cond_14

    iget-object v2, p0, Lp4/d;->g:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v2, p0, Lp4/d;->g:Landroid/graphics/Paint;

    iget-object v4, p0, Lp4/d;->k:Lq4/c;

    iget v4, v4, Lq4/b;->d:F

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v2, p0, Lp4/d;->g:Landroid/graphics/Paint;

    iget-object v4, p0, Lp4/d;->k:Lq4/c;

    iget v4, v4, Lq4/b;->e:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lp4/d;->g:Landroid/graphics/Paint;

    iget-object v4, p0, Lp4/d;->k:Lq4/c;

    iget-object v4, v4, Lq4/c;->g:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v4, v3, Ly4/h;->c:F

    iget-object v5, v3, Ly4/h;->b:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    sub-float/2addr v2, v4

    iget-object v4, p0, Lp4/d;->k:Lq4/c;

    iget v4, v4, Lq4/b;->b:F

    sub-float/2addr v2, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, v3, Ly4/h;->d:F

    iget-object v3, v3, Ly4/h;->b:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v5, v3

    sub-float/2addr v4, v5

    iget-object v3, p0, Lp4/d;->k:Lq4/c;

    iget v5, v3, Lq4/b;->c:F

    sub-float/2addr v4, v5

    iget-object v5, p0, Lp4/d;->g:Landroid/graphics/Paint;

    iget-object v3, v3, Lq4/c;->f:Ljava/lang/String;

    invoke-virtual {p1, v3, v2, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_14
    iget-boolean p1, p0, Lp4/d;->a:Z

    if-eqz p1, :cond_15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    iget-wide v0, p0, Lp4/c;->r0:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lp4/c;->r0:J

    iget-wide v4, p0, Lp4/c;->s0:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lp4/c;->s0:J

    div-long/2addr v0, v4

    const-string p1, "Drawtime: "

    const-string v4, " ms, average: "

    invoke-static {v2, v3, p1, v4}, LB/e;->q(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms, cycles: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lp4/c;->s0:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MPAndroidChart"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 6

    iget-object v0, p0, Lp4/c;->y0:[F

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v3, 0x0

    aput v2, v0, v3

    iget-boolean v2, p0, Lp4/c;->j0:Z

    iget-object v4, p0, Lp4/d;->r:Ly4/h;

    if-eqz v2, :cond_0

    iget-object v2, v4, Ly4/h;->b:Landroid/graphics/RectF;

    iget v5, v2, Landroid/graphics/RectF;->left:F

    aput v5, v0, v3

    iget v2, v2, Landroid/graphics/RectF;->top:F

    aput v2, v0, v1

    sget-object v2, Lq4/p;->LEFT:Lq4/p;

    invoke-virtual {p0, v2}, Lp4/c;->f(Lq4/p;)Ly4/f;

    move-result-object v2

    invoke-virtual {v2, v0}, Ly4/f;->c([F)V

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lp4/d;->onSizeChanged(IIII)V

    iget-boolean p1, p0, Lp4/c;->j0:Z

    if-eqz p1, :cond_1

    sget-object p1, Lq4/p;->LEFT:Lq4/p;

    invoke-virtual {p0, p1}, Lp4/c;->f(Lq4/p;)Ly4/f;

    move-result-object p1

    invoke-virtual {p1, v0}, Ly4/f;->d([F)V

    iget-object p1, v4, Ly4/h;->n:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    iget-object p2, v4, Ly4/h;->a:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    aget p2, v0, v3

    iget-object p3, v4, Ly4/h;->b:Landroid/graphics/RectF;

    iget p4, p3, Landroid/graphics/RectF;->left:F

    sub-float/2addr p2, p4

    aget p4, v0, v1

    iget p3, p3, Landroid/graphics/RectF;->top:F

    sub-float/2addr p4, p3

    neg-float p2, p2

    neg-float p3, p4

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {v4, p1, p0, v1}, Ly4/h;->e(Landroid/graphics/Matrix;Lp4/d;Z)V

    goto :goto_0

    :cond_1
    iget-object p1, v4, Ly4/h;->a:Landroid/graphics/Matrix;

    invoke-virtual {v4, p1, p0, v1}, Ly4/h;->e(Landroid/graphics/Matrix;Lp4/d;Z)V

    :goto_0
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lp4/d;->m:Lw4/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lp4/d;->b:Lr4/d;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v2, p0, Lp4/d;->j:Z

    if-nez v2, :cond_1

    return v1

    :cond_1
    check-cast v0, Lw4/a;

    invoke-virtual {v0, p0, p1}, Lw4/a;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public setAutoScaleMinMaxEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lp4/c;->D:Z

    return-void
.end method

.method public setBorderColor(I)V
    .locals 0

    iget-object p0, p0, Lp4/c;->e0:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setBorderWidth(F)V
    .locals 0

    iget-object p0, p0, Lp4/c;->e0:Landroid/graphics/Paint;

    invoke-static {p1}, Ly4/g;->c(F)F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public setClipValuesToContent(Z)V
    .locals 0

    iput-boolean p1, p0, Lp4/c;->h0:Z

    return-void
.end method

.method public setDoubleTapToZoomEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lp4/c;->F:Z

    return-void
.end method

.method public setDragEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lp4/c;->H:Z

    iput-boolean p1, p0, Lp4/c;->I:Z

    return-void
.end method

.method public setDragOffsetX(F)V
    .locals 0

    iget-object p0, p0, Lp4/d;->r:Ly4/h;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Ly4/g;->c(F)F

    move-result p1

    iput p1, p0, Ly4/h;->l:F

    return-void
.end method

.method public setDragOffsetY(F)V
    .locals 0

    iget-object p0, p0, Lp4/d;->r:Ly4/h;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Ly4/g;->c(F)F

    move-result p1

    iput p1, p0, Ly4/h;->m:F

    return-void
.end method

.method public setDragXEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lp4/c;->H:Z

    return-void
.end method

.method public setDragYEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lp4/c;->I:Z

    return-void
.end method

.method public setDrawBorders(Z)V
    .locals 0

    iput-boolean p1, p0, Lp4/c;->g0:Z

    return-void
.end method

.method public setDrawGridBackground(Z)V
    .locals 0

    iput-boolean p1, p0, Lp4/c;->f0:Z

    return-void
.end method

.method public setGridBackgroundColor(I)V
    .locals 0

    iget-object p0, p0, Lp4/c;->d0:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setHighlightPerDragEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lp4/c;->G:Z

    return-void
.end method

.method public setKeepPositionOnRotation(Z)V
    .locals 0

    iput-boolean p1, p0, Lp4/c;->j0:Z

    return-void
.end method

.method public setMaxVisibleValueCount(I)V
    .locals 0

    iput p1, p0, Lp4/c;->C:I

    return-void
.end method

.method public setMinOffset(F)V
    .locals 0

    iput p1, p0, Lp4/c;->i0:F

    return-void
.end method

.method public setOnDrawListener(Lw4/e;)V
    .locals 0

    return-void
.end method

.method public setPinchZoom(Z)V
    .locals 0

    iput-boolean p1, p0, Lp4/c;->E:Z

    return-void
.end method

.method public setRendererLeftYAxis(Lx4/j;)V
    .locals 0

    iput-object p1, p0, Lp4/c;->m0:Lx4/j;

    return-void
.end method

.method public setRendererRightYAxis(Lx4/j;)V
    .locals 0

    iput-object p1, p0, Lp4/c;->n0:Lx4/j;

    return-void
.end method

.method public setScaleEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lp4/c;->J:Z

    iput-boolean p1, p0, Lp4/c;->c0:Z

    return-void
.end method

.method public setScaleXEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lp4/c;->J:Z

    return-void
.end method

.method public setScaleYEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lp4/c;->c0:Z

    return-void
.end method

.method public setVisibleXRangeMaximum(F)V
    .locals 2

    iget-object v0, p0, Lp4/d;->i:Lq4/o;

    iget v0, v0, Lq4/a;->z:F

    div-float/2addr v0, p1

    iget-object p0, p0, Lp4/d;->r:Ly4/h;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 p1, 0x3f800000    # 1.0f

    cmpg-float v1, v0, p1

    if-gez v1, :cond_0

    move v0, p1

    :cond_0
    iput v0, p0, Ly4/h;->g:F

    iget-object p1, p0, Ly4/h;->a:Landroid/graphics/Matrix;

    iget-object v0, p0, Ly4/h;->b:Landroid/graphics/RectF;

    invoke-virtual {p0, p1, v0}, Ly4/h;->d(Landroid/graphics/Matrix;Landroid/graphics/RectF;)V

    return-void
.end method

.method public setVisibleXRangeMinimum(F)V
    .locals 1

    iget-object v0, p0, Lp4/d;->i:Lq4/o;

    iget v0, v0, Lq4/a;->z:F

    div-float/2addr v0, p1

    iget-object p0, p0, Lp4/d;->r:Ly4/h;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    cmpl-float p1, v0, p1

    if-nez p1, :cond_0

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    :cond_0
    iput v0, p0, Ly4/h;->h:F

    iget-object p1, p0, Ly4/h;->a:Landroid/graphics/Matrix;

    iget-object v0, p0, Ly4/h;->b:Landroid/graphics/RectF;

    invoke-virtual {p0, p1, v0}, Ly4/h;->d(Landroid/graphics/Matrix;Landroid/graphics/RectF;)V

    return-void
.end method

.method public setXAxisRenderer(Lx4/i;)V
    .locals 0

    iput-object p1, p0, Lp4/c;->q0:Lx4/i;

    return-void
.end method
