.class public final Lz1/t;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:I

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lz1/V;

.field public final synthetic d:Landroid/content/Context;

.field public final synthetic e:Lx1/o;


# direct methods
.method public constructor <init>(Lz1/V;Landroid/content/Context;Lx1/o;Lib/c;)V
    .locals 0

    iput-object p1, p0, Lz1/t;->c:Lz1/V;

    iput-object p2, p0, Lz1/t;->d:Landroid/content/Context;

    iput-object p3, p0, Lz1/t;->e:Lx1/o;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 3

    new-instance v0, Lz1/t;

    iget-object v1, p0, Lz1/t;->d:Landroid/content/Context;

    iget-object v2, p0, Lz1/t;->e:Lx1/o;

    iget-object p0, p0, Lz1/t;->c:Lz1/V;

    invoke-direct {v0, p0, v1, v2, p2}, Lz1/t;-><init>(Lz1/V;Landroid/content/Context;Lx1/o;Lib/c;)V

    iput-object p1, v0, Lz1/t;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LPc/y;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Lz1/t;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lz1/t;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lz1/t;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, Lz1/t;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, Lz1/t;->b:Ljava/lang/Object;

    check-cast p1, LPc/y;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    new-instance v4, Lz1/s;

    invoke-direct {v4, v1, p1}, Lz1/s;-><init>(Ljava/util/concurrent/atomic/AtomicReference;LPc/y;)V

    new-instance p1, Lz1/q;

    iget-object v1, p0, Lz1/t;->e:Lx1/o;

    iget-object v5, p0, Lz1/t;->c:Lz1/V;

    iget-object v6, p0, Lz1/t;->d:Landroid/content/Context;

    invoke-direct {p1, v5, v6, v1, v3}, Lz1/q;-><init>(Lz1/V;Landroid/content/Context;Lx1/o;Lib/c;)V

    iput v2, p0, Lz1/t;->a:I

    invoke-static {v4, p1, p0}, LNc/E;->K(Lib/h;Lsb/n;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
