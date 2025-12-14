.class public final LQc/D0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQc/i;


# instance fields
.field public final a:LQc/i;

.field public final b:Lv2/o;


# direct methods
.method public constructor <init>(LQc/i;Lv2/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LQc/D0;->a:LQc/i;

    iput-object p2, p0, LQc/D0;->b:Lv2/o;

    return-void
.end method


# virtual methods
.method public final b(Lkb/c;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p1, LQc/C0;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, LQc/C0;

    iget v1, v0, LQc/C0;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LQc/C0;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, LQc/C0;

    invoke-direct {v0, p0, p1}, LQc/C0;-><init>(LQc/D0;Lkb/c;)V

    :goto_0
    iget-object p1, v0, LQc/C0;->c:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, LQc/C0;->e:I

    sget-object v3, Ldb/r;->a:Ldb/r;

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, LQc/C0;->b:LRc/H;

    iget-object v2, v0, LQc/C0;->a:LQc/D0;

    :try_start_0
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_3
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    new-instance p1, LRc/H;

    iget-object v2, p0, LQc/D0;->a:LQc/i;

    invoke-interface {v0}, Lib/c;->getContext()Lib/h;

    move-result-object v6

    invoke-direct {p1, v2, v6}, LRc/H;-><init>(LQc/i;Lib/h;)V

    :try_start_1
    iget-object v2, p0, LQc/D0;->b:Lv2/o;

    iput-object p0, v0, LQc/C0;->a:LQc/D0;

    iput-object p1, v0, LQc/C0;->b:LRc/H;

    iput v5, v0, LQc/C0;->e:I

    invoke-virtual {v2, p1, v0}, Lv2/o;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    move-object p0, p1

    :goto_1
    invoke-virtual {p0}, Lkb/c;->releaseIntercepted()V

    iget-object p0, v2, LQc/D0;->a:LQc/i;

    instance-of p1, p0, LQc/D0;

    if-eqz p1, :cond_5

    check-cast p0, LQc/D0;

    const/4 p1, 0x0

    iput-object p1, v0, LQc/C0;->a:LQc/D0;

    iput-object p1, v0, LQc/C0;->b:LRc/H;

    iput v4, v0, LQc/C0;->e:I

    invoke-virtual {p0, v0}, LQc/D0;->b(Lkb/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    return-object v3

    :catchall_1
    move-exception p0

    move-object v7, p1

    move-object p1, p0

    move-object p0, v7

    :goto_3
    invoke-virtual {p0}, Lkb/c;->releaseIntercepted()V

    throw p1
.end method

.method public final emit(Ljava/lang/Object;Lib/c;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, LQc/D0;->a:LQc/i;

    invoke-interface {p0, p1, p2}, LQc/i;->emit(Ljava/lang/Object;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
