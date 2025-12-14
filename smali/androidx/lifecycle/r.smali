.class public final Landroidx/lifecycle/r;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public final synthetic a:Landroidx/lifecycle/S;

.field public final synthetic b:Landroidx/lifecycle/q;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/S;Landroidx/lifecycle/q;Lib/c;)V
    .locals 0

    iput-object p1, p0, Landroidx/lifecycle/r;->a:Landroidx/lifecycle/S;

    iput-object p2, p0, Landroidx/lifecycle/r;->b:Landroidx/lifecycle/q;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 1

    new-instance p1, Landroidx/lifecycle/r;

    iget-object v0, p0, Landroidx/lifecycle/r;->b:Landroidx/lifecycle/q;

    iget-object p0, p0, Landroidx/lifecycle/r;->a:Landroidx/lifecycle/S;

    invoke-direct {p1, p0, v0, p2}, Landroidx/lifecycle/r;-><init>(Landroidx/lifecycle/S;Landroidx/lifecycle/q;Lib/c;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/r;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/r;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/r;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/lifecycle/r;->b:Landroidx/lifecycle/q;

    iget-object p0, p0, Landroidx/lifecycle/r;->a:Landroidx/lifecycle/S;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/S;->observeForever(Landroidx/lifecycle/Y;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
