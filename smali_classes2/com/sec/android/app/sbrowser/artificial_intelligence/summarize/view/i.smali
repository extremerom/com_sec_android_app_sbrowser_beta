.class public final synthetic Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Landroid/animation/ValueAnimator;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/animation/ValueAnimator;Lh9/a;Li9/a;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/i;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/i;->c:Landroid/animation/ValueAnimator;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/i;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/i;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator;Landroid/animation/ValueAnimator;Landroid/view/View;I)V
    .locals 0

    iput p4, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/i;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/i;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/i;->c:Landroid/animation/ValueAnimator;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/i;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    iget v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/i;->a:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "$this_apply"

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/i;->c:Landroid/animation/ValueAnimator;

    invoke-static {v1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/i;->b:Ljava/lang/Object;

    check-cast v2, Lh9/a;

    invoke-static {v2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/Integer;

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    move-object v0, v3

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/i;->d:Ljava/lang/Object;

    check-cast p0, Li9/a;

    const-string v4, "null cannot be cast to non-null type T of com.samsung.android.sesl.visualeffect.lighteffects.common.config.AnimatableAttribute.applyAttrs$lambda$3$lambda$0"

    iget-object v5, v2, Lh9/a;->i:Lsb/o;

    if-eqz v0, :cond_2

    iget-object v0, v2, Lh9/a;->c:Ljava/lang/Object;

    instance-of v2, v0, Landroid/graphics/Color;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v3, v0

    :goto_1
    check-cast v3, Landroid/graphics/Color;

    if-eqz v3, :cond_2

    if-eqz v5, :cond_3

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-static {p1}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object p1

    invoke-static {p1, v4}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5, p0, v0, p1}, Lsb/o;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    if-eqz v5, :cond_3

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {p1, v4}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5, p0, v0, p1}, Lsb/o;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_2
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/i;->c:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/i;->d:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/i;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator;

    invoke-static {p0, v0, v1, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator;->a(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator;Landroid/animation/ValueAnimator;Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/i;->c:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/i;->d:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/i;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator;

    invoke-static {p0, v0, v1, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator;->b(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator;Landroid/animation/ValueAnimator;Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/i;->c:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/i;->d:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/i;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator;

    invoke-static {p0, v0, v1, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator;->d(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AiViewAnimator;Landroid/animation/ValueAnimator;Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
