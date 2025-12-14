.class public final LQc/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQc/h;


# instance fields
.field public final synthetic a:LQc/y;

.field public final synthetic b:Lkb/i;


# direct methods
.method public constructor <init>(LQc/y;Lsb/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LQc/w;->a:LQc/y;

    check-cast p2, Lkb/i;

    iput-object p2, p0, LQc/w;->b:Lkb/i;

    return-void
.end method


# virtual methods
.method public final collect(LQc/i;Lib/c;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p2, LQc/v;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, LQc/v;

    iget v1, v0, LQc/v;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LQc/v;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, LQc/v;

    invoke-direct {v0, p0, p2}, LQc/v;-><init>(LQc/w;Lib/c;)V

    :goto_0
    iget-object p2, v0, LQc/v;->a:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, LQc/v;->b:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, LQc/v;->d:Ljava/lang/Object;

    check-cast p0, LRc/H;

    :try_start_0
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, LQc/v;->d:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Throwable;

    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_5

    :cond_3
    iget-object p1, v0, LQc/v;->e:LQc/i;

    iget-object p0, v0, LQc/v;->d:Ljava/lang/Object;

    check-cast p0, LQc/w;

    :try_start_1
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v7, p1

    move-object p1, p0

    move-object p0, v7

    goto :goto_4

    :cond_4
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    :try_start_2
    iget-object p2, p0, LQc/w;->a:LQc/y;

    iput-object p0, v0, LQc/v;->d:Ljava/lang/Object;

    iput-object p1, v0, LQc/v;->e:LQc/i;

    iput v5, v0, LQc/v;->b:I

    invoke-virtual {p2, p1, v0}, LQc/y;->collect(LQc/i;Lib/c;)Ljava/lang/Object;

    move-result-object p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne p2, v1, :cond_5

    return-object v1

    :cond_5
    :goto_1
    new-instance p2, LRc/H;

    invoke-interface {v0}, Lib/c;->getContext()Lib/h;

    move-result-object v2

    invoke-direct {p2, p1, v2}, LRc/H;-><init>(LQc/i;Lib/h;)V

    :try_start_3
    iget-object p0, p0, LQc/w;->b:Lkb/i;

    iput-object p2, v0, LQc/v;->d:Ljava/lang/Object;

    iput-object v6, v0, LQc/v;->e:LQc/i;

    iput v3, v0, LQc/v;->b:I

    invoke-interface {p0, p2, v6, v0}, Lsb/o;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-ne p0, v1, :cond_6

    return-object v1

    :cond_6
    move-object p0, p2

    :goto_2
    invoke-virtual {p0}, Lkb/c;->releaseIntercepted()V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :catchall_2
    move-exception p1

    move-object p0, p2

    :goto_3
    invoke-virtual {p0}, Lkb/c;->releaseIntercepted()V

    throw p1

    :goto_4
    new-instance p2, LQc/G0;

    invoke-direct {p2, p0}, LQc/G0;-><init>(Ljava/lang/Throwable;)V

    iget-object p1, p1, LQc/w;->b:Lkb/i;

    iput-object p0, v0, LQc/v;->d:Ljava/lang/Object;

    iput-object v6, v0, LQc/v;->e:LQc/i;

    iput v4, v0, LQc/v;->b:I

    invoke-static {p2, p1, p0, v0}, LQc/n0;->d(LQc/G0;Lsb/o;Ljava/lang/Throwable;Lkb/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    return-object v1

    :cond_7
    :goto_5
    throw p0
.end method
