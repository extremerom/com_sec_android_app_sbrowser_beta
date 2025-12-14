.class public final LD2/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LD2/d;->a:I

    iput-object p2, p0, LD2/d;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget v0, p0, LD2/d;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LD2/d;->b:Ljava/lang/Object;

    check-cast p0, Lz3/t;

    iget-object p1, p0, Lz3/t;->p:LH3/e;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lz3/t;->b:LL3/c;

    invoke-virtual {p0}, LL3/c;->a()F

    move-result p0

    invoke-virtual {p1, p0}, LH3/e;->s(F)V

    :cond_0
    return-void

    :pswitch_0
    iget-object p0, p0, LD2/d;->b:Ljava/lang/Object;

    check-cast p0, Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void

    :pswitch_1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object p0, p0, LD2/d;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-object p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->i:LF6/g;

    if-eqz p0, :cond_1

    iget-object v0, p0, LF6/g;->a:LF6/f;

    iget v1, v0, LF6/f;->i:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_1

    iput p1, v0, LF6/f;->i:F

    const/4 p1, 0x1

    iput-boolean p1, p0, LF6/g;->e:Z

    invoke-virtual {p0}, LF6/g;->invalidateSelf()V

    :cond_1
    return-void

    :pswitch_2
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p0, p0, LD2/d;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setScrimAlpha(I)V

    return-void

    :pswitch_3
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x0

    iget-object p0, p0, LD2/d;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->scrollTo(II)V

    return-void

    :pswitch_4
    const-string v0, "it"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LD2/d;->b:Ljava/lang/Object;

    check-cast p0, LD2/f;

    iget-object p0, p0, LD2/f;->e:Lsb/k;

    check-cast p0, Landroidx/recyclerview/widget/l1;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_5
    const-string v0, "it"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LD2/d;->b:Ljava/lang/Object;

    check-cast p0, LD2/f;

    iget-object p0, p0, LD2/f;->e:Lsb/k;

    check-cast p0, Landroidx/recyclerview/widget/l1;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p1, v0}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/l1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

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
