.class public final synthetic Lc6/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lc6/b;->a:I

    iput-object p2, p0, Lc6/b;->b:Ljava/lang/Object;

    iput-object p3, p0, Lc6/b;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget v0, p0, Lc6/b;->a:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "$from"

    iget-object v1, p0, Lc6/b;->b:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Rect;

    invoke-static {v1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    iget-object p0, p0, Lc6/b;->c:Ljava/lang/Object;

    check-cast p0, Lw6/q;

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animation"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    sget-object v0, Lw6/q;->k0:LY2/P;

    iget-object v2, p0, Lw6/q;->l:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1, v2}, LY2/P;->a(FLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    const-string v0, "r"

    invoke-static {p1, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, LE5/t;->d(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lc6/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/sites/Sites;

    iget-object p0, p0, Lc6/b;->c:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/appbar/AppBarLayout$Behavior;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/sites/Sites;->c(Lcom/sec/android/app/sbrowser/sites/Sites;Lcom/google/android/material/appbar/AppBarLayout$Behavior;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lc6/b;->c:Ljava/lang/Object;

    check-cast v0, LF6/g;

    iget-object p0, p0, Lc6/b;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-static {p0, v0, p1}, Lcom/google/android/material/appbar/AppBarLayout;->a(Lcom/google/android/material/appbar/AppBarLayout;LF6/g;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
