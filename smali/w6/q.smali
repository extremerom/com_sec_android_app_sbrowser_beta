.class public final Lw6/q;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lw6/a;


# static fields
.field public static final k0:LY2/P;

.field public static final l0:Landroid/view/animation/PathInterpolator;


# instance fields
.field public final A:I

.field public B:Landroid/content/res/Configuration;

.field public C:Z

.field public final D:Landroid/view/View;

.field public final E:Landroid/widget/FrameLayout;

.field public final F:Landroid/widget/FrameLayout;

.field public final G:Landroid/widget/ImageView;

.field public H:Landroidx/appcompat/widget/Toolbar;

.field public I:Landroid/widget/PopupWindow;

.field public J:Z

.field public final a:Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;

.field public final b:Ljava/lang/String;

.field public final c:Landroid/os/Handler;

.field public final c0:Lw6/k;

.field public final d:I

.field public final d0:Landroid/view/GestureDetector;

.field public final e:F

.field public final e0:Landroid/animation/ValueAnimator;

.field public final f:F

.field public final f0:LZ3/x;

.field public final g:F

.field public final g0:Lcom/samsung/android/scloud/lib/setting/e;

.field public final h:I

.field public final h0:Landroid/animation/AnimatorSet;

.field public i:I

.field public final i0:Landroid/animation/AnimatorSet;

.field public j:I

.field public final j0:LH6/p;

.field public final k:Landroid/graphics/Rect;

.field public final l:Landroid/graphics/Rect;

.field public m:Landroid/animation/ValueAnimator;

.field public n:Landroid/graphics/Rect;

.field public final o:Landroid/graphics/Rect;

.field public final p:LA6/a;

.field public final q:LMd/c;

.field public final r:Ljava/util/LinkedHashMap;

.field public s:I

.field public t:I

.field public u:Ly6/b;

.field public v:F

.field public w:F

.field public x:F

.field public y:F

