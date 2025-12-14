.class public final Landroidx/fragment/app/f;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/view/ViewGroup;

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:Z

.field public final synthetic e:Landroidx/fragment/app/F0;

.field public final synthetic f:Landroidx/fragment/app/g;


# direct methods
.method public synthetic constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;ZLandroidx/fragment/app/F0;Landroidx/fragment/app/g;I)V
    .locals 0

    iput p6, p0, Landroidx/fragment/app/f;->a:I

    iput-object p1, p0, Landroidx/fragment/app/f;->b:Landroid/view/ViewGroup;

    iput-object p2, p0, Landroidx/fragment/app/f;->c:Landroid/view/View;

    iput-boolean p3, p0, Landroidx/fragment/app/f;->d:Z

    iput-object p4, p0, Landroidx/fragment/app/f;->e:Landroidx/fragment/app/F0;

    iput-object p5, p0, Landroidx/fragment/app/f;->f:Landroidx/fragment/app/g;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    iget v0, p0, Landroidx/fragment/app/f;->a:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "anim"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Landroidx/fragment/app/f;->b:Landroid/view/ViewGroup;

    iget-object v0, p0, Landroidx/fragment/app/f;->c:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    iget-boolean v1, p0, Landroidx/fragment/app/f;->d:Z

    iget-object v2, p0, Landroidx/fragment/app/f;->e:Landroidx/fragment/app/F0;

    if-eqz v1, :cond_0

    iget-object v1, v2, Landroidx/fragment/app/F0;->a:Landroidx/fragment/app/J0;

    const-string v3, "viewToAnimate"

    invoke-static {v0, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0, p1}, Landroidx/fragment/app/J0;->a(Landroid/view/View;Landroid/view/ViewGroup;)V

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/f;->f:Landroidx/fragment/app/g;

    iget-object p1, p0, Landroidx/fragment/app/g;->c:Landroidx/fragment/app/e;

    iget-object p1, p1, Landroidx/fragment/app/h;->a:Landroidx/fragment/app/F0;

    invoke-virtual {p1, p0}, Landroidx/fragment/app/F0;->c(Landroidx/fragment/app/E0;)V

    const-string p0, "FragmentManager"

    const/4 p1, 0x2

    invoke-static {p0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Animator from operation "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " has ended."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :pswitch_0
    const-string v0, "anim"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Landroidx/fragment/app/f;->b:Landroid/view/ViewGroup;

    iget-object v0, p0, Landroidx/fragment/app/f;->c:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    iget-boolean v1, p0, Landroidx/fragment/app/f;->d:Z

    iget-object v2, p0, Landroidx/fragment/app/f;->e:Landroidx/fragment/app/F0;

    if-eqz v1, :cond_2

    iget-object v1, v2, Landroidx/fragment/app/F0;->a:Landroidx/fragment/app/J0;

    const-string v3, "viewToAnimate"

    invoke-static {v0, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0, p1}, Landroidx/fragment/app/J0;->a(Landroid/view/View;Landroid/view/ViewGroup;)V

    :cond_2
    iget-object p0, p0, Landroidx/fragment/app/f;->f:Landroidx/fragment/app/g;

    iget-object p1, p0, Landroidx/fragment/app/g;->c:Landroidx/fragment/app/e;

    iget-object p1, p1, Landroidx/fragment/app/h;->a:Landroidx/fragment/app/F0;

    invoke-virtual {p1, p0}, Landroidx/fragment/app/F0;->c(Landroidx/fragment/app/E0;)V

    const-string p0, "FragmentManager"

    const/4 p1, 0x2

    invoke-static {p0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Animator from operation "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " has ended."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
