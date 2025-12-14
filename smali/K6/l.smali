.class public final LK6/l;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LK6/l;->a:I

    iput-object p2, p0, LK6/l;->b:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method public constructor <init>(Lf1/a0;Landroid/view/View;)V
    .locals 0

    const/4 p2, 0x7

    iput p2, p0, LK6/l;->a:I

    iput-object p1, p0, LK6/l;->b:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget v0, p0, LK6/l;->a:I

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    return-void

    :sswitch_0
    const/4 p1, 0x0

    iget-object p0, p0, LK6/l;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iput-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->z:Landroid/view/ViewPropertyAnimator;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->j:Z

    return-void

    :sswitch_1
    iget-object p0, p0, LK6/l;->b:Ljava/lang/Object;

    check-cast p0, Lf1/a0;

    invoke-interface {p0}, Lf1/a0;->a()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_1
        0xc -> :sswitch_0
    .end sparse-switch
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget v0, p0, LK6/l;->a:I

    packed-switch v0, :pswitch_data_0

    const/4 p1, 0x0

    iget-object p0, p0, LK6/l;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iput-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->z:Landroid/view/ViewPropertyAnimator;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->j:Z

    return-void

    :pswitch_0
    iget-object p0, p0, LK6/l;->b:Ljava/lang/Object;

    check-cast p0, LZ3/x;

    iget-object v0, p0, LZ3/x;->b:Ljava/lang/Object;

    check-cast v0, Landroid/animation/ValueAnimator;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, LZ3/x;->b:Ljava/lang/Object;

    :cond_0
    return-void

    :pswitch_1
    iget-object p0, p0, LK6/l;->b:Ljava/lang/Object;

    check-cast p0, Lr6/h;

    const/4 p1, 0x0

    iput p1, p0, Lr6/h;->r:I

    const/4 p1, 0x0

    iput-object p1, p0, Lr6/h;->l:Landroid/animation/Animator;

    return-void

    :pswitch_2
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p0, p0, LK6/l;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/chip/SeslChipGroup;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/4 v0, -0x2

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/chip/SeslChipGroup;->n:I

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :pswitch_3
    iget-object p0, p0, LK6/l;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->h:Landroid/view/ViewPropertyAnimator;

    return-void

    :pswitch_4
    iget-object p0, p0, LK6/l;->b:Ljava/lang/Object;

    check-cast p0, Lf1/a0;

    invoke-interface {p0}, Lf1/a0;->onAnimationEnd()V

    return-void

    :pswitch_5
    iget-object p0, p0, LK6/l;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/ar/core/InstallActivity;

    invoke-virtual {p0}, Lcom/google/ar/core/InstallActivity;->a()V

    return-void

    :pswitch_6
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p0, p0, LK6/l;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;

    iget-object p1, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->K:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    iget-object p0, p0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->U:Landroid/view/WindowInsetsAnimationController;

    if-eqz p0, :cond_2

    invoke-static {p0}, LT6/a;->q(Landroid/view/WindowInsetsAnimationController;)V

    :cond_2
    return-void

    :pswitch_7
    iget-object p0, p0, LK6/l;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/n1;

    iget-boolean p1, p0, Landroidx/recyclerview/widget/n1;->v:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Landroidx/recyclerview/widget/n1;->v:Z

    return-void

    :pswitch_8
    new-instance p1, Ljava/util/ArrayList;

    iget-object p0, p0, LK6/l;->b:Ljava/lang/Object;

    check-cast p0, LZ2/h;

    iget-object v0, p0, LZ2/h;->e:Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LZ2/c;

    invoke-virtual {v2, p0}, LZ2/c;->onAnimationEnd(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void

    :pswitch_9
    iget-object v0, p0, LK6/l;->b:Ljava/lang/Object;

    check-cast v0, LY2/f0;

    invoke-virtual {v0}, LY2/f0;->end()V

    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :pswitch_a
    iget-object p0, p0, LK6/l;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/transformation/ExpandableTransformationBehavior;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/material/transformation/ExpandableTransformationBehavior;->b:Landroid/animation/AnimatorSet;

    return-void

    :pswitch_b
    iget-object p0, p0, LK6/l;->b:Ljava/lang/Object;

    check-cast p0, LK6/m;

    invoke-virtual {p0}, LK6/r;->q()V

    iget-object p0, p0, LK6/m;->r:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    iget v0, p0, LK6/l;->a:I

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    return-void

    :sswitch_0
    iget-object p0, p0, LK6/l;->b:Ljava/lang/Object;

    check-cast p0, Lr6/h;

    iget-object v0, p0, Lr6/h;->s:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Ls6/m;->a(IZ)V

    const/4 v0, 0x2

    iput v0, p0, Lr6/h;->r:I

    iput-object p1, p0, Lr6/h;->l:Landroid/animation/Animator;

    return-void

    :sswitch_1
    iget-object p0, p0, LK6/l;->b:Ljava/lang/Object;

    check-cast p0, Lf1/a0;

    invoke-interface {p0}, Lf1/a0;->onAnimationStart()V

    return-void

    :sswitch_2
    new-instance p1, Ljava/util/ArrayList;

    iget-object p0, p0, LK6/l;->b:Ljava/lang/Object;

    check-cast p0, LZ2/h;

    iget-object v0, p0, LZ2/h;->e:Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LZ2/c;

    invoke-virtual {v2, p0}, LZ2/c;->onAnimationStart(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_2
        0x7 -> :sswitch_1
        0xa -> :sswitch_0
    .end sparse-switch
.end method
