.class public final Lc2/B;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public final synthetic b:Landroidx/glance/session/SessionWorker;


# direct methods
.method public constructor <init>(Landroidx/glance/session/SessionWorker;Lib/c;)V
    .locals 0

    iput-object p1, p0, Lc2/B;->b:Landroidx/glance/session/SessionWorker;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 1

    new-instance v0, Lc2/B;

    iget-object p0, p0, Lc2/B;->b:Landroidx/glance/session/SessionWorker;

    invoke-direct {v0, p0, p2}, Lc2/B;-><init>(Landroidx/glance/session/SessionWorker;Lib/c;)V

    iput-object p1, v0, Lc2/B;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lc2/w;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Lc2/B;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lc2/B;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lc2/B;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, Lc2/B;->a:Ljava/lang/Object;

    check-cast p1, Lc2/w;

    iget-object p0, p0, Lc2/B;->b:Landroidx/glance/session/SessionWorker;

    iget-object p0, p0, Landroidx/glance/session/SessionWorker;->m:Ljava/lang/String;

    invoke-interface {p1, p0}, Lc2/w;->d(Ljava/lang/String;)Lc2/m;

    move-result-object p0

    return-object p0
.end method
