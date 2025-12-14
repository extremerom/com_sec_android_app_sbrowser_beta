.class public final LH6/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, LH6/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 7

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget p0, p0, LH6/g;->a:I

    packed-switch p0, :pswitch_data_0

    iget p0, p1, Landroid/os/Message;->what:I

    if-ne p0, v2, :cond_0

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, LS3/C;

    invoke-interface {p0}, LS3/C;->c()V

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    return v2

    :pswitch_0
    iget p0, p1, Landroid/os/Message;->what:I

    if-eqz p0, :cond_8

    if-eq p0, v2, :cond_1

    move v2, v3

    goto/16 :goto_3

    :cond_1
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, LH6/m;

    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object v4, p0, LH6/m;->i:LH6/l;

    iget v4, v4, LH6/l;->c:I

    if-ne v4, v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v4, p0, LH6/m;->t:Landroid/view/accessibility/AccessibilityManager;

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v4, v2}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7

    :goto_1
    iget-object v4, p0, LH6/m;->i:LH6/l;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {v4}, LH6/l;->getAnimationMode()I

    move-result v5

    if-eq v5, v2, :cond_6

    invoke-virtual {v4}, LH6/l;->getAnimationMode()I

    move-result v5

    if-ne v5, v1, :cond_4

    goto :goto_2

    :cond_4
    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    instance-of v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v6, :cond_5

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v5, v4

    :cond_5
    filled-new-array {v3, v5}, [I

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    iget-object v4, p0, LH6/m;->e:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget v4, p0, LH6/m;->c:I

    int-to-long v4, v4

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v4, LH6/c;

    invoke-direct {v4, p0, p1, v2}, LH6/c;-><init>(LH6/m;II)V

    invoke-virtual {v1, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance p1, LH6/d;

    invoke-direct {p1, p0, v0, v3}, LH6/d;-><init>(LH6/m;IB)V

    invoke-virtual {v1, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_3

    :cond_6
    :goto_2
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget-object v1, p0, LH6/m;->d:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, LH6/d;

    invoke-direct {v1, p0, v3, v3}, LH6/d;-><init>(LH6/m;IB)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, LH6/m;->h:Landroid/content/Context;

    const/high16 v4, 0x10c0000

    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget v1, p0, LH6/m;->b:I

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, LH6/c;

    invoke-direct {v1, p0, p1, v3}, LH6/c;-><init>(LH6/m;II)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_3

    :cond_7
    invoke-virtual {p0, p1}, LH6/m;->c(I)V

    goto :goto_3

    :cond_8
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, LH6/m;

    iget-object p1, p0, LH6/m;->i:LH6/l;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_a

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v4, v1, LR0/d;

    if-eqz v4, :cond_9

    check-cast v1, LR0/d;

    new-instance v4, Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;

    invoke-direct {v4}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;-><init>()V

    iget-object v5, v4, Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;->i:LB3/c;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, p0, LH6/m;->u:LH6/j;

    iput-object v6, v5, LB3/c;->a:Ljava/lang/Object;

    new-instance v5, LX4/i;

    invoke-direct {v5, v0, p0}, LX4/i;-><init>(ILjava/lang/Object;)V

    iput-object v5, v4, Lcom/google/android/material/behavior/SwipeDismissBehavior;->b:LX4/i;

    invoke-virtual {v1, v4}, LR0/d;->b(LR0/c;)V

    const/16 v0, 0x50

    iput v0, v1, LR0/d;->g:I

    :cond_9
    iput-boolean v2, p1, LH6/l;->k:Z

    iget-object v0, p0, LH6/m;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iput-boolean v3, p1, LH6/l;->k:Z

    invoke-virtual {p0}, LH6/m;->g()V

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    sget-object v0, Lf1/W;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p1}, Landroid/view/View;->isLaidOut()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-virtual {p0}, LH6/m;->e()V

    goto :goto_3

    :cond_b
    iput-boolean v2, p0, LH6/m;->r:Z

    :goto_3
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
