.class public final synthetic Lk9/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lk9/r;

.field public final synthetic c:F


# direct methods
.method public synthetic constructor <init>(Lk9/r;FI)V
    .locals 0

    iput p3, p0, Lk9/k;->a:I

    iput-object p1, p0, Lk9/k;->b:Lk9/r;

    iput p2, p0, Lk9/k;->c:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget v0, p0, Lk9/k;->a:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "this$0"

    iget-object v1, p0, Lk9/k;->b:Lk9/r;

    invoke-static {v1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v1, Lk9/r;->f:Lk9/g;

    invoke-virtual {v0}, Li9/a;->c()Lj9/h;

    move-result-object v0

    check-cast v0, Lk9/z;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v1}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget p0, p0, Lk9/k;->c:F

    mul-float/2addr p1, p0

    invoke-virtual {v0, p1}, Lk9/z;->l(F)V

    :cond_0
    return-void

    :pswitch_0
    const-string v0, "this$0"

    iget-object v1, p0, Lk9/k;->b:Lk9/r;

    invoke-static {v1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v1, Lk9/r;->f:Lk9/g;

    invoke-virtual {v0}, Li9/a;->c()Lj9/h;

    move-result-object v0

    check-cast v0, Lk9/z;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v1}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget p0, p0, Lk9/k;->c:F

    mul-float/2addr p1, p0

    invoke-virtual {v0, p1}, Lk9/z;->l(F)V

    :cond_1
    return-void

    :pswitch_1
    const-string v0, "this$0"

    iget-object v1, p0, Lk9/k;->b:Lk9/r;

    invoke-static {v1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v1, Lk9/r;->f:Lk9/g;

    invoke-virtual {v0}, Li9/a;->c()Lj9/h;

    move-result-object v0

    check-cast v0, Lk9/z;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v1}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget p0, p0, Lk9/k;->c:F

    mul-float/2addr p1, p0

    invoke-virtual {v0, p1}, Lk9/z;->l(F)V

    :cond_2
    return-void

    :pswitch_2
    const-string v0, "this$0"

    iget-object v1, p0, Lk9/k;->b:Lk9/r;

    invoke-static {v1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v1, Lk9/r;->f:Lk9/g;

    invoke-virtual {v0}, Li9/a;->c()Lj9/h;

    move-result-object v0

    check-cast v0, Lk9/z;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v1}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget p0, p0, Lk9/k;->c:F

    mul-float/2addr p1, p0

    invoke-virtual {v0, p1}, Lk9/z;->l(F)V

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
