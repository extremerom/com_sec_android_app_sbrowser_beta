.class public final Lm/F;
.super Lm/b;
.source "SourceFile"

# interfaces
.implements Lt/e;


# static fields
.field public static final y:Landroid/view/animation/AccelerateInterpolator;

.field public static final z:Landroid/view/animation/DecelerateInterpolator;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/content/Context;

.field public c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

.field public d:Landroidx/appcompat/widget/ActionBarContainer;

.field public e:Lt/a0;

.field public f:Landroidx/appcompat/widget/ActionBarContextView;

.field public final g:Landroid/view/View;

.field public h:Z

.field public i:Lm/E;

.field public j:Lm/E;

.field public k:LA7/h;

.field public l:Z

.field public final m:Ljava/util/ArrayList;

.field public n:I

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:LO8/c;

.field public t:Z

.field public u:Z

.field public final v:Lm/D;

.field public final w:Lm/D;

.field public final x:LG5/J2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Lm/F;->y:Landroid/view/animation/AccelerateInterpolator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lm/F;->z:Landroid/view/animation/DecelerateInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lm/F;->m:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lm/F;->n:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lm/F;->o:Z

    iput-boolean v0, p0, Lm/F;->r:Z

    new-instance v0, Lm/D;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lm/D;-><init>(Lm/F;I)V

    iput-object v0, p0, Lm/F;->v:Lm/D;

    new-instance v0, Lm/D;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lm/D;-><init>(Lm/F;I)V

    iput-object v0, p0, Lm/F;->w:Lm/D;

    new-instance v0, LG5/J2;

    invoke-direct {v0, p0}, LG5/J2;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lm/F;->x:LG5/J2;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lm/F;->B(Landroid/view/View;)V

    if-nez p2, :cond_0

    const p2, 0x1020002

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lm/F;->g:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/app/Dialog;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lm/F;->m:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lm/F;->n:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lm/F;->o:Z

    iput-boolean v0, p0, Lm/F;->r:Z

    new-instance v0, Lm/D;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lm/D;-><init>(Lm/F;I)V

    iput-object v0, p0, Lm/F;->v:Lm/D;

    new-instance v0, Lm/D;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lm/D;-><init>(Lm/F;I)V

    iput-object v0, p0, Lm/F;->w:Lm/D;

    new-instance v0, LG5/J2;

    invoke-direct {v0, p0}, LG5/J2;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lm/F;->x:LG5/J2;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lm/F;->B(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final A(Z)V
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-boolean v1, p0, Lm/F;->q:Z

    if-nez v1, :cond_3

    const/4 v1, 0x1

    iput-boolean v1, p0, Lm/F;->q:Z

    iget-object v2, p0, Lm/F;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    :cond_0
    invoke-virtual {p0, v0}, Lm/F;->E(Z)V

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lm/F;->q:Z

    if-eqz v1, :cond_3

    iput-boolean v0, p0, Lm/F;->q:Z

    iget-object v1, p0, Lm/F;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    :cond_2
    invoke-virtual {p0, v0}, Lm/F;->E(Z)V

    :cond_3
    :goto_0
    iget-object v1, p0, Lm/F;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v1}, Landroid/view/View;->isLaidOut()Z

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x4

    if-eqz v1, :cond_7

    const-wide/16 v4, 0xc8

    const-wide/16 v6, 0x64

    if-eqz p1, :cond_4

    iget-object p1, p0, Lm/F;->e:Lt/a0;

    check-cast p1, Lt/l1;

    iget-object v1, p1, Lt/l1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-static {v1}, Lf1/W;->a(Landroid/view/View;)Lf1/Z;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lf1/Z;->a(F)V

    invoke-virtual {v1, v6, v7}, Lf1/Z;->c(J)V

    new-instance v2, Lr/l;

    invoke-direct {v2, p1, v3}, Lr/l;-><init>(Lt/l1;I)V

    invoke-virtual {v1, v2}, Lf1/Z;->d(Lf1/a0;)V

    iget-object p0, p0, Lm/F;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p0, v0, v4, v5}, Landroidx/appcompat/widget/ActionBarContextView;->j(IJ)Lf1/Z;

    move-result-object p0

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lm/F;->e:Lt/a0;

    check-cast p1, Lt/l1;

    iget-object v1, p1, Lt/l1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-static {v1}, Lf1/W;->a(Landroid/view/View;)Lf1/Z;

    move-result-object v1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3}, Lf1/Z;->a(F)V

    invoke-virtual {v1, v4, v5}, Lf1/Z;->c(J)V

    new-instance v3, Lr/l;

    invoke-direct {v3, p1, v0}, Lr/l;-><init>(Lt/l1;I)V

    invoke-virtual {v1, v3}, Lf1/Z;->d(Lf1/a0;)V

    iget-object p0, p0, Lm/F;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p0, v2, v6, v7}, Landroidx/appcompat/widget/ActionBarContextView;->j(IJ)Lf1/Z;

    move-result-object p0

    move-object v8, v1

    move-object v1, p0

    move-object p0, v8

    :goto_1
    new-instance p1, LO8/c;

    invoke-direct {p1}, LO8/c;-><init>()V

    iget-object v0, p1, LO8/c;->c:Ljava/io/Serializable;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v1, Lf1/Z;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->getDuration()J

    move-result-wide v1

    goto :goto_2

    :cond_5
    const-wide/16 v1, 0x0

    :goto_2
    iget-object v3, p0, Lf1/Z;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    :cond_6
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, LO8/c;->b()V

    goto :goto_3

    :cond_7
    if-eqz p1, :cond_8

    iget-object p1, p0, Lm/F;->e:Lt/a0;

    check-cast p1, Lt/l1;

    iget-object p1, p1, Lt/l1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lm/F;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    goto :goto_3

    :cond_8
    iget-object p1, p0, Lm/F;->e:Lt/a0;

    check-cast p1, Lt/l1;

    iget-object p1, p1, Lt/l1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lm/F;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    :goto_3
    return-void
