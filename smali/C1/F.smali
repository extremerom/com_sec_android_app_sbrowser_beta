.class public final LC1/F;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:I

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:LC1/w;

.field public final synthetic d:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic e:LNc/B;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:LC1/u;


# direct methods
.method public constructor <init>(LC1/w;Ljava/util/concurrent/atomic/AtomicReference;LNc/B;Ljava/lang/String;LC1/u;Lib/c;)V
    .locals 0

    iput-object p1, p0, LC1/F;->c:LC1/w;

    iput-object p2, p0, LC1/F;->d:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, LC1/F;->e:LNc/B;

    iput-object p4, p0, LC1/F;->f:Ljava/lang/String;

    iput-object p5, p0, LC1/F;->g:LC1/u;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 8

    new-instance v7, LC1/F;

    iget-object v5, p0, LC1/F;->g:LC1/u;

    iget-object v1, p0, LC1/F;->c:LC1/w;

    iget-object v2, p0, LC1/F;->d:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v3, p0, LC1/F;->e:LNc/B;

    iget-object v4, p0, LC1/F;->f:Ljava/lang/String;

    move-object v0, v7

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, LC1/F;-><init>(LC1/w;Ljava/util/concurrent/atomic/AtomicReference;LNc/B;Ljava/lang/String;LC1/u;Lib/c;)V

    iput-object p1, v7, LC1/F;->b:Ljava/lang/Object;

    return-object v7
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, LC1/F;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, LC1/F;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, LC1/F;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, LC1/F;->a:I

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

    iget-object p1, p0, LC1/F;->b:Ljava/lang/Object;

    move-object v4, p1

    check-cast v4, LNc/B;

    new-instance p1, LC1/E;

    iget-object v5, p0, LC1/F;->d:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v8, p0, LC1/F;->g:LC1/u;

    iget-object v1, p0, LC1/F;->c:LC1/w;

    iget-object v6, p0, LC1/F;->e:LNc/B;

    iget-object v7, p0, LC1/F;->f:Ljava/lang/String;

    move-object v3, p1

    move-object v9, v1

    invoke-direct/range {v3 .. v9}, LC1/E;-><init>(LNc/B;Ljava/util/concurrent/atomic/AtomicReference;LNc/B;Ljava/lang/String;LC1/u;LC1/w;)V

    iput v2, p0, LC1/F;->a:I

    invoke-virtual {v1, p1, p0}, LC1/w;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    return-object p1
.end method
