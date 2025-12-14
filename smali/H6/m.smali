.class public abstract LH6/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final A:[I

.field public static final B:Ljava/lang/String;

.field public static v:I

.field public static final w:Lh2/b;

.field public static final x:Landroid/view/animation/LinearInterpolator;

.field public static final y:Lh2/c;

.field public static final z:Landroid/os/Handler;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:Landroid/animation/TimeInterpolator;

.field public final e:Landroid/animation/TimeInterpolator;

.field public final f:Landroid/animation/TimeInterpolator;

.field public final g:Landroid/view/ViewGroup;

.field public final h:Landroid/content/Context;

.field public final i:LH6/l;

.field public final j:Lcom/google/android/material/snackbar/SnackbarContentLayout;

.field public k:I

.field public final l:LH6/h;

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:Z

.field public s:Ljava/util/ArrayList;

.field public final t:Landroid/view/accessibility/AccessibilityManager;

.field public final u:LH6/j;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Lb6/a;->b:Lh2/b;

    sput-object v0, LH6/m;->w:Lh2/b;

    sget-object v0, Lb6/a;->a:Landroid/view/animation/LinearInterpolator;

    sput-object v0, LH6/m;->x:Landroid/view/animation/LinearInterpolator;

    sget-object v0, Lb6/a;->d:Lh2/c;

    sput-object v0, LH6/m;->y:Lh2/c;

    const v0, 0x7f0404c2

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, LH6/m;->A:[I

    const-class v0, LH6/m;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, LH6/m;->B:Ljava/lang/String;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, LH6/g;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, LH6/g;-><init>(I)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v0, LH6/m;->z:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/material/snackbar/SnackbarContentLayout;Lcom/google/android/material/snackbar/SnackbarContentLayout;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LH6/h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LH6/h;-><init>(LH6/m;I)V

    iput-object v0, p0, LH6/m;->l:LH6/h;

    new-instance v0, LH6/j;

    invoke-direct {v0, p0}, LH6/j;-><init>(LH6/m;)V

    iput-object v0, p0, LH6/m;->u:LH6/j;

    iput-object p2, p0, LH6/m;->g:Landroid/view/ViewGroup;

    iput-object p4, p0, LH6/m;->j:Lcom/google/android/material/snackbar/SnackbarContentLayout;

    iput-object p1, p0, LH6/m;->h:Landroid/content/Context;

    sget-object p4, Ls6/l;->a:[I

    const-string v0, "Theme.AppCompat"

    invoke-static {p1, p4, v0}, Ls6/l;->c(Landroid/content/Context;[ILjava/lang/String;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p4

    sget-object v0, LH6/m;->A:[I

    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-eq v3, v2, :cond_0

    const v0, 0x7f0e04f0

    goto :goto_0

    :cond_0
    const v0, 0x7f0e01dd

    :goto_0
    invoke-virtual {p4, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, LH6/l;

    iput-object p2, p0, LH6/m;->i:LH6/l;

    invoke-static {p2, p0}, LH6/l;->a(LH6/l;LH6/m;)V

    invoke-virtual {p2}, LH6/l;->getActionTextColorAlpha()F

    move-result p4

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p4, v0

    if-eqz v0, :cond_1

    iget-object v0, p3, Lcom/google/android/material/snackbar/SnackbarContentLayout;->b:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    const v2, 0x7f04012c

    invoke-static {v2, p3}, Lcom/bumptech/glide/c;->c(ILandroid/view/View;)I

    move-result v2

    invoke-static {p4, v2, v0}, Lcom/bumptech/glide/c;->f(FII)I

    move-result p4

    iget-object v0, p3, Lcom/google/android/material/snackbar/SnackbarContentLayout;->b:Landroid/widget/Button;

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    sget-object p3, Lf1/W;->a:Ljava/util/WeakHashMap;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/view/View;->setAccessibilityLiveRegion(I)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setImportantForAccessibility(I)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setFitsSystemWindows(Z)V

    new-instance p3, LP7/c;

    const/4 p4, 0x3

    invoke-direct {p3, p4, p0}, LP7/c;-><init>(ILjava/lang/Object;)V

    invoke-static {p2, p3}, Lf1/O;->m(Landroid/view/View;Lf1/v;)V

    new-instance p3, LH6/i;

    invoke-direct {p3, v1, p0}, LH6/i;-><init>(ILjava/lang/Object;)V

    invoke-static {p2, p3}, Lf1/W;->j(Landroid/view/View;Lf1/b;)V

    const-string p2, "accessibility"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/accessibility/AccessibilityManager;

    iput-object p2, p0, LH6/m;->t:Landroid/view/accessibility/AccessibilityManager;

    const p2, 0x7f04039a

    const/16 p3, 0xfa

    invoke-static {p2, p3, p1}, LG5/l2;->e(IILandroid/content/Context;)I

    move-result p3

    iput p3, p0, LH6/m;->c:I

    const/16 p3, 0xb4

    invoke-static {p2, p3, p1}, LG5/l2;->e(IILandroid/content/Context;)I

    move-result p2

    iput p2, p0, LH6/m;->a:I

    const p2, 0x7f04039d

    invoke-static {p2, p3, p1}, LG5/l2;->e(IILandroid/content/Context;)I

    move-result p2

    iput p2, p0, LH6/m;->b:I

    sget-object p2, LH6/m;->x:Landroid/view/animation/LinearInterpolator;

    const p3, 0x7f0403aa

    invoke-static {p1, p3, p2}, LG5/l2;->f(Landroid/content/Context;ILandroid/view/animation/Interpolator;)Landroid/animation/TimeInterpolator;

    move-result-object p2

    iput-object p2, p0, LH6/m;->d:Landroid/animation/TimeInterpolator;

    sget-object p2, LH6/m;->y:Lh2/c;

    invoke-static {p1, p3, p2}, LG5/l2;->f(Landroid/content/Context;ILandroid/view/animation/Interpolator;)Landroid/animation/TimeInterpolator;

    move-result-object p2

    iput-object p2, p0, LH6/m;->f:Landroid/animation/TimeInterpolator;

    sget-object p2, LH6/m;->w:Lh2/b;

    invoke-static {p1, p3, p2}, LG5/l2;->f(Landroid/content/Context;ILandroid/view/animation/Interpolator;)Landroid/animation/TimeInterpolator;

    move-result-object p1

    iput-object p1, p0, LH6/m;->e:Landroid/animation/TimeInterpolator;

    return-void
.end method


# virtual methods
.method public final a(LH6/n;)V
    .locals 1

    iget-object v0, p0, LH6/m;->s:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LH6/m;->s:Ljava/util/ArrayList;

    :cond_0
    iget-object p0, p0, LH6/m;->s:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(I)V
    .locals 3

    invoke-static {}, Lo3/n;->u()Lo3/n;

    move-result-object v0

    iget-object p0, p0, LH6/m;->u:LH6/j;

    iget-object v1, v0, Lo3/n;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {v0, p0}, Lo3/n;->v(LH6/j;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p0, v0, Lo3/n;->c:Ljava/lang/Object;

    check-cast p0, LH6/s;

    invoke-virtual {v0, p0, p1}, Lo3/n;->p(LH6/s;I)Z

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    iget-object v2, v0, Lo3/n;->d:Ljava/lang/Object;

    check-cast v2, LH6/s;

    if-eqz v2, :cond_1

    iget-object v2, v2, LH6/s;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    iget-object p0, v0, Lo3/n;->d:Ljava/lang/Object;

    check-cast p0, LH6/s;

    invoke-virtual {v0, p0, p1}, Lo3/n;->p(LH6/s;I)Z

    :cond_2
    :goto_1
    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final c(I)V
    .locals 3

    invoke-static {}, Lo3/n;->u()Lo3/n;

    move-result-object v0

    iget-object v1, p0, LH6/m;->u:LH6/j;

    iget-object v2, v0, Lo3/n;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {v0, v1}, Lo3/n;->v(LH6/j;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, v0, Lo3/n;->c:Ljava/lang/Object;

    iget-object v1, v0, Lo3/n;->d:Ljava/lang/Object;

    check-cast v1, LH6/s;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lo3/n;->C()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, LH6/m;->s:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_1

    iget-object v1, p0, LH6/m;->s:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LH6/n;

    invoke-virtual {v1, p0, p1}, LH6/n;->onDismissed(Ljava/lang/Object;I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    iget-object p1, p0, LH6/m;->i:LH6/l;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/view/ViewGroup;

    iget-object p0, p0, LH6/m;->i:LH6/l;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    return-void

    :goto_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final d()V
    .locals 3

    invoke-static {}, Lo3/n;->u()Lo3/n;

    move-result-object v0

    iget-object v1, p0, LH6/m;->u:LH6/j;

    iget-object v2, v0, Lo3/n;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {v0, v1}, Lo3/n;->v(LH6/j;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lo3/n;->c:Ljava/lang/Object;

    check-cast v1, LH6/s;

    invoke-virtual {v0, v1}, Lo3/n;->B(LH6/s;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, LH6/m;->s:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_1

    iget-object v1, p0, LH6/m;->s:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LH6/n;

    invoke-virtual {v1, p0}, LH6/n;->onShown(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    return-void

    :goto_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final e()V
    .locals 5

    iget-object v0, p0, LH6/m;->i:LH6/l;

    iget v1, v0, LH6/l;->c:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, LH6/m;->t:Landroid/view/accessibility/AccessibilityManager;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v4}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    move v4, v2

    :goto_0
    if-eqz v4, :cond_3

    new-instance v1, LH6/h;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, LH6/h;-><init>(LH6/m;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    invoke-virtual {p0}, LH6/m;->d()V

    :goto_1
    return-void
.end method

.method public final f(IILandroid/view/View;)V
    .locals 3

    invoke-virtual {p3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    check-cast p3, Landroid/graphics/drawable/GradientDrawable;

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object p0, p0, LH6/m;->h:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f071096

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    cmpl-float v1, v0, p0

    if-lez v1, :cond_0

    move v0, p0

    :cond_0
    invoke-virtual {p3, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->centerY()I

    move-result p0

    div-int/lit8 p1, p1, 0x2

    sub-int v1, v0, p1

    div-int/lit8 p2, p2, 0x2

    sub-int v2, p0, p2

    add-int/2addr v0, p1

    add-int/2addr p0, p2

    invoke-virtual {p3, v1, v2, v0, p0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final g()V
    .locals 7

    iget-object v0, p0, LH6/m;->i:LH6/l;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    sget-object v3, LH6/m;->B:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string p0, "Unable to update margins because layout params are not MarginLayoutParams"

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v2, v0, LH6/l;->j:Landroid/graphics/Rect;

    if-nez v2, :cond_1

    const-string p0, "Unable to update margins because original view margins are not set"

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_2

    return-void

    :cond_2
    iget v2, p0, LH6/m;->m:I

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v3, v0, LH6/l;->j:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v2

    iget v2, v3, Landroid/graphics/Rect;->left:I

    iget v5, p0, LH6/m;->n:I

    add-int/2addr v2, v5

    iget v5, v3, Landroid/graphics/Rect;->right:I

    iget v6, p0, LH6/m;->o:I

    add-int/2addr v5, v6

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-ne v6, v4, :cond_4

    iget v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-ne v6, v2, :cond_4

    iget v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-ne v6, v5, :cond_4

    iget v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq v6, v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v6, 0x1

    :goto_1
    if-eqz v6, :cond_5

    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    if-nez v6, :cond_6

    iget v1, p0, LH6/m;->q:I

    iget v2, p0, LH6/m;->p:I

    if-eq v1, v2, :cond_7

    :cond_6
    iget v1, p0, LH6/m;->p:I

    if-lez v1, :cond_7

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v2, v1, LR0/d;

    if-eqz v2, :cond_7

    check-cast v1, LR0/d;

    iget-object v1, v1, LR0/d;->a:LR0/c;

    instance-of v1, v1, Lcom/google/android/material/behavior/SwipeDismissBehavior;

    if-eqz v1, :cond_7

    iget-object p0, p0, LH6/m;->l:LH6/h;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_7
    return-void
.end method
