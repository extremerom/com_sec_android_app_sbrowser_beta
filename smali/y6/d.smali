.class public final Ly6/d;
.super Ly6/b;
.source "SourceFile"


# instance fields
.field public final t:Landroid/content/Context;

.field public final u:LMd/c;

.field public final v:I

.field public final w:Ljava/lang/String;

.field public final x:I

.field public final y:I

.field public z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;LA6/a;LMd/c;I)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p2}, Ly6/b;-><init>(ILA6/a;)V

    iput-object p1, p0, Ly6/d;->t:Landroid/content/Context;

    iput-object p3, p0, Ly6/d;->u:LMd/c;

    iput p4, p0, Ly6/d;->v:I

    const-string p2, "SideBehavior"

    iput-object p2, p0, Ly6/d;->w:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0710fe

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Ly6/d;->x:I

    invoke-static {p1}, LAd/a;->d(Landroid/content/Context;)I

    move-result p2

    const p3, 0x7f0710fb

    const p4, 0x3ee66666    # 0.45f

    invoke-static {p1, p3, p4}, LAd/a;->b(Landroid/content/Context;IF)F

    move-result p1

    int-to-float p2, p2

    mul-float/2addr p2, p1

    float-to-int p1, p2

    iput p1, p0, Ly6/b;->i:I

    const/4 p1, -0x1

    iput p1, p0, Ly6/d;->y:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Ly6/d;->z:Z

    return-void
.end method


# virtual methods
.method public final D(Lw6/q;Landroid/view/MotionEvent;)Z
    .locals 2

    const-string v0, "event"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Ly6/d;->v:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_1

    invoke-virtual {p0, p1, p2}, Ly6/d;->I(Lw6/q;Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final E(Landroid/view/View;)V
    .locals 10

    const-string v0, "parent"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Ly6/d;->t:Landroid/content/Context;

    invoke-static {v2}, LAd/a;->d(Landroid/content/Context;)I

    move-result v3

    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0710fd

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v4, v7}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    iget v5, v4, Landroid/util/TypedValue;->type:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_0

    invoke-virtual {v4}, Landroid/util/TypedValue;->getFloat()F

    move-result v4

    goto :goto_0

    :cond_0
    const v4, 0x3e99999a    # 0.3f

    :goto_0
    invoke-static {v2}, LAd/a;->d(Landroid/content/Context;)I

    move-result v5

    const v8, 0x7f0710fb

    const v9, 0x3ee66666    # 0.45f

    invoke-static {v2, v8, v9}, LAd/a;->b(Landroid/content/Context;IF)F

    move-result v2

    int-to-float v5, v5

    mul-float/2addr v5, v2

    float-to-int v2, v5

    iput v2, p0, Ly6/b;->i:I

    int-to-float v2, v3

    mul-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, p0, Ly6/b;->d:I

    invoke-virtual {p0}, Ly6/b;->i()I

    move-result v2

    iget v3, p0, Ly6/d;->x:I

    if-ge v2, v3, :cond_1

    iput v3, p0, Ly6/b;->d:I

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0710fc

    invoke-virtual {v2, v3, v0, v7}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    iget v2, v0, Landroid/util/TypedValue;->type:I

    if-ne v2, v6, :cond_2

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    mul-float/2addr v0, v1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    :goto_1
    float-to-int v0, v0

    iput v0, p0, Ly6/b;->g:I

    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result p1

    if-ne p1, v7, :cond_3

    move p1, v7

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    xor-int/2addr p1, v7

    iput-boolean p1, p0, Ly6/d;->z:Z

    return-void
.end method

.method public final F(Landroid/view/View;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget p0, p0, Ly6/d;->y:I

    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    instance-of p0, v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p0, :cond_0

    move-object p0, v0

    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    const/16 v1, 0x33

    iput v1, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final H(Lw6/q;Landroid/view/MotionEvent;)V
    .locals 4

    const-string v0, "event"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    iget-object v2, p0, Ly6/d;->u:LMd/c;

    const/4 v3, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p0, p1, p2}, Ly6/d;->I(Lw6/q;Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    move p0, v3

    :goto_0
    invoke-virtual {v2, p0}, LMd/c;->f(I)V

    :cond_1
    if-eq v0, v3, :cond_2

    if-eq v0, v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v2, v3}, LMd/c;->f(I)V

    :goto_1
    return-void
