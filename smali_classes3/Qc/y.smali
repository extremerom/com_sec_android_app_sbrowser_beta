.class public final LQc/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQc/h;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:LQc/h;

.field public final synthetic c:Lkb/i;


# direct methods
.method public constructor <init>(LQc/h;Lsb/n;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, LQc/y;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LQc/y;->b:LQc/h;

    check-cast p2, Lkb/i;

    iput-object p2, p0, LQc/y;->c:Lkb/i;

    return-void
.end method

.method public constructor <init>(LQc/h;Lsb/o;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LQc/y;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LQc/y;->b:LQc/h;

    check-cast p2, Lkb/i;

    iput-object p2, p0, LQc/y;->c:Lkb/i;

    return-void
.end method

.method public constructor <init>(Lsb/n;LQc/h;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LQc/y;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Lkb/i;

    iput-object p1, p0, LQc/y;->c:Lkb/i;

    iput-object p2, p0, LQc/y;->b:LQc/h;

    return-void
.end method


# virtual methods
.method public final collect(LQc/i;Lib/c;)Ljava/lang/Object;
    .locals 5

    iget v0, p0, LQc/y;->a:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, LJ2/u;

    iget-object v1, p0, LQc/y;->c:Lkb/i;

    invoke-direct {v0, p1, v1}, LJ2/u;-><init>(LQc/i;Lsb/n;)V

    iget-object p0, p0, LQc/y;->b:LQc/h;

    invoke-interface {p0, v0, p2}, LQc/h;->collect(LQc/i;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    :goto_0
    return-object p0

    :pswitch_0
    instance-of v0, p2, LQc/z;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, LQc/z;

    iget v1, v0, LQc/z;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_1

    sub-int/2addr v1, v2

    iput v1, v0, LQc/z;->b:I

    goto :goto_1

    :cond_1
    new-instance v0, LQc/z;

    invoke-direct {v0, p0, p2}, LQc/z;-><init>(LQc/y;Lib/c;)V

    :goto_1
    iget-object p2, v0, LQc/z;->a:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, LQc/z;->b:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v4, :cond_3

    if-ne v2, v3, :cond_2

    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_3

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    iget-object p1, v0, LQc/z;->e:LQc/i;

    iget-object p0, v0, LQc/z;->d:LQc/y;

    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    iput-object p0, v0, LQc/z;->d:LQc/y;

    iput-object p1, v0, LQc/z;->e:LQc/i;

    iput v4, v0, LQc/z;->b:I

    iget-object p2, p0, LQc/y;->b:LQc/h;

    invoke-static {p2, p1, v0}, LQc/n0;->h(LQc/h;LQc/i;Lkb/c;)Ljava/io/Serializable;

    move-result-object p2

    if-ne p2, v1, :cond_5

    goto :goto_4

    :cond_5
    :goto_2
    check-cast p2, Ljava/lang/Throwable;

    if-eqz p2, :cond_6

    iget-object p0, p0, LQc/y;->c:Lkb/i;

    const/4 v2, 0x0

    iput-object v2, v0, LQc/z;->d:LQc/y;

    iput-object v2, v0, LQc/z;->e:LQc/i;

    iput v3, v0, LQc/z;->b:I

    invoke-interface {p0, p1, p2, v0}, Lsb/o;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_6

    goto :goto_4

    :cond_6
    :goto_3
    sget-object v1, Ldb/r;->a:Ldb/r;

    :goto_4
    return-object v1

    :pswitch_1
    instance-of v0, p2, LQc/x;

    if-eqz v0, :cond_7

    move-object v0, p2

    check-cast v0, LQc/x;

    iget v1, v0, LQc/x;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_7

    sub-int/2addr v1, v2

    iput v1, v0, LQc/x;->b:I

    goto :goto_5

    :cond_7
    new-instance v0, LQc/x;

    invoke-direct {v0, p0, p2}, LQc/x;-><init>(LQc/y;Lib/c;)V

    :goto_5
    iget-object p2, v0, LQc/x;->a:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, LQc/x;->b:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_a

    if-eq v2, v4, :cond_9

    if-ne v2, v3, :cond_8

    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_7

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    iget-object p0, v0, LQc/x;->f:LRc/H;

    iget-object p1, v0, LQc/x;->e:LQc/i;

    iget-object v2, v0, LQc/x;->d:LQc/y;

    :try_start_0
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception p1

    goto :goto_9

    :cond_a
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    new-instance p2, LRc/H;

    invoke-interface {v0}, Lib/c;->getContext()Lib/h;

    move-result-object v2

    invoke-direct {p2, p1, v2}, LRc/H;-><init>(LQc/i;Lib/h;)V

    :try_start_1
    iget-object v2, p0, LQc/y;->c:Lkb/i;

    iput-object p0, v0, LQc/x;->d:LQc/y;

    iput-object p1, v0, LQc/x;->e:LQc/i;

    iput-object p2, v0, LQc/x;->f:LRc/H;

    iput v4, v0, LQc/x;->b:I

    invoke-interface {v2, p2, v0}, Lsb/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v2, v1, :cond_b

    goto :goto_8

    :cond_b
    move-object v2, p0

    move-object p0, p2

    :goto_6
    invoke-virtual {p0}, Lkb/c;->releaseIntercepted()V

    iget-object p0, v2, LQc/y;->b:LQc/h;

    const/4 p2, 0x0

    iput-object p2, v0, LQc/x;->d:LQc/y;

    iput-object p2, v0, LQc/x;->e:LQc/i;

    iput-object p2, v0, LQc/x;->f:LRc/H;

    iput v3, v0, LQc/x;->b:I

    invoke-interface {p0, p1, v0}, LQc/h;->collect(LQc/i;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_c

    goto :goto_8

    :cond_c
    :goto_7
    sget-object v1, Ldb/r;->a:Ldb/r;

    :goto_8
    return-object v1

    :catchall_1
    move-exception p1

    move-object p0, p2

    :goto_9
    invoke-virtual {p0}, Lkb/c;->releaseIntercepted()V

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
