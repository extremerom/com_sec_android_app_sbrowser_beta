.class public final Lv2/n1;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:I

.field public final synthetic b:LPc/i;

.field public final synthetic c:Lkb/i;


# direct methods
.method public constructor <init>(LPc/i;Lsb/n;Lib/c;)V
    .locals 0

    iput-object p1, p0, Lv2/n1;->b:LPc/i;

    check-cast p2, Lkb/i;

    iput-object p2, p0, Lv2/n1;->c:Lkb/i;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 1

    new-instance p1, Lv2/n1;

    iget-object v0, p0, Lv2/n1;->b:LPc/i;

    iget-object p0, p0, Lv2/n1;->c:Lkb/i;

    invoke-direct {p1, v0, p0, p2}, Lv2/n1;-><init>(LPc/i;Lsb/n;Lib/c;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Lv2/n1;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lv2/n1;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lv2/n1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, Lv2/n1;->a:I

    iget-object v2, p0, Lv2/n1;->b:LPc/i;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v4, :cond_0

    :try_start_0
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    :try_start_1
    new-instance p1, Lv2/m1;

    iget-object v1, p0, Lv2/n1;->c:Lkb/i;

    invoke-direct {p1, v2, v1, v3}, Lv2/m1;-><init>(LPc/i;Lsb/n;Lib/c;)V

    iput v4, p0, Lv2/n1;->a:I

    invoke-static {p1, p0}, LNc/E;->j(Lsb/n;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    invoke-virtual {v2, v3}, LPc/i;->f(Ljava/lang/Throwable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    const/4 p1, 0x0

    invoke-virtual {v2, p1, p0}, LPc/i;->h(ZLjava/lang/Throwable;)Z

    :goto_2
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
