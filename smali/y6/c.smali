.class public final Ly6/c;
.super Ly6/b;
.source "SourceFile"


# instance fields
.field public A:I

.field public final t:Landroid/content/Context;

.field public final u:LMd/c;

.field public final v:I

.field public final w:Ljava/lang/String;

.field public final x:I

.field public y:Landroid/graphics/Rect;

.field public z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;LA6/a;LMd/c;I)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0, p2}, Ly6/b;-><init>(ILA6/a;)V

    iput-object p1, p0, Ly6/c;->t:Landroid/content/Context;

    iput-object p3, p0, Ly6/c;->u:LMd/c;

    iput p4, p0, Ly6/c;->v:I

    const-string p2, "FloatingBehavior"

    iput-object p2, p0, Ly6/c;->w:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0710ff

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Ly6/c;->x:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0710ec

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Ly6/b;->d:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0710eb

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Ly6/b;->f:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0710f3

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Ly6/b;->m:I

    invoke-virtual {p0}, Ly6/b;->k()I

    move-result p2

    iput p2, p0, Ly6/b;->o:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0710ed

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Ly6/b;->n:I

    invoke-virtual {p0}, Ly6/c;->J()V

    invoke-static {p1}, LAd/a;->d(Landroid/content/Context;)I

    move-result p2

    invoke-virtual {p0}, Ly6/b;->m()I

    move-result p3

    sub-int/2addr p2, p3

    div-int/lit8 p2, p2, 0x2

    iput p2, p0, Ly6/c;->z:I

    invoke-static {p1}, LAd/a;->c(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {p0}, Ly6/b;->l()I

    move-result p2

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Ly6/c;->A:I

    return-void
.end method


# virtual methods
.method public final A(Lw6/r;)V
    .locals 0

    const-string p1, "hideAnimationListener can\'t set in this Mode yet"

    invoke-static {p0, p1}, Lv6/a;->a(Lw6/a;Ljava/lang/String;)V

    return-void
.end method

.method public final B(ZLw6/q;)V
    .locals 0

    invoke-super {p0, p1, p2}, Ly6/b;->B(ZLw6/q;)V

    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    instance-of p2, p1, Landroid/graphics/drawable/GradientDrawable;

    if-eqz p2, :cond_0

    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    goto :goto_2

    :cond_1
    iget-boolean p2, p0, Ly6/b;->p:Z

    iget-object p0, p0, Ly6/c;->t:Landroid/content/Context;

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f0710f4

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f0710de

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    :goto_1
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    :goto_2
    return-void
.end method

.method public final C(Lw6/r;)V
    .locals 0

    const-string p1, "showAnimationListener can\'t set in this Mode yet"

    invoke-static {p0, p1}, Lv6/a;->a(Lw6/a;Ljava/lang/String;)V

    return-void
.end method

.method public final D(Lw6/q;Landroid/view/MotionEvent;)Z
    .locals 4

    const-string v0, "event"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Ly6/b;->p:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget p0, p0, Ly6/c;->v:I

    int-to-float v2, p0

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v3, p0

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    sub-int/2addr p1, p0

    int-to-float p0, p1

    cmpl-float p0, p2, p0

    if-lez p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public final E(Landroid/view/View;)V
    .locals 6

    const-string v0, "parent"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Ly6/c;->J()V

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x1

    const v5, 0x7f0710ea

    invoke-virtual {v3, v5, v0, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    iget v3, v0, Landroid/util/TypedValue;->type:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    int-to-float p1, v1

    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    mul-float/2addr v0, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    :goto_0
    float-to-int p1, v0

    iput p1, p0, Ly6/b;->g:I

    iput v2, p0, Ly6/b;->h:I

    return-void
.end method

.method public final F(Landroid/view/View;)V
    .locals 2

    const-string p0, "view"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    instance-of v0, p0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/16 v1, 0x33

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :cond_1
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final H(Lw6/q;Landroid/view/MotionEvent;)V
    .locals 7

    const-string v0, "event"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    iget-object v2, p0, Ly6/c;->u:LMd/c;

    if-nez v0, :cond_4

    iget-boolean v3, p0, Ly6/b;->p:Z

    const/4 v4, 0x2

    if-eqz v3, :cond_0

    invoke-virtual {v2, v4}, LMd/c;->f(I)V

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget p0, p0, Ly6/c;->v:I

    int-to-float v5, p0

    cmpg-float v3, v3, v5

    if-gez v3, :cond_1

    new-instance v3, Lw6/c;

    invoke-direct {v3, v4}, Lw6/c;-><init>(I)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    sub-int/2addr v6, p0

    int-to-float v6, v6

    cmpl-float v4, v4, v6

    if-gtz v4, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    sub-int/2addr p1, p0

    int-to-float p0, p1

    cmpl-float p0, v4, p0

    if-gtz p0, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p0

    cmpg-float p0, p0, v5

    if-gez p0, :cond_3

    :cond_2
    new-instance v3, Lw6/c;

    invoke-direct {v3, v1}, Lw6/c;-><init>(I)V

    :cond_3
    if-eqz v3, :cond_4

    iget p0, v3, Lw6/c;->a:I

    invoke-virtual {v2, p0}, LMd/c;->f(I)V

    :cond_4
    :goto_1
    const/4 p0, 0x1

    if-eq v0, p0, :cond_5

    if-eq v0, v1, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v2, p0}, LMd/c;->f(I)V

    :goto_2
    return-void
.end method

.method public final I(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 2

    const-string v0, "parent"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-static {p1, v0}, LE5/t;->c(Landroid/view/View;Landroid/graphics/Rect;)V

    iget p1, p0, Ly6/c;->x:I

    invoke-virtual {v0, p1, p1}, Landroid/graphics/Rect;->inset(II)V

    iget-object p0, p0, Ly6/c;->y:Landroid/graphics/Rect;

    if-eqz p0, :cond_0

    iget p1, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v1

    iput p1, v0, Landroid/graphics/Rect;->left:I

    iget p1, v0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, v1

    iput p1, v0, Landroid/graphics/Rect;->top:I

    iget p1, v0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/graphics/Rect;->right:I

    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, p0

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    :cond_0
    return-object v0
.end method

.method public final J()V
    .locals 8

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v1, p0, Ly6/c;->t:Landroid/content/Context;

    invoke-static {v1}, LAd/a;->d(Landroid/content/Context;)I

    move-result v2

    invoke-static {v1}, LAd/a;->c(Landroid/content/Context;)I

    move-result v3

    const v4, 0x7f0710e8

    const v5, 0x3ef5c28f    # 0.48f

    invoke-static {v1, v4, v5}, LAd/a;->b(Landroid/content/Context;IF)F

    move-result v4

    const-string v5, "<this>"

    invoke-static {v1, v5}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/4 v6, 0x1

    const v7, 0x7f0710e9

    invoke-virtual {v5, v7, v0, v6}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    iget v5, v0, Landroid/util/TypedValue;->type:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_0

    int-to-float v1, v2

    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iput v0, p0, Ly6/b;->i:I

    int-to-float v0, v3

    mul-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, p0, Ly6/b;->j:I

    return-void
.end method

.method public final a()I
    .locals 1

    iget-object v0, p0, Ly6/b;->s:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Ly6/c;->t:Landroid/content/Context;

    invoke-static {p0}, LG5/t;->d(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    const p0, 0x7f0805e0

    goto :goto_0

    :cond_1
    const p0, 0x7f0805e1

    :goto_0
    return p0
.end method

.method public final d(Landroid/content/Context;Lw6/q;)Landroid/animation/AnimatorSet;
    .locals 1

    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    const v0, 0x7f02001c

    invoke-static {p1, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    filled-new-array {p1}, [Landroid/animation/Animator;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object p0
.end method

.method public final e()Lw6/r;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final g()I
    .locals 0

    iget-object p0, p0, Ly6/c;->t:Landroid/content/Context;

    invoke-static {p0}, LG5/t;->d(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f0e084d

    goto :goto_0

    :cond_0
    const p0, 0x7f0e084e

    :goto_0
    return p0
.end method

.method public final getLogTag()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ly6/c;->w:Ljava/lang/String;

    return-object p0
.end method

.method public final j(ZLandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 2

    const-string v0, "from"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    if-eqz p1, :cond_0

    iget p1, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Ly6/b;->k()I

    move-result v1

    add-int/2addr v1, p1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget p1, p2, Landroid/graphics/Rect;->top:I

    iget v1, p0, Ly6/b;->n:I

    add-int/2addr p1, v1

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p1

    iput p1, p0, Ly6/b;->i:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p1

    iput p1, p0, Ly6/b;->j:I

    goto :goto_0

    :cond_0
    iget p1, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Ly6/b;->i()I

    move-result v1

    add-int/2addr v1, p1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget p1, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Ly6/b;->h()I

    move-result p2

    add-int/2addr p2, p1

    iput p2, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Ly6/b;->i()I

    move-result p1

    iput p1, p0, Ly6/b;->i:I

    invoke-virtual {p0}, Ly6/b;->h()I

    move-result p1

    iput p1, p0, Ly6/b;->j:I

    :goto_0
    return-object v0
.end method

.method public final n()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final o(Landroid/content/Context;Landroid/view/View;)Landroid/animation/AnimatorSet;
    .locals 1

    const-string p0, "target"

    invoke-static {p2, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    const v0, 0x7f02001d

    invoke-static {p1, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    filled-new-array {p1}, [Landroid/animation/Animator;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object p0
.end method

.method public final p()Lw6/r;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final r(Landroid/view/View;Z)Landroid/graphics/Rect;
    .locals 3

    const-string v0, "view"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Ly6/c;->z:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Ly6/c;->A:I

    iput v2, v0, Landroid/graphics/Rect;->top:I

    iget-boolean v2, p0, Ly6/b;->p:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ly6/b;->k()I

    move-result v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ly6/b;->m()I

    move-result v2

    :goto_0
    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-boolean v2, p0, Ly6/b;->p:Z

    if-eqz v2, :cond_1

    iget v2, p0, Ly6/b;->n:I

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ly6/b;->l()I

    move-result v2

    :goto_1
    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    if-eqz p2, :cond_2

    invoke-virtual {p0, p1}, Ly6/c;->I(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p0

    invoke-static {v0, p0}, LD/a;->k(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    :cond_2
    return-object v0
.end method

.method public final s(Landroid/view/View;)V
    .locals 2

    const-string v0, "parent"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ly6/c;->E(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Ly6/b;->m()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Ly6/c;->z:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Ly6/b;->l()I

    move-result v0

    sub-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Ly6/c;->A:I

    return-void
.end method

.method public final t(Landroid/graphics/Rect;)Z
    .locals 2

    const-string v0, "newRect"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Ly6/b;->i()I

    move-result v1

    if-gt v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p0}, Ly6/b;->h()I

    move-result p0

    if-gt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final u()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final v(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p1}, LAd/a;->d(Landroid/content/Context;)I

    move-result p0

    int-to-float p0, p0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p0, v0

    float-to-int p0, p0

    const/16 v0, 0x258

    if-lt p0, v0, :cond_0

    invoke-static {p1}, LAd/a;->c(Landroid/content/Context;)I

    move-result p0

    int-to-float p0, p0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p0, p1

    float-to-int p0, p0

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final w(Landroid/view/View;)V
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Ly6/b;->l:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    if-gtz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_4

    :goto_2
    iput v1, p0, Ly6/b;->k:F

    iput v1, p0, Ly6/b;->l:F

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "loadState fail: posRatio=("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Ly6/b;->k:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ly6/b;->l:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ") parent=("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lv6/a;->b(Lw6/a;Ljava/lang/String;)V

    return-void

    :cond_4
    iget-boolean v0, p0, Ly6/b;->p:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Ly6/b;->k()I

    move-result v0

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Ly6/b;->m()I

    move-result v0

    :goto_3
    iget-boolean v1, p0, Ly6/b;->p:Z

    if-eqz v1, :cond_6

    iget v1, p0, Ly6/b;->n:I

    goto :goto_4

    :cond_6
    invoke-virtual {p0}, Ly6/b;->l()I

    move-result v1

    :goto_4
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v2, v0

    int-to-float v0, v2

    iget v2, p0, Ly6/b;->k:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Ly6/c;->z:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    sub-int/2addr p1, v1

    int-to-float p1, p1

    iget v0, p0, Ly6/b;->l:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Ly6/c;->A:I

    return-void
.end method

.method public final x(Landroid/view/View;)V
    .locals 4

    const-string v0, "parent"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-boolean v0, p0, Ly6/b;->p:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ly6/b;->k()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ly6/b;->m()I

    move-result v0

    :goto_0
    iget-boolean v1, p0, Ly6/b;->p:Z

    if-eqz v1, :cond_2

    iget v1, p0, Ly6/b;->n:I

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Ly6/b;->l()I

    move-result v1

    :goto_1
    iget v2, p0, Ly6/c;->z:I

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v3, v0

    int-to-float v0, v3

    div-float/2addr v2, v0

    iput v2, p0, Ly6/b;->k:F

    iget v0, p0, Ly6/c;->A:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    sub-int/2addr p1, v1

    int-to-float p1, p1

    div-float/2addr v0, p1

    iput v0, p0, Ly6/b;->l:F

    return-void

    :cond_3
    :goto_2
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Ly6/b;->k:F

    iput v0, p0, Ly6/b;->l:F

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "saveState fail: parent size is wrong ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lv6/a;->b(Lw6/a;Ljava/lang/String;)V

    return-void
.end method
