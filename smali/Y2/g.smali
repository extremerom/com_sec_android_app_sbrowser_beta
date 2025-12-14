.class public final LY2/g;
.super LY2/h0;
.source "SourceFile"


# instance fields
.field public a:Z

.field public final b:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, LY2/g;->a:Z

    iput-object p1, p0, LY2/g;->b:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public final onTransitionCancel(LY2/f0;)V
    .locals 1

    iget-object p1, p0, LY2/g;->b:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-static {p1, v0}, LY2/t0;->b(Landroid/view/ViewGroup;Z)V

    const/4 p1, 0x1

    iput-boolean p1, p0, LY2/g;->a:Z

    return-void
.end method

.method public final onTransitionEnd(LY2/f0;)V
    .locals 2

    iget-boolean v0, p0, LY2/g;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, LY2/g;->b:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-static {v0, v1}, LY2/t0;->b(Landroid/view/ViewGroup;Z)V

    :cond_0
    invoke-virtual {p1, p0}, LY2/f0;->removeListener(LY2/d0;)LY2/f0;

    return-void
.end method

.method public final onTransitionPause(LY2/f0;)V
    .locals 0

    iget-object p0, p0, LY2/g;->b:Landroid/view/ViewGroup;

    const/4 p1, 0x0

    invoke-static {p0, p1}, LY2/t0;->b(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method public final onTransitionResume(LY2/f0;)V
    .locals 0

    iget-object p0, p0, LY2/g;->b:Landroid/view/ViewGroup;

    const/4 p1, 0x1

    invoke-static {p0, p1}, LY2/t0;->b(Landroid/view/ViewGroup;Z)V

    return-void
.end method
