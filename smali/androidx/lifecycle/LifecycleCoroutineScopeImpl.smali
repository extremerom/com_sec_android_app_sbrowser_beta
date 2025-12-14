.class public final Landroidx/lifecycle/LifecycleCoroutineScopeImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/H;
.implements LNc/B;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Landroidx/lifecycle/LifecycleCoroutineScopeImpl;",
        "Landroidx/lifecycle/H;",
        "lifecycle-common"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Landroidx/lifecycle/D;

.field public final b:Lib/h;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/D;Lib/h;)V
    .locals 1

    const-string v0, "coroutineContext"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/LifecycleCoroutineScopeImpl;->a:Landroidx/lifecycle/D;

    iput-object p2, p0, Landroidx/lifecycle/LifecycleCoroutineScopeImpl;->b:Lib/h;

    check-cast p1, Landroidx/lifecycle/L;

    iget-object p0, p1, Landroidx/lifecycle/L;->d:Landroidx/lifecycle/C;

    sget-object p1, Landroidx/lifecycle/C;->DESTROYED:Landroidx/lifecycle/C;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    invoke-static {p2, p0}, LNc/E;->i(Lib/h;Ljava/util/concurrent/CancellationException;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final b(Landroidx/lifecycle/J;Landroidx/lifecycle/B;)V
    .locals 1

    iget-object p1, p0, Landroidx/lifecycle/LifecycleCoroutineScopeImpl;->a:Landroidx/lifecycle/D;

    move-object p2, p1

    check-cast p2, Landroidx/lifecycle/L;

    iget-object p2, p2, Landroidx/lifecycle/L;->d:Landroidx/lifecycle/C;

    sget-object v0, Landroidx/lifecycle/C;->DESTROYED:Landroidx/lifecycle/C;

    invoke-virtual {p2, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p2

    if-gtz p2, :cond_0

    invoke-virtual {p1, p0}, Landroidx/lifecycle/D;->b(Landroidx/lifecycle/I;)V

    const/4 p1, 0x0

    iget-object p0, p0, Landroidx/lifecycle/LifecycleCoroutineScopeImpl;->b:Lib/h;

    invoke-static {p0, p1}, LNc/E;->i(Lib/h;Ljava/util/concurrent/CancellationException;)V

    :cond_0
    return-void
.end method

.method public final v()Lib/h;
    .locals 0

    iget-object p0, p0, Landroidx/lifecycle/LifecycleCoroutineScopeImpl;->b:Lib/h;

    return-object p0
.end method
