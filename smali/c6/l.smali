.class public final Lc6/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/WindowInsetsController$OnControllableInsetsChangedListener;


# instance fields
.field public final synthetic a:Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;


# direct methods
.method public constructor <init>(Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc6/l;->a:Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;

    return-void
.end method


# virtual methods
.method public final onControllableInsetsChanged(Landroid/view/WindowInsetsController;I)V
    .locals 4

    iget-object v0, p0, Lc6/l;->a:Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;

    iget-object v0, v0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->D:Lcom/google/android/material/appbar/AppBarLayout;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/material/appbar/AppBarLayout;->getCurrentOrientation()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    move v2, v1

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    iget-object v0, p0, Lc6/l;->a:Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;

    invoke-virtual {v0}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->U()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lc6/l;->a:Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;

    iget-boolean v0, v0, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->g0:Z

    if-nez v0, :cond_2

    invoke-static {}, Lf1/E;->x()I

    move-result v0

    invoke-static {p1, v0}, Lf1/E;->v(Landroid/view/WindowInsetsController;I)V

    invoke-static {}, Lf1/E;->x()I

    move-result v0

    invoke-static {p1, v0}, Lf1/E;->o(Landroid/view/WindowInsetsController;I)V

    invoke-static {p1}, LT6/a;->u(Landroid/view/WindowInsetsController;)V

    iget-object p1, p0, Lc6/l;->a:Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;

    iput-boolean v1, p1, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->g0:Z

    :cond_2
    iget-object p1, p0, Lc6/l;->a:Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;

    iget-boolean v0, p1, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->b0:Z

    if-eqz v0, :cond_3

    const/16 v0, 0x8

    if-ne p2, v0, :cond_3

    iget-object p2, p1, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->H:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p2

    iput-object p2, p1, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->X:Landroid/view/WindowInsets;

    iget-object p1, p0, Lc6/l;->a:Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;

    iget-object p1, p1, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->X:Landroid/view/WindowInsets;

    if-eqz p1, :cond_3

    invoke-static {}, Lf1/E;->s()I

    move-result p2

    invoke-static {p1, p2}, Lf1/E;->q(Landroid/view/WindowInsets;I)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lc6/l;->a:Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;

    invoke-virtual {p1}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->R()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lc6/l;->a:Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;

    invoke-virtual {p0, v1}, Lcom/google/android/material/appbar/SeslImmersiveScrollBehavior;->W(Z)V

    :cond_3
    return-void
.end method
