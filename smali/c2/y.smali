.class public final Lc2/y;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# instance fields
.field public final synthetic a:Lc2/U;

.field public final synthetic b:Landroidx/glance/session/SessionWorker;


# direct methods
.method public constructor <init>(Landroidx/glance/session/SessionWorker;Lc2/U;Lib/c;)V
    .locals 0

    iput-object p2, p0, Lc2/y;->a:Lc2/U;

    iput-object p1, p0, Lc2/y;->b:Landroidx/glance/session/SessionWorker;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p3}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Lib/c;)Lib/c;
    .locals 2

    new-instance v0, Lc2/y;

    iget-object v1, p0, Lc2/y;->a:Lc2/U;

    iget-object p0, p0, Lc2/y;->b:Landroidx/glance/session/SessionWorker;

    invoke-direct {v0, p0, v1, p1}, Lc2/y;-><init>(Landroidx/glance/session/SessionWorker;Lc2/U;Lib/c;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lib/c;

    invoke-virtual {p0, p1}, Lc2/y;->create(Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lc2/y;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lc2/y;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, Lc2/y;->b:Landroidx/glance/session/SessionWorker;

    iget-object p1, p1, Landroidx/glance/session/SessionWorker;->k:Lc2/Q;

    iget-wide v0, p1, Lc2/Q;->c:J

    iget-object p0, p0, Lc2/y;->a:Lc2/U;

    invoke-virtual {p0, v0, v1}, Lc2/U;->b(J)V

    invoke-virtual {p0}, Lc2/U;->a()J

    move-result-wide p0

    invoke-static {p0, p1}, LLc/a;->h(J)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Received idle event, session timeout "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "msg"

    invoke-static {p0, p1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Le7/a;->a:Ljava/lang/String;

    const-string v0, " "

    const-string v1, "GWT:SessionWorker"

    invoke-static {p1, v0, p0, v1}, Lw2/j;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
