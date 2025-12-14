.class public final Landroidx/lifecycle/E;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public final synthetic b:Landroidx/lifecycle/LifecycleCoroutineScopeImpl;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/LifecycleCoroutineScopeImpl;Lib/c;)V
    .locals 0

    iput-object p1, p0, Landroidx/lifecycle/E;->b:Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 1

    new-instance v0, Landroidx/lifecycle/E;

    iget-object p0, p0, Landroidx/lifecycle/E;->b:Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    invoke-direct {v0, p0, p2}, Landroidx/lifecycle/E;-><init>(Landroidx/lifecycle/LifecycleCoroutineScopeImpl;Lib/c;)V

    iput-object p1, v0, Landroidx/lifecycle/E;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/E;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/E;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/E;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/lifecycle/E;->a:Ljava/lang/Object;

    check-cast p1, LNc/B;

    iget-object p0, p0, Landroidx/lifecycle/E;->b:Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    iget-object v0, p0, Landroidx/lifecycle/LifecycleCoroutineScopeImpl;->a:Landroidx/lifecycle/D;

    move-object v1, v0

    check-cast v1, Landroidx/lifecycle/L;

    iget-object v1, v1, Landroidx/lifecycle/L;->d:Landroidx/lifecycle/C;

    sget-object v2, Landroidx/lifecycle/C;->INITIALIZED:Landroidx/lifecycle/C;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/D;->a(Landroidx/lifecycle/I;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, LNc/B;->v()Lib/h;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, LNc/E;->i(Lib/h;Ljava/util/concurrent/CancellationException;)V

    :goto_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
