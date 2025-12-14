.class public final LPc/f;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/o;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LPc/f;->a:I

    iput-object p2, p0, LPc/f;->b:Ljava/lang/Object;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget v0, p0, LPc/f;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, La0/u0;

    iget-object p1, p1, La0/u0;->a:La0/m;

    check-cast p2, La0/m;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-object p3, p2

    check-cast p3, La0/q;

    iget v0, p3, La0/q;->P:I

    sget-object v1, Lm0/j;->a:Lm0/j;

    iget-object p0, p0, LPc/f;->b:Ljava/lang/Object;

    check-cast p0, Lm0/m;

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Landroidx/compose/ui/CompositionLocalMapInjectionElement;

    invoke-virtual {p3}, La0/q;->l()La0/e0;

    move-result-object p3

    invoke-direct {v1, p3}, Landroidx/compose/ui/CompositionLocalMapInjectionElement;-><init>(La0/e0;)V

    invoke-interface {v1, p0}, Lm0/m;->g(Lm0/m;)Lm0/m;

    move-result-object p0

    invoke-static {p2, p0}, La/a;->f(La0/m;Lm0/m;)Lm0/m;

    move-result-object p0

    :goto_0
    check-cast p1, La0/q;

    const p2, 0x1e65194f

    invoke-virtual {p1, p2}, La0/q;->R(I)V

    sget-object p2, LB0/h;->K:LB0/g;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, LB0/g;->c:LB0/f;

    invoke-static {p1, p0, p2}, La0/d;->M(La0/m;Ljava/lang/Object;Lsb/n;)V

    sget-object p0, LB0/g;->i:LB0/f;

    iget-boolean p2, p1, La0/q;->O:Z

    if-nez p2, :cond_1

    invoke-virtual {p1}, La0/q;->G()Ljava/lang/Object;

    move-result-object p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p2, p3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, La0/q;->a0(Ljava/lang/Object;)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, La0/q;->b(Ljava/lang/Object;Lsb/n;)V

    :cond_2
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, La0/q;->p(Z)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_0
    check-cast p1, Li9/a;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    check-cast p3, Landroid/graphics/Color;

    const-string p1, "animatedValue"

    invoke-static {p3, p1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LPc/f;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashMap;

    const-string p1, "color"

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lsb/k;

    if-eqz p0, :cond_3

    invoke-virtual {p3}, Landroid/graphics/Color;->toArgb()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_1
    check-cast p1, Li9/a;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    iget-object p0, p0, LPc/f;->b:Ljava/lang/Object;

    check-cast p0, Ll9/b;

    iget p3, p0, Ll9/b;->n:F

    const/16 v0, 0x5a

    int-to-float v0, v0

    rem-float/2addr p3, v0

    const/high16 v0, 0x42340000    # 45.0f

    cmpg-float v0, p3, v0

    if-gtz v0, :cond_4

    goto :goto_1

    :cond_4
    const/high16 v0, 0x42b40000    # 90.0f

    sub-float p3, v0, p3

    :goto_1
    const v0, 0x40490fdb    # (float)Math.PI

    mul-float/2addr p3, v0

    const/high16 v0, 0x43340000    # 180.0f

    div-float/2addr p3, v0

    float-to-double v0, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float p3, v2

    const/high16 v2, 0x3f000000    # 0.5f

    div-float p3, v2, p3

    iget v3, p0, Ll9/b;->f:F

    mul-float v4, v3, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    div-float/2addr v4, v0

    add-float/2addr v4, p3

    new-instance p3, Landroid/graphics/PointF;

    const/4 v0, 0x0

    invoke-direct {p3, v4, v0}, Landroid/graphics/PointF;-><init>(FF)V

    iget p0, p0, Ll9/b;->n:F

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float p0, v0

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float p0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    new-instance v1, Landroid/graphics/PointF;

    iget v4, p3, Landroid/graphics/PointF;->x:F

    mul-float v5, v4, p0

    iget p3, p3, Landroid/graphics/PointF;->y:F

    mul-float v6, p3, v0

    sub-float/2addr v5, v6

    mul-float/2addr v4, v0

    mul-float/2addr p3, p0

    add-float/2addr p3, v4

    invoke-direct {v1, v5, p3}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance p0, Landroid/graphics/PointF;

    invoke-direct {p0, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance p3, Landroid/graphics/PointF;

    iget v0, p0, Landroid/graphics/PointF;->x:F

    iget v2, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v2

    iget v2, p0, Landroid/graphics/PointF;->y:F

    iget v4, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v4

    invoke-direct {p3, v0, v2}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v0, Landroid/graphics/PointF;

    iget v2, p0, Landroid/graphics/PointF;->x:F

    iget v4, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v2, v4

    iget p0, p0, Landroid/graphics/PointF;->y:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr p0, v1

    invoke-direct {v0, v2, p0}, Landroid/graphics/PointF;-><init>(FF)V

    sget-object p0, Ll9/b;->s:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p0, p2}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result p0

    new-instance p2, Landroid/graphics/PointF;

    iget v1, p3, Landroid/graphics/PointF;->x:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p0

    mul-float/2addr v1, v2

    iget v4, v0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v4, p0

    add-float/2addr v4, v1

    iget p3, p3, Landroid/graphics/PointF;->y:F

    mul-float/2addr p3, v2

    iget v0, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v0, p0

    add-float/2addr v0, p3

    invoke-direct {p2, v4, v0}, Landroid/graphics/PointF;-><init>(FF)V

    instance-of p0, p1, Ll9/d;

    const/4 p3, 0x0

    if-eqz p0, :cond_5

    move-object v0, p1

    check-cast v0, Ll9/d;

    goto :goto_2

    :cond_5
    move-object v0, p3

    :goto_2
    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    iput-object p2, v0, Ll9/d;->f:Landroid/graphics/PointF;

    invoke-virtual {v0}, Li9/a;->c()Lj9/h;

    move-result-object p2

    check-cast p2, Ll9/j;

    if-eqz p2, :cond_7

    iget-object v0, v0, Ll9/d;->f:Landroid/graphics/PointF;

    const-string v1, "pos"

    invoke-static {v0, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lk9/s;

    const/4 v2, 0x2

    invoke-direct {v1, p2, v0, v2}, Lk9/s;-><init>(Lj9/h;Ljava/lang/Object;I)V

    invoke-virtual {p2, v1}, Lj9/h;->k(Ljava/util/function/Consumer;)V

    :cond_7
    :goto_3
    if-eqz p0, :cond_8

    move-object p3, p1

    check-cast p3, Ll9/d;

    :cond_8
    if-nez p3, :cond_9

    goto :goto_4

    :cond_9
    iput v3, p3, Ll9/d;->e:F

    invoke-virtual {p3}, Li9/a;->c()Lj9/h;

    move-result-object p0

    check-cast p0, Ll9/j;

    if-eqz p0, :cond_a

    iget p1, p3, Ll9/d;->e:F

    new-instance p2, Ll9/f;

    const/4 p3, 0x4

    invoke-direct {p2, p0, p1, p3}, Ll9/f;-><init>(Ll9/j;FI)V

    invoke-virtual {p0, p2}, Lj9/h;->k(Ljava/util/function/Consumer;)V

    :cond_a
    :goto_4
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_2
    check-cast p1, Lm0/m;

    check-cast p2, La0/m;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    const-string p3, "$this$composed"

    invoke-static {p1, p3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, La0/q;

    const p1, 0x461e8ed8

    invoke-virtual {p2, p1}, La0/q;->R(I)V

    const p1, 0x44faf204

    invoke-virtual {p2, p1}, La0/q;->R(I)V

    iget-object p0, p0, LPc/f;->b:Ljava/lang/Object;

    check-cast p0, LB0/a;

    invoke-virtual {p2, p0}, La0/q;->e(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p2}, La0/q;->G()Ljava/lang/Object;

    move-result-object p3

    if-nez p1, :cond_b

    sget-object p1, La0/l;->a:La0/V;

    if-ne p3, p1, :cond_c

    :cond_b
    new-instance p3, LR/q;

    invoke-direct {p3, p0}, LR/q;-><init>(LB0/a;)V

    invoke-virtual {p2, p3}, La0/q;->a0(Ljava/lang/Object;)V

    :cond_c
    const/4 p0, 0x0

    invoke-virtual {p2, p0}, La0/q;->p(Z)V

    check-cast p3, LR/q;

    invoke-virtual {p2, p0}, La0/q;->p(Z)V

    return-object p3

    :pswitch_3
    check-cast p1, LXc/f;

    new-instance p2, LPc/e;

    iget-object p0, p0, LPc/f;->b:Ljava/lang/Object;

    check-cast p0, LPc/i;

    const/4 v0, 0x0

    invoke-direct {p2, p3, v0, p0, p1}, LPc/e;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
