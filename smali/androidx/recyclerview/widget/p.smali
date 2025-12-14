.class public final Landroidx/recyclerview/widget/p;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/recyclerview/widget/h1;

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:Landroid/view/ViewPropertyAnimator;

.field public final synthetic e:Landroidx/recyclerview/widget/v;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/v;Landroidx/recyclerview/widget/h1;Landroid/view/View;Landroid/view/ViewPropertyAnimator;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/recyclerview/widget/p;->a:I

    iput-object p1, p0, Landroidx/recyclerview/widget/p;->e:Landroidx/recyclerview/widget/v;

    iput-object p2, p0, Landroidx/recyclerview/widget/p;->b:Landroidx/recyclerview/widget/h1;

    iput-object p3, p0, Landroidx/recyclerview/widget/p;->c:Landroid/view/View;

    iput-object p4, p0, Landroidx/recyclerview/widget/p;->d:Landroid/view/ViewPropertyAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/v;Landroidx/recyclerview/widget/h1;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/p;->a:I

    iput-object p1, p0, Landroidx/recyclerview/widget/p;->e:Landroidx/recyclerview/widget/v;

    iput-object p2, p0, Landroidx/recyclerview/widget/p;->b:Landroidx/recyclerview/widget/h1;

    iput-object p3, p0, Landroidx/recyclerview/widget/p;->d:Landroid/view/ViewPropertyAnimator;

    iput-object p4, p0, Landroidx/recyclerview/widget/p;->c:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/p;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    return-void

    :pswitch_0
    iget-object p0, p0, Landroidx/recyclerview/widget/p;->c:Landroid/view/View;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget p1, p0, Landroidx/recyclerview/widget/p;->a:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Landroidx/recyclerview/widget/p;->d:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object p1, p0, Landroidx/recyclerview/widget/p;->e:Landroidx/recyclerview/widget/v;

    iget-object p0, p0, Landroidx/recyclerview/widget/p;->b:Landroidx/recyclerview/widget/h1;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/o1;->dispatchAddFinished(Landroidx/recyclerview/widget/h1;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/v;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Landroidx/recyclerview/widget/v;->dispatchFinishedWhenDone()V

    invoke-static {p1}, Landroidx/recyclerview/widget/v;->access$000(Landroidx/recyclerview/widget/v;)I

    move-result p0

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    const/16 p0, -0x9

    invoke-static {p1, p0}, Landroidx/recyclerview/widget/v;->access$072(Landroidx/recyclerview/widget/v;I)I

    :cond_0
    invoke-static {p1}, Landroidx/recyclerview/widget/v;->access$000(Landroidx/recyclerview/widget/v;)I

    move-result p0

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_1

    const/16 p0, -0x11

    invoke-static {p1, p0}, Landroidx/recyclerview/widget/v;->access$072(Landroidx/recyclerview/widget/v;I)I

    :cond_1
    return-void

    :pswitch_0
    iget-object p1, p0, Landroidx/recyclerview/widget/p;->d:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object p1, p0, Landroidx/recyclerview/widget/p;->c:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Landroidx/recyclerview/widget/p;->e:Landroidx/recyclerview/widget/v;

    iget-object p0, p0, Landroidx/recyclerview/widget/p;->b:Landroidx/recyclerview/widget/h1;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/o1;->dispatchRemoveFinished(Landroidx/recyclerview/widget/h1;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/v;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Landroidx/recyclerview/widget/v;->dispatchFinishedWhenDone()V

    invoke-static {p1}, Landroidx/recyclerview/widget/v;->access$000(Landroidx/recyclerview/widget/v;)I

    move-result p0

    and-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_2

    const/4 p0, -0x2

    invoke-static {p1, p0}, Landroidx/recyclerview/widget/v;->access$072(Landroidx/recyclerview/widget/v;I)I

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget p1, p0, Landroidx/recyclerview/widget/p;->a:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Landroidx/recyclerview/widget/p;->e:Landroidx/recyclerview/widget/v;

    iget-object p0, p0, Landroidx/recyclerview/widget/p;->b:Landroidx/recyclerview/widget/h1;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/o1;->dispatchAddStarting(Landroidx/recyclerview/widget/h1;)V

    return-void

    :pswitch_0
    iget-object p1, p0, Landroidx/recyclerview/widget/p;->e:Landroidx/recyclerview/widget/v;

    iget-object p0, p0, Landroidx/recyclerview/widget/p;->b:Landroidx/recyclerview/widget/h1;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/o1;->dispatchRemoveStarting(Landroidx/recyclerview/widget/h1;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