.end method

.method public final I(Lw6/q;Landroid/view/MotionEvent;)Z
    .locals 3

    iget-boolean v0, p0, Ly6/d;->z:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget p0, p0, Ly6/d;->v:I

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    int-to-float p0, p0

    cmpg-float p0, p1, p0

    if-gez p0, :cond_1

    :goto_0
    move v1, v2

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    sub-int/2addr p1, p0

    int-to-float p0, p1

    cmpl-float p0, p2, p0

    if-lez p0, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method public final a()I
    .locals 1

    iget-object v0, p0, Ly6/b;->s:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ly6/d;->t:Landroid/content/Context;

    invoke-static {v0}, LG5/t;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean p0, p0, Ly6/d;->z:Z

    if-eqz p0, :cond_1

    const p0, 0x7f0805e4

    goto :goto_0

    :cond_1
    const p0, 0x7f0805e2

    goto :goto_0

    :cond_2
    iget-boolean p0, p0, Ly6/d;->z:Z

    if-eqz p0, :cond_3

    const p0, 0x7f0805e5

    goto :goto_0

    :cond_3
    const p0, 0x7f0805e3

    :goto_0
    return p0
.end method

.method public final b()Ljava/lang/Integer;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final f(Landroid/content/Context;Lw6/q;)Lr1/f;
    .locals 3

    new-instance p1, Lr1/f;

    sget-object v0, Lr1/e;->m:Lr1/b;

    invoke-direct {p1, p2, v0}, Lr1/f;-><init>(Ljava/lang/Object;LG5/C;)V

    new-instance v0, Lr1/g;

    invoke-direct {v0}, Lr1/g;-><init>()V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lr1/g;->a(F)V

    const v1, 0x43b48000    # 361.0f

    invoke-virtual {v0, v1}, Lr1/g;->b(F)V

    iget-boolean p0, p0, Ly6/d;->z:Z

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p0

    neg-int p0, p0

    :goto_0
    int-to-float p0, p0

    float-to-double v1, p0

    iput-wide v1, v0, Lr1/g;->i:D

    iput-object v0, p1, Lr1/f;->u:Lr1/g;

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lr1/e;->e(F)V

    return-object p1
.end method

.method public final g()I
    .locals 0

    iget-object p0, p0, Ly6/d;->t:Landroid/content/Context;

    invoke-static {p0}, LG5/t;->d(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f0e084f

    goto :goto_0

    :cond_0
    const p0, 0x7f0e0850

    :goto_0
    return p0
.end method

.method public final getLogTag()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ly6/d;->w:Ljava/lang/String;

    return-object p0
.end method

.method public final l()I
    .locals 0

    iget p0, p0, Ly6/d;->y:I

    return p0
.end method

.method public final n()I
    .locals 0

    iget-boolean p0, p0, Ly6/d;->z:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    or-int/lit8 p0, p0, 0xa

    return p0
.end method

.method public final q(Landroid/content/Context;Landroid/view/View;)Lr1/f;
    .locals 2

    const-string p1, "target"

    invoke-static {p2, p1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lr1/f;

    sget-object v0, Lr1/e;->m:Lr1/b;

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

    iget-boolean p2, p0, Ly6/d;->z:Z

    invoke-virtual {p0}, Ly6/b;->m()I

    move-result p0

    int-to-float p0, p0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    neg-float p0, p0

    :goto_0
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

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    iget-boolean v0, p0, Ly6/d;->z:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Ly6/b;->m()I

    move-result p0

    sub-int/2addr p1, p0

    iput p1, p2, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ly6/b;->m()I

    move-result p0

    iput p0, p2, Landroid/graphics/Rect;->right:I

    :goto_0
    return-object p2
.end method

.method public final y(Ljava/lang/Integer;)V
    .locals 0

    const-string p1, "custom Min Height can\'t change in this Mode"

    invoke-static {p0, p1}, Lv6/a;->a(Lw6/a;Ljava/lang/String;)V

    return-void
.end method
