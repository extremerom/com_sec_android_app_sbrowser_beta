.class public final synthetic LH6/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:LH6/m;

.field public final synthetic b:Landroid/widget/TextView;

.field public final synthetic c:Landroid/widget/Button;

.field public final synthetic d:Lcom/google/android/material/snackbar/SnackbarContentLayout;

.field public final synthetic e:I

.field public final synthetic f:I

.field public final synthetic g:I

.field public final synthetic h:I


# direct methods
.method public synthetic constructor <init>(LH6/m;Landroid/widget/TextView;Landroid/widget/Button;Lcom/google/android/material/snackbar/SnackbarContentLayout;IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LH6/b;->a:LH6/m;

    iput-object p2, p0, LH6/b;->b:Landroid/widget/TextView;

    iput-object p3, p0, LH6/b;->c:Landroid/widget/Button;

    iput-object p4, p0, LH6/b;->d:Lcom/google/android/material/snackbar/SnackbarContentLayout;

    iput p5, p0, LH6/b;->e:I

    iput p6, p0, LH6/b;->f:I

    iput p7, p0, LH6/b;->g:I

    iput p8, p0, LH6/b;->h:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    iget-object v7, p0, LH6/b;->a:LH6/m;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, LH6/b;->b:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v0, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v3, v7, LH6/m;->h:Landroid/content/Context;

    const v4, 0x7f0d0028

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, LH6/b;->c:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    new-instance v10, Lr1/f;

    new-instance v11, LH6/f;

    iget-object v12, p0, LH6/b;->d:Lcom/google/android/material/snackbar/SnackbarContentLayout;

    iget v2, p0, LH6/b;->e:I

    iget v3, p0, LH6/b;->f:I

    iget v4, p0, LH6/b;->g:I

    iget v5, p0, LH6/b;->h:I

    move-object v0, v11

    move-object v1, v7

    move-object v6, v12

    invoke-direct/range {v0 .. v6}, LH6/f;-><init>(LH6/m;IIIILcom/google/android/material/snackbar/SnackbarContentLayout;)V

    invoke-direct {v10, v12, v11}, Lr1/f;-><init>(Ljava/lang/Object;LG5/C;)V

    invoke-virtual {v10, v8}, Lr1/e;->e(F)V

    new-instance p0, Lr1/g;

    invoke-direct {p0}, Lr1/g;-><init>()V

    const/high16 v0, 0x42480000    # 50.0f

    invoke-virtual {p0, v0}, Lr1/g;->b(F)V

    const v0, 0x3f3851ec    # 0.72f

    invoke-virtual {p0, v0}, Lr1/g;->a(F)V

    iput-object p0, v10, Lr1/f;->u:Lr1/g;

    invoke-virtual {v10, v9}, Lr1/f;->f(F)V

    invoke-virtual {v10}, Lr1/f;->h()V

    new-instance p0, Lr1/f;

    sget-object v1, Lr1/e;->n:Lr1/b;

    iget-object v2, v7, LH6/m;->i:LH6/l;

    invoke-direct {p0, v2, v1}, Lr1/f;-><init>(Ljava/lang/Object;LG5/C;)V

    invoke-virtual {p0}, Lr1/f;->g()V

    new-instance v1, Lr1/g;

    invoke-direct {v1}, Lr1/g;-><init>()V

    const/high16 v2, 0x43960000    # 300.0f

    invoke-virtual {v1, v2}, Lr1/g;->b(F)V

    invoke-virtual {v1, v0}, Lr1/g;->a(F)V

    iput-object v1, p0, Lr1/f;->u:Lr1/g;

    invoke-virtual {p0, v8}, Lr1/f;->f(F)V

    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lr1/e;->a:F

    invoke-virtual {p0}, Lr1/f;->h()V

    new-instance p0, Lw6/i;

    const/4 v0, 0x2

    invoke-direct {p0, v0, v7}, Lw6/i;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v10, p0}, Lr1/e;->a(Lr1/c;)V

    return-void
.end method
