.class public final Lr6/j;
.super Lr6/h;
.source "SourceFile"


# instance fields
.field public K:Landroid/animation/StateListAnimator;


# virtual methods
.method public final e()F
    .locals 0

    iget-object p0, p0, Lr6/h;->s:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p0}, Landroid/view/View;->getElevation()F

    move-result p0

    return p0
.end method

.method public final f(Landroid/graphics/Rect;)V
    .locals 2

    iget-object v0, p0, Lr6/h;->t:LI3/c;

    iget-object v0, v0, LI3/c;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget-boolean v0, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->k:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lr6/h;->f(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lr6/h;->f:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lr6/h;->s:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getSizeDimension()I

    move-result v1

    iget p0, p0, Lr6/h;->k:I

    if-lt v1, p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getSizeDimension()I

    move-result v0

    sub-int/2addr p0, v0

    div-int/lit8 p0, p0, 0x2

    invoke-virtual {p1, p0, p0, p0, p0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    invoke-virtual {p1, p0, p0, p0, p0}, Landroid/graphics/Rect;->set(IIII)V

    :goto_1
    return-void
.end method

.method public final g(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Landroid/content/res/ColorStateList;I)V
    .locals 7

    const/4 v0, 0x1

    iget-object v1, p0, Lr6/h;->a:LF6/k;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lr6/i;

    invoke-direct {v2, v1}, LF6/g;-><init>(LF6/k;)V

    iput-object v2, p0, Lr6/h;->b:LF6/g;

    invoke-virtual {v2, p1}, LF6/g;->setTintList(Landroid/content/res/ColorStateList;)V

    if-eqz p2, :cond_0

    iget-object v1, p0, Lr6/h;->b:LF6/g;

    invoke-virtual {v1, p2}, LF6/g;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    iget-object p2, p0, Lr6/h;->b:LF6/g;

    iget-object v1, p0, Lr6/h;->s:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p2, v2}, LF6/g;->h(Landroid/content/Context;)V

    const/4 p2, 0x0

    if-lez p4, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lr6/a;

    iget-object v3, p0, Lr6/h;->a:LF6/k;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v3}, Lr6/a;-><init>(LF6/k;)V

    const v3, 0x7f06038b

    invoke-virtual {v1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    const v4, 0x7f06038a

    invoke-virtual {v1, v4}, Landroid/content/Context;->getColor(I)I

    move-result v4

    const v5, 0x7f060388

    invoke-virtual {v1, v5}, Landroid/content/Context;->getColor(I)I

    move-result v5

    const v6, 0x7f060389

    invoke-virtual {v1, v6}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v3, v2, Lr6/a;->i:I

    iput v4, v2, Lr6/a;->j:I

    iput v5, v2, Lr6/a;->k:I

    iput v1, v2, Lr6/a;->l:I

    int-to-float p4, p4

    iget v1, v2, Lr6/a;->h:F

    cmpl-float v1, v1, p4

    if-eqz v1, :cond_1

    iput p4, v2, Lr6/a;->h:F

    iget-object v1, v2, Lr6/a;->b:Landroid/graphics/Paint;

    const v3, 0x3faaa993    # 1.3333f

    mul-float/2addr p4, v3

    invoke-virtual {v1, p4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iput-boolean v0, v2, Lr6/a;->n:Z

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p4

    iget v1, v2, Lr6/a;->m:I

    invoke-virtual {p1, p4, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p4

    iput p4, v2, Lr6/a;->m:I

    :cond_2
    iput-object p1, v2, Lr6/a;->p:Landroid/content/res/ColorStateList;

    iput-boolean v0, v2, Lr6/a;->n:Z

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    iput-object v2, p0, Lr6/h;->d:Lr6/a;

    new-instance p1, Landroid/graphics/drawable/LayerDrawable;

    iget-object p4, p0, Lr6/h;->d:Lr6/a;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lr6/h;->b:LF6/g;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    aput-object p4, v2, v3

    aput-object v1, v2, v0

    invoke-direct {p1, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_3
    iput-object p2, p0, Lr6/h;->d:Lr6/a;

    iget-object p1, p0, Lr6/h;->b:LF6/g;

    :goto_0
    new-instance p4, Landroid/graphics/drawable/RippleDrawable;

    invoke-static {p3}, LG5/F;->d(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object p3

    invoke-direct {p4, p3, p1, p2}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object p4, p0, Lr6/h;->c:Landroid/graphics/drawable/Drawable;

    iput-object p4, p0, Lr6/h;->e:Landroid/graphics/drawable/LayerDrawable;

    return-void
.end method

.method public final h()V
    .locals 0

    return-void
.end method

.method public final i()V
    .locals 0

    invoke-virtual {p0}, Lr6/h;->q()V

    return-void
.end method

.method public final j([I)V
    .locals 0

    return-void
.end method

.method public final k(FFF)V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lr6/h;->s:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v2}, Landroid/view/View;->getStateListAnimator()Landroid/animation/StateListAnimator;

    move-result-object v3

    iget-object v4, p0, Lr6/j;->K:Landroid/animation/StateListAnimator;

    if-ne v3, v4, :cond_0

    new-instance v3, Landroid/animation/StateListAnimator;

    invoke-direct {v3}, Landroid/animation/StateListAnimator;-><init>()V

    invoke-virtual {p0, p1, p3}, Lr6/j;->r(FF)Landroid/animation/AnimatorSet;

    move-result-object p3

    sget-object v4, Lr6/h;->E:[I

    invoke-virtual {v3, v4, p3}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    invoke-virtual {p0, p1, p2}, Lr6/j;->r(FF)Landroid/animation/AnimatorSet;

    move-result-object p3

    sget-object v4, Lr6/h;->F:[I

    invoke-virtual {v3, v4, p3}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    invoke-virtual {p0, p1, p2}, Lr6/j;->r(FF)Landroid/animation/AnimatorSet;

    move-result-object p3

    sget-object v4, Lr6/h;->G:[I

    invoke-virtual {v3, v4, p3}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    invoke-virtual {p0, p1, p2}, Lr6/j;->r(FF)Landroid/animation/AnimatorSet;

    move-result-object p2

    sget-object p3, Lr6/h;->H:[I

    invoke-virtual {v3, p3, p2}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "elevation"

    new-array v5, v0, [F

    aput p1, v5, v1

    invoke-static {v2, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v4, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p1, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    const/4 v4, 0x0

    new-array v0, v0, [F

    aput v4, v0, v1

    invoke-static {v2, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v5, 0x64

    invoke-virtual {p1, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array p1, v1, [Landroid/animation/Animator;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/animation/Animator;

    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    sget-object p1, Lr6/h;->z:Lh2/a;

    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object p1, Lr6/h;->I:[I

    invoke-virtual {v3, p1, p2}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    invoke-virtual {p0, v4, v4}, Lr6/j;->r(FF)Landroid/animation/AnimatorSet;

    move-result-object p1

    sget-object p2, Lr6/h;->J:[I

    invoke-virtual {v3, p2, p1}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    iput-object v3, p0, Lr6/j;->K:Landroid/animation/StateListAnimator;

    invoke-virtual {v2, v3}, Landroid/view/View;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    :cond_0
    invoke-virtual {p0}, Lr6/j;->o()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lr6/h;->q()V

    :cond_1
    return-void
.end method

.method public final m(Landroid/content/res/ColorStateList;)V
    .locals 2

    iget-object v0, p0, Lr6/h;->c:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    invoke-static {p1}, LG5/F;->d(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lr6/h;->m(Landroid/content/res/ColorStateList;)V

    :goto_0
    return-void
.end method

.method public final o()Z
    .locals 1

    iget-object v0, p0, Lr6/h;->t:LI3/c;

    iget-object v0, v0, LI3/c;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget-boolean v0, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->k:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lr6/h;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr6/h;->s:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getSizeDimension()I

    move-result v0

    iget p0, p0, Lr6/h;->k:I

    if-lt v0, p0, :cond_1

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public final p()V
    .locals 0

    return-void
.end method

.method public final r(FF)Landroid/animation/AnimatorSet;
    .locals 6

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x1

    new-array v2, v1, [F

    const/4 v3, 0x0

    aput p1, v2, v3

    iget-object p0, p0, Lr6/h;->s:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const-string p1, "elevation"

    invoke-static {p0, p1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v4, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    sget-object v2, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v1, v1, [F

    aput p2, v1, v3

    invoke-static {p0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    sget-object p0, Lr6/h;->z:Lh2/a;

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0
.end method
