.class Landroidx/lifecycle/LiveData$LifecycleBoundObserver;
.super Landroidx/lifecycle/Q;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/H;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/lifecycle/Q;",
        "Landroidx/lifecycle/H;"
    }
.end annotation


# instance fields
.field public final e:Landroidx/lifecycle/J;

.field public final synthetic f:Landroidx/lifecycle/S;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/S;Landroidx/lifecycle/J;Landroidx/lifecycle/Y;)V
    .locals 0

    iput-object p1, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->f:Landroidx/lifecycle/S;

    invoke-direct {p0, p1, p3}, Landroidx/lifecycle/Q;-><init>(Landroidx/lifecycle/S;Landroidx/lifecycle/Y;)V

    iput-object p2, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->e:Landroidx/lifecycle/J;

    return-void
.end method


# virtual methods
.method public final b(Landroidx/lifecycle/J;Landroidx/lifecycle/B;)V
    .locals 2

    iget-object p1, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->e:Landroidx/lifecycle/J;

    invoke-interface {p1}, Landroidx/lifecycle/J;->getLifecycle()Landroidx/lifecycle/D;

    move-result-object p2

    check-cast p2, Landroidx/lifecycle/L;

    iget-object p2, p2, Landroidx/lifecycle/L;->d:Landroidx/lifecycle/C;

    sget-object v0, Landroidx/lifecycle/C;->DESTROYED:Landroidx/lifecycle/C;

    if-ne p2, v0, :cond_0

    iget-object p1, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->f:Landroidx/lifecycle/S;

    iget-object p0, p0, Landroidx/lifecycle/Q;->a:Landroidx/lifecycle/Y;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/S;->removeObserver(Landroidx/lifecycle/Y;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eq v0, p2, :cond_1

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->f()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/Q;->a(Z)V

    invoke-interface {p1}, Landroidx/lifecycle/J;->getLifecycle()Landroidx/lifecycle/D;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/L;

    iget-object v0, v0, Landroidx/lifecycle/L;->d:Landroidx/lifecycle/C;

    move-object v1, v0

    move-object v0, p2

    move-object p2, v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->e:Landroidx/lifecycle/J;

    invoke-interface {v0}, Landroidx/lifecycle/J;->getLifecycle()Landroidx/lifecycle/D;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/D;->b(Landroidx/lifecycle/I;)V

    return-void
.end method

.method public final e(Landroidx/lifecycle/J;)Z
    .locals 0

    iget-object p0, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->e:Landroidx/lifecycle/J;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final f()Z
    .locals 1

    iget-object p0, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->e:Landroidx/lifecycle/J;

    invoke-interface {p0}, Landroidx/lifecycle/J;->getLifecycle()Landroidx/lifecycle/D;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/L;

    iget-object p0, p0, Landroidx/lifecycle/L;->d:Landroidx/lifecycle/C;

    sget-object v0, Landroidx/lifecycle/C;->STARTED:Landroidx/lifecycle/C;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/C;->a(Landroidx/lifecycle/C;)Z

    move-result p0

    return p0
.end method
