.class public final LRc/x;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:I

.field public final synthetic b:LQc/h;

.field public final synthetic c:Lib/h;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:LPc/x;

.field public final synthetic f:LQc/i;

.field public final synthetic g:Lsb/o;

.field public final synthetic h:LNc/m0;


# direct methods
.method public constructor <init>(LQc/h;Lib/h;Ljava/lang/Object;LPc/x;LQc/i;Lsb/o;LNc/m0;Lib/c;)V
    .locals 0

    iput-object p1, p0, LRc/x;->b:LQc/h;

    iput-object p2, p0, LRc/x;->c:Lib/h;

    iput-object p3, p0, LRc/x;->d:Ljava/lang/Object;

    iput-object p4, p0, LRc/x;->e:LPc/x;

    iput-object p5, p0, LRc/x;->f:LQc/i;

    iput-object p6, p0, LRc/x;->g:Lsb/o;

    iput-object p7, p0, LRc/x;->h:LNc/m0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p8}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 9

    new-instance p1, LRc/x;

    iget-object v7, p0, LRc/x;->h:LNc/m0;

    iget-object v2, p0, LRc/x;->c:Lib/h;

    iget-object v3, p0, LRc/x;->d:Ljava/lang/Object;

    iget-object v4, p0, LRc/x;->e:LPc/x;

    iget-object v5, p0, LRc/x;->f:LQc/i;

    iget-object v1, p0, LRc/x;->b:LQc/h;

    iget-object v6, p0, LRc/x;->g:Lsb/o;

    move-object v0, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, LRc/x;-><init>(LQc/h;Lib/h;Ljava/lang/Object;LPc/x;LQc/i;Lsb/o;LNc/m0;Lib/c;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ldb/r;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, LRc/x;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, LRc/x;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, LRc/x;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, LRc/x;->a:I

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

    new-instance p1, LRc/w;

    iget-object v9, p0, LRc/x;->h:LNc/m0;

    iget-object v4, p0, LRc/x;->c:Lib/h;

    iget-object v5, p0, LRc/x;->d:Ljava/lang/Object;

    iget-object v6, p0, LRc/x;->e:LPc/x;

    iget-object v7, p0, LRc/x;->f:LQc/i;

    iget-object v8, p0, LRc/x;->g:Lsb/o;

    move-object v3, p1

    invoke-direct/range {v3 .. v9}, LRc/w;-><init>(Lib/h;Ljava/lang/Object;LPc/x;LQc/i;Lsb/o;LNc/m0;)V

    iput v2, p0, LRc/x;->a:I

    iget-object v1, p0, LRc/x;->b:LQc/h;

    invoke-interface {v1, p1, p0}, LQc/h;->collect(LQc/i;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
