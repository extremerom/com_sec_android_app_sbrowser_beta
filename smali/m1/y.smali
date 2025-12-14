.class public final Lm1/y;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:LYc/a;

.field public final synthetic b:Ltb/s;

.field public final synthetic c:Ltb/w;

.field public final synthetic d:Lm1/G;


# direct methods
.method public constructor <init>(LYc/a;Ltb/s;Ltb/w;Lm1/G;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm1/y;->a:LYc/a;

    iput-object p2, p0, Lm1/y;->b:Ltb/s;

    iput-object p3, p0, Lm1/y;->c:Ltb/w;

    iput-object p4, p0, Lm1/y;->d:Lm1/G;

    return-void
.end method


# virtual methods
.method public final a(Lm1/g;Lkb/c;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p2, Lm1/x;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lm1/x;

    iget v1, v0, Lm1/x;->h:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lm1/x;->h:I

    goto :goto_0

    :cond_0
    new-instance v0, Lm1/x;

    invoke-direct {v0, p0, p2}, Lm1/x;-><init>(Lm1/y;Lkb/c;)V

    :goto_0
    iget-object p2, v0, Lm1/x;->f:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, Lm1/x;->h:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lm1/x;->c:Ljava/lang/Object;

    iget-object p1, v0, Lm1/x;->b:Ljava/lang/Object;

    check-cast p1, Ltb/w;

    iget-object v0, v0, Lm1/x;->a:Ljava/lang/Object;

    check-cast v0, LYc/a;

    :try_start_0
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lm1/x;->c:Ljava/lang/Object;

    check-cast p0, Lm1/G;

    iget-object p1, v0, Lm1/x;->b:Ljava/lang/Object;

    check-cast p1, Ltb/w;

    iget-object v2, v0, Lm1/x;->a:Ljava/lang/Object;

    check-cast v2, LYc/a;

    :try_start_1
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    move-object v0, v2

    goto/16 :goto_5

    :cond_3
    iget-object p0, v0, Lm1/x;->e:Lm1/G;

    iget-object p1, v0, Lm1/x;->d:Ltb/w;

    iget-object v2, v0, Lm1/x;->c:Ljava/lang/Object;

    check-cast v2, Ltb/s;

    iget-object v5, v0, Lm1/x;->b:Ljava/lang/Object;

    check-cast v5, LYc/a;

    iget-object v7, v0, Lm1/x;->a:Ljava/lang/Object;

    check-cast v7, Lsb/n;

    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    move-object p2, v5

    move-object v8, v7

    move-object v7, p1

    move-object p1, v8

    goto :goto_1

    :cond_4
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    iput-object p1, v0, Lm1/x;->a:Ljava/lang/Object;

    iget-object p2, p0, Lm1/y;->a:LYc/a;

    iput-object p2, v0, Lm1/x;->b:Ljava/lang/Object;

    iget-object v2, p0, Lm1/y;->b:Ltb/s;

    iput-object v2, v0, Lm1/x;->c:Ljava/lang/Object;

    iget-object v7, p0, Lm1/y;->c:Ltb/w;

    iput-object v7, v0, Lm1/x;->d:Ltb/w;

    iget-object p0, p0, Lm1/y;->d:Lm1/G;

    iput-object p0, v0, Lm1/x;->e:Lm1/G;

    iput v5, v0, Lm1/x;->h:I

    invoke-interface {p2, v0}, LYc/a;->a(Lkb/c;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_5

    return-object v1

    :cond_5
    :goto_1
    :try_start_2
    iget-boolean v2, v2, Ltb/s;->a:Z

    if-nez v2, :cond_9

    iget-object v2, v7, Ltb/w;->a:Ljava/lang/Object;

    iput-object p2, v0, Lm1/x;->a:Ljava/lang/Object;

    iput-object v7, v0, Lm1/x;->b:Ljava/lang/Object;

    iput-object p0, v0, Lm1/x;->c:Ljava/lang/Object;

    iput-object v6, v0, Lm1/x;->d:Ltb/w;

    iput-object v6, v0, Lm1/x;->e:Lm1/G;

    iput v4, v0, Lm1/x;->h:I

    invoke-interface {p1, v2, v0}, Lsb/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-ne p1, v1, :cond_6

    return-object v1

    :cond_6
    move-object v2, p2

    move-object p2, p1

    move-object p1, v7

    :goto_2
    :try_start_3
    iget-object v4, p1, Ltb/w;->a:Ljava/lang/Object;

    invoke-static {p2, v4}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    iput-object v2, v0, Lm1/x;->a:Ljava/lang/Object;

    iput-object p1, v0, Lm1/x;->b:Ljava/lang/Object;

    iput-object p2, v0, Lm1/x;->c:Ljava/lang/Object;

    iput v3, v0, Lm1/x;->h:I

    invoke-virtual {p0, p2, v0}, Lm1/G;->j(Ljava/lang/Object;Lkb/c;)Ljava/lang/Object;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-ne p0, v1, :cond_7

    return-object v1

    :cond_7
    move-object p0, p2

    move-object v0, v2

    :goto_3
    :try_start_4
    iput-object p0, p1, Ltb/w;->a:Ljava/lang/Object;

    goto :goto_4

    :cond_8
    move-object v0, v2

    :goto_4
    iget-object p0, p1, Ltb/w;->a:Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-interface {v0, v6}, LYc/a;->b(Ljava/lang/Object;)V

    return-object p0

    :catchall_2
    move-exception p0

    move-object v0, p2

    goto :goto_5

    :cond_9
    :try_start_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "InitializerApi.updateData should not be called after initialization is complete."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :goto_5
    invoke-interface {v0, v6}, LYc/a;->b(Ljava/lang/Object;)V

    throw p0
.end method
