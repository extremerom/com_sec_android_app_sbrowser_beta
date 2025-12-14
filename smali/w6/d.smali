.class public final synthetic Lw6/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;I)V
    .locals 0

    iput p2, p0, Lw6/d;->a:I

    iput-object p1, p0, Lw6/d;->b:Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    const-string v1, "animation"

    iget-object v2, p0, Lw6/d;->b:Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;

    const-string v3, "this$0"

    iget p0, p0, Lw6/d;->a:I

    packed-switch p0, :pswitch_data_0

    sget p0, Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;->A:I

    invoke-static {v2, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v0}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    iput p0, v2, Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;->f:F

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    return-void

    :pswitch_0
    sget p0, Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;->A:I

    invoke-static {v2, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v0}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    iput p0, v2, Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;->g:F

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    return-void

    :pswitch_1
    sget p0, Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;->A:I

    invoke-static {v2, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v0}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    iput p0, v2, Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;->e:F

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
