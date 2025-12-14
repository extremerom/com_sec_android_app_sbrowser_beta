.class public abstract LJ0/i;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Lf1/t;
.implements La0/j;


# instance fields
.field public final a:Lw0/d;

.field public final b:Landroid/view/View;

.field public final c:LB0/P;

.field public d:Lsb/a;

.field public e:Z

.field public f:Lsb/a;

.field public g:Lsb/a;

.field public h:Lm0/m;

.field public i:Lsb/k;

.field public j:LH0/b;

.field public k:Lsb/k;

.field public l:Landroidx/lifecycle/J;

.field public m:LQ2/f;

.field public final n:LJ0/h;

.field public o:Lsb/k;

.field public final p:[I

.field public final q:Lf1/u;

.field public final r:Landroidx/compose/ui/node/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;La0/s;ILw0/d;Landroid/view/View;LB0/P;)V
    .locals 3

    const/4 p3, 0x3

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    iput-object p4, p0, LJ0/i;->a:Lw0/d;

    iput-object p5, p0, LJ0/i;->b:Landroid/view/View;

    iput-object p6, p0, LJ0/i;->c:LB0/P;

    if-eqz p2, :cond_0

    sget p1, Landroidx/compose/ui/platform/u;->a:I

    const p1, 0x7f0b00d7

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0, v2}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    invoke-virtual {p0, p5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    sget-object p1, LJ0/g;->d:LJ0/g;

    iput-object p1, p0, LJ0/i;->d:Lsb/a;

    sget-object p1, LJ0/g;->c:LJ0/g;

    iput-object p1, p0, LJ0/i;->f:Lsb/a;

    sget-object p1, LJ0/g;->b:LJ0/g;

    iput-object p1, p0, LJ0/i;->g:Lsb/a;

    sget-object p1, Lm0/j;->a:Lm0/j;

    iput-object p1, p0, LJ0/i;->h:Lm0/m;

    new-instance p2, LH0/c;

    const/high16 p5, 0x3f800000    # 1.0f

    invoke-direct {p2, p5}, LH0/c;-><init>(F)V

    iput-object p2, p0, LJ0/i;->j:LH0/b;

    new-instance p2, LJ0/h;

    move-object p5, p0

    check-cast p5, LJ0/q;

    invoke-direct {p2, p5, v1}, LJ0/h;-><init>(LJ0/q;I)V

    iput-object p2, p0, LJ0/i;->n:LJ0/h;

    new-instance p2, LJ0/h;

    invoke-direct {p2, p5, v2}, LJ0/h;-><init>(LJ0/q;I)V

    new-array p2, v0, [I

    iput-object p2, p0, LJ0/i;->p:[I

    new-instance p2, Lf1/u;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LJ0/i;->q:Lf1/u;

    new-instance p2, Landroidx/compose/ui/node/a;

    invoke-direct {p2, p3, v2, v2}, Landroidx/compose/ui/node/a;-><init>(IIZ)V

    iput-object p5, p2, Landroidx/compose/ui/node/a;->h:LJ0/q;

    sget-object p6, LJ0/k;->a:LJ0/j;

    invoke-static {p1, p6, p4}, Landroidx/compose/ui/input/nestedscroll/a;->a(Lm0/m;Lw0/a;Lw0/d;)Lm0/m;

    move-result-object p1

    sget-object p4, LJ0/c;->c:LJ0/c;

    new-instance p6, Landroidx/compose/ui/semantics/AppendedSemanticsElement;

    invoke-direct {p6, p4, v1}, Landroidx/compose/ui/semantics/AppendedSemanticsElement;-><init>(Lsb/k;Z)V

    invoke-interface {p1, p6}, Lm0/m;->g(Lm0/m;)Lm0/m;

    move-result-object p1

    new-instance p4, Lx0/g;

    invoke-direct {p4}, Lx0/g;-><init>()V

    new-instance p6, LJ0/b;

    invoke-direct {p6, p5, v1}, LJ0/b;-><init>(LJ0/q;I)V

    iput-object p6, p4, Lx0/g;->a:LJ0/b;

    new-instance p6, Lx0/h;

    invoke-direct {p6}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p6}, LJ0/i;->setOnRequestDisallowInterceptTouchEvent$ui_release(Lsb/k;)V

    invoke-interface {p1, p4}, Lm0/m;->g(Lm0/m;)Lm0/m;

    move-result-object p1

    new-instance p4, LJ0/c;

    invoke-direct {p4, p5, p2, p5}, LJ0/c;-><init>(LJ0/q;Landroidx/compose/ui/node/a;LJ0/q;)V

    invoke-static {p1, p4}, Landroidx/compose/ui/draw/a;->a(Lm0/m;LJ0/c;)Lm0/m;

    move-result-object p1

    new-instance p4, LJ0/a;

    invoke-direct {p4, p5, p2, v0}, LJ0/a;-><init>(LJ0/q;Landroidx/compose/ui/node/a;I)V

    invoke-static {p1, p4}, Landroidx/compose/ui/layout/a;->b(Lm0/m;LJ0/a;)Lm0/m;

    move-result-object p1

    iget-object p4, p0, LJ0/i;->h:Lm0/m;

    invoke-interface {p4, p1}, Lm0/m;->g(Lm0/m;)Lm0/m;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroidx/compose/ui/node/a;->B(Lm0/m;)V

    new-instance p4, LC1/j;

    invoke-direct {p4, p3, p2, p1}, LC1/j;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object p4, p0, LJ0/i;->i:Lsb/k;

    iget-object p1, p0, LJ0/i;->j:LH0/b;

    invoke-virtual {p2, p1}, Landroidx/compose/ui/node/a;->z(LH0/b;)V

    new-instance p1, LB0/a;

    const/4 p3, 0x6

    invoke-direct {p1, p3, p2}, LB0/a;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, LJ0/i;->k:Lsb/k;

    new-instance p1, LJ0/a;

    invoke-direct {p1, p5, p2, v2}, LJ0/a;-><init>(LJ0/q;Landroidx/compose/ui/node/a;I)V

    new-instance p1, LJ0/b;

    invoke-direct {p1, p5, v2}, LJ0/b;-><init>(LJ0/q;I)V

    new-instance p1, LJ0/d;

    invoke-direct {p1, p5, p2}, LJ0/d;-><init>(LJ0/q;Landroidx/compose/ui/node/a;)V

    invoke-virtual {p2, p1}, Landroidx/compose/ui/node/a;->A(Lz0/x;)V

    iput-object p2, p0, LJ0/i;->r:Landroidx/compose/ui/node/a;

    return-void
.end method

.method public static final synthetic d(LJ0/q;)V
    .locals 0

    invoke-direct {p0}, LJ0/i;->getSnapshotObserver()LB0/Q;

    return-void
.end method

.method public static final e(LJ0/q;III)I
    .locals 1

    const/high16 p0, 0x40000000    # 2.0f

    if-gez p3, :cond_3

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x2

    const v0, 0x7fffffff

    if-ne p3, p1, :cond_1

    if-eq p2, v0, :cond_1

    const/high16 p0, -0x80000000

    invoke-static {p2, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    goto :goto_1

    :cond_1
    const/4 p1, -0x1

    if-ne p3, p1, :cond_2

    if-eq p2, v0, :cond_2

    invoke-static {p2, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    invoke-static {p0, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    goto :goto_1

    :cond_3
    :goto_0
    invoke-static {p3, p1, p2}, LG5/d3;->f(III)I

    move-result p1

    invoke-static {p1, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    :goto_1
    return p0
.end method

.method private final getSnapshotObserver()LB0/Q;
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, LJ0/i;->c:LB0/P;

    invoke-interface {p0}, LB0/P;->getSnapshotObserver()LB0/Q;

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Expected AndroidViewHolder to be attached when observing reads."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, LJ0/i;->f:Lsb/a;

    invoke-interface {v0}, Lsb/a;->invoke()Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, LJ0/i;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eq v1, p0, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, LJ0/i;->f:Lsb/a;

    invoke-interface {p0}, Lsb/a;->invoke()Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public final c()V
    .locals 0

    iget-object p0, p0, LJ0/i;->g:Lsb/a;

    invoke-interface {p0}, Lsb/a;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public final gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 9

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, LJ0/i;->p:[I

    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v2, 0x0

    aget v4, v1, v2

    aget v5, v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int v6, v2, v4

    aget v1, v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int v7, p0, v1

    sget-object v8, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    return v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getDensity()LH0/b;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, LJ0/i;->j:LH0/b;

    return-object p0
.end method

.method public final getInteropView()Landroid/view/View;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, LJ0/i;->b:Landroid/view/View;

    return-object p0
.end method

.method public final getLayoutNode()Landroidx/compose/ui/node/a;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, LJ0/i;->r:Landroidx/compose/ui/node/a;

    return-object p0
.end method

.method public getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, LJ0/i;->b:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :cond_0
    return-object p0
.end method

.method public final getLifecycleOwner()Landroidx/lifecycle/J;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, LJ0/i;->l:Landroidx/lifecycle/J;

    return-object p0
.end method

.method public final getModifier()Lm0/m;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, LJ0/i;->h:Lm0/m;

    return-object p0
.end method

.method public getNestedScrollAxes()I
    .locals 1

    iget-object p0, p0, LJ0/i;->q:Lf1/u;

    iget v0, p0, Lf1/u;->a:I

    iget p0, p0, Lf1/u;->b:I

    or-int/2addr p0, v0

    return p0
.end method

.method public final getOnDensityChanged$ui_release()Lsb/k;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lsb/k;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, LJ0/i;->k:Lsb/k;

    return-object p0
.end method

.method public final getOnModifierChanged$ui_release()Lsb/k;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lsb/k;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, LJ0/i;->i:Lsb/k;

    return-object p0
.end method

.method public final getOnRequestDisallowInterceptTouchEvent$ui_release()Lsb/k;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lsb/k;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, LJ0/i;->o:Lsb/k;

    return-object p0
.end method

.method public final getRelease()Lsb/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lsb/a;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, LJ0/i;->g:Lsb/a;

    return-object p0
.end method

.method public final getReset()Lsb/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lsb/a;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, LJ0/i;->f:Lsb/a;

    return-object p0
.end method

.method public final getSavedStateRegistryOwner()LQ2/f;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, LJ0/i;->m:LQ2/f;

    return-object p0
.end method

.method public final getUpdate()Lsb/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lsb/a;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, LJ0/i;->d:Lsb/a;

    return-object p0
.end method

.method public final getView()Landroid/view/View;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, LJ0/i;->b:Landroid/view/View;

    return-object p0
.end method

.method public final invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    iget-object p0, p0, LJ0/i;->r:Landroidx/compose/ui/node/a;

    invoke-virtual {p0}, Landroidx/compose/ui/node/a;->n()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final isNestedScrollingEnabled()Z
    .locals 0

    iget-object p0, p0, LJ0/i;->b:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->isNestedScrollingEnabled()Z

    move-result p0

    return p0
.end method

.method public final onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    iget-object p0, p0, LJ0/i;->n:LJ0/h;

    invoke-virtual {p0}, LJ0/h;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public final onDescendantInvalidated(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onDescendantInvalidated(Landroid/view/View;Landroid/view/View;)V

    iget-object p0, p0, LJ0/i;->r:Landroidx/compose/ui/node/a;

    invoke-virtual {p0}, Landroidx/compose/ui/node/a;->n()V

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    invoke-direct {p0}, LJ0/i;->getSnapshotObserver()LB0/Q;

    const/4 p0, 0x0

    throw p0
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    iget-object p0, p0, LJ0/i;->b:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1, p4, p5}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method public final onMeasure(II)V
    .locals 3

    iget-object v0, p0, LJ0/i;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eq v1, p0, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void

    :cond_1
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public final onNestedFling(Landroid/view/View;FFZ)Z
    .locals 7

    iget-object p1, p0, LJ0/i;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isNestedScrollingEnabled()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/high16 p1, -0x40800000    # -1.0f

    mul-float/2addr p2, p1

    mul-float/2addr p3, p1

    invoke-static {p2, p3}, LG5/X2;->a(FF)J

    move-result-wide v4

    iget-object p1, p0, LJ0/i;->a:Lw0/d;

    invoke-virtual {p1}, Lw0/d;->c()LNc/B;

    move-result-object p1

    new-instance p2, LJ0/e;

    const/4 v6, 0x0

    move-object v1, p2

    move v2, p4

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, LJ0/e;-><init>(ZLJ0/i;JLib/c;)V

    const/4 p0, 0x3

    const/4 p3, 0x0

    invoke-static {p1, p3, p3, p2, p0}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    return v0
.end method

.method public final onNestedPreFling(Landroid/view/View;FF)Z
    .locals 3

    iget-object p1, p0, LJ0/i;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isNestedScrollingEnabled()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/high16 p1, -0x40800000    # -1.0f

    mul-float/2addr p2, p1

    mul-float/2addr p3, p1

    invoke-static {p2, p3}, LG5/X2;->a(FF)J

    move-result-wide p1

    iget-object p3, p0, LJ0/i;->a:Lw0/d;

    invoke-virtual {p3}, Lw0/d;->c()LNc/B;

    move-result-object p3

    new-instance v1, LJ0/f;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, LJ0/f;-><init>(LJ0/i;JLib/c;)V

    const/4 p0, 0x3

    invoke-static {p3, v2, v2, v1, p0}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    return v0
.end method

.method public final onNestedPreScroll(Landroid/view/View;II[II)V
    .locals 0

    iget-object p1, p0, LJ0/i;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isNestedScrollingEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    int-to-float p1, p2

    const/4 p2, -0x1

    int-to-float p2, p2

    mul-float/2addr p1, p2

    int-to-float p3, p3

    mul-float/2addr p3, p2

    invoke-static {p1, p3}, LG5/A;->a(FF)J

    move-result-wide p1

    const/4 p3, 0x1

    if-nez p5, :cond_1

    move p5, p3

    goto :goto_0

    :cond_1
    const/4 p5, 0x2

    :goto_0
    iget-object p0, p0, LJ0/i;->a:Lw0/d;

    invoke-virtual {p0}, Lw0/d;->d()Lw0/g;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0, p5, p1, p2}, Lw0/g;->c(IJ)J

    move-result-wide p0

    goto :goto_1

    :cond_2
    sget-wide p0, Lr0/b;->b:J

    :goto_1
    invoke-static {p0, p1}, Lr0/b;->a(J)F

    move-result p2

    invoke-static {p2}, La/a;->a(F)I

    move-result p2

    const/4 p5, 0x0

    aput p2, p4, p5

    invoke-static {p0, p1}, Lr0/b;->b(J)F

    move-result p0

    invoke-static {p0}, La/a;->a(F)I

    move-result p0

    aput p0, p4, p3

    return-void
.end method

.method public final onNestedScroll(Landroid/view/View;IIIII)V
    .locals 6

    iget-object p1, p0, LJ0/i;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isNestedScrollingEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    int-to-float p1, p2

    const/4 p2, -0x1

    int-to-float p2, p2

    mul-float/2addr p1, p2

    int-to-float p3, p3

    mul-float/2addr p3, p2

    invoke-static {p1, p3}, LG5/A;->a(FF)J

    move-result-wide v1

    int-to-float p1, p4

    mul-float/2addr p1, p2

    int-to-float p3, p5

    mul-float/2addr p3, p2

    invoke-static {p1, p3}, LG5/A;->a(FF)J

    move-result-wide v3

    if-nez p6, :cond_1

    const/4 p1, 0x1

    :goto_0
    move v5, p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x2

    goto :goto_0

    :goto_1
    iget-object p0, p0, LJ0/i;->a:Lw0/d;

    invoke-virtual {p0}, Lw0/d;->d()Lw0/g;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual/range {v0 .. v5}, Lw0/g;->i(JJI)J

    goto :goto_2

    :cond_2
    sget p0, Lr0/b;->d:I

    :goto_2
    return-void
.end method

.method public final onNestedScroll(Landroid/view/View;IIIII[I)V
    .locals 6

    iget-object p1, p0, LJ0/i;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isNestedScrollingEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    int-to-float p1, p2

    const/4 p2, -0x1

    int-to-float p2, p2

    mul-float/2addr p1, p2

    int-to-float p3, p3

    mul-float/2addr p3, p2

    invoke-static {p1, p3}, LG5/A;->a(FF)J

    move-result-wide v1

    int-to-float p1, p4

    mul-float/2addr p1, p2

    int-to-float p3, p5

    mul-float/2addr p3, p2

    invoke-static {p1, p3}, LG5/A;->a(FF)J

    move-result-wide v3

    const/4 p1, 0x1

    if-nez p6, :cond_1

    move v5, p1

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    move v5, p2

    :goto_0
    iget-object p0, p0, LJ0/i;->a:Lw0/d;

    invoke-virtual {p0}, Lw0/d;->d()Lw0/g;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual/range {v0 .. v5}, Lw0/g;->i(JJI)J

    move-result-wide p2

    goto :goto_1

    :cond_2
    sget-wide p2, Lr0/b;->b:J

    :goto_1
    invoke-static {p2, p3}, Lr0/b;->a(J)F

    move-result p0

    invoke-static {p0}, La/a;->a(F)I

    move-result p0

    const/4 p4, 0x0

    aput p0, p7, p4

    invoke-static {p2, p3}, Lr0/b;->b(J)F

    move-result p0

    invoke-static {p0}, La/a;->a(F)I

    move-result p0

    aput p0, p7, p1

    return-void
.end method

.method public final onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .locals 0

    const/4 p1, 0x1

    iget-object p0, p0, LJ0/i;->q:Lf1/u;

    if-ne p4, p1, :cond_0

    iput p3, p0, Lf1/u;->b:I

    goto :goto_0

    :cond_0
    iput p3, p0, Lf1/u;->a:I

    :goto_0
    return-void
.end method

.method public final onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z
    .locals 0

    and-int/lit8 p0, p3, 0x2

    const/4 p1, 0x1

    if-nez p0, :cond_1

    and-int/lit8 p0, p3, 0x1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :cond_1
    :goto_0
    return p1
.end method

.method public final onStopNestedScroll(Landroid/view/View;I)V
    .locals 1

    iget-object p0, p0, LJ0/i;->q:Lf1/u;

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-ne p2, p1, :cond_0

    iput v0, p0, Lf1/u;->b:I

    goto :goto_0

    :cond_0
    iput v0, p0, Lf1/u;->a:I

    :goto_0
    return-void
.end method

.method public final onWindowVisibilityChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    return-void
.end method

.method public final requestDisallowInterceptTouchEvent(Z)V
    .locals 2

    iget-object v0, p0, LJ0/i;->o:Lsb/k;

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public final setDensity(LH0/b;)V
    .locals 1
    .param p1    # LH0/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    iget-object v0, p0, LJ0/i;->j:LH0/b;

    if-eq p1, v0, :cond_0

    iput-object p1, p0, LJ0/i;->j:LH0/b;

    iget-object p0, p0, LJ0/i;->k:Lsb/k;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final setLifecycleOwner(Landroidx/lifecycle/J;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/J;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, LJ0/i;->l:Landroidx/lifecycle/J;

    if-eq p1, v0, :cond_0

    iput-object p1, p0, LJ0/i;->l:Landroidx/lifecycle/J;

    invoke-static {p0, p1}, Landroidx/lifecycle/l0;->o(Landroid/view/View;Landroidx/lifecycle/J;)V

    :cond_0
    return-void
.end method

.method public final setModifier(Lm0/m;)V
    .locals 1
    .param p1    # Lm0/m;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    iget-object v0, p0, LJ0/i;->h:Lm0/m;

    if-eq p1, v0, :cond_0

    iput-object p1, p0, LJ0/i;->h:Lm0/m;

    iget-object p0, p0, LJ0/i;->i:Lsb/k;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final setOnDensityChanged$ui_release(Lsb/k;)V
    .locals 0
    .param p1    # Lsb/k;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsb/k;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, LJ0/i;->k:Lsb/k;

    return-void
.end method

.method public final setOnModifierChanged$ui_release(Lsb/k;)V
    .locals 0
    .param p1    # Lsb/k;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsb/k;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, LJ0/i;->i:Lsb/k;

    return-void
.end method

.method public final setOnRequestDisallowInterceptTouchEvent$ui_release(Lsb/k;)V
    .locals 0
    .param p1    # Lsb/k;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsb/k;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, LJ0/i;->o:Lsb/k;

    return-void
.end method

.method public final setRelease(Lsb/a;)V
    .locals 0
    .param p1    # Lsb/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsb/a;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, LJ0/i;->g:Lsb/a;

    return-void
.end method

.method public final setReset(Lsb/a;)V
    .locals 0
    .param p1    # Lsb/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsb/a;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, LJ0/i;->f:Lsb/a;

    return-void
.end method

.method public final setSavedStateRegistryOwner(LQ2/f;)V
    .locals 1
    .param p1    # LQ2/f;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, LJ0/i;->m:LQ2/f;

    if-eq p1, v0, :cond_0

    iput-object p1, p0, LJ0/i;->m:LQ2/f;

    invoke-static {p0, p1}, LG5/z;->d(Landroid/view/View;LQ2/f;)V

    :cond_0
    return-void
.end method

.method public final setUpdate(Lsb/a;)V
    .locals 0
    .param p1    # Lsb/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsb/a;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, LJ0/i;->d:Lsb/a;

    const/4 p1, 0x1

    iput-boolean p1, p0, LJ0/i;->e:Z

    iget-object p0, p0, LJ0/i;->n:LJ0/h;

    invoke-virtual {p0}, LJ0/h;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public final shouldDelayChildPressedState()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
