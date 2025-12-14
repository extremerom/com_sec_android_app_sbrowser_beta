.class public final Landroidx/compose/ui/platform/t;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public final synthetic b:Landroidx/lifecycle/J;

.field public final synthetic c:Landroidx/compose/ui/platform/WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/J;Landroidx/compose/ui/platform/WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2;Lib/c;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/platform/t;->b:Landroidx/lifecycle/J;

    iput-object p2, p0, Landroidx/compose/ui/platform/t;->c:Landroidx/compose/ui/platform/WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 2

    new-instance v0, Landroidx/compose/ui/platform/t;

    iget-object v1, p0, Landroidx/compose/ui/platform/t;->b:Landroidx/lifecycle/J;

    iget-object p0, p0, Landroidx/compose/ui/platform/t;->c:Landroidx/compose/ui/platform/WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2;

    invoke-direct {v0, v1, p0, p2}, Landroidx/compose/ui/platform/t;-><init>(Landroidx/lifecycle/J;Landroidx/compose/ui/platform/WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2;Lib/c;)V

    iput-object p1, v0, Landroidx/compose/ui/platform/t;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/platform/t;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/platform/t;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/platform/t;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget-object v0, p0, Landroidx/compose/ui/platform/t;->b:Landroidx/lifecycle/J;

    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/compose/ui/platform/t;->c:Landroidx/compose/ui/platform/WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p0, p0, Landroidx/compose/ui/platform/t;->a:Ljava/lang/Object;

    check-cast p0, LNc/B;

    :try_start_0
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    invoke-interface {v0}, Landroidx/lifecycle/J;->getLifecycle()Landroidx/lifecycle/D;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/lifecycle/D;->b(Landroidx/lifecycle/I;)V

    throw p0
.end method
