.class public abstract Ly6/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw6/a;


# instance fields
.field public final a:I

.field public final b:LA6/a;

.field public c:Ljava/lang/Integer;

.field public d:I

.field public e:Ljava/lang/Integer;

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:F

.field public l:F

.field public m:I

.field public n:I

.field public o:I

.field public p:Z

.field public q:Lw6/r;

.field public r:Lw6/r;

.field public s:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(ILA6/a;)V
    .locals 1

    const-string v0, "callbackNotifier"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ly6/b;->a:I

    iput-object p2, p0, Ly6/b;->b:LA6/a;

    const/4 p1, -0x1

    iput p1, p0, Ly6/b;->d:I

    iput p1, p0, Ly6/b;->f:I

    iput p1, p0, Ly6/b;->g:I

    iput p1, p0, Ly6/b;->h:I

    iput p1, p0, Ly6/b;->i:I

    iput p1, p0, Ly6/b;->j:I

    const/high16 p2, -0x40800000    # -1.0f

    iput p2, p0, Ly6/b;->k:F

    iput p2, p0, Ly6/b;->l:F

    iput p1, p0, Ly6/b;->m:I

    iput p1, p0, Ly6/b;->n:I

    iput p1, p0, Ly6/b;->o:I

    return-void
.end method


# virtual methods
.method public A(Lw6/r;)V
    .locals 0

    iput-object p1, p0, Ly6/b;->r:Lw6/r;

    return-void
.end method

.method public B(ZLw6/q;)V
    .locals 0

    iput-boolean p1, p0, Ly6/b;->p:Z

    iget-object p2, p0, Ly6/b;->b:LA6/a;

    iget p0, p0, Ly6/b;->a:I

    invoke-virtual {p2, p0, p1}, LA6/a;->g(IZ)V

    return-void
.end method

.method public C(Lw6/r;)V
    .locals 0

    iput-object p1, p0, Ly6/b;->q:Lw6/r;

    return-void
.end method

.method public abstract D(Lw6/q;Landroid/view/MotionEvent;)Z
.end method

.method public abstract E(Landroid/view/View;)V
.end method

.method public abstract F(Landroid/view/View;)V
.end method

.method public G(Lw6/q;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract H(Lw6/q;Landroid/view/MotionEvent;)V
.end method

.method public abstract a()I
.end method

.method public b()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Ly6/b;->e:Ljava/lang/Integer;

    return-object p0
.end method

.method public c()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Ly6/b;->c:Ljava/lang/Integer;

    return-object p0
.end method

.method public d(Landroid/content/Context;Lw6/q;)Landroid/animation/AnimatorSet;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public e()Lw6/r;
    .locals 0

    iget-object p0, p0, Ly6/b;->r:Lw6/r;

    return-object p0
.end method

.method public f(Landroid/content/Context;Lw6/q;)Lr1/f;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract g()I
.end method

.method public final h()I
    .locals 1

    invoke-virtual {p0}, Ly6/b;->b()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    iget p0, p0, Ly6/b;->f:I

    :goto_0
    return p0
.end method

.method public final i()I
    .locals 1

    invoke-virtual {p0}, Ly6/b;->c()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    iget p0, p0, Ly6/b;->d:I

    :goto_0
    return p0
.end method

.method public j(ZLandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0

    const-string p0, "from"

    invoke-static {p2, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    return-object p0
.end method

.method public final k()I
    .locals 1

    iget v0, p0, Ly6/b;->m:I

    iget p0, p0, Ly6/b;->o:I

    if-ltz p0, :cond_0

    if-ge v0, p0, :cond_0

    move v0, p0

    :cond_0
    return v0
.end method

.method public l()I
    .locals 2

    iget v0, p0, Ly6/b;->j:I

    invoke-virtual {p0}, Ly6/b;->h()I

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Ly6/b;->h()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Ly6/b;->h()I

    move-result v0

    :cond_0
    iget p0, p0, Ly6/b;->h:I

    if-ltz p0, :cond_1

    if-ge p0, v0, :cond_1

    move v0, p0

    :cond_1
    return v0
.end method

.method public m()I
    .locals 2

    iget v0, p0, Ly6/b;->i:I

    invoke-virtual {p0}, Ly6/b;->i()I

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Ly6/b;->i()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Ly6/b;->i()I

    move-result v0

    :cond_0
    iget p0, p0, Ly6/b;->g:I

    if-ltz p0, :cond_1

    if-ge p0, v0, :cond_1

    move v0, p0

    :cond_1
    return v0
.end method

.method public abstract n()I
.end method

.method public o(Landroid/content/Context;Landroid/view/View;)Landroid/animation/AnimatorSet;
    .locals 0

    const-string p0, "target"

    invoke-static {p2, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public p()Lw6/r;
    .locals 0

    iget-object p0, p0, Ly6/b;->q:Lw6/r;

    return-object p0
.end method

.method public q(Landroid/content/Context;Landroid/view/View;)Lr1/f;
    .locals 0

    const-string p0, "target"

    invoke-static {p2, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract r(Landroid/view/View;Z)Landroid/graphics/Rect;
.end method

.method public s(Landroid/view/View;)V
    .locals 1

    const-string v0, "parent"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ly6/b;->E(Landroid/view/View;)V

    return-void
.end method

.method public t(Landroid/graphics/Rect;)Z
    .locals 0

    const-string p0, "newRect"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public u()Z
    .locals 0

    instance-of p0, p0, Ly6/a;

    return p0
.end method

.method public v(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public w(Landroid/view/View;)V
    .locals 0

    const-string p0, "parent"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public x(Landroid/view/View;)V
    .locals 0

    const-string p0, "parent"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public y(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Ly6/b;->e:Ljava/lang/Integer;

    return-void
.end method

.method public z(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Ly6/b;->c:Ljava/lang/Integer;

    return-void
.end method
