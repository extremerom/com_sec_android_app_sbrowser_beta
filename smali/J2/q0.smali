.class public final LJ2/q0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQc/i;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ltb/w;

.field public final synthetic c:LQc/i;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ltb/w;LNc/B;LRc/n;LQc/i;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LJ2/q0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJ2/q0;->b:Ltb/w;

    iput-object p2, p0, LJ2/q0;->d:Ljava/lang/Object;

    iput-object p3, p0, LJ2/q0;->e:Ljava/lang/Object;

    iput-object p4, p0, LJ2/q0;->c:LQc/i;

    return-void
.end method

.method public constructor <init>(Ltb/w;LQc/i;[Ljava/lang/String;[I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LJ2/q0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJ2/q0;->b:Ltb/w;

    iput-object p2, p0, LJ2/q0;->c:LQc/i;

    iput-object p3, p0, LJ2/q0;->d:Ljava/lang/Object;

    iput-object p4, p0, LJ2/q0;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public b([ILib/c;)Ljava/lang/Object;
    .locals 13

    instance-of v0, p2, LJ2/p0;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, LJ2/p0;

    iget v1, v0, LJ2/p0;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LJ2/p0;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, LJ2/p0;

    invoke-direct {v0, p0, p2}, LJ2/p0;-><init>(LJ2/q0;Lib/c;)V

    :goto_0
    iget-object p2, v0, LJ2/p0;->c:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, LJ2/p0;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz v2, :cond_3

    if-eq v2, v3, :cond_2

    if-ne v2, v4, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    iget-object p1, v0, LJ2/p0;->b:[I

    iget-object p0, v0, LJ2/p0;->a:LJ2/q0;

    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p2, p0, LJ2/q0;->b:Ltb/w;

    iget-object v2, p2, Ltb/w;->a:Ljava/lang/Object;

    iget-object v5, p0, LJ2/q0;->d:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/String;

    iget-object v6, p0, LJ2/q0;->c:LQc/i;

    if-nez v2, :cond_4

    invoke-static {v5}, Lfb/l;->I([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p2

    iput-object p0, v0, LJ2/p0;->a:LJ2/q0;

    iput-object p1, v0, LJ2/p0;->b:[I

    iput v3, v0, LJ2/p0;->e:I

    invoke-interface {v6, p2, v0}, LQc/i;->emit(Ljava/lang/Object;Lib/c;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_8

    return-object v1

    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    array-length v3, v5

    const/4 v7, 0x0

    move v8, v7

    :goto_2
    if-ge v7, v3, :cond_7

    aget-object v9, v5, v7

    add-int/lit8 v10, v8, 0x1

    iget-object v11, p2, Ltb/w;->a:Ljava/lang/Object;

    if-eqz v11, :cond_6

    check-cast v11, [I

    iget-object v12, p0, LJ2/q0;->e:Ljava/lang/Object;

    check-cast v12, [I

    aget v8, v12, v8

    aget v11, v11, v8

    aget v8, p1, v8

    if-eq v11, v8, :cond_5

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v7, v7, 0x1

    move v8, v10

    goto :goto_2

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Required value was null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_8

    invoke-static {v2}, Lfb/n;->l0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p2

    iput-object p0, v0, LJ2/p0;->a:LJ2/q0;

    iput-object p1, v0, LJ2/p0;->b:[I

    iput v4, v0, LJ2/p0;->e:I

    invoke-interface {v6, p2, v0}, LQc/i;->emit(Ljava/lang/Object;Lib/c;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_8

    return-object v1

    :cond_8
    :goto_3
    iget-object p0, p0, LJ2/q0;->b:Ltb/w;

    iput-object p1, p0, Ltb/w;->a:Ljava/lang/Object;

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public final emit(Ljava/lang/Object;Lib/c;)Ljava/lang/Object;
    .locals 6

    iget v0, p0, LJ2/q0;->a:I

    packed-switch v0, :pswitch_data_0

    instance-of v0, p2, LRc/l;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, LRc/l;

    iget v1, v0, LRc/l;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LRc/l;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, LRc/l;

    invoke-direct {v0, p0, p2}, LRc/l;-><init>(LJ2/q0;Lib/c;)V

    :goto_0
    iget-object p2, v0, LRc/l;->c:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, LRc/l;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, LRc/l;->b:Ljava/lang/Object;

    iget-object p0, v0, LRc/l;->a:LJ2/q0;

    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p2, p0, LJ2/q0;->b:Ltb/w;

    iget-object p2, p2, Ltb/w;->a:Ljava/lang/Object;

    check-cast p2, LNc/j0;

    if-eqz p2, :cond_3

    new-instance v2, LRc/p;

    const-string v4, "Child of the scoped flow was cancelled"

    invoke-direct {v2, v4}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v2}, LNc/j0;->a(Ljava/util/concurrent/CancellationException;)V

    iput-object p0, v0, LRc/l;->a:LJ2/q0;

    iput-object p1, v0, LRc/l;->b:Ljava/lang/Object;

    iput v3, v0, LRc/l;->e:I

    invoke-interface {p2, v0}, LNc/j0;->h(Lkb/c;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    iget-object p2, p0, LJ2/q0;->b:Ltb/w;

    sget-object v0, LNc/D;->UNDISPATCHED:LNc/D;

    new-instance v1, LRc/k;

    iget-object v2, p0, LJ2/q0;->c:LQc/i;

    iget-object v4, p0, LJ2/q0;->e:Ljava/lang/Object;

    check-cast v4, LRc/n;

    const/4 v5, 0x0

    invoke-direct {v1, v4, v2, p1, v5}, LRc/k;-><init>(LRc/n;LQc/i;Ljava/lang/Object;Lib/c;)V

    iget-object p0, p0, LJ2/q0;->d:Ljava/lang/Object;

    check-cast p0, LNc/B;

    invoke-static {p0, v5, v0, v1, v3}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    move-result-object p0

    iput-object p0, p2, Ltb/w;->a:Ljava/lang/Object;

    sget-object v1, Ldb/r;->a:Ldb/r;

    :goto_2
    return-object v1

    :pswitch_0
    check-cast p1, [I

    invoke-virtual {p0, p1, p2}, LJ2/q0;->b([ILib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