.end method

.method public final B(Landroid/view/View;)V
    .locals 5

    const v0, 0x7f0b03d3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iput-object v0, p0, Lm/F;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setActionBarVisibilityCallback(Lt/e;)V

    :cond_0
    const v0, 0x7f0b0048

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lt/a0;

    if-eqz v1, :cond_1

    check-cast v0, Lt/a0;

    goto :goto_0

    :cond_1
    instance-of v1, v0, Landroidx/appcompat/widget/Toolbar;

    if-eqz v1, :cond_7

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getWrapper()Lt/a0;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lm/F;->e:Lt/a0;

    const v0, 0x7f0b0058

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionBarContextView;

    iput-object v0, p0, Lm/F;->f:Landroidx/appcompat/widget/ActionBarContextView;

    const v0, 0x7f0b004a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/ActionBarContainer;

    iput-object p1, p0, Lm/F;->d:Landroidx/appcompat/widget/ActionBarContainer;

    iget-object v0, p0, Lm/F;->e:Lt/a0;

    if-eqz v0, :cond_6

    iget-object v1, p0, Lm/F;->f:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz v1, :cond_6

    if-eqz p1, :cond_6

    check-cast v0, Lt/l1;

    iget-object p1, v0, Lt/l1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lm/F;->a:Landroid/content/Context;

    iget-object p1, p0, Lm/F;->e:Lt/a0;

    move-object v0, p1

    check-cast v0, Lt/l1;

    iget v0, v0, Lt/l1;->b:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lm/F;->h:Z

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lm/F;->D()V

    iget-object p1, p0, Lm/F;->a:Landroid/content/Context;

    sget-object v0, Lk/a;->a:[I

    const v2, 0x7f040008

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v0, v2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 v0, 0xe

    invoke-virtual {p1, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lm/F;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iget-boolean v2, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->g:Z

    if-eqz v2, :cond_3

    iput-boolean v1, p0, Lm/F;->u:Z

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_1
    const/16 v0, 0xc

    invoke-virtual {p1, v0, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    if-eqz v0, :cond_5

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lm/F;->s(F)V

    :cond_5
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-class p1, Lm/F;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v0, " can only be used with a compatible window decor layout"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_8
    const-string p1, "null"

    :goto_2
    const-string v0, "Can\'t make a decor toolbar out of "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final C(II)V
    .locals 3

    iget-object v0, p0, Lm/F;->e:Lt/a0;

    check-cast v0, Lt/l1;

    iget v1, v0, Lt/l1;->b:I

    and-int/lit8 v2, p2, 0x4

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lm/F;->h:Z

    :cond_0
    and-int p0, p1, p2

    not-int p1, p2

    and-int/2addr p1, v1

    or-int/2addr p0, p1

    invoke-virtual {v0, p0}, Lt/l1;->b(I)V

    return-void
.end method

.method public final D()V
    .locals 2

    iget-object v0, p0, Lm/F;->e:Lt/a0;

    check-cast v0, Lt/l1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lm/F;->d:Landroidx/appcompat/widget/ActionBarContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarContainer;->setTabContainer(Lt/C0;)V

    iget-object v0, p0, Lm/F;->e:Lt/a0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lm/F;->e:Lt/a0;

    check-cast v0, Lt/l1;

    iget-object v0, v0, Lt/l1;->a:Landroidx/appcompat/widget/Toolbar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setCollapsible(Z)V

    iget-object p0, p0, Lm/F;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHasNonEmbeddedTabs(Z)V

    return-void
.end method

.method public final E(Z)V
    .locals 11

    iget-boolean v0, p0, Lm/F;->p:Z

    iget-boolean v1, p0, Lm/F;->q:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    iget-object v1, p0, Lm/F;->g:Landroid/view/View;

    const-wide/16 v4, 0xfa

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    iget-object v8, p0, Lm/F;->x:LG5/J2;

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lm/F;->r:Z

    if-nez v0, :cond_1a

    iput-boolean v3, p0, Lm/F;->r:Z

    iget-object v0, p0, Lm/F;->s:LO8/c;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, LO8/c;->a()V

    :cond_2
    iget-object v0, p0, Lm/F;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/ActionBarContainer;->setVisibility(I)V

    iget v0, p0, Lm/F;->n:I

    iget-object v9, p0, Lm/F;->w:Lm/D;

    const/4 v10, 0x0

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lm/F;->t:Z

    if-nez v0, :cond_3

    if-eqz p1, :cond_c

    :cond_3
    iget-object v0, p0, Lm/F;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0, v10}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lm/F;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    if-eqz p1, :cond_4

    filled-new-array {v2, v2}, [I

    move-result-object p1

    iget-object v2, p0, Lm/F;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v2, p1}, Landroid/view/View;->getLocationInWindow([I)V

    aget p1, p1, v3

    int-to-float p1, p1

    sub-float/2addr v0, p1

    :cond_4
    iget-object p1, p0, Lm/F;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    new-instance p1, LO8/c;

    invoke-direct {p1}, LO8/c;-><init>()V

    iget-object v2, p0, Lm/F;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-static {v2}, Lf1/W;->a(Landroid/view/View;)Lf1/Z;

    move-result-object v2

    invoke-virtual {v2, v10}, Lf1/Z;->e(F)V

    iget-object v3, v2, Lf1/Z;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_6

    if-eqz v8, :cond_5

    new-instance v6, LK6/i;

    invoke-direct {v6, v8, v3}, LK6/i;-><init>(LG5/J2;Landroid/view/View;)V

    :cond_5
    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    :cond_6
    iget-boolean v3, p1, LO8/c;->b:Z

    iget-object v6, p1, LO8/c;->c:Ljava/io/Serializable;

    check-cast v6, Ljava/util/ArrayList;

    if-nez v3, :cond_7

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    iget-boolean v2, p0, Lm/F;->o:Z

    if-eqz v2, :cond_8

    if-eqz v1, :cond_8

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    invoke-static {v1}, Lf1/W;->a(Landroid/view/View;)Lf1/Z;

    move-result-object v0

    invoke-virtual {v0, v10}, Lf1/Z;->e(F)V

    iget-boolean v1, p1, LO8/c;->b:Z

    if-nez v1, :cond_8

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    sget-object v0, Lm/F;->z:Landroid/view/animation/DecelerateInterpolator;

    iget-boolean v1, p1, LO8/c;->b:Z

    if-nez v1, :cond_9

    iput-object v0, p1, LO8/c;->d:Ljava/lang/Object;

    :cond_9
    if-nez v1, :cond_a

    iput-wide v4, p1, LO8/c;->a:J

    :cond_a
    if-nez v1, :cond_b

    iput-object v9, p1, LO8/c;->e:Ljava/lang/Object;

    :cond_b
    iput-object p1, p0, Lm/F;->s:LO8/c;

    invoke-virtual {p1}, LO8/c;->b()V

    goto :goto_1

    :cond_c
    iget-object p1, p0, Lm/F;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v7}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lm/F;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v10}, Landroid/view/View;->setTranslationY(F)V

    iget-boolean p1, p0, Lm/F;->o:Z

    if-eqz p1, :cond_d

    if-eqz v1, :cond_d

    invoke-virtual {v1, v10}, Landroid/view/View;->setTranslationY(F)V

    :cond_d
    invoke-virtual {v9}, Lm/D;->onAnimationEnd()V

    :goto_1
    iget-object p0, p0, Lm/F;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz p0, :cond_1a

    sget-object p1, Lf1/W;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, Lf1/M;->c(Landroid/view/View;)V

    goto/16 :goto_2

    :cond_e
    iget-boolean v0, p0, Lm/F;->r:Z

    if-eqz v0, :cond_1a

    iput-boolean v2, p0, Lm/F;->r:Z

    iget-object v0, p0, Lm/F;->s:LO8/c;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, LO8/c;->a()V

    :cond_f
    iget v0, p0, Lm/F;->n:I

    iget-object v9, p0, Lm/F;->v:Lm/D;

    if-nez v0, :cond_19

    iget-boolean v0, p0, Lm/F;->t:Z

    if-nez v0, :cond_10

    if-eqz p1, :cond_19

    :cond_10
    iget-object v0, p0, Lm/F;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0, v7}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lm/F;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/ActionBarContainer;->setTransitioning(Z)V

    new-instance v0, LO8/c;

    invoke-direct {v0}, LO8/c;-><init>()V

    iget-object v7, p0, Lm/F;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    if-eqz p1, :cond_11

    filled-new-array {v2, v2}, [I

    move-result-object p1

    iget-object v2, p0, Lm/F;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v2, p1}, Landroid/view/View;->getLocationInWindow([I)V

    aget p1, p1, v3

    int-to-float p1, p1

    sub-float/2addr v7, p1

    :cond_11
    iget-object p1, p0, Lm/F;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-static {p1}, Lf1/W;->a(Landroid/view/View;)Lf1/Z;

    move-result-object p1

    invoke-virtual {p1, v7}, Lf1/Z;->e(F)V

    iget-object v2, p1, Lf1/Z;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_13

    if-eqz v8, :cond_12

    new-instance v6, LK6/i;

    invoke-direct {v6, v8, v2}, LK6/i;-><init>(LG5/J2;Landroid/view/View;)V

    :cond_12
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    :cond_13
    iget-boolean v2, v0, LO8/c;->b:Z

    iget-object v3, v0, LO8/c;->c:Ljava/io/Serializable;

    check-cast v3, Ljava/util/ArrayList;

    if-nez v2, :cond_14

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    iget-boolean p1, p0, Lm/F;->o:Z

    if-eqz p1, :cond_15

    if-eqz v1, :cond_15

    invoke-static {v1}, Lf1/W;->a(Landroid/view/View;)Lf1/Z;

    move-result-object p1

    invoke-virtual {p1, v7}, Lf1/Z;->e(F)V

    iget-boolean v1, v0, LO8/c;->b:Z

    if-nez v1, :cond_15

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    sget-object p1, Lm/F;->y:Landroid/view/animation/AccelerateInterpolator;

    iget-boolean v1, v0, LO8/c;->b:Z

    if-nez v1, :cond_16

    iput-object p1, v0, LO8/c;->d:Ljava/lang/Object;

    :cond_16
    if-nez v1, :cond_17

    iput-wide v4, v0, LO8/c;->a:J

    :cond_17
    if-nez v1, :cond_18

    iput-object v9, v0, LO8/c;->e:Ljava/lang/Object;

    :cond_18
    iput-object v0, p0, Lm/F;->s:LO8/c;

    invoke-virtual {v0}, LO8/c;->b()V

    goto :goto_2

    :cond_19
    invoke-virtual {v9}, Lm/D;->onAnimationEnd()V

    :cond_1a
    :goto_2
    return-void
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Lm/F;->e:Lt/a0;

    if-eqz v0, :cond_0

    check-cast v0, Lt/l1;

    iget-object v0, v0, Lt/l1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->hasExpandedActionView()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lm/F;->e:Lt/a0;

    check-cast p0, Lt/l1;

    iget-object p0, p0, Lt/l1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->collapseActionView()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final c(Z)V
    .locals 1

    iget-boolean v0, p0, Lm/F;->l:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lm/F;->l:Z

    iget-object p0, p0, Lm/F;->m:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gtz p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0
.end method

.method public final d()I
    .locals 0

    iget-object p0, p0, Lm/F;->e:Lt/a0;

    check-cast p0, Lt/l1;

    iget p0, p0, Lt/l1;->b:I

    return p0
.end method

.method public final e()Landroid/content/Context;
    .locals 4

    iget-object v0, p0, Lm/F;->b:Landroid/content/Context;

    if-nez v0, :cond_1

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v1, p0, Lm/F;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x7f04000d

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v0, :cond_0

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lm/F;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lm/F;->b:Landroid/content/Context;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lm/F;->a:Landroid/content/Context;

    iput-object v0, p0, Lm/F;->b:Landroid/content/Context;

    :cond_1
    :goto_0
    iget-object p0, p0, Lm/F;->b:Landroid/content/Context;

    return-object p0
.end method

.method public final g()V
    .locals 0

    invoke-virtual {p0}, Lm/F;->D()V

    return-void
.end method

.method public final i(ILandroid/view/KeyEvent;)Z
    .locals 3

    iget-object p0, p0, Lm/F;->i:Lm/E;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget-object p0, p0, Lm/E;->d:Ls/i;

    if-eqz p0, :cond_3

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_0
    invoke-static {v1}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    goto :goto_1

    :cond_2
    move v2, v0

    :goto_1
    invoke-virtual {p0, v2}, Ls/i;->setQwertyMode(Z)V

    invoke-virtual {p0, p1, p2, v0}, Ls/i;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result p0

    return p0

    :cond_3
    return v0
.end method

.method public final l(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lm/F;->e:Lt/a0;

    check-cast p0, Lt/l1;

    invoke-virtual {p0, p1}, Lt/l1;->a(Landroid/view/View;)V

    return-void
.end method

.method public final m(Z)V
    .locals 1

    iget-boolean v0, p0, Lm/F;->h:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lm/F;->n(Z)V

    :cond_0
    return-void
.end method

.method public final n(Z)V
    .locals 1

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lm/F;->C(II)V

    return-void
.end method

.method public final o()V
    .locals 1

    iget-object p0, p0, Lm/F;->e:Lt/a0;

    check-cast p0, Lt/l1;

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lt/l1;->b(I)V

    return-void
.end method

.method public final p(Z)V
    .locals 1

    const/16 v0, 0x10

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lm/F;->C(II)V

    return-void
.end method

.method public final q(Z)V
    .locals 1

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lm/F;->C(II)V

    return-void
.end method

.method public final r(Z)V
    .locals 1

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lm/F;->C(II)V

    return-void
.end method

.method public final s(F)V
    .locals 1

    iget-object p0, p0, Lm/F;->d:Landroidx/appcompat/widget/ActionBarContainer;

    sget-object v0, Lf1/W;->a:Ljava/util/WeakHashMap;

    invoke-static {p0, p1}, Lf1/O;->l(Landroid/view/View;F)V

    return-void
.end method

.method public final t()V
    .locals 3

    iget-object p0, p0, Lm/F;->e:Lt/a0;

    check-cast p0, Lt/l1;

    const/4 v0, 0x0

    iput-object v0, p0, Lt/l1;->f:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lt/l1;->b:I

    and-int/lit8 v1, v1, 0x4

    iget-object v2, p0, Lt/l1;->a:Landroidx/appcompat/widget/Toolbar;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lt/l1;->o:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p0}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public final u()V
    .locals 1

    iget-object p0, p0, Lm/F;->e:Lt/a0;

    check-cast p0, Lt/l1;

    const/4 v0, 0x0

    iput-object v0, p0, Lt/l1;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lt/l1;->d()V

    return-void
.end method

.method public final v(Z)V
    .locals 0

    iput-boolean p1, p0, Lm/F;->t:Z

    if-nez p1, :cond_0

    iget-object p0, p0, Lm/F;->s:LO8/c;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, LO8/c;->a()V

    :cond_0
    return-void
.end method

.method public final w(I)V
    .locals 1

    iget-object v0, p0, Lm/F;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lm/F;->e:Lt/a0;

    check-cast p0, Lt/l1;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lt/l1;->g:Z

    iput-object p1, p0, Lt/l1;->h:Ljava/lang/CharSequence;

    iget v0, p0, Lt/l1;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lt/l1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    iget-boolean p0, p0, Lt/l1;->g:Z

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lf1/W;->k(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final x(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object p0, p0, Lm/F;->e:Lt/a0;

    check-cast p0, Lt/l1;

    iget-boolean v0, p0, Lt/l1;->g:Z

    if-nez v0, :cond_0

    iput-object p1, p0, Lt/l1;->h:Ljava/lang/CharSequence;

    iget v0, p0, Lt/l1;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lt/l1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    iget-boolean p0, p0, Lt/l1;->g:Z

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lf1/W;->k(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final y()V
    .locals 0

    return-void
.end method

.method public final z(LA7/h;)Lr/b;
    .locals 2

    iget-object v0, p0, Lm/F;->i:Lm/E;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lm/E;->a()V

    :cond_0
    iget-object v0, p0, Lm/F;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    iget-object v0, p0, Lm/F;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->e()V

    new-instance v0, Lm/E;

    iget-object v1, p0, Lm/F;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lm/E;-><init>(Lm/F;Landroid/content/Context;LA7/h;)V

    iget-object p1, v0, Lm/E;->d:Ls/i;

    invoke-virtual {p1}, Ls/i;->w()V

    :try_start_0
    iget-object v1, v0, Lm/E;->e:LA7/h;

    iget-object v1, v1, LA7/h;->a:Ljava/lang/Object;

    check-cast v1, Lr/a;

    invoke-interface {v1, v0, p1}, Lr/a;->i(Lr/b;Ls/i;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Ls/i;->v()V

    if-eqz v1, :cond_1

    iput-object v0, p0, Lm/F;->i:Lm/E;

    invoke-virtual {v0}, Lm/E;->i()V

    iget-object p1, p0, Lm/F;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->c(Lr/b;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lm/F;->A(Z)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Ls/i;->v()V

    throw p0
.end method