.field public z:F


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, LY2/P;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v0, v1}, LY2/P;-><init>(Landroid/graphics/Rect;)V

    sput-object v0, Lw6/q;->k0:LY2/P;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e6147ae    # 0.22f

    const/high16 v2, 0x3e800000    # 0.25f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lw6/q;->l0:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;)V
    .locals 11

    const/4 v0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    const-string v4, "parentView"

    invoke-static {p2, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-direct {p0, p1, v4, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p2, p0, Lw6/q;->a:Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;

    const-string p2, "FloatingPaneView"

    iput-object p2, p0, Lw6/q;->b:Ljava/lang/String;

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {p2, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lw6/q;->c:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v5, 0x7f07121c

    invoke-virtual {p2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lw6/q;->d:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0710e7

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Lw6/q;->e:F

    const v5, 0x7f0710f6

    const v6, 0x3ed70a3d    # 0.42f

    invoke-static {p1, v5, v6}, LAd/a;->b(Landroid/content/Context;IF)F

    move-result v5

    iput v5, p0, Lw6/q;->f:F

    const v5, 0x7f0710f8

    const v6, 0x3ea3d70a    # 0.32f

    invoke-static {p1, v5, v6}, LAd/a;->b(Landroid/content/Context;IF)F

    move-result v5

    iput v5, p0, Lw6/q;->g:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0710f7

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lw6/q;->h:I

    const/16 v5, 0xf

    iput v5, p0, Lw6/q;->j:I

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lw6/q;->k:Landroid/graphics/Rect;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lw6/q;->l:Landroid/graphics/Rect;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lw6/q;->n:Landroid/graphics/Rect;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lw6/q;->o:Landroid/graphics/Rect;

    new-instance v5, LA6/a;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v5, v6}, LA6/a;-><init>(Ljava/util/ArrayList;)V

    iput-object v5, p0, Lw6/q;->p:LA6/a;

    new-instance v6, LMd/c;

    invoke-direct {v6, v5}, LMd/c;-><init>(LA6/a;)V

    iput-object v6, p0, Lw6/q;->q:LMd/c;

    new-instance v7, Lw6/b;

    invoke-direct {v7, v2}, Lw6/b;-><init>(I)V

    new-instance v8, Ly6/a;

    invoke-direct {v8, p1, v5, v6, p2}, Ly6/a;-><init>(Landroid/content/Context;LA6/a;LMd/c;I)V

    new-instance v9, Ldb/j;

    invoke-direct {v9, v7, v8}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v7, Lw6/b;

    invoke-direct {v7, v3}, Lw6/b;-><init>(I)V

    new-instance v8, Ly6/d;

    invoke-direct {v8, p1, v5, v6, p2}, Ly6/d;-><init>(Landroid/content/Context;LA6/a;LMd/c;I)V

    new-instance v10, Ldb/j;

    invoke-direct {v10, v7, v8}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v7, Lw6/b;

    invoke-direct {v7, v0}, Lw6/b;-><init>(I)V

    new-instance v8, Ly6/c;

    invoke-direct {v8, p1, v5, v6, p2}, Ly6/c;-><init>(Landroid/content/Context;LA6/a;LMd/c;I)V

    new-instance p2, Ldb/j;

    invoke-direct {p2, v7, v8}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v9, v10, p2}, [Ldb/j;

    move-result-object p2

    invoke-static {p2}, Lfb/B;->l([Ldb/j;)Ljava/util/LinkedHashMap;

    move-result-object p2

    iput-object p2, p0, Lw6/q;->r:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    const-string v5, "resources.configuration"

    invoke-static {p2, v5}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    if-eq p2, v2, :cond_0

    if-eq p2, v3, :cond_1

    :cond_0
    move p2, v2

    goto :goto_0

    :cond_1
    move p2, v3

    :goto_0
    iput p2, p0, Lw6/q;->s:I

    const/4 v5, 0x7

    iput v5, p0, Lw6/q;->t:I

    invoke-virtual {p0, p2}, Lw6/q;->g(I)Ly6/b;

    move-result-object p2

    iput-object p2, p0, Lw6/q;->u:Ly6/b;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    iput p2, p0, Lw6/q;->A:I

    const-string p2, "layout_inflater"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    const-string v5, "null cannot be cast to non-null type android.view.LayoutInflater"

    invoke-static {p2, v5}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/view/LayoutInflater;

    const v5, 0x7f0e084a

    invoke-virtual {p2, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const-string v4, "layoutInflater.inflate(R\u2026ing_pane_container, null)"

    invoke-static {p2, v4}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lw6/q;->D:Landroid/view/View;

    const v4, 0x7f0b0530

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const-string v5, "rootView.findViewById(R.id.float_content)"

    invoke-static {v4, v5}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, p0, Lw6/q;->E:Landroid/widget/FrameLayout;

    const v4, 0x7f0b0531

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const-string v5, "rootView.findViewById(R.id.float_minimize_content)"

    invoke-static {v4, v5}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, p0, Lw6/q;->F:Landroid/widget/FrameLayout;

    const v4, 0x7f0b0532

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lw6/q;->G:Landroid/widget/ImageView;

    new-instance p2, Lw6/k;

    invoke-direct {p2, p0, v1}, Lw6/k;-><init>(Lw6/q;I)V

    iput-object p2, p0, Lw6/q;->c0:Lw6/k;

    new-instance p2, Landroid/view/GestureDetector;

    new-instance v4, Ln4/j;

    invoke-direct {v4, v2, p0}, Ln4/j;-><init>(ILjava/lang/Object;)V

    invoke-direct {p2, p1, v4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lw6/q;->d0:Landroid/view/GestureDetector;

    const/high16 p1, 0x3f800000    # 1.0f

    new-array p2, v3, [F

    fill-array-data p2, :array_0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    new-instance v4, Lw6/h;

    invoke-direct {v4, p0, v3}, Lw6/h;-><init>(Lw6/q;I)V

    invoke-virtual {p2, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v4, Landroid/view/animation/PathInterpolator;

    const v5, 0x3f547ae1    # 0.83f

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6, v5, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p2, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {p2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iput-object p2, p0, Lw6/q;->e0:Landroid/animation/ValueAnimator;

    new-instance p2, LZ3/x;

    invoke-direct {p2, p0}, LZ3/x;-><init>(Lw6/q;)V

    iget-object v4, p2, LZ3/x;->d:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    check-cast v4, Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lr1/f;

    iget-object v5, v5, Lr1/f;->u:Lr1/g;

    invoke-virtual {v5, p1}, Lr1/g;->a(F)V

    const v7, 0x43b48000    # 361.0f

    invoke-virtual {v5, v7}, Lr1/g;->b(F)V

    goto :goto_1

    :cond_2
    iput-object p2, p0, Lw6/q;->f0:LZ3/x;

    new-instance p2, Lcom/samsung/android/scloud/lib/setting/e;

    iget-object v4, p0, Lw6/q;->G:Landroid/widget/ImageView;

    const-string v5, "dragHandlerView"

    invoke-static {v4, v5}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, LK6/j;

    const/4 v7, 0x6

    invoke-direct {v5, v7, p0}, LK6/j;-><init>(ILjava/lang/Object;)V

    new-instance v7, Lw6/k;

    invoke-direct {v7, p0, v2}, Lw6/k;-><init>(Lw6/q;I)V

    new-instance v8, Lf1/y;

    invoke-direct {v8, v3, p0}, Lf1/y;-><init>(ILjava/lang/Object;)V

    invoke-direct {p2, v4, v5, v7, v8}, Lcom/samsung/android/scloud/lib/setting/e;-><init>(Landroid/view/View;LK6/j;Lw6/k;Lf1/y;)V

    iput-object p2, p0, Lw6/q;->g0:Lcom/samsung/android/scloud/lib/setting/e;

    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v4, v3, [F

    fill-array-data v4, :array_1

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    new-instance v5, Lw6/h;

    const/4 v7, 0x3

    invoke-direct {v5, p0, v7}, Lw6/h;-><init>(Lw6/q;I)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v5, Lw6/l;

    invoke-direct {v5, p0, v1}, Lw6/l;-><init>(Lw6/q;I)V

    invoke-virtual {v4, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v5, Landroid/view/animation/PathInterpolator;

    invoke-direct {v5, v6, v6, p1, p1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v7, 0x64

    invoke-virtual {v4, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-array v5, v3, [F

    fill-array-data v5, :array_2

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    new-instance v9, Lw6/h;

    invoke-direct {v9, p0, v0}, Lw6/h;-><init>(Lw6/q;I)V

    invoke-virtual {v5, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Ll6/n;

    invoke-direct {v0, v2}, Ll6/n;-><init>(I)V

    invoke-virtual {v5, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v6, v6, p1, p1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v5, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v5, v7, v8}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    const-wide/16 v9, 0xc8

    invoke-virtual {v5, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-array v0, v3, [Landroid/animation/Animator;

    aput-object v4, v0, v1

    aput-object v5, v0, v2

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iput-object p2, p0, Lw6/q;->h0:Landroid/animation/AnimatorSet;

    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v0, v3, [F

    fill-array-data v0, :array_3

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v4, Lw6/h;

    invoke-direct {v4, p0, v1}, Lw6/h;-><init>(Lw6/q;I)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v4, Landroid/view/animation/PathInterpolator;

    invoke-direct {v4, v6, v6, p1, p1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, v7, v8}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    invoke-virtual {v0, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-array v4, v3, [F

    fill-array-data v4, :array_4

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    new-instance v5, Lw6/h;

    invoke-direct {v5, p0, v2}, Lw6/h;-><init>(Lw6/q;I)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v5, Lw6/l;

    invoke-direct {v5, p0, v2}, Lw6/l;-><init>(Lw6/q;I)V

    invoke-virtual {v4, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v5, Landroid/view/animation/PathInterpolator;

    invoke-direct {v5, v6, v6, p1, p1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v4, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-array p1, v3, [Landroid/animation/Animator;

    aput-object v0, p1, v1

    aput-object v4, p1, v2

    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iput-object p2, p0, Lw6/q;->i0:Landroid/animation/AnimatorSet;

    invoke-virtual {p0, v2}, Landroid/view/View;->setClipToOutline(Z)V

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lw6/q;->D:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lw6/q;->E:Landroid/widget/FrameLayout;

    invoke-static {p1}, Lw6/q;->h(Landroid/view/ViewGroup;)Landroidx/appcompat/widget/Toolbar;

    move-result-object p1

    iput-object p1, p0, Lw6/q;->H:Landroidx/appcompat/widget/Toolbar;

    iget-object p1, p0, Lw6/q;->a:Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance p2, LH6/q;

    invoke-direct {p2, v3, p0}, LH6/q;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    new-instance p1, LH6/p;

    const/16 p2, 0x14

    invoke-direct {p1, p2, p0}, LH6/p;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lw6/q;->j0:LH6/p;

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f7ae148    # 0.98f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public static a(Lw6/q;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lw6/q;->u:Ly6/b;

    invoke-virtual {v0}, Ly6/b;->e()Lw6/r;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lw6/q;->getIntersectRect()Landroid/graphics/Rect;

    move-result-object p0

    invoke-interface {v0, p0}, Lw6/r;->onAnimationUpdate(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public static b(Ltb/s;Lw6/q;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Ltb/s;->a:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lw6/q;->p()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ltb/s;->a:Z

    :cond_0
    iget-object p0, p1, Lw6/q;->u:Ly6/b;

    invoke-virtual {p0}, Ly6/b;->p()Lw6/r;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-direct {p1}, Lw6/q;->getIntersectRect()Landroid/graphics/Rect;

    move-result-object p1

    invoke-interface {p0, p1}, Lw6/r;->onAnimationUpdate(Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method

.method public static c(Lw6/q;)V
    .locals 11

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lw6/q;->a:Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;->p:Landroid/graphics/Rect;

    iget-object v2, v0, Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;->m:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setWillNotDraw(Z)V

    iget-object v0, p0, Lw6/q;->u:Ly6/b;

    instance-of v3, v0, Ly6/c;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iget-boolean v0, v0, Ly6/b;->p:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, v4}, Lw6/q;->e(Z)V

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "context"

    invoke-static {v0, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v3, 0x258

    if-ge v0, v3, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-direct {p0}, Lw6/q;->getMenuLayoutResId()I

    move-result v3

    invoke-virtual {v0, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/view/View;->measure(II)V

    const v1, 0x7f0b0536

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v3, 0x2

    if-eqz v1, :cond_5

    new-instance v5, LJc/p;

    const/4 v6, 0x3

    invoke-direct {v5, v6, v1}, LJc/p;-><init>(ILjava/lang/Object;)V

    sget-object v6, Lw6/o;->a:Lw6/o;

    new-instance v7, LJc/h;

    invoke-direct {v7, v5, v2, v6}, LJc/h;-><init>(LJc/l;ZLsb/k;)V

    new-instance v5, LJc/g;

    invoke-direct {v5, v7}, LJc/g;-><init>(LJc/h;)V

    :goto_0
    invoke-virtual {v5}, LJc/g;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v5}, LJc/g;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/material/oneui/floatingdock/widget/FloatingMenuItemView;

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v7

    const v8, 0x7f0b01ca

    if-ne v7, v8, :cond_2

    new-instance v7, Ldb/j;

    new-instance v8, Lw6/b;

    invoke-direct {v8, v2}, Lw6/b;-><init>(I)V

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f140e89

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    const v8, 0x7f0b0b62

    if-ne v7, v8, :cond_3

    new-instance v7, Ldb/j;

    new-instance v8, Lw6/b;

    invoke-direct {v8, v3}, Lw6/b;-><init>(I)V

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f140e8b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    const v8, 0x7f0b0539

    if-ne v7, v8, :cond_4

    new-instance v7, Ldb/j;

    new-instance v8, Lw6/b;

    const/4 v9, 0x4

    invoke-direct {v8, v9}, Lw6/b;-><init>(I)V

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f140e8a

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    new-instance v7, Ldb/j;

    new-instance v8, Lw6/b;

    invoke-direct {v8, v4}, Lw6/b;-><init>(I)V

    const-string v9, ""

    invoke-direct {v7, v8, v9}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    iget-object v8, v7, Ldb/j;->a:Ljava/lang/Object;

    check-cast v8, Lw6/b;

    iget v8, v8, Lw6/b;->a:I

    iget-object v7, v7, Ldb/j;->b:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p0, v8}, Lw6/q;->j(I)Z

    move-result v8

    invoke-virtual {v6, v8}, Landroid/view/View;->setEnabled(Z)V

    iget-object v8, p0, Lw6/q;->c0:Lw6/k;

    invoke-virtual {v6, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    invoke-static {}, LG5/q3;->d()I

    move-result v7

    invoke-static {v7, v6}, LG5/e3;->f(ILandroid/view/View;)V

    goto/16 :goto_0

    :cond_5
    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v5, -0x2

    invoke-direct {v1, v0, v5, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f0710ef

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setElevation(F)V

    const v0, 0x7f1507df

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/a;

    const/4 v5, 0x5

    invoke-direct {v0, v5, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    new-array v0, v3, [I

    iget-object v5, p0, Lw6/q;->G:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/view/View;->getLocationInWindow([I)V

    new-instance v6, Landroid/util/Size;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    invoke-direct {v6, v7, v8}, Landroid/util/Size;-><init>(II)V

    aget v4, v0, v4

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/2addr v6, v3

    sub-int/2addr v4, v6

    aget v0, v0, v2

    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    add-int/2addr v2, v0

    const v0, 0x800033

    invoke-virtual {v1, v5, v0, v4, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    iput-object v1, p0, Lw6/q;->I:Landroid/widget/PopupWindow;

    iget-object v0, p0, Lw6/q;->c:Landroid/os/Handler;

    iget-object v1, p0, Lw6/q;->j0:LH6/p;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_2
    iget-object v0, p0, Lw6/q;->e0:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_6
    iget-object p0, p0, Lw6/q;->f0:LZ3/x;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v0}, LZ3/x;->l(FF)V

    return-void
.end method

.method public static d(Lw6/q;IZZZI)V
    .locals 10

    and-int/lit8 v0, p5, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move p2, v1

    :cond_0
    and-int/lit8 v0, p5, 0x4

    if-eqz v0, :cond_1

    move p3, v1

    :cond_1
    const/16 v0, 0x8

    and-int/2addr p5, v0

    if-eqz p5, :cond_2

    move p4, v1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p5, Ljava/lang/StringBuilder;

    const-string v2, "Change Pane Mode to "

    invoke-direct {p5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lw6/b;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p0, p5}, Lv6/a;->c(Lw6/a;Ljava/lang/String;)V

    iget p5, p0, Lw6/q;->s:I

    invoke-virtual {p0, p1}, Lw6/q;->j(I)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-nez v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Change mode canceled, Because of the mode "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lw6/b;->b(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not allowed"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lv6/a;->b(Lw6/a;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    const-string v2, "resources.configuration"

    invoke-static {p1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq p1, v3, :cond_3

    if-eq p1, v4, :cond_4

    :cond_3
    move p1, v3

    goto :goto_0

    :cond_4
    move p1, v4

    :cond_5
    :goto_0
    if-nez p2, :cond_6

    iget v2, p0, Lw6/q;->s:I

    invoke-static {v2, p1}, Lw6/b;->a(II)Z

    move-result v2

    if-eqz v2, :cond_6

    goto/16 :goto_3

    :cond_6
    iget-object v2, p0, Lw6/q;->a:Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;

    const/4 v5, 0x0

    iput-object v5, v2, Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;->p:Landroid/graphics/Rect;

    iget-object v6, v2, Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;->m:Landroid/widget/ImageView;

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    invoke-virtual {v2, v3}, Landroid/view/View;->setWillNotDraw(Z)V

    invoke-static {p5, p1}, Lw6/b;->a(II)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lw6/q;->u:Ly6/b;

    invoke-virtual {v0, v2}, Ly6/b;->s(Landroid/view/View;)V

    iget-object v0, p0, Lw6/q;->u:Ly6/b;

    iget-boolean v0, v0, Ly6/b;->p:Z

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "Change Mode ClearMinimizeState invalidate="

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " ("

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lw6/q;->s:I

    invoke-static {p2}, Lw6/b;->b(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " -> "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lw6/b;->b(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p2, 0x29

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lv6/a;->a(Lw6/a;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lw6/q;->setMinimizeStateAndAlphaAnimation(Z)V

    :cond_7
    iput p1, p0, Lw6/q;->s:I

    invoke-virtual {p0, p1}, Lw6/q;->g(I)Ly6/b;

    move-result-object p2

    iput-object p2, p0, Lw6/q;->u:Ly6/b;

    invoke-virtual {p0}, Lw6/q;->k()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-static {p5, p1}, Lw6/b;->a(II)Z

    move-result p1

    if-nez p1, :cond_9

    if-nez p3, :cond_9

    iget-object p1, p0, Lw6/q;->u:Ly6/b;

    instance-of p2, p1, Ly6/c;

    if-eqz p2, :cond_8

    move-object v5, p1

    check-cast v5, Ly6/c;

    :cond_8
    if-eqz v5, :cond_9

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {v5}, Ly6/b;->m()I

    move-result p2

    sub-int/2addr p1, p2

    div-int/2addr p1, v4

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result p2

    add-int/2addr p2, p1

    iput p2, v5, Ly6/c;->z:I

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result p1

    iput p1, v5, Ly6/c;->A:I

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p1

    invoke-virtual {v5}, Ly6/b;->l()I

    move-result p2

    sub-int/2addr p1, p2

    iget p2, p0, Lw6/q;->h:I

    sub-int/2addr p1, p2

    invoke-static {p5, v3}, Lw6/b;->a(II)Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result p2

    if-le p2, p1, :cond_9

    iput p1, v5, Ly6/c;->A:I

    :cond_9
    invoke-virtual {p0}, Lw6/q;->t()V

    iget-object p1, p0, Lw6/q;->u:Ly6/b;

    invoke-virtual {p0, p1}, Lw6/q;->u(Ly6/b;)V

    invoke-virtual {p0}, Lw6/q;->k()Z

    move-result p1

    if-eqz p1, :cond_a

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    invoke-static {p0, p1}, LE5/t;->c(Landroid/view/View;Landroid/graphics/Rect;)V

    iget p1, p0, Lw6/q;->s:I

    invoke-static {p5, p1}, Lw6/b;->a(II)Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lw6/q;->p:LA6/a;

    iget p2, p0, Lw6/q;->s:I

    invoke-virtual {p1, p2}, LA6/a;->i(I)V

    :cond_a
    if-eqz p4, :cond_b

    const-wide/16 p1, 0x0

    :goto_1
    move-wide v6, p1

    goto :goto_2

    :cond_b
    if-eqz p3, :cond_c

    const-wide/16 p1, 0x12c

    goto :goto_1

    :cond_c
    const-wide/16 p1, 0x190

    goto :goto_1

    :goto_2
    iget-object p1, p0, Lw6/q;->u:Ly6/b;

    xor-int/lit8 p2, p3, 0x1

    invoke-virtual {p1, v2, p2}, Ly6/b;->r(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v5

    iget-object p1, p0, Lw6/q;->u:Ly6/b;

    invoke-virtual {p1, p0}, Ly6/b;->F(Landroid/view/View;)V

    const/4 v8, 0x0

    const/4 v9, 0x4

    move-object v4, p0

    invoke-static/range {v4 .. v9}, Lw6/q;->q(Lw6/q;Landroid/graphics/Rect;JZI)V

    :goto_3
    return-void
.end method

.method private final getCurrentRect()Landroid/graphics/Rect;
    .locals 5

    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int/2addr p0, v3

    invoke-direct {v0, v1, v2, v4, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method private final getIntersectRect()Landroid/graphics/Rect;
    .locals 2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-static {p0, v0}, LE5/t;->c(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object p0, p0, Lw6/q;->a:Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;

    invoke-static {p0, v1}, LE5/t;->c(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    :goto_0
    return-object v0
.end method

.method private final getMenuLayoutResId()I
    .locals 0
    .annotation build Landroidx/annotation/LayoutRes;
    .end annotation

    iget-object p0, p0, Lw6/q;->u:Ly6/b;

    invoke-virtual {p0}, Ly6/b;->g()I

    move-result p0

    return p0
.end method

.method private static synthetic getResizePinPoint$annotations()V
    .locals 0

    return-void
.end method

.method public static h(Landroid/view/ViewGroup;)Landroidx/appcompat/widget/Toolbar;
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroidx/appcompat/widget/Toolbar;

    if-eqz v3, :cond_0

    check-cast v2, Landroidx/appcompat/widget/Toolbar;

    return-object v2

    :cond_0
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {v2}, Lw6/q;->h(Landroid/view/ViewGroup;)Landroidx/appcompat/widget/Toolbar;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static q(Lw6/q;Landroid/graphics/Rect;JZI)V
    .locals 2

    const/4 v0, 0x2

    and-int/lit8 v1, p5, 0x2

    if-eqz v1, :cond_0

    const-wide/16 p2, 0x190

    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    const/4 p4, 0x0

    :cond_1
    iget-object p5, p0, Lw6/q;->k:Landroid/graphics/Rect;

    if-eqz p4, :cond_2

    invoke-static {p0, p5}, LE5/t;->c(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lw6/q;->getIntersectRect()Landroid/graphics/Rect;

    move-result-object p4

    invoke-virtual {p5, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_0
    new-instance p4, Landroid/graphics/Rect;

    invoke-direct {p4, p5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_3

    goto :goto_1

    :cond_3
    iget-object p5, p0, Lw6/q;->m:Landroid/animation/ValueAnimator;

    if-eqz p5, :cond_4

    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->end()V

    :cond_4
    const/4 p5, 0x0

    iput-object p5, p0, Lw6/q;->m:Landroid/animation/ValueAnimator;

    iget-object p5, p0, Lw6/q;->l:Landroid/graphics/Rect;

    invoke-virtual {p5, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    new-array p5, v0, [F

    fill-array-data p5, :array_0

    invoke-static {p5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p5

    new-instance v1, Lc6/b;

    invoke-direct {v1, v0, p4, p0}, Lc6/b;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p5, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lw6/p;

    invoke-direct {v0, p0, p4, p1}, Lw6/p;-><init>(Lw6/q;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {p5, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    sget-object v0, Lw6/q;->l0:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p5, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p5, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->start()V

    iget-object p2, p0, Lw6/q;->p:LA6/a;

    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v0

    invoke-virtual {p2, p4, p1, v0, v1}, LA6/a;->onResizeAnimate(Landroid/graphics/Rect;Landroid/graphics/Rect;J)V

    iput-object p5, p0, Lw6/q;->m:Landroid/animation/ValueAnimator;

    :goto_1
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private final setMinimizeStateAndAlphaAnimation(Z)V
    .locals 2

    iget-object v0, p0, Lw6/q;->H:Landroidx/appcompat/widget/Toolbar;

    if-eqz v0, :cond_0

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->seslSetEatingTouch(Z)V

    :cond_0
    iget-object v0, p0, Lw6/q;->u:Ly6/b;

    invoke-virtual {v0, p1, p0}, Ly6/b;->B(ZLw6/q;)V

    iget-boolean v0, p0, Lw6/q;->J:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lw6/q;->r()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lw6/q;->s()V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public final e(Z)V
    .locals 1

    iget-object v0, p0, Lw6/q;->u:Ly6/b;

    invoke-virtual {v0}, Ly6/b;->u()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "that mode is not support Minimize"

    invoke-static {p0, p1}, Lv6/a;->a(Lw6/a;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lw6/q;->getCurrentRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lw6/q;->f(ZLandroid/graphics/Rect;)V

    return-void
.end method

.method public final f(ZLandroid/graphics/Rect;)V
    .locals 11

    iget-object v0, p0, Lw6/q;->u:Ly6/b;

    invoke-virtual {v0}, Ly6/b;->u()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lw6/q;->u:Ly6/b;

    iget-boolean v0, v0, Ly6/b;->p:Z

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lw6/q;->H:Landroidx/appcompat/widget/Toolbar;

    if-eqz v0, :cond_2

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->seslSetEatingTouch(Z)V

    :cond_2
    iget-object v0, p0, Lw6/q;->u:Ly6/b;

    invoke-virtual {v0, p1, p2}, Ly6/b;->j(ZLandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lw6/q;->u:Ly6/b;

    invoke-virtual {v1, p1, p0}, Ly6/b;->B(ZLw6/q;)V

    const-wide/16 v1, 0x0

    iget-object v3, p0, Lw6/q;->p:LA6/a;

    const/4 v4, 0x0

    const/high16 v5, 0x447a0000    # 1000.0f

    const v6, 0x43b48000    # 361.0f

    const/high16 v7, 0x3f800000    # 1.0f

    iget-object v8, p0, Lw6/q;->l:Landroid/graphics/Rect;

    if-eqz p1, :cond_3

    invoke-virtual {v8, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    new-instance p1, Lr1/f;

    new-instance v8, LU/b;

    const/4 v9, 0x4

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, LU/b;-><init>(IB)V

    invoke-direct {p1, v8}, Lr1/f;-><init>(LU/b;)V

    new-instance v8, Lr1/g;

    invoke-direct {v8}, Lr1/g;-><init>()V

    iput-object v8, p1, Lr1/f;->u:Lr1/g;

    invoke-virtual {v8, v7}, Lr1/g;->a(F)V

    iget-object v7, p1, Lr1/f;->u:Lr1/g;

    invoke-virtual {v7, v6}, Lr1/g;->b(F)V

    iget-object v6, p1, Lr1/f;->u:Lr1/g;

    float-to-double v7, v5

    iput-wide v7, v6, Lr1/g;->i:D

    invoke-virtual {p1, v4}, Lr1/e;->e(F)V

    iput v4, p1, Lr1/e;->h:F

    iput v5, p1, Lr1/e;->g:F

    new-instance v4, Lw6/g;

    const/4 v5, 0x1

    invoke-direct {v4, p2, p0, v5}, Lw6/g;-><init>(Ljava/lang/Object;Lw6/q;I)V

    invoke-virtual {p1, v4}, Lr1/e;->b(Lr1/d;)V

    new-instance v4, Lw6/j;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v0, v5}, Lw6/j;-><init>(Lw6/q;Landroid/graphics/Rect;I)V

    invoke-virtual {p1, v4}, Lr1/e;->a(Lr1/c;)V

    invoke-virtual {v3, p2}, LA6/a;->onPreInsert(Landroid/graphics/Rect;)V

    invoke-virtual {v3, p2, v0, v1, v2}, LA6/a;->onResizeAnimate(Landroid/graphics/Rect;Landroid/graphics/Rect;J)V

    invoke-virtual {p1}, Lr1/f;->h()V

    iget-boolean p1, p0, Lw6/q;->J:Z

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lw6/q;->r()V

    goto :goto_0

    :cond_3
    invoke-virtual {v8, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    new-instance p1, Lr1/f;

    new-instance v8, LU/b;

    const/4 v9, 0x4

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, LU/b;-><init>(IB)V

    invoke-direct {p1, v8}, Lr1/f;-><init>(LU/b;)V

    new-instance v8, Lr1/g;

    invoke-direct {v8}, Lr1/g;-><init>()V

    iput-object v8, p1, Lr1/f;->u:Lr1/g;

    invoke-virtual {v8, v7}, Lr1/g;->a(F)V

    iget-object v7, p1, Lr1/f;->u:Lr1/g;

    invoke-virtual {v7, v6}, Lr1/g;->b(F)V

    iget-object v6, p1, Lr1/f;->u:Lr1/g;

    float-to-double v7, v5

    iput-wide v7, v6, Lr1/g;->i:D

    invoke-virtual {p1, v4}, Lr1/e;->e(F)V

    iput v4, p1, Lr1/e;->h:F

    iput v5, p1, Lr1/e;->g:F

    new-instance v4, Lw6/g;

    const/4 v5, 0x0

    invoke-direct {v4, p2, p0, v5}, Lw6/g;-><init>(Ljava/lang/Object;Lw6/q;I)V

    invoke-virtual {p1, v4}, Lr1/e;->b(Lr1/d;)V

    new-instance v4, Lw6/j;

    const/4 v5, 0x1

    invoke-direct {v4, p0, v0, v5}, Lw6/j;-><init>(Lw6/q;Landroid/graphics/Rect;I)V

    invoke-virtual {p1, v4}, Lr1/e;->a(Lr1/c;)V

    invoke-virtual {v3, p2}, LA6/a;->onPreInsert(Landroid/graphics/Rect;)V

    invoke-virtual {v3, p2, v0, v1, v2}, LA6/a;->onResizeAnimate(Landroid/graphics/Rect;Landroid/graphics/Rect;J)V

    invoke-virtual {p1}, Lr1/f;->h()V

    iget-boolean p1, p0, Lw6/q;->J:Z

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lw6/q;->s()V

    :cond_4
    :goto_0
    return-void
.end method

.method public final g(I)Ly6/b;
    .locals 3

    new-instance v0, Lw6/b;

    invoke-direct {v0, p1}, Lw6/b;-><init>(I)V

    iget-object p1, p0, Lw6/q;->r:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ly6/b;

    if-nez p1, :cond_0

    new-instance p1, Ly6/a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lw6/q;->p:LA6/a;

    iget-object v2, p0, Lw6/q;->q:LMd/c;

    iget p0, p0, Lw6/q;->d:I

    invoke-direct {p1, v0, v1, v2, p0}, Ly6/a;-><init>(Landroid/content/Context;LA6/a;LMd/c;I)V

    :cond_0
    return-object p1
.end method

.method public final getAllowedMode-91QzYFA$material_release()I
    .locals 0

    iget p0, p0, Lw6/q;->t:I

    return p0
.end method

.method public final getHaveAnotherMinimizeView()Z
    .locals 0

    iget-boolean p0, p0, Lw6/q;->J:Z

    return p0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lw6/q;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final getMode-91QzYFA()I
    .locals 0

    iget p0, p0, Lw6/q;->s:I

    return p0
.end method

.method public bridge synthetic getPrefix()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "ResultView"

    return-object p0
.end method

.method public final getTopLimitSize()I
    .locals 0

    iget p0, p0, Lw6/q;->i:I

    return p0
.end method

.method public final i(Z)V
    .locals 7

    invoke-virtual {p0}, Lw6/q;->k()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lw6/q;->I:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_1
    iget-object v0, p0, Lw6/q;->u:Ly6/b;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p0}, Ly6/b;->f(Landroid/content/Context;Lw6/q;)Lr1/f;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v1, Lw6/e;

    const/4 v3, 0x1

    invoke-direct {v1, p0, v3}, Lw6/e;-><init>(Landroid/widget/FrameLayout;I)V

    invoke-virtual {v0, v1}, Lr1/e;->b(Lr1/d;)V

    new-instance v1, Lw6/i;

    const/4 v3, 0x0

    invoke-direct {v1, v3, p0}, Lw6/i;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lr1/e;->a(Lr1/c;)V

    invoke-virtual {p0}, Lw6/q;->n()V

    invoke-virtual {v0}, Lr1/f;->h()V

    if-nez p1, :cond_5

    iget-object v1, v0, Lr1/f;->u:Lr1/g;

    iget-wide v3, v1, Lr1/g;->b:D

    const-wide/16 v5, 0x0

    cmpl-double v1, v3, v5

    if-lez v1, :cond_3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v1, v3, :cond_2

    iget-boolean v1, v0, Lr1/e;->f:Z

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    iput-boolean v1, v0, Lr1/f;->w:Z

    goto :goto_0

    :cond_2
    new-instance p0, Landroid/util/AndroidRuntimeException;

    const-string p1, "Animations may only be started on the main thread"

    invoke-direct {p0, p1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Spring animations can only come to an end when there is damping"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    const/4 v0, 0x0

    :cond_5
    :goto_0
    if-nez v0, :cond_7

    iget-object v0, p0, Lw6/q;->u:Ly6/b;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p0}, Ly6/b;->d(Landroid/content/Context;Lw6/q;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_7

    new-instance v1, Lw6/m;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lw6/m;-><init>(Lw6/q;I)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v1, Lw6/m;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lw6/m;-><init>(Lw6/q;I)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-nez p1, :cond_6

    const-wide/16 p0, 0x0

    invoke-virtual {v0, p0, p1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    :cond_6
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_7
    return-void
.end method

.method public final j(I)Z
    .locals 1

    iget v0, p0, Lw6/q;->t:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lw6/q;->g(I)Ly6/b;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "context"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ly6/b;->v(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final k()Z
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final l(IIII)V
    .locals 23

    move-object/from16 v6, p0

    move/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onChangedParentBounds "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v6, Lw6/q;->o:Landroid/graphics/Rect;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " -> ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v8, v12, v9, v12}, Lt/b;->A(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lv6/a;->a(Lw6/a;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lw6/q;->getCurrentRect()Landroid/graphics/Rect;

    move-result-object v13

    iget-object v0, v6, Lw6/q;->u:Ly6/b;

    invoke-virtual {v0}, Ly6/b;->m()I

    move-result v0

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v1

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v14, v3

    goto :goto_0

    :cond_0
    const/4 v14, 0x0

    :goto_0
    iget-object v0, v6, Lw6/q;->u:Ly6/b;

    invoke-virtual {v0}, Ly6/b;->l()I

    move-result v0

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-ne v0, v1, :cond_1

    move v15, v3

    goto :goto_1

    :cond_1
    const/4 v15, 0x0

    :goto_1
    iget-object v0, v6, Lw6/q;->r:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ly6/b;

    iget-object v4, v6, Lw6/q;->a:Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;

    invoke-virtual {v1, v4}, Ly6/b;->E(Landroid/view/View;)V

    goto :goto_2

    :cond_2
    iget-object v0, v6, Lw6/q;->m:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-ne v0, v3, :cond_3

    move v0, v3

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "onChangedParentBound "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v6, Lw6/q;->s:I

    invoke-static {v4}, Lw6/b;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", animating="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lv6/a;->a(Lw6/a;Ljava/lang/String;)V

    if-eqz v0, :cond_5

    iget-object v0, v6, Lw6/q;->m:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    :cond_4
    const/4 v0, 0x0

    iput-object v0, v6, Lw6/q;->m:Landroid/animation/ValueAnimator;

    iget v1, v6, Lw6/q;->s:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x1

    const/16 v5, 0xc

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lw6/q;->d(Lw6/q;IZZZI)V

    move v0, v7

    goto/16 :goto_d

    :cond_5
    iget v0, v11, Landroid/graphics/Rect;->left:I

    if-ne v0, v7, :cond_7

    iget v0, v11, Landroid/graphics/Rect;->right:I

    if-eq v0, v9, :cond_6

    goto :goto_4

    :cond_6
    const/4 v4, 0x0

    goto :goto_5

    :cond_7
    :goto_4
    move v4, v3

    :goto_5
    iget v0, v11, Landroid/graphics/Rect;->top:I

    if-ne v0, v8, :cond_9

    iget v0, v11, Landroid/graphics/Rect;->bottom:I

    if-eq v0, v10, :cond_8

    goto :goto_6

    :cond_8
    const/4 v1, 0x0

    goto :goto_7

    :cond_9
    :goto_6
    move v1, v3

    :goto_7
    iget-object v0, v6, Lw6/q;->u:Ly6/b;

    instance-of v2, v0, Ly6/d;

    if-eqz v2, :cond_b

    if-eqz v14, :cond_a

    if-eqz v4, :cond_a

    :goto_8
    move v2, v3

    goto :goto_a

    :cond_a
    :goto_9
    const/4 v2, 0x0

    :goto_a
    move v3, v2

    goto :goto_b

    :cond_b
    instance-of v2, v0, Ly6/a;

    if-eqz v2, :cond_c

    if-eqz v15, :cond_a

    if-eqz v1, :cond_a

    goto :goto_8

    :cond_c
    instance-of v2, v0, Ly6/c;

    if-eqz v2, :cond_f

    const-string v2, "null cannot be cast to non-null type com.google.android.material.oneui.floatingdock.behavior.FloatingBehavior"

    invoke-static {v0, v2}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ly6/c;

    if-nez v4, :cond_d

    if-eqz v1, :cond_a

    :cond_d
    if-eqz v14, :cond_e

    if-eqz v15, :cond_e

    goto :goto_8

    :cond_e
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v13}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v6, v2}, Lw6/q;->v(Landroid/graphics/Rect;)V

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iput v3, v0, Ly6/c;->z:I

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iput v2, v0, Ly6/c;->A:I

    goto :goto_9

    :cond_f
    const/4 v3, 0x0

    :goto_b
    if-eqz v3, :cond_10

    iget v2, v6, Lw6/q;->s:I

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x1

    const/16 v19, 0x4

    move-object/from16 v0, p0

    move/from16 v20, v1

    move v1, v2

    move/from16 v2, v18

    move/from16 v21, v3

    move/from16 v3, v16

    move/from16 v22, v4

    move/from16 v4, v17

    move-object v7, v5

    move/from16 v5, v19

    invoke-static/range {v0 .. v5}, Lw6/q;->d(Lw6/q;IZZZI)V

    goto :goto_c

    :cond_10
    move/from16 v20, v1

    move/from16 v21, v3

    move/from16 v22, v4

    move-object v7, v5

    :goto_c
    invoke-direct/range {p0 .. p0}, Lw6/q;->getCurrentRect()Landroid/graphics/Rect;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v6, Lw6/q;->s:I

    invoke-static {v2}, Lw6/b;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", update="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v21

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", w="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v22

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", h="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", dw="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", dh="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lv6/a;->a(Lw6/a;Ljava/lang/String;)V

    move/from16 v0, p1

    :goto_d
    invoke-virtual {v11, v0, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public final m()V
    .locals 2

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lw6/q;->getIntersectRect()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lw6/q;->p:LA6/a;

    invoke-virtual {v1, v0}, LA6/a;->onInsert(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lw6/q;->u:Ly6/b;

    invoke-virtual {v1}, Ly6/b;->u()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lw6/q;->u:Ly6/b;

    iget-boolean v1, v1, Ly6/b;->p:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lw6/q;->setMinimizeStateAndAlphaAnimation(Z)V

    :cond_0
    iget-object p0, p0, Lw6/q;->u:Ly6/b;

    invoke-virtual {p0}, Ly6/b;->e()Lw6/r;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0, v0}, Lw6/r;->onAnimationEnd(Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method

.method public final n()V
    .locals 2

    invoke-direct {p0}, Lw6/q;->getIntersectRect()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lw6/q;->u:Ly6/b;

    invoke-virtual {v1}, Ly6/b;->e()Lw6/r;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lw6/r;->onAnimationStart(Landroid/graphics/Rect;)V

    :cond_0
    iget-object p0, p0, Lw6/q;->p:LA6/a;

    invoke-virtual {p0, v0}, LA6/a;->onPreInsert(Landroid/graphics/Rect;)V

    return-void
.end method

.method public final o()V
    .locals 2

    invoke-direct {p0}, Lw6/q;->getIntersectRect()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lw6/q;->p:LA6/a;

    invoke-virtual {v1, v0}, LA6/a;->onInsert(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lw6/q;->u:Ly6/b;

    invoke-virtual {v1}, Ly6/b;->p()Lw6/r;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lw6/r;->onAnimationEnd(Landroid/graphics/Rect;)V

    :cond_0
    iget-object v0, p0, Lw6/q;->u:Ly6/b;

    invoke-virtual {v0, p0}, Ly6/b;->F(Landroid/view/View;)V

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lw6/q;->B:Landroid/content/res/Configuration;

    if-eqz v0, :cond_0

    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v2, :cond_0

    iget v1, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-ne v1, v2, :cond_0

    iget v0, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v0, v1, :cond_5

    :cond_0
    iget v0, p0, Lw6/q;->s:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lw6/b;->a(II)Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    iget v1, p0, Lw6/q;->s:I

    :cond_3
    :goto_0
    iget-object v0, p0, Lw6/q;->r:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    iget-object v3, p0, Lw6/q;->a:Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ly6/b;

    invoke-virtual {v2, v3}, Ly6/b;->x(Landroid/view/View;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v2, Lw6/n;

    invoke-direct {v2, p0, v1}, Lw6/n;-><init>(Lw6/q;I)V

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iput-object p1, p0, Lw6/q;->B:Landroid/content/res/Configuration;

    :cond_5
    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const-string v0, "event"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iget-object v1, p0, Lw6/q;->g0:Lcom/samsung/android/scloud/lib/setting/e;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lz6/a;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lz6/a;-><init>(Lcom/samsung/android/scloud/lib/setting/e;I)V

    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/scloud/lib/setting/e;->k(Landroid/view/MotionEvent;Lz6/a;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dragHandlerController onInterceptTouchEvent="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lv6/a;->a(Lw6/a;Ljava/lang/String;)V

    return v3

    :cond_0
    if-nez v0, :cond_2

    const-string v0, "dragHandlerView"

    iget-object v2, p0, Lw6/q;->G:Landroid/widget/ImageView;

    invoke-static {v2, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, p1}, Lcom/samsung/android/scloud/lib/setting/e;->i(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lw6/q;->u:Ly6/b;

    invoke-virtual {v0, p0, p1}, Ly6/b;->D(Lw6/q;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "shouldIntercept onInterceptTouchEvent "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lv6/a;->a(Lw6/a;Ljava/lang/String;)V

    return v3

    :cond_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 19

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    const-string v0, "event"

    invoke-static {v7, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, v6, Lw6/q;->v:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, v6, Lw6/q;->w:F

    invoke-direct/range {p0 .. p0}, Lw6/q;->getCurrentRect()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, v6, Lw6/q;->n:Landroid/graphics/Rect;

    :cond_0
    iget-object v0, v6, Lw6/q;->g0:Lcom/samsung/android/scloud/lib/setting/e;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lz6/a;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lz6/a;-><init>(Lcom/samsung/android/scloud/lib/setting/e;I)V

    invoke-virtual {v0, v7, v1}, Lcom/samsung/android/scloud/lib/setting/e;->k(Landroid/view/MotionEvent;Lz6/a;)Z

    move-result v1

    const/4 v9, 0x1

    iget-object v10, v6, Lw6/q;->q:LMd/c;

    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "return by dragHandlerController onTouchEvent="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lv6/a;->a(Lw6/a;Ljava/lang/String;)V

    invoke-virtual {v10, v9}, LMd/c;->f(I)V

    return v9

    :cond_1
    const-string v1, "dragHandlerView"

    iget-object v2, v6, Lw6/q;->G:Landroid/widget/ImageView;

    const/16 v11, 0x8

    const/4 v12, 0x4

    const/4 v13, 0x3

    const/4 v3, 0x2

    if-nez v8, :cond_8

    iget v4, v6, Lw6/q;->v:F

    iput v4, v6, Lw6/q;->x:F

    iget v4, v6, Lw6/q;->w:F

    iput v4, v6, Lw6/q;->y:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, v6, Lw6/q;->z:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    invoke-static {v2, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v7}, Lcom/samsung/android/scloud/lib/setting/e;->i(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v6, Lw6/q;->u:Ly6/b;

    invoke-virtual {v0, v6, v7}, Ly6/b;->D(Lw6/q;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_2
    iget-object v0, v6, Lw6/q;->u:Ly6/b;

    invoke-virtual {v0, v6, v7}, Ly6/b;->H(Lw6/q;Landroid/view/MotionEvent;)V

    iget v0, v10, LMd/c;->b:I

    invoke-static {v0, v13}, Lw6/c;->a(II)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    const/16 v5, 0xf

    iput v5, v6, Lw6/q;->j:I

    iget v5, v6, Lw6/q;->d:I

    if-ge v0, v5, :cond_3

    const/16 v14, 0xe

    iput v14, v6, Lw6/q;->j:I

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v14

    sub-int/2addr v14, v5

    if-le v0, v14, :cond_4

    iget v0, v6, Lw6/q;->j:I

    xor-int/2addr v0, v12

    iput v0, v6, Lw6/q;->j:I

    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int/2addr v0, v5

    if-le v4, v0, :cond_5

    iget v0, v6, Lw6/q;->j:I

    xor-int/2addr v0, v11

    iput v0, v6, Lw6/q;->j:I

    :cond_5
    if-ge v4, v5, :cond_6

    iget v0, v6, Lw6/q;->j:I

    xor-int/2addr v0, v3

    iput v0, v6, Lw6/q;->j:I

    :cond_6
    iget v0, v6, Lw6/q;->j:I

    iget-object v4, v6, Lw6/q;->u:Ly6/b;

    invoke-virtual {v4}, Ly6/b;->n()I

    move-result v4

    or-int/2addr v0, v4

    iput v0, v6, Lw6/q;->j:I

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "onTouchEvent onInterceptTouchEvent "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lv6/a;->a(Lw6/a;Ljava/lang/String;)V

    :cond_8
    iget-object v0, v6, Lw6/q;->u:Ly6/b;

    iget-boolean v0, v0, Ly6/b;->p:Z

    if-eqz v0, :cond_9

    iget-object v0, v6, Lw6/q;->d0:Landroid/view/GestureDetector;

    invoke-virtual {v0, v7}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v6, Lw6/q;->u:Ly6/b;

    invoke-virtual {v0, v6, v7}, Ly6/b;->H(Lw6/q;Landroid/view/MotionEvent;)V

    return v9

    :cond_9
    iget v0, v10, LMd/c;->b:I

    invoke-static {v0, v9}, Lw6/c;->a(II)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "onTouchEvent is consumed in ResultView(STATE_IDLE)"

    invoke-static {v6, v0}, Lv6/a;->a(Lw6/a;Ljava/lang/String;)V

    return v9

    :cond_a
    if-ne v8, v3, :cond_d

    iget-boolean v0, v6, Lw6/q;->C:Z

    if-nez v0, :cond_d

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v4, v6, Lw6/q;->x:F

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v4, v6, Lw6/q;->A:I

    int-to-float v4, v4

    cmpl-float v0, v0, v4

    if-gtz v0, :cond_c

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v5, v6, Lw6/q;->y:F

    sub-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_b

    goto :goto_0

    :cond_b
    const/4 v0, 0x0

    goto :goto_1

    :cond_c
    :goto_0
    move v0, v9

    :goto_1
    iput-boolean v0, v6, Lw6/q;->C:Z

    const-string v0, "onTouchEvent Drag Start"

    invoke-static {v6, v0}, Lv6/a;->a(Lw6/a;Ljava/lang/String;)V

    :cond_d
    iget-boolean v0, v6, Lw6/q;->C:Z

    iget-object v15, v6, Lw6/q;->f0:LZ3/x;

    iget-object v5, v6, Lw6/q;->e0:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_36

    invoke-direct/range {p0 .. p0}, Lw6/q;->getCurrentRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v4, v10, LMd/c;->b:I

    invoke-static {v4, v3}, Lw6/c;->a(II)Z

    move-result v4

    iget-object v14, v6, Lw6/q;->a:Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;

    iget-object v11, v6, Lw6/q;->p:LA6/a;

    const-string v13, "null cannot be cast to non-null type com.google.android.material.oneui.floatingdock.behavior.FloatingBehavior"

    if-eqz v4, :cond_19

    iget-object v1, v6, Lw6/q;->u:Ly6/b;

    instance-of v2, v1, Ly6/c;

    if-eqz v2, :cond_f

    iget-boolean v1, v1, Ly6/b;->p:Z

    if-nez v1, :cond_f

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v3, :cond_f

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_e
    const v1, 0x3f828f5c    # 1.02f

    invoke-virtual {v15, v1, v1}, LZ3/x;->l(FF)V

    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v4, v6, Lw6/q;->x:F

    sub-float/2addr v2, v4

    invoke-static {v2}, LG5/p2;->e(F)I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iget v3, v6, Lw6/q;->y:F

    sub-float/2addr v4, v3

    invoke-static {v4}, LG5/p2;->e(F)I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    iput v4, v6, Lw6/q;->x:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iput v4, v6, Lw6/q;->y:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, v6, Lw6/q;->z:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    iget-object v4, v6, Lw6/q;->u:Ly6/b;

    instance-of v12, v4, Ly6/c;

    if-eqz v12, :cond_10

    invoke-static {v4, v13}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ly6/c;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLeft()I

    move-result v12

    iput v12, v4, Ly6/c;->z:I

    iget-object v4, v6, Lw6/q;->u:Ly6/b;

    invoke-static {v4, v13}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ly6/c;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTop()I

    move-result v12

    iput v12, v4, Ly6/c;->A:I

    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLeft()I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v4, v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTop()I

    move-result v13

    int-to-float v13, v13

    add-float/2addr v12, v13

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v13

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v9

    move-object/from16 v16, v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v17, v15

    iget v15, v6, Lw6/q;->g:F

    mul-float/2addr v5, v15

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v15

    int-to-float v15, v15

    move/from16 v18, v8

    iget v8, v6, Lw6/q;->f:F

    mul-float/2addr v15, v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v8

    const/4 v7, 0x1

    if-ne v8, v7, :cond_11

    cmpg-float v4, v4, v5

    if-gez v4, :cond_12

    goto :goto_2

    :cond_11
    int-to-float v7, v13

    sub-float/2addr v7, v5

    cmpl-float v4, v4, v7

    if-lez v4, :cond_12

    :goto_2
    const/4 v4, 0x2

    goto :goto_3

    :cond_12
    int-to-float v4, v9

    sub-float/2addr v4, v15

    cmpl-float v4, v12, v4

    if-lez v4, :cond_13

    const/4 v4, 0x1

    goto :goto_3

    :cond_13
    const/4 v4, 0x4

    :goto_3
    invoke-virtual {v6, v4}, Lw6/q;->g(I)Ly6/b;

    move-result-object v5

    const/4 v7, 0x1

    invoke-virtual {v5, v14, v7}, Ly6/b;->r(Landroid/view/View;Z)Landroid/graphics/Rect;

    move-result-object v5

    const/4 v8, 0x4

    invoke-static {v4, v8}, Lw6/b;->a(II)Z

    move-result v9

    xor-int/2addr v9, v7

    invoke-virtual {v14, v9, v5}, Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;->g(ZLandroid/graphics/Rect;)V

    invoke-static {v4, v8}, Lw6/b;->a(II)Z

    move-result v5

    if-nez v5, :cond_14

    if-eq v1, v7, :cond_15

    const/4 v5, 0x3

    if-ne v1, v5, :cond_14

    goto :goto_4

    :cond_14
    move-object/from16 v7, v16

    goto :goto_5

    :cond_15
    :goto_4
    const/4 v2, 0x0

    const/16 v5, 0xe

    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move v1, v4

    move v4, v7

    move-object/from16 v7, v16

    invoke-static/range {v0 .. v5}, Lw6/q;->d(Lw6/q;IZZZI)V

    const/4 v0, 0x1

    invoke-virtual {v10, v0}, LMd/c;->f(I)V

    const/4 v1, 0x0

    iput-object v1, v14, Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;->p:Landroid/graphics/Rect;

    iget-object v1, v14, Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;->m:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v14}, Landroid/view/View;->invalidate()V

    invoke-virtual {v14, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    goto :goto_7

    :goto_5
    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v3

    iput v4, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v3

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v2

    iput v3, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v2

    iput v3, v0, Landroid/graphics/Rect;->right:I

    iget v2, v6, Lw6/q;->s:I

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lw6/b;->a(II)Z

    move-result v2

    if-eqz v2, :cond_17

    const/4 v2, 0x1

    if-eq v1, v2, :cond_16

    const/4 v2, 0x3

    if-ne v1, v2, :cond_17

    :cond_16
    invoke-virtual {v6, v0}, Lw6/q;->v(Landroid/graphics/Rect;)V

    goto :goto_6

    :cond_17
    invoke-static {v6, v0}, LE5/t;->d(Landroid/view/View;Landroid/graphics/Rect;)V

    :goto_6
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v11, v1, v0}, LA6/a;->onFloatingMoved(II)V

    :cond_18
    :goto_7
    move-object/from16 v10, p1

    goto/16 :goto_15

    :cond_19
    move-object v7, v5

    move/from16 v18, v8

    move-object/from16 v17, v15

    iget v3, v10, LMd/c;->b:I

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lw6/c;->a(II)Z

    move-result v3

    if-eqz v3, :cond_18

    iget v3, v6, Lw6/q;->s:I

    const/4 v4, 0x4

    invoke-static {v3, v4}, Lw6/b;->a(II)Z

    move-result v3

    if-eqz v3, :cond_1a

    :goto_8
    move-object v8, v0

    goto :goto_9

    :cond_1a
    new-instance v0, Landroid/graphics/Rect;

    iget-object v3, v6, Lw6/q;->n:Landroid/graphics/Rect;

    invoke-direct {v0, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_8

    :goto_9
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iget v3, v6, Lw6/q;->j:I

    const/4 v4, 0x1

    and-int/2addr v3, v4

    const v4, 0x3dcccccd    # 0.1f

    if-nez v3, :cond_1e

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iget v5, v6, Lw6/q;->v:F

    sub-float/2addr v3, v5

    float-to-int v3, v3

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v5

    sub-int/2addr v5, v3

    iget v10, v6, Lw6/q;->s:I

    const/4 v12, 0x4

    invoke-static {v10, v12}, Lw6/b;->a(II)Z

    move-result v15

    if-eqz v15, :cond_1b

    const/4 v10, 0x1

    goto :goto_a

    :cond_1b
    const/4 v12, 0x2

    invoke-static {v10, v12}, Lw6/b;->a(II)Z

    move-result v10

    :goto_a
    if-eqz v10, :cond_1e

    iget-object v10, v6, Lw6/q;->u:Ly6/b;

    iget v12, v10, Ly6/b;->g:I

    if-le v5, v12, :cond_1c

    iget v3, v8, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v12

    iput v3, v8, Landroid/graphics/Rect;->left:I

    goto :goto_b

    :cond_1c
    invoke-virtual {v10}, Ly6/b;->i()I

    move-result v10

    if-gt v5, v10, :cond_1d

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget-object v10, v6, Lw6/q;->u:Ly6/b;

    invoke-virtual {v10}, Ly6/b;->i()I

    move-result v10

    sub-int/2addr v5, v10

    sub-int/2addr v3, v5

    int-to-float v3, v3

    mul-float/2addr v3, v4

    invoke-virtual {v9, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v5, v8, Landroid/graphics/Rect;->right:I

    iget-object v10, v6, Lw6/q;->u:Ly6/b;

    invoke-virtual {v10}, Ly6/b;->i()I

    move-result v10

    sub-int/2addr v5, v10

    iput v5, v9, Landroid/graphics/Rect;->left:I

    iget v5, v8, Landroid/graphics/Rect;->right:I

    iget-object v10, v6, Lw6/q;->u:Ly6/b;

    invoke-virtual {v10}, Ly6/b;->i()I

    move-result v10

    sub-int/2addr v5, v10

    float-to-int v3, v3

    add-int/2addr v5, v3

    iput v5, v8, Landroid/graphics/Rect;->left:I

    goto :goto_b

    :cond_1d
    iget v5, v8, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v3

    iput v5, v8, Landroid/graphics/Rect;->left:I

    :cond_1e
    :goto_b
    iget v3, v6, Lw6/q;->j:I

    const/4 v5, 0x2

    and-int/2addr v3, v5

    if-nez v3, :cond_22

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget v5, v6, Lw6/q;->w:F

    sub-float/2addr v3, v5

    float-to-int v3, v3

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int/2addr v5, v3

    iget v10, v6, Lw6/q;->s:I

    const/4 v12, 0x4

    invoke-static {v10, v12}, Lw6/b;->a(II)Z

    move-result v15

    if-eqz v15, :cond_1f

    const/4 v10, 0x1

    goto :goto_c

    :cond_1f
    const/4 v12, 0x1

    invoke-static {v10, v12}, Lw6/b;->a(II)Z

    move-result v10

    :goto_c
    if-eqz v10, :cond_22

    iget-object v10, v6, Lw6/q;->u:Ly6/b;

    iget v12, v10, Ly6/b;->h:I

    if-le v5, v12, :cond_20

    iget v3, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v12

    iput v3, v8, Landroid/graphics/Rect;->top:I

    goto :goto_d

    :cond_20
    invoke-virtual {v10}, Ly6/b;->h()I

    move-result v10

    if-ge v5, v10, :cond_21

    invoke-virtual {v9, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v3, v8, Landroid/graphics/Rect;->bottom:I

    iget-object v5, v6, Lw6/q;->u:Ly6/b;

    invoke-virtual {v5}, Ly6/b;->h()I

    move-result v5

    sub-int/2addr v3, v5

    iput v3, v9, Landroid/graphics/Rect;->top:I

    iget v3, v8, Landroid/graphics/Rect;->bottom:I

    iget-object v5, v6, Lw6/q;->u:Ly6/b;

    invoke-virtual {v5}, Ly6/b;->h()I

    move-result v5

    sub-int/2addr v3, v5

    iput v3, v8, Landroid/graphics/Rect;->top:I

    goto :goto_d

    :cond_21
    iget v5, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v3

    iput v5, v8, Landroid/graphics/Rect;->top:I

    :cond_22
    :goto_d
    iget v3, v6, Lw6/q;->j:I

    const/4 v5, 0x4

    and-int/2addr v3, v5

    if-nez v3, :cond_26

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iget v10, v6, Lw6/q;->v:F

    sub-float/2addr v3, v10

    float-to-int v3, v3

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v10

    add-int/2addr v10, v3

    iget v12, v6, Lw6/q;->s:I

    invoke-static {v12, v5}, Lw6/b;->a(II)Z

    move-result v15

    if-eqz v15, :cond_23

    const/4 v5, 0x1

    goto :goto_e

    :cond_23
    const/4 v5, 0x2

    invoke-static {v12, v5}, Lw6/b;->a(II)Z

    move-result v5

    :goto_e
    if-eqz v5, :cond_26

    iget-object v5, v6, Lw6/q;->u:Ly6/b;

    iget v12, v5, Ly6/b;->g:I

    if-le v10, v12, :cond_24

    iget v3, v8, Landroid/graphics/Rect;->left:I

    add-int/2addr v12, v3

    iput v12, v8, Landroid/graphics/Rect;->right:I

    goto :goto_f

    :cond_24
    invoke-virtual {v5}, Ly6/b;->i()I

    move-result v5

    if-gt v10, v5, :cond_25

    iget-object v5, v6, Lw6/q;->u:Ly6/b;

    invoke-virtual {v5}, Ly6/b;->i()I

    move-result v5

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v10

    sub-int/2addr v5, v10

    sub-int/2addr v3, v5

    int-to-float v3, v3

    mul-float/2addr v3, v4

    invoke-virtual {v9, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v5, v8, Landroid/graphics/Rect;->left:I

    iget-object v10, v6, Lw6/q;->u:Ly6/b;

    invoke-virtual {v10}, Ly6/b;->i()I

    move-result v10

    sub-int/2addr v5, v10

    iput v5, v9, Landroid/graphics/Rect;->right:I

    iget v5, v8, Landroid/graphics/Rect;->left:I

    iget-object v10, v6, Lw6/q;->u:Ly6/b;

    invoke-virtual {v10}, Ly6/b;->i()I

    move-result v10

    add-int/2addr v10, v5

    float-to-int v3, v3

    add-int/2addr v10, v3

    iput v10, v8, Landroid/graphics/Rect;->right:I

    goto :goto_f

    :cond_25
    iget v5, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v3

    iput v5, v8, Landroid/graphics/Rect;->right:I

    :cond_26
    :goto_f
    iget v3, v6, Lw6/q;->j:I

    const/16 v5, 0x8

    and-int/2addr v3, v5

    if-nez v3, :cond_29

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget v5, v6, Lw6/q;->w:F

    sub-float/2addr v3, v5

    float-to-int v3, v3

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v5

    add-int/2addr v5, v3

    iget v10, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v10, v3

    iget v12, v6, Lw6/q;->s:I

    const/4 v15, 0x4

    invoke-static {v12, v15}, Lw6/b;->a(II)Z

    move-result v12

    if-eqz v12, :cond_29

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v12

    if-le v10, v12, :cond_27

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v3

    iput v3, v8, Landroid/graphics/Rect;->bottom:I

    goto :goto_10

    :cond_27
    iget-object v10, v6, Lw6/q;->u:Ly6/b;

    invoke-virtual {v10}, Ly6/b;->h()I

    move-result v10

    if-gt v5, v10, :cond_28

    iget-object v5, v6, Lw6/q;->u:Ly6/b;

    invoke-virtual {v5}, Ly6/b;->h()I

    move-result v5

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v10

    sub-int/2addr v5, v10

    sub-int/2addr v3, v5

    int-to-float v3, v3

    mul-float/2addr v3, v4

    invoke-virtual {v9, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v4, v8, Landroid/graphics/Rect;->top:I

    iget-object v5, v6, Lw6/q;->u:Ly6/b;

    invoke-virtual {v5}, Ly6/b;->h()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v9, Landroid/graphics/Rect;->bottom:I

    iget v4, v8, Landroid/graphics/Rect;->top:I

    iget-object v5, v6, Lw6/q;->u:Ly6/b;

    invoke-virtual {v5}, Ly6/b;->h()I

    move-result v5

    add-int/2addr v5, v4

    float-to-int v3, v3

    add-int/2addr v5, v3

    iput v5, v8, Landroid/graphics/Rect;->bottom:I

    goto :goto_10

    :cond_28
    iget v4, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v3

    iput v4, v8, Landroid/graphics/Rect;->bottom:I

    :cond_29
    :goto_10
    iget v3, v6, Lw6/q;->s:I

    const/4 v4, 0x4

    invoke-static {v3, v4}, Lw6/b;->a(II)Z

    move-result v3

    if-eqz v3, :cond_2b

    iget-object v3, v6, Lw6/q;->u:Ly6/b;

    invoke-static {v3, v13}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ly6/c;

    iget v4, v8, Landroid/graphics/Rect;->left:I

    iput v4, v3, Ly6/c;->z:I

    iget-object v3, v6, Lw6/q;->u:Ly6/b;

    invoke-static {v3, v13}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ly6/c;

    iget v4, v8, Landroid/graphics/Rect;->top:I

    iput v4, v3, Ly6/c;->A:I

    iget-object v3, v6, Lw6/q;->u:Ly6/b;

    invoke-virtual {v3, v8}, Ly6/b;->t(Landroid/graphics/Rect;)Z

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v14, v3, v4}, Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;->l(ZZ)V

    invoke-static {v2, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v10, p1

    invoke-static {v2, v10}, Lcom/samsung/android/scloud/lib/setting/e;->i(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_2a

    invoke-virtual {v14, v8}, Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;->f(Landroid/graphics/Rect;)V

    :cond_2a
    :goto_11
    const/4 v1, 0x1

    goto :goto_13

    :cond_2b
    move-object/from16 v10, p1

    iget-object v1, v6, Lw6/q;->u:Ly6/b;

    instance-of v2, v1, Ly6/a;

    if-eqz v2, :cond_2c

    check-cast v1, Ly6/a;

    goto :goto_12

    :cond_2c
    const/4 v1, 0x0

    :goto_12
    if-eqz v1, :cond_2d

    iget-boolean v2, v1, Ly6/b;->p:Z

    if-eqz v2, :cond_2d

    iget-object v1, v1, Ly6/a;->z:Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    const-string v2, "minVIThreshold.upper"

    invoke-static {v1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iget v2, v8, Landroid/graphics/Rect;->top:I

    if-le v1, v2, :cond_2d

    const/4 v1, 0x0

    invoke-direct {v6, v1}, Lw6/q;->setMinimizeStateAndAlphaAnimation(Z)V

    :cond_2d
    invoke-static {v6, v8}, LE5/t;->d(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_11

    :goto_13
    if-eq v0, v1, :cond_2e

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2e

    goto/16 :goto_15

    :cond_2e
    const/4 v0, 0x0

    invoke-virtual {v14, v0}, Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;->f(Landroid/graphics/Rect;)V

    iget-object v0, v6, Lw6/q;->u:Ly6/b;

    invoke-virtual {v0}, Ly6/b;->u()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, v6, Lw6/q;->u:Ly6/b;

    instance-of v1, v0, Ly6/a;

    if-eqz v1, :cond_31

    const-string v1, "null cannot be cast to non-null type com.google.android.material.oneui.floatingdock.behavior.BottomBehavior"

    invoke-static {v0, v1}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ly6/a;

    iget-object v1, v0, Ly6/a;->A:Landroid/util/Range;

    iget v2, v8, Landroid/graphics/Rect;->top:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v1

    if-eqz v1, :cond_2f

    const/4 v1, 0x1

    invoke-virtual {v6, v1}, Lw6/q;->i(Z)V

    goto :goto_14

    :cond_2f
    const/4 v1, 0x1

    iget-object v2, v0, Ly6/a;->z:Landroid/util/Range;

    iget v3, v8, Landroid/graphics/Rect;->top:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-virtual {v6, v1, v8}, Lw6/q;->f(ZLandroid/graphics/Rect;)V

    goto/16 :goto_15

    :cond_30
    iget-object v1, v0, Ly6/a;->y:Landroid/util/Range;

    iget v2, v8, Landroid/graphics/Rect;->top:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v0, v0, Ly6/b;->h:I

    sub-int/2addr v1, v0

    iput v1, v8, Landroid/graphics/Rect;->top:I

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    const/4 v4, 0x0

    const/4 v5, 0x6

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    move-object v1, v8

    invoke-static/range {v0 .. v5}, Lw6/q;->q(Lw6/q;Landroid/graphics/Rect;JZI)V

    goto :goto_14

    :cond_31
    invoke-virtual {v0, v8}, Ly6/b;->t(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_32

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {v14, v1, v0}, Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;->l(ZZ)V

    invoke-virtual {v6, v0}, Lw6/q;->e(Z)V

    goto :goto_15

    :cond_32
    :goto_14
    iget v0, v6, Lw6/q;->s:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lw6/b;->a(II)Z

    move-result v0

    if-eqz v0, :cond_33

    const/4 v4, 0x0

    const/4 v5, 0x6

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    move-object v1, v8

    invoke-static/range {v0 .. v5}, Lw6/q;->q(Lw6/q;Landroid/graphics/Rect;JZI)V

    goto :goto_15

    :cond_33
    invoke-virtual/range {p0 .. p0}, Lw6/q;->k()Z

    move-result v0

    if-nez v0, :cond_34

    goto :goto_15

    :cond_34
    iget-object v0, v6, Lw6/q;->u:Ly6/b;

    instance-of v0, v0, Ly6/d;

    if-eqz v0, :cond_35

    invoke-virtual {v9, v8}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_35

    const/4 v4, 0x0

    const/4 v5, 0x6

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    move-object v1, v9

    invoke-static/range {v0 .. v5}, Lw6/q;->q(Lw6/q;Landroid/graphics/Rect;JZI)V

    goto :goto_15

    :cond_35
    invoke-virtual {v11, v8}, LA6/a;->onInsert(Landroid/graphics/Rect;)V

    iget-object v0, v6, Lw6/q;->u:Ly6/b;

    invoke-virtual {v0, v6}, Ly6/b;->F(Landroid/view/View;)V

    goto :goto_15

    :cond_36
    move-object v10, v7

    move/from16 v18, v8

    move-object/from16 v17, v15

    move-object v7, v5

    :goto_15
    iget-object v0, v6, Lw6/q;->u:Ly6/b;

    invoke-virtual {v0, v6, v10}, Ly6/b;->H(Lw6/q;Landroid/view/MotionEvent;)V

    move/from16 v0, v18

    const/4 v1, 0x1

    if-eq v0, v1, :cond_37

    const/4 v1, 0x3

    if-eq v0, v1, :cond_37

    :goto_16
    const/4 v0, 0x1

    goto :goto_17

    :cond_37
    const/4 v0, 0x0

    iput-boolean v0, v6, Lw6/q;->C:Z

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_38
    const/high16 v0, 0x3f800000    # 1.0f

    move-object/from16 v1, v17

    invoke-virtual {v1, v0, v0}, LZ3/x;->l(FF)V

    goto :goto_16

    :goto_17
    return v0
.end method

.method public final onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    const-string v0, "changedView"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    iget-object p0, p0, Lw6/q;->p:LA6/a;

    invoke-virtual {p0, p2}, LA6/a;->onVisibilityChanged(I)V

    return-void
.end method

.method public final p()V
    .locals 2

    invoke-direct {p0}, Lw6/q;->getIntersectRect()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lw6/q;->p:LA6/a;

    invoke-virtual {v1, v0}, LA6/a;->onPreInsert(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lw6/q;->u:Ly6/b;

    invoke-virtual {p0}, Ly6/b;->p()Lw6/r;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, v0}, Lw6/r;->onAnimationStart(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public final r()V
    .locals 2

    iget-object v0, p0, Lw6/q;->i0:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    iget-object v0, p0, Lw6/q;->h0:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    const/4 v1, 0x0

    iget-object p0, p0, Lw6/q;->F:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public final s()V
    .locals 2

    iget-object v0, p0, Lw6/q;->h0:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    iget-object v0, p0, Lw6/q;->i0:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    const/4 v1, 0x0

    iget-object p0, p0, Lw6/q;->E:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public final setAllowedMode-J5JjPLc$material_release(I)V
    .locals 0

    iput p1, p0, Lw6/q;->t:I

    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object p0, p0, Lw6/q;->E:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final setHaveAnotherMinimizeView(Z)V
    .locals 0

    iput-boolean p1, p0, Lw6/q;->J:Z

    return-void
.end method

.method public final setMinimizeView(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lw6/q;->F:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lw6/q;->J:Z

    invoke-virtual {v1, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v1}, Lw6/q;->h(Landroid/view/ViewGroup;)Landroidx/appcompat/widget/Toolbar;

    move-result-object p1

    iput-object p1, p0, Lw6/q;->H:Landroidx/appcompat/widget/Toolbar;

    return-void
.end method

.method public final setTopLimitSize(I)V
    .locals 0

    iput p1, p0, Lw6/q;->i:I

    return-void
.end method

.method public final t()V
    .locals 1

    iget-object v0, p0, Lw6/q;->u:Ly6/b;

    invoke-virtual {v0, p0}, Ly6/b;->G(Lw6/q;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lw6/q;->u:Ly6/b;

    iget-boolean v0, v0, Ly6/b;->p:Z

    invoke-direct {p0, v0}, Lw6/q;->setMinimizeStateAndAlphaAnimation(Z)V

    :cond_0
    return-void
.end method

.method public final u(Ly6/b;)V
    .locals 4

    instance-of v0, p1, Ly6/a;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    instance-of v0, p1, Ly6/d;

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    iget v0, p0, Lw6/q;->e:F

    :goto_1
    invoke-virtual {p0, v0}, Landroid/view/View;->setElevation(F)V

    invoke-virtual {p1}, Ly6/b;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "context"

    invoke-static {v0, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v2, 0x258

    const/4 v3, 0x0

    if-ge v0, v2, :cond_2

    goto :goto_2

    :cond_2
    move v1, v3

    :goto_2
    if-eqz v1, :cond_3

    instance-of p1, p1, Ly6/d;

    if-eqz p1, :cond_3

    const/16 v3, 0x8

    :cond_3
    iget-object p0, p0, Lw6/q;->G:Landroid/widget/ImageView;

    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public final v(Landroid/graphics/Rect;)V
    .locals 7

    iget-object v0, p0, Lw6/q;->u:Ly6/b;

    instance-of v1, v0, Ly6/c;

    if-eqz v1, :cond_0

    check-cast v0, Ly6/c;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Lw6/q;->a:Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;

    invoke-virtual {v0, v1}, Ly6/c;->I(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {p1, v0}, LD/a;->k(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x2

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lw6/q;->q(Lw6/q;Landroid/graphics/Rect;JZI)V

    goto :goto_1

    :cond_1
    invoke-static {p0, p1}, LE5/t;->d(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_2
    :goto_1
    return-void
.end method
