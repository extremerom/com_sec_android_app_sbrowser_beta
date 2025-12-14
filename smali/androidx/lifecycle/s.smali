.class public final Landroidx/lifecycle/s;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public final synthetic a:Landroidx/lifecycle/S;

.field public final synthetic b:Landroidx/lifecycle/Y;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/S;Landroidx/lifecycle/Y;Lib/c;)V
    .locals 0

    iput-object p1, p0, Landroidx/lifecycle/s;->a:Landroidx/lifecycle/S;

    iput-object p2, p0, Landroidx/lifecycle/s;->b:Landroidx/lifecycle/Y;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 1

    new-instance p1, Landroidx/lifecycle/s;

    iget-object v0, p0, Landroidx/lifecycle/s;->a:Landroidx/lifecycle/S;

    iget-object p0, p0, Landroidx/lifecycle/s;->b:Landroidx/lifecycle/Y;

    invoke-direct {p1, v0, p0, p2}, Landroidx/lifecycle/s;-><init>(Landroidx/lifecycle/S;Landroidx/lifecycle/Y;Lib/c;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/s;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/s;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/s;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/lifecycle/s;->a:Landroidx/lifecycle/S;

    iget-object p0, p0, Landroidx/lifecycle/s;->b:Landroidx/lifecycle/Y;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/S;->removeObserver(Landroidx/lifecycle/Y;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
