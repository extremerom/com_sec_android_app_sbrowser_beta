.class public Lcom/google/android/material/transformation/FabTransformationScrimBehavior;
.super Lcom/google/android/material/transformation/ExpandableTransformationBehavior;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final c:Lb6/e;

.field public final d:Lb6/e;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/material/transformation/ExpandableTransformationBehavior;-><init>()V

    new-instance v0, Lb6/e;

    const-wide/16 v1, 0x4b

    invoke-direct {v0, v1, v2}, Lb6/e;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationScrimBehavior;->c:Lb6/e;

    new-instance v0, Lb6/e;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lb6/e;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationScrimBehavior;->d:Lb6/e;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/transformation/ExpandableTransformationBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lb6/e;

    const-wide/16 v0, 0x4b

    invoke-direct {p1, v0, v1}, Lb6/e;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/material/transformation/FabTransformationScrimBehavior;->c:Lb6/e;

    new-instance p1, Lb6/e;

    const-wide/16 v0, 0x0

    invoke-direct {p1, v0, v1}, Lb6/e;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/material/transformation/FabTransformationScrimBehavior;->d:Lb6/e;

    return-void
.end method


# virtual methods
.method public final c(Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    instance-of p0, p2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    return p0
.end method

.method public final s(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final u(ZLandroid/view/View;Landroid/view/View;Z)Landroid/animation/AnimatorSet;
    .locals 3

    const/4 p2, 0x0

    const/4 v0, 0x1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/android/material/transformation/FabTransformationScrimBehavior;->c:Lb6/e;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/material/transformation/FabTransformationScrimBehavior;->d:Lb6/e;

    :goto_0
    const/4 v2, 0x0

    if-eqz p1, :cond_2

    if-nez p4, :cond_1

    invoke-virtual {p3, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    sget-object p4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v0, v0, [F

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, p2

    invoke-static {p3, p4, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    goto :goto_1

    :cond_2
    sget-object p4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v0, v0, [F

    aput v2, v0, p2

    invoke-static {p3, p4, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    :goto_1
    invoke-virtual {p0, p2}, Lb6/e;->a(Landroid/animation/ObjectAnimator;)V

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-static {p0, v1}, LG5/s;->c(Landroid/animation/AnimatorSet;Ljava/util/ArrayList;)V

    new-instance p2, LN6/c;

    invoke-direct {p2, p3, p1}, LN6/c;-><init>(Landroid/view/View;Z)V

    invoke-virtual {p0, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p0
.end method
