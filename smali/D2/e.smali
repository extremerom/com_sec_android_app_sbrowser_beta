.class public final LD2/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, LD2/e;->a:I

    iput-object p2, p0, LD2/e;->b:Ljava/lang/Object;

    iput-object p3, p0, LD2/e;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method private final b(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method private final c(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method private final d(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method private final e(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method private final f(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    iget p0, p0, LD2/e;->a:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "animation"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :pswitch_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget v0, p0, LD2/e;->a:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "animation"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, LD2/e;->b:Ljava/lang/Object;

    check-cast p1, Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Landroid/view/View;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    iget-object p0, p0, LD2/e;->c:Ljava/lang/Object;

    check-cast p0, LA7/c;

    iget-object p0, p0, LA7/c;->b:Ljava/lang/Object;

    check-cast p0, Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    return-void

    :pswitch_0
    sget-object p1, Ldb/r;->a:Ldb/r;

    new-instance v0, LD2/g;

    iget-object v1, p0, LD2/e;->c:Ljava/lang/Object;

    check-cast v1, LD2/f;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LD2/g;-><init>(LD2/f;I)V

    iget-object p0, p0, LD2/e;->b:Ljava/lang/Object;

    check-cast p0, LNc/k;

    invoke-virtual {p0, p1, v0}, LNc/k;->d(Ljava/lang/Object;Lsb/k;)V

    return-void

    :pswitch_1
    sget-object p1, Ldb/r;->a:Ldb/r;

    new-instance v0, LD2/c;

    iget-object v1, p0, LD2/e;->c:Ljava/lang/Object;

    check-cast v1, LD2/f;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LD2/c;-><init>(LD2/f;I)V

    iget-object p0, p0, LD2/e;->b:Ljava/lang/Object;

    check-cast p0, LNc/k;

    invoke-virtual {p0, p1, v0}, LNc/k;->d(Ljava/lang/Object;Lsb/k;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    iget p0, p0, LD2/e;->a:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "animation"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :pswitch_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget p0, p0, LD2/e;->a:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "animation"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :pswitch_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
