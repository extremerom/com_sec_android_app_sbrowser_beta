.class public final Landroidx/recyclerview/widget/s;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/recyclerview/widget/t;

.field public final synthetic c:Landroid/view/ViewPropertyAnimator;

.field public final synthetic d:Landroid/view/View;

.field public final synthetic e:Landroidx/recyclerview/widget/v;


# direct methods
.method public synthetic constructor <init>(Landroidx/recyclerview/widget/v;Landroidx/recyclerview/widget/t;Landroid/view/ViewPropertyAnimator;Landroid/view/View;I)V
    .locals 0

    iput p5, p0, Landroidx/recyclerview/widget/s;->a:I

    iput-object p1, p0, Landroidx/recyclerview/widget/s;->e:Landroidx/recyclerview/widget/v;

    iput-object p2, p0, Landroidx/recyclerview/widget/s;->b:Landroidx/recyclerview/widget/t;

    iput-object p3, p0, Landroidx/recyclerview/widget/s;->c:Landroid/view/ViewPropertyAnimator;

    iput-object p4, p0, Landroidx/recyclerview/widget/s;->d:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget p1, p0, Landroidx/recyclerview/widget/s;->a:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Landroidx/recyclerview/widget/s;->c:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    const/high16 p1, 0x3f800000    # 1.0f

    iget-object v0, p0, Landroidx/recyclerview/widget/s;->d:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Landroidx/recyclerview/widget/s;->b:Landroidx/recyclerview/widget/t;

    iget-object v0, p1, Landroidx/recyclerview/widget/t;->b:Landroidx/recyclerview/widget/h1;

    const/4 v1, 0x0

    iget-object p0, p0, Landroidx/recyclerview/widget/s;->e:Landroidx/recyclerview/widget/v;

    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/o1;->dispatchChangeFinished(Landroidx/recyclerview/widget/h1;Z)V

    iget-object v0, p0, Landroidx/recyclerview/widget/v;->mChangeAnimations:Ljava/util/ArrayList;

    iget-object p1, p1, Landroidx/recyclerview/widget/t;->b:Landroidx/recyclerview/widget/h1;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/v;->dispatchFinishedWhenDone()V

    return-void

    :pswitch_0
    iget-object p1, p0, Landroidx/recyclerview/widget/s;->c:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    const/high16 p1, 0x3f800000    # 1.0f

    iget-object v0, p0, Landroidx/recyclerview/widget/s;->d:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Landroidx/recyclerview/widget/s;->b:Landroidx/recyclerview/widget/t;

    iget-object v0, p1, Landroidx/recyclerview/widget/t;->a:Landroidx/recyclerview/widget/h1;

    const/4 v1, 0x1

    iget-object p0, p0, Landroidx/recyclerview/widget/s;->e:Landroidx/recyclerview/widget/v;

    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/o1;->dispatchChangeFinished(Landroidx/recyclerview/widget/h1;Z)V

    iget-object v0, p0, Landroidx/recyclerview/widget/v;->mChangeAnimations:Ljava/util/ArrayList;

    iget-object p1, p1, Landroidx/recyclerview/widget/t;->a:Landroidx/recyclerview/widget/h1;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/v;->dispatchFinishedWhenDone()V

    invoke-static {p0}, Landroidx/recyclerview/widget/v;->access$000(Landroidx/recyclerview/widget/v;)I

    move-result p1

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_0

    const/4 p1, -0x5

    invoke-static {p0, p1}, Landroidx/recyclerview/widget/v;->access$072(Landroidx/recyclerview/widget/v;I)I

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget p1, p0, Landroidx/recyclerview/widget/s;->a:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Landroidx/recyclerview/widget/s;->b:Landroidx/recyclerview/widget/t;

    iget-object p1, p1, Landroidx/recyclerview/widget/t;->b:Landroidx/recyclerview/widget/h1;

    const/4 v0, 0x0

    iget-object p0, p0, Landroidx/recyclerview/widget/s;->e:Landroidx/recyclerview/widget/v;

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/o1;->dispatchChangeStarting(Landroidx/recyclerview/widget/h1;Z)V

    return-void

    :pswitch_0
    iget-object p1, p0, Landroidx/recyclerview/widget/s;->b:Landroidx/recyclerview/widget/t;

    iget-object p1, p1, Landroidx/recyclerview/widget/t;->a:Landroidx/recyclerview/widget/h1;

    const/4 v0, 0x1

    iget-object p0, p0, Landroidx/recyclerview/widget/s;->e:Landroidx/recyclerview/widget/v;

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/o1;->dispatchChangeStarting(Landroidx/recyclerview/widget/h1;Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
