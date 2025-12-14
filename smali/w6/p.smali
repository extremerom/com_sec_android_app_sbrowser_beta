.class public final Lw6/p;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lw6/q;

.field public final synthetic b:Landroid/graphics/Rect;

.field public final synthetic c:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lw6/q;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lw6/p;->a:Lw6/q;

    iput-object p2, p0, Lw6/p;->b:Landroid/graphics/Rect;

    iput-object p3, p0, Lw6/p;->c:Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    iget-object v0, p0, Lw6/p;->a:Lw6/q;

    iput-object p1, v0, Lw6/q;->m:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Lw6/q;->k()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lw6/p;->c:Landroid/graphics/Rect;

    iget-object p1, v0, Lw6/q;->p:LA6/a;

    invoke-virtual {p1, p0}, LA6/a;->onInsert(Landroid/graphics/Rect;)V

    iget-object p0, v0, Lw6/q;->u:Ly6/b;

    invoke-virtual {p0, v0}, Ly6/b;->F(Landroid/view/View;)V

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lw6/p;->a:Lw6/q;

    invoke-virtual {p1}, Lw6/q;->k()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p1, Lw6/q;->p:LA6/a;

    iget-object p0, p0, Lw6/p;->b:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, LA6/a;->onPreInsert(Landroid/graphics/Rect;)V

    return-void
.end method
