.class public Lcom/github/mikephil/charting/charts/BarChart;
.super Lp4/c;
.source "SourceFile"

# interfaces
.implements Lu4/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lp4/c;",
        "Lu4/a;"
    }
.end annotation


# instance fields
.field public A0:Z

.field public B0:Z

.field public C0:Z

.field public z0:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lp4/d;->a:Z

    const/4 p2, 0x0

    iput-object p2, p0, Lp4/d;->b:Lr4/d;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lp4/d;->c:Z

    iput-boolean p2, p0, Lp4/d;->d:Z

    const v0, 0x3f666666    # 0.9f

    iput v0, p0, Lp4/d;->e:F

    new-instance v0, LO9/a;

    invoke-direct {v0, p1}, LO9/a;-><init>(I)V

    iput-object v0, p0, Lp4/d;->f:LO9/a;

    iput-boolean p2, p0, Lp4/d;->j:Z

    const-string v0, "No chart data available."

    iput-object v0, p0, Lp4/d;->n:Ljava/lang/String;

    new-instance v0, Ly4/h;

    invoke-direct {v0}, Ly4/h;-><init>()V

    iput-object v0, p0, Lp4/d;->r:Ly4/h;

    const/4 v1, 0x0

    iput v1, p0, Lp4/d;->t:F

    iput v1, p0, Lp4/d;->u:F

    iput v1, p0, Lp4/d;->v:F

    iput v1, p0, Lp4/d;->w:F

    iput-boolean p1, p0, Lp4/d;->x:Z

    iput v1, p0, Lp4/d;->z:F

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lp4/d;->A:Ljava/util/ArrayList;

    iput-boolean p1, p0, Lp4/d;->B:Z

    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    new-instance v2, Lcom/github/mikephil/charting/animation/ChartAnimator;

    new-instance v3, LD2/d;

    const/4 v4, 0x5

    invoke-direct {v3, v4, p0}, LD2/d;-><init>(ILjava/lang/Object;)V

    invoke-direct {v2, v3}, Lcom/github/mikephil/charting/animation/ChartAnimator;-><init>(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iput-object v2, p0, Lp4/d;->s:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Ly4/g;->a:Landroid/util/DisplayMetrics;

    if-nez v2, :cond_0

    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v2

    sput v2, Ly4/g;->b:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v2

    sput v2, Ly4/g;->c:I

    const-string v2, "MPChartLib-Utils"

    const-string v3, "Utils.init(...) PROVIDED CONTEXT OBJECT IS NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v4

    sput v4, Ly4/g;->b:I

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    sput v3, Ly4/g;->c:I

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    sput-object v2, Ly4/g;->a:Landroid/util/DisplayMetrics;

    :goto_0
    const/high16 v2, 0x43fa0000    # 500.0f

    invoke-static {v2}, Ly4/g;->c(F)F

    move-result v2

    iput v2, p0, Lp4/d;->z:F

    new-instance v2, Lq4/c;

    invoke-direct {v2}, Lq4/b;-><init>()V

    const-string v3, "Description Label"

    iput-object v3, v2, Lq4/c;->f:Ljava/lang/String;

    sget-object v3, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    iput-object v3, v2, Lq4/c;->g:Landroid/graphics/Paint$Align;

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Ly4/g;->c(F)F

    move-result v4

    iput v4, v2, Lq4/b;->d:F

    iput-object v2, p0, Lp4/d;->k:Lq4/c;

    new-instance v2, Lq4/l;

    invoke-direct {v2}, Lq4/b;-><init>()V

    new-array v4, p1, [Lq4/m;

    iput-object v4, v2, Lq4/l;->f:[Lq4/m;

    sget-object v4, Lq4/h;->LEFT:Lq4/h;

    iput-object v4, v2, Lq4/l;->g:Lq4/h;

    sget-object v4, Lq4/k;->BOTTOM:Lq4/k;

    iput-object v4, v2, Lq4/l;->h:Lq4/k;

    sget-object v4, Lq4/i;->HORIZONTAL:Lq4/i;

    iput-object v4, v2, Lq4/l;->i:Lq4/i;

    sget-object v4, Lq4/f;->LEFT_TO_RIGHT:Lq4/f;

    iput-object v4, v2, Lq4/l;->j:Lq4/f;

    sget-object v4, Lq4/g;->SQUARE:Lq4/g;

    iput-object v4, v2, Lq4/l;->k:Lq4/g;

    iput v3, v2, Lq4/l;->l:F

    const/high16 v3, 0x40400000    # 3.0f

    iput v3, v2, Lq4/l;->m:F

    const/high16 v4, 0x40c00000    # 6.0f

    iput v4, v2, Lq4/l;->n:F

    const/high16 v4, 0x40a00000    # 5.0f

    iput v4, v2, Lq4/l;->o:F

    iput v3, v2, Lq4/l;->p:F

    const v5, 0x3f733333    # 0.95f

    iput v5, v2, Lq4/l;->q:F

    iput v1, v2, Lq4/l;->r:F

    iput v1, v2, Lq4/l;->s:F

    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0x10

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, v2, Lq4/l;->t:Ljava/util/ArrayList;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, v2, Lq4/l;->u:Ljava/util/ArrayList;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, v2, Lq4/l;->v:Ljava/util/ArrayList;

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v5}, Ly4/g;->c(F)F

    move-result v5

    iput v5, v2, Lq4/b;->d:F

    invoke-static {v4}, Ly4/g;->c(F)F

    move-result v4

    iput v4, v2, Lq4/b;->b:F

    invoke-static {v3}, Ly4/g;->c(F)F

    move-result v4

    iput v4, v2, Lq4/b;->c:F

    iput-object v2, p0, Lp4/d;->l:Lq4/l;

    new-instance v4, Lx4/g;

    invoke-direct {v4, v0}, Lx4/h;-><init>(Ly4/h;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, v4, Lx4/g;->d:Ljava/util/ArrayList;

    new-instance v5, Landroid/graphics/Paint$FontMetrics;

    invoke-direct {v5}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    iput-object v5, v4, Lx4/g;->e:Landroid/graphics/Paint$FontMetrics;

    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    iput-object v5, v4, Lx4/g;->f:Landroid/graphics/Path;

    iput-object v2, v4, Lx4/g;->c:Lq4/l;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v4, Lx4/g;->a:Landroid/graphics/Paint;

    const/high16 v5, 0x41100000    # 9.0f

    invoke-static {v5}, Ly4/g;->c(F)F

    move-result v5

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object v5, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v4, Lx4/g;->b:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iput-object v4, p0, Lp4/d;->o:Lx4/g;

    new-instance v2, Lq4/o;

    invoke-direct {v2}, Lq4/a;-><init>()V

    iput p2, v2, Lq4/o;->A:I

    sget-object v4, Lq4/n;->TOP:Lq4/n;

    iput-object v4, v2, Lq4/o;->B:Lq4/n;

    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {v4}, Ly4/g;->c(F)F

    move-result v4

    iput v4, v2, Lq4/b;->c:F

    iput-object v2, p0, Lp4/d;->i:Lq4/o;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lp4/d;->g:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lp4/d;->h:Landroid/graphics/Paint;

    const/16 v4, 0xbd

    const/16 v6, 0x33

    const/16 v7, 0xf7

    invoke-static {v7, v4, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lp4/d;->h:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v2, p0, Lp4/d;->h:Landroid/graphics/Paint;

    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {v4}, Ly4/g;->c(F)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-boolean v2, p0, Lp4/d;->a:Z

    if-eqz v2, :cond_1

    const-string v2, ""

    const-string v4, "Chart.init()"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v2, Lq4/r;

    sget-object v4, Lq4/p;->LEFT:Lq4/p;

    invoke-direct {v2, v4}, Lq4/r;-><init>(Lq4/p;)V

    iput-object v2, p0, Lp4/c;->k0:Lq4/r;

    new-instance v2, Lq4/r;

    sget-object v4, Lq4/p;->RIGHT:Lq4/p;

    invoke-direct {v2, v4}, Lq4/r;-><init>(Lq4/p;)V

    iput-object v2, p0, Lp4/c;->l0:Lq4/r;

    new-instance v2, Ly4/f;

    invoke-direct {v2, v0}, Ly4/f;-><init>(Ly4/h;)V

    iput-object v2, p0, Lp4/c;->o0:Ly4/f;

    new-instance v2, Ly4/f;

    invoke-direct {v2, v0}, Ly4/f;-><init>(Ly4/h;)V

    iput-object v2, p0, Lp4/c;->p0:Ly4/f;

    new-instance v2, Lx4/j;

    iget-object v4, p0, Lp4/c;->k0:Lq4/r;

    iget-object v6, p0, Lp4/c;->o0:Ly4/f;

    invoke-direct {v2, v0, v4, v6}, Lx4/j;-><init>(Ly4/h;Lq4/r;Ly4/f;)V

    iput-object v2, p0, Lp4/c;->m0:Lx4/j;

    new-instance v2, Lx4/j;

    iget-object v4, p0, Lp4/c;->l0:Lq4/r;

    iget-object v6, p0, Lp4/c;->p0:Ly4/f;

    invoke-direct {v2, v0, v4, v6}, Lx4/j;-><init>(Ly4/h;Lq4/r;Ly4/f;)V

    iput-object v2, p0, Lp4/c;->n0:Lx4/j;

    new-instance v2, Lx4/i;

    iget-object v4, p0, Lp4/d;->i:Lq4/o;

    iget-object v6, p0, Lp4/c;->o0:Ly4/f;

    invoke-direct {v2, v0, v4, v6}, Lx4/i;-><init>(Ly4/h;Lq4/o;Ly4/f;)V

    iput-object v2, p0, Lp4/c;->q0:Lx4/i;

    new-instance v2, Lt4/b;

    invoke-direct {v2, p0}, Lt4/b;-><init>(Lcom/github/mikephil/charting/charts/BarChart;)V

    invoke-virtual {p0, v2}, Lp4/d;->setHighlighter(Lt4/b;)V

    new-instance v2, Lw4/a;

    iget-object v4, v0, Ly4/h;->a:Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    iput p1, v2, Lw4/b;->a:I

    iput-object p0, v2, Lw4/b;->d:Lcom/github/mikephil/charting/charts/BarChart;

    new-instance v6, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v6, v2, Lw4/b;->c:Landroid/view/GestureDetector;

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    iput-object v6, v2, Lw4/a;->e:Landroid/graphics/Matrix;

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    iput-object v6, v2, Lw4/a;->f:Landroid/graphics/Matrix;

    invoke-static {v1, v1}, Ly4/c;->b(FF)Ly4/c;

    move-result-object v6

    iput-object v6, v2, Lw4/a;->g:Ly4/c;

    invoke-static {v1, v1}, Ly4/c;->b(FF)Ly4/c;

    move-result-object v6

    iput-object v6, v2, Lw4/a;->h:Ly4/c;

    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, v2, Lw4/a;->i:F

    iput v6, v2, Lw4/a;->j:F

    iput v6, v2, Lw4/a;->k:F

    const-wide/16 v7, 0x0

    iput-wide v7, v2, Lw4/a;->n:J

    invoke-static {v1, v1}, Ly4/c;->b(FF)Ly4/c;

    move-result-object v9

    iput-object v9, v2, Lw4/a;->o:Ly4/c;

    invoke-static {v1, v1}, Ly4/c;->b(FF)Ly4/c;

    move-result-object v1

    iput-object v1, v2, Lw4/a;->p:Ly4/c;

    iput-object v4, v2, Lw4/a;->e:Landroid/graphics/Matrix;

    invoke-static {v3}, Ly4/g;->c(F)F

    move-result v1

    iput v1, v2, Lw4/a;->q:F

    const/high16 v1, 0x40600000    # 3.5f

    invoke-static {v1}, Ly4/g;->c(F)F

    move-result v1

    iput v1, v2, Lw4/a;->r:F

    iput-object v2, p0, Lp4/d;->m:Lw4/b;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lp4/c;->d0:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lp4/c;->d0:Landroid/graphics/Paint;

    const/16 v2, 0xf0

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lp4/c;->e0:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lp4/c;->e0:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lp4/c;->e0:Landroid/graphics/Paint;

    invoke-static {v6}, Ly4/g;->c(F)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v1, Lx4/b;

    iget-object v2, p0, Lp4/d;->s:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-direct {v1, p0, v2, v0}, Lx4/b;-><init>(Lu4/a;Lcom/github/mikephil/charting/animation/ChartAnimator;Ly4/h;)V

    iput-object v1, p0, Lp4/d;->p:Lx4/e;

    new-instance v0, Lt4/a;

    invoke-direct {v0, p0}, Lt4/b;-><init>(Lcom/github/mikephil/charting/charts/BarChart;)V

    invoke-virtual {p0, v0}, Lp4/d;->setHighlighter(Lt4/b;)V

    invoke-virtual {p0}, Lp4/d;->getXAxis()Lq4/o;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, v0, Lq4/a;->t:F

    invoke-virtual {p0}, Lp4/d;->getXAxis()Lq4/o;

    move-result-object v0

    iput v1, v0, Lq4/a;->u:F

    const/16 v0, 0x64

    iput v0, p0, Lp4/c;->C:I

    iput-boolean p1, p0, Lp4/c;->D:Z

    iput-boolean p1, p0, Lp4/c;->E:Z

    iput-boolean p2, p0, Lp4/c;->F:Z

    iput-boolean p2, p0, Lp4/c;->G:Z

    iput-boolean p2, p0, Lp4/c;->H:Z

    iput-boolean p2, p0, Lp4/c;->I:Z

    iput-boolean p2, p0, Lp4/c;->J:Z

    iput-boolean p2, p0, Lp4/c;->c0:Z

    iput-boolean p1, p0, Lp4/c;->f0:Z

    iput-boolean p1, p0, Lp4/c;->g0:Z

    iput-boolean p1, p0, Lp4/c;->h0:Z

    const/high16 v0, 0x41700000    # 15.0f

    iput v0, p0, Lp4/c;->i0:F

    iput-boolean p1, p0, Lp4/c;->j0:Z

    iput-wide v7, p0, Lp4/c;->r0:J

    iput-wide v7, p0, Lp4/c;->s0:J

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lp4/c;->t0:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lp4/c;->u0:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-boolean p1, p0, Lp4/c;->v0:Z

    sget-object v0, Ly4/b;->d:Ly4/e;

    invoke-virtual {v0}, Ly4/e;->b()Ly4/d;

    move-result-object v0

    check-cast v0, Ly4/b;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Ly4/b;->b:D

    iput-wide v1, v0, Ly4/b;->c:D

    iput-object v0, p0, Lp4/c;->w0:Ly4/b;

    sget-object v0, Ly4/b;->d:Ly4/e;

    invoke-virtual {v0}, Ly4/e;->b()Ly4/d;

    move-result-object v0

    check-cast v0, Ly4/b;

    iput-wide v1, v0, Ly4/b;->b:D

    iput-wide v1, v0, Ly4/b;->c:D

    iput-object v0, p0, Lp4/c;->x0:Ly4/b;

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lp4/c;->y0:[F

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarChart;->z0:Z

    iput-boolean p2, p0, Lcom/github/mikephil/charting/charts/BarChart;->A0:Z

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarChart;->B0:Z

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarChart;->C0:Z

    return-void
.end method


# virtual methods
.method public final b(FF)Lt4/c;
    .locals 8

    iget-object v0, p0, Lp4/d;->b:Lr4/d;

    if-nez v0, :cond_0

    const-string p0, "MPAndroidChart"

    const-string p1, "Can\'t select by touch. No data set."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lp4/d;->getHighlighter()Lt4/d;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lt4/d;->a(FF)Lt4/c;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-boolean p0, p0, Lcom/github/mikephil/charting/charts/BarChart;->z0:Z

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Lt4/c;

    iget v1, p1, Lt4/c;->a:F

    iget v2, p1, Lt4/c;->b:F

    iget v3, p1, Lt4/c;->c:F

    iget v4, p1, Lt4/c;->d:F

    iget v5, p1, Lt4/c;->e:I

    const/4 v6, -0x1

    iget-object v7, p1, Lt4/c;->g:Lq4/p;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lt4/c;-><init>(FFFFIILq4/p;)V

    return-object p0

    :cond_2
    :goto_0
    return-object p1
.end method

.method public getBarData()Lr4/a;
    .locals 0

    iget-object p0, p0, Lp4/d;->b:Lr4/d;

    check-cast p0, Lr4/a;

    return-object p0
.end method

.method public setDrawBarShadow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarChart;->B0:Z

    return-void
.end method

.method public setDrawValueAboveBar(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarChart;->A0:Z

    return-void
.end method

.method public setFitBars(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarChart;->C0:Z

    return-void
.end method

.method public setHighlightFullBarEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarChart;->z0:Z

    return-void
.end method
