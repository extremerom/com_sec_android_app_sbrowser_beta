.class public final Ly6/a;
.super Ly6/b;
.source "SourceFile"


# instance fields
.field public A:Landroid/util/Range;

.field public final B:I

.field public final C:I

.field public final t:Landroid/content/Context;

.field public final u:LMd/c;

.field public final v:I

.field public final w:Ljava/lang/String;

.field public final x:I

.field public y:Landroid/util/Range;

.field public z:Landroid/util/Range;


# direct methods
.method public constructor <init>(Landroid/content/Context;LA6/a;LMd/c;I)V
    .locals 2

    const-string v0, "callBackNotifier"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewModel"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Ly6/b;-><init>(ILA6/a;)V

    iput-object p1, p0, Ly6/a;->t:Landroid/content/Context;

    iput-object p3, p0, Ly6/a;->u:LMd/c;

    iput p4, p0, Ly6/a;->v:I

    const-string p2, "BottomBehavior"

    iput-object p2, p0, Ly6/a;->w:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0710e0

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Ly6/a;->x:I

    new-instance p3, Landroid/util/Range;

    const/4 p4, -0x1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p3, v0, v0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object p3, p0, Ly6/a;->y:Landroid/util/Range;

    new-instance p3, Landroid/util/Range;

    invoke-direct {p3, v0, v0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object p3, p0, Ly6/a;->z:Landroid/util/Range;

    new-instance p3, Landroid/util/Range;

    const v1, 0x7fffffff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p3, v0, v1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object p3, p0, Ly6/a;->A:Landroid/util/Range;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f0710e2    # 1.7953344E38f

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Ly6/a;->B:I

    const/4 p3, 0x0

    iput p3, p0, Ly6/b;->d:I

    const p3, 0x7f0710e1

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Ly6/b;->n:I

    invoke-static {p1}, LAd/a;->c(Landroid/content/Context;)I

    move-result p2

    const p3, 0x7f0710df

    const v0, 0x3ee66666    # 0.45f

    invoke-static {p1, p3, v0}, LAd/a;->b(Landroid/content/Context;IF)F

    move-result p1

    int-to-float p2, p2

    mul-float/2addr p2, p1

    float-to-int p1, p2

    iput p1, p0, Ly6/b;->j:I

    iput p4, p0, Ly6/a;->C:I

    return-void
.end method


# virtual methods
.method public final D(Lw6/q;Landroid/view/MotionEvent;)Z
    .locals 0

    const-string p1, "event"

    invoke-static {p2, p1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget p0, p0, Ly6/a;->v:I

    int-to-float p0, p0

    cmpg-float p0, p1, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final E(Landroid/view/View;)V
    .locals 4

    const-string v0, "parent"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iget-object v0, p0, Ly6/a;->t:Landroid/content/Context;

    invoke-static {v0}, LAd/a;->c(Landroid/content/Context;)I

    move-result v1

    const v2, 0x7f0710df

    const v3, 0x3ee66666    # 0.45f

    invoke-static {v0, v2, v3}, LAd/a;->b(Landroid/content/Context;IF)F

    move-result v0

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Ly6/b;->j:I

    iget v0, p0, Ly6/a;->x:I

    sub-int v0, p1, v0

    iput v0, p0, Ly6/b;->h:I

    new-instance v0, Landroid/util/Range;

    iget v1, p0, Ly6/b;->n:I

    sub-int v1, p1, v1

    const v2, 0x7fffffff

    if-le v1, v2, :cond_0

    move v1, v2

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v0, p0, Ly6/a;->A:Landroid/util/Range;

    new-instance v0, Landroid/util/Range;

    iget-object v1, p0, Ly6/a;->A:Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iget v2, p0, Ly6/b;->n:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Ly6/a;->A:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    const-string v3, "closeVIThreshold.lower"

    invoke-static {v2, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-le v1, v2, :cond_1

    move v1, v2

    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Ly6/a;->A:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v0, p0, Ly6/a;->z:Landroid/util/Range;

    new-instance v0, Landroid/util/Range;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Ly6/b;->h:I

    sub-int/2addr p1, v3

    iget v3, p0, Ly6/b;->n:I

    add-int/2addr p1, v3

    if-gez p1, :cond_2

    goto :goto_0

    :cond_2
    move v1, p1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, v2, p1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v0, p0, Ly6/a;->y:Landroid/util/Range;

    return-void
.end method

.method public final F(Landroid/view/View;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget p0, p0, Ly6/a;->C:I

    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    instance-of p0, v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p0, :cond_0

    move-object p0, v0

    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    const/16 v1, 0x50

    iput v1, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final G(Lw6/q;)Z
    .locals 4

    iget-boolean v0, p0, Ly6/b;->p:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ly6/b;->l()I

    move-result v0

    const/4 v2, 0x1

    iget v3, p0, Ly6/a;->B:I

    if-ge v0, v3, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {p0, v1, p1}, Ly6/b;->B(ZLw6/q;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "updateMinimize Requested Height("

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ly6/b;->l()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") is less than Most Min Height("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "). set Minimized"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lv6/a;->a(Lw6/a;Ljava/lang/String;)V

    return v2

    :cond_1
    return v1
.end method

.method public final H(Lw6/q;Landroid/view/MotionEvent;)V
    .locals 3

    const-string p1, "event"

    invoke-static {p2, p1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x3

    iget-object v1, p0, Ly6/a;->u:LMd/c;

    const/4 v2, 0x1

    if-nez p1, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    iget p0, p0, Ly6/a;->v:I

    int-to-float p0, p0

    cmpg-float p0, p2, p0

    if-gez p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    move p0, v2

    :goto_0
    invoke-virtual {v1, p0}, LMd/c;->f(I)V

    :cond_1
    if-eq p1, v2, :cond_2

    if-eq p1, v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v2}, LMd/c;->f(I)V

    :goto_1
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
    iget-object p0, p0, Ly6/a;->t:Landroid/content/Context;

    invoke-static {p0}, LG5/t;->d(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    const p0, 0x7f0805de

    goto :goto_0

    :cond_1
    const p0, 0x7f0805df

    :goto_0
    return p0
.end method

.method public final c()Ljava/lang/Integer;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final f(Landroid/content/Context;Lw6/q;)Lr1/f;
    .locals 2

    new-instance p0, Lr1/f;

    sget-object p1, Lr1/e;->n:Lr1/b;

    invoke-direct {p0, p2, p1}, Lr1/f;-><init>(Ljava/lang/Object;LG5/C;)V

    new-instance p1, Lr1/g;

    invoke-direct {p1}, Lr1/g;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lr1/g;->a(F)V

    const v0, 0x43b48000    # 361.0f

    invoke-virtual {p1, v0}, Lr1/g;->b(F)V

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    float-to-double v0, p2

    iput-wide v0, p1, Lr1/g;->i:D

    iput-object p1, p0, Lr1/f;->u:Lr1/g;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lr1/e;->e(F)V

    return-object p0
.end method

.method public final g()I
    .locals 0

    iget-object p0, p0, Ly6/a;->t:Landroid/content/Context;

    invoke-static {p0}, LG5/t;->d(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f0e084b

    goto :goto_0

    :cond_0
    const p0, 0x7f0e084c

    :goto_0
    return p0
.end method

.method public final getLogTag()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ly6/a;->w:Ljava/lang/String;

    return-object p0
.end method

.method public final j(ZLandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1

    const-string v0, "from"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    if-eqz p1, :cond_0

    iget-object p0, p0, Ly6/a;->A:Landroid/util/Range;

    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p0

    const-string p1, "closeVIThreshold.lower"

    invoke-static {p0, p1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    iput p0, v0, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_0
    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Ly6/b;->l()I

    move-result p0

    sub-int/2addr p1, p0

    iput p1, v0, Landroid/graphics/Rect;->top:I

    :goto_0
    return-object v0
.end method

.method public final m()I
    .locals 0

    iget p0, p0, Ly6/a;->C:I

    return p0
.end method

.method public final n()I
    .locals 0

    const/16 p0, 0xd

    return p0
.end method

.method public final q(Landroid/content/Context;Landroid/view/View;)Lr1/f;
    .locals 2

    const-string p1, "target"

    invoke-static {p2, p1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lr1/f;

    sget-object v0, Lr1/e;->n:Lr1/b;

    invoke-direct {p1, p2, v0}, Lr1/f;-><init>(Ljava/lang/Object;LG5/C;)V

    new-instance p2, Lr1/g;

    invoke-direct {p2}, Lr1/g;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p2, v0}, Lr1/g;->a(F)V

    const v0, 0x43b48000    # 361.0f

    invoke-virtual {p2, v0}, Lr1/g;->b(F)V

    const/4 v0, 0x0

    float-to-double v0, v0

    iput-wide v0, p2, Lr1/g;->i:D

    iput-object p2, p1, Lr1/f;->u:Lr1/g;

    invoke-virtual {p0}, Ly6/b;->l()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Lr1/e;->e(F)V

    return-object p1
.end method

.method public final r(Landroid/view/View;Z)Landroid/graphics/Rect;
    .locals 1

    const-string p2, "view"

    invoke-static {p1, p2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iput p1, p2, Landroid/graphics/Rect;->bottom:I

    iget-boolean v0, p0, Ly6/b;->p:Z

    if-eqz v0, :cond_0

    iget p0, p0, Ly6/b;->n:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ly6/b;->l()I

    move-result p0

    :goto_0
    sub-int/2addr p1, p0

    iput p1, p2, Landroid/graphics/Rect;->top:I

    return-object p2
.end method

.method public final t(Landroid/graphics/Rect;)Z
    .locals 1

    const-string v0, "newRect"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Ly6/a;->z:Landroid/util/Range;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    return p0
.end method

.method public final z(Ljava/lang/Integer;)V
    .locals 0

    const-string p1, "Custom Min Width can\'t change in this Mode"

    invoke-static {p0, p1}, Lv6/a;->a(Lw6/a;Ljava/lang/String;)V

    return-void
.end method
