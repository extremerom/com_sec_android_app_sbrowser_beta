.class public final Ll/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ll/b;->a:Ljava/util/ArrayList;

    iput-object p1, p0, Ll/b;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/View;->isClickable()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Ll/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ll/c;

    iget-object v5, v4, Ll/c;->a:Landroid/view/View;

    if-ne v5, p1, :cond_0

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ll/c;

    invoke-virtual {v4}, Ll/c;->b()Z

    move-result v5

    if-nez v5, :cond_2

    iput-object p1, v4, Ll/c;->a:Landroid/view/View;

    goto :goto_0

    :cond_3
    new-instance v4, Ll/c;

    iget-object p0, p0, Ll/b;->b:Landroid/content/Context;

    invoke-direct {v4, p0, p1}, Ll/c;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object p0, v4, Ll/c;->a:Landroid/view/View;

    instance-of p1, p0, Landroid/view/ViewGroup;

    if-eqz p1, :cond_4

    iput-boolean v1, v4, Ll/c;->c:Z

    goto :goto_1

    :cond_4
    iput-boolean v0, v4, Ll/c;->c:Z

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    int-to-float p0, p0

    iget-object p1, v4, Ll/c;->f:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x40400000    # 3.0f

    mul-float/2addr p1, v2

    sub-float p1, p0, p1

    div-float/2addr p1, p0

    iput p1, v4, Ll/c;->b:F

    iget-boolean p0, v4, Ll/c;->e:Z

    if-eqz p0, :cond_5

    goto :goto_2

    :cond_5
    iput-boolean v1, v4, Ll/c;->e:Z

    iget-object p0, v4, Ll/c;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_6
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-nez v2, :cond_7

    const/high16 p1, 0x3f800000    # 1.0f

    :cond_7
    iget v2, v4, Ll/c;->b:F

    const/4 v3, 0x2

    new-array v3, v3, [F

    aput p1, v3, v0

    aput v2, v3, v1

    invoke-virtual {p0, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    const-wide/16 v0, 0x64

    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object p1, Ll/c;->g:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_8
    :goto_2
    return-void
.end method

.method public final b()V
    .locals 2

    iget-object p0, p0, Ll/b;->a:Ljava/util/ArrayList;

    new-instance v0, Lca/c;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lca/c;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
