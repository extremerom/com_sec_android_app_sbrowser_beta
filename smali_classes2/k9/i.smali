.class public final synthetic Lk9/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:F

.field public final synthetic d:F


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;FFI)V
    .locals 0

    iput p4, p0, Lk9/i;->a:I

    iput-object p1, p0, Lk9/i;->b:Ljava/lang/Object;

    iput p2, p0, Lk9/i;->c:F

    iput p3, p0, Lk9/i;->d:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 12

    const/4 v0, 0x1

    const-string v1, "it"

    const-string v2, "this$0"

    iget v3, p0, Lk9/i;->d:F

    iget v4, p0, Lk9/i;->c:F

    iget-object v5, p0, Lk9/i;->b:Ljava/lang/Object;

    iget p0, p0, Lk9/i;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast v5, Lo9/b;

    const-string p0, "anim"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v1

    long-to-float p0, v1

    const v1, 0x3a83126f    # 0.001f

    mul-float/2addr p0, v1

    iget-object v1, v5, Lo9/b;->a:Lo9/c;

    iget v2, v1, Lo9/c;->e:F

    mul-float/2addr v2, p0

    add-float/2addr v2, v4

    iget v4, v1, Lo9/c;->f:F

    mul-float/2addr p0, v4

    add-float/2addr p0, v3

    iget-object v3, v5, Lo9/b;->b:Lo9/g;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v2, p0}, Lj9/b;->w(Lo9/g;FF)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v6

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p0, p1}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    iput p0, v3, Lo9/g;->b:F

    iget-object p1, v3, Lo9/g;->a:Lo9/e;

    iget-object v2, p1, Lo9/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    const/4 v8, 0x0

    if-eqz v4, :cond_1

    cmpl-float v4, p0, v8

    if-lez v4, :cond_0

    sget-object v4, Lo9/g;->h:Ljava/lang/String;

    const-string v9, "Did you forget to set the ripple size? Use [setMaxSize] or [setSizeAtProgresses] before playing the animation."

    invoke-static {v4, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v4, p1, Lo9/e;->c:Lo9/f;

    filled-new-array {v4}, [Lo9/f;

    move-result-object v4

    invoke-virtual {p1, v4}, Lo9/e;->a([Lo9/f;)V

    iget v4, p1, Lo9/e;->b:I

    goto :goto_1

    :cond_1
    iget v4, p1, Lo9/e;->b:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo9/f;

    :goto_0
    iget v4, v4, Lo9/f;->a:F

    cmpl-float v4, p0, v4

    if-lez v4, :cond_2

    iget v4, p1, Lo9/e;->b:I

    add-int/2addr v4, v0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v0

    invoke-static {v4, v9}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p1, Lo9/e;->b:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo9/f;

    goto :goto_0

    :cond_2
    iget v4, p1, Lo9/e;->b:I

    :goto_1
    add-int/lit8 v9, v4, -0x1

    const/4 v10, 0x0

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo9/f;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo9/f;

    sget-object v9, Lo9/g;->h:Ljava/lang/String;

    iget v9, v2, Lo9/f;->a:F

    iget v10, v4, Lo9/f;->a:F

    invoke-static {v9, v10, p0}, LF6/e;->n(FFF)F

    move-result v9

    iget v10, v4, Lo9/f;->b:F

    mul-float/2addr v10, v9

    iget v11, v2, Lo9/f;->b:F

    add-float/2addr v10, v11

    iput v10, p1, Lo9/e;->d:F

    iget v4, v4, Lo9/f;->c:F

    mul-float/2addr v4, v9

    iget v2, v2, Lo9/f;->c:F

    add-float/2addr v4, v2

    iput v4, p1, Lo9/e;->e:F

    iget-object p1, v3, Lo9/g;->a:Lo9/e;

    iget v2, p1, Lo9/e;->d:F

    iget p1, p1, Lo9/e;->e:F

    invoke-static {v3, v2, p1}, Lj9/b;->m(Lo9/g;FF)V

    iget-object p1, v3, Lo9/g;->a:Lo9/e;

    iget p1, p1, Lo9/e;->e:F

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr p1, v2

    invoke-static {v3, p1}, Lj9/b;->v(Lo9/g;F)V

    iget-object p1, v3, Lo9/g;->a:Lo9/e;

    iget v2, p1, Lo9/e;->d:F

    iget p1, p1, Lo9/e;->e:F

    invoke-static {v2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v3, p1}, Lj9/b;->x(Lo9/g;F)V

    const/high16 p1, -0x40c00000    # -0.75f

    mul-float/2addr p1, p0

    const/high16 v2, 0x3fa00000    # 1.25f

    add-float/2addr p1, v2

    invoke-static {v3, p1}, Lj9/b;->y(Lo9/g;F)V

    iget-object p1, v3, Lo9/g;->e:Lo9/d;

    invoke-static {p1, p0}, LF6/e;->g(Lo9/d;F)F

    move-result p1

    invoke-static {v3, p1}, Lj9/b;->B(Lo9/g;F)V

    iget-object p1, v3, Lo9/g;->f:Lo9/d;

    invoke-static {p1, p0}, LF6/e;->g(Lo9/d;F)F

    move-result p1

    invoke-static {v3, p1}, Lj9/b;->C(Lo9/g;F)V

    iget-object p1, v3, Lo9/g;->g:Lo9/d;

    invoke-static {p1, p0}, LF6/e;->g(Lo9/d;F)F

    move-result p1

    invoke-static {v3, p1}, Lj9/b;->D(Lo9/g;F)V

    iget-object p1, v3, Lo9/g;->e:Lo9/d;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, p1, Lo9/d;->a:F

    invoke-static {v8, v2, p0}, LF6/e;->n(FFF)F

    move-result v2

    iget v4, p1, Lo9/d;->b:F

    iget v9, p1, Lo9/d;->c:F

    invoke-static {v4, v9, p0}, LF6/e;->n(FFF)F

    move-result v4

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v4, v9, v4

    invoke-static {p1, p0}, LF6/e;->g(Lo9/d;F)F

    move-result p1

    cmpg-float v2, v4, v2

    if-gez v2, :cond_3

    iget v2, v3, Lo9/g;->d:F

    mul-float/2addr p1, v2

    sub-float/2addr v9, p1

    mul-float/2addr v9, v8

    mul-float/2addr p1, p1

    add-float/2addr p1, v9

    const v2, 0x3ba3d70a    # 0.005f

    cmpg-float p1, p1, v2

    if-gez p1, :cond_3

    iput-boolean v0, v3, Lo9/g;->c:Z

    :cond_3
    iget-boolean p1, v1, Lo9/c;->r:Z

    if-eqz p1, :cond_4

    int-to-float p1, v0

    sub-float v8, p1, p0

    :cond_4
    const/16 p0, 0x4b

    int-to-float p0, p0

    iget p1, v3, Lo9/g;->b:F

    mul-float/2addr p1, p0

    mul-float/2addr p1, v8

    invoke-static {v3, p1}, Lj9/b;->l(Lo9/g;F)V

    mul-float/2addr p0, v8

    invoke-static {v3, p0}, Lj9/b;->r(Lo9/g;F)V

    long-to-float p0, v6

    invoke-static {v3, p0}, Lj9/b;->t(Lo9/g;F)V

    iget-boolean p0, v1, Lo9/c;->u:Z

    if-eqz p0, :cond_5

    iget-boolean p0, v3, Lo9/g;->c:Z

    if-eqz p0, :cond_5

    iget-object p0, v5, Lo9/b;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_5
    return-void

    :pswitch_0
    check-cast v5, Lk9/r;

    invoke-static {v5, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v4, v3, p1}, Lk9/r;->f(FFLandroid/animation/ValueAnimator;)V

    return-void

    :pswitch_1
    check-cast v5, Lk9/r;

    invoke-static {v5, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v4, v3, p1}, Lk9/r;->f(FFLandroid/animation/ValueAnimator;)V

    return-void

    :pswitch_2
    check-cast v5, Lk9/r;

    invoke-static {v5, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v4, v3, p1}, Lk9/r;->f(FFLandroid/animation/ValueAnimator;)V

    return-void

    :pswitch_3
    check-cast v5, Lk9/r;

    invoke-static {v5, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v4, v3, p1}, Lk9/r;->f(FFLandroid/animation/ValueAnimator;)V

    return-void

    :pswitch_4
    check-cast v5, Lk9/r;

    invoke-static {v5, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v4, v3, p1}, Lk9/r;->f(FFLandroid/animation/ValueAnimator;)V

    return-void

    :pswitch_5
    check-cast v5, Lk9/r;

    invoke-static {v5, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v4, v3, p1}, Lk9/r;->f(FFLandroid/animation/ValueAnimator;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
