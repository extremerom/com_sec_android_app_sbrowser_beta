.class public final LJ2/w;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:Ljava/util/Set;

.field public b:I

.field public final synthetic c:[Ljava/lang/String;

.field public final synthetic d:LJ2/A;


# direct methods
.method public constructor <init>([Ljava/lang/String;LJ2/A;Lib/c;)V
    .locals 0

    iput-object p1, p0, LJ2/w;->c:[Ljava/lang/String;

    iput-object p2, p0, LJ2/w;->d:LJ2/A;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 1

    new-instance p1, LJ2/w;

    iget-object v0, p0, LJ2/w;->c:[Ljava/lang/String;

    iget-object p0, p0, LJ2/w;->d:LJ2/A;

    invoke-direct {p1, v0, p0, p2}, LJ2/w;-><init>([Ljava/lang/String;LJ2/A;Lib/c;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, LJ2/w;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, LJ2/w;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, LJ2/w;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, LJ2/w;->b:I

    const/4 v2, 0x1

    iget-object v3, p0, LJ2/w;->d:LJ2/A;

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object p0, p0, LJ2/w;->a:Ljava/util/Set;

    check-cast p0, Ljava/util/Set;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, LJ2/w;->c:[Ljava/lang/String;

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v1, "elements"

    invoke-static {p1, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lfb/l;->I([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    iget-object v1, v3, LJ2/A;->h:LQc/m0;

    move-object v4, p1

    check-cast v4, Ljava/util/Set;

    iput-object v4, p0, LJ2/w;->a:Ljava/util/Set;

    iput v2, p0, LJ2/w;->b:I

    invoke-virtual {v1, p1, p0}, LQc/m0;->emit(Ljava/lang/Object;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    move-object p0, p1

    :goto_0
    iget-object p1, v3, LJ2/A;->b:LJ2/s;

    const-string v0, "tables"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, LJ2/s;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object p1, p1, LJ2/s;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lfb/n;->g0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LJ2/F;

    iget-object v1, v0, LJ2/F;->a:LJ2/n;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v1, v1, LJ2/y;

    if-nez v1, :cond_3

    iget-object v1, v0, LJ2/F;->c:[Ljava/lang/String;

    array-length v3, v1

    sget-object v4, Lfb/x;->a:Lfb/x;

    if-eqz v3, :cond_a

    const/4 v5, 0x0

    if-eq v3, v2, :cond_7

    new-instance v3, Lgb/h;

    invoke-direct {v3}, Lgb/h;-><init>()V

    move-object v4, p0

    check-cast v4, Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    array-length v7, v1

    move v8, v5

    :goto_3
    if-ge v8, v7, :cond_4

    aget-object v9, v1, v8

    invoke-static {v9, v6, v2}, LKc/r;->i(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {v3, v9}, Lgb/h;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_6
    invoke-static {v3}, Lfb/F;->a(Lgb/h;)Lgb/h;

    move-result-object v4

    goto :goto_4

    :cond_7
    move-object v3, p0

    check-cast v3, Ljava/lang/Iterable;

    instance-of v6, v3, Ljava/util/Collection;

    if-eqz v6, :cond_8

    move-object v6, v3

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_4

    :cond_8
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aget-object v7, v1, v5

    invoke-static {v6, v7, v2}, LKc/r;->i(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v4, v0, LJ2/F;->d:Ljava/util/Set;

    :cond_a
    :goto_4
    move-object v1, v4

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v0, v0, LJ2/F;->a:LJ2/n;

    invoke-virtual {v0, v4}, LJ2/n;->a(Ljava/util/Set;)V

    goto/16 :goto_1

    :cond_b
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0
.end method
