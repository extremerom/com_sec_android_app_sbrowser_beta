.class public final Lv2/C;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:Ltb/w;

.field public b:I

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:LQc/y;

.field public final synthetic e:LQc/I;


# direct methods
.method public constructor <init>(LQc/y;LQc/I;Lib/c;)V
    .locals 0

    iput-object p1, p0, Lv2/C;->d:LQc/y;

    iput-object p2, p0, Lv2/C;->e:LQc/I;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 2

    new-instance v0, Lv2/C;

    iget-object v1, p0, Lv2/C;->d:LQc/y;

    iget-object p0, p0, Lv2/C;->e:LQc/I;

    invoke-direct {v0, v1, p0, p2}, Lv2/C;-><init>(LQc/y;LQc/I;Lib/c;)V

    iput-object p1, v0, Lv2/C;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LQc/i;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Lv2/C;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lv2/C;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lv2/C;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, Lv2/C;->b:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v1, p0, Lv2/C;->a:Ltb/w;

    iget-object v4, p0, Lv2/C;->c:Ljava/lang/Object;

    check-cast v4, LQc/i;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, Lv2/C;->c:Ljava/lang/Object;

    check-cast p1, LQc/i;

    new-instance v1, Ltb/w;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v2, v1, Ltb/w;->a:Ljava/lang/Object;

    iput-object p1, p0, Lv2/C;->c:Ljava/lang/Object;

    iput-object v1, p0, Lv2/C;->a:Ltb/w;

    iput v4, p0, Lv2/C;->b:I

    invoke-interface {p1, v2, p0}, LQc/i;->emit(Ljava/lang/Object;Lib/c;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_3

    return-object v0

    :cond_3
    move-object v4, p1

    :goto_0
    new-instance p1, LL2/k;

    iget-object v5, p0, Lv2/C;->e:LQc/I;

    const/4 v6, 0x5

    invoke-direct {p1, v1, v5, v4, v6}, LL2/k;-><init>(Ljava/lang/Object;Ljava/io/Serializable;LQc/i;I)V

    iput-object v2, p0, Lv2/C;->c:Ljava/lang/Object;

    iput-object v2, p0, Lv2/C;->a:Ltb/w;

    iput v3, p0, Lv2/C;->b:I

    iget-object v1, p0, Lv2/C;->d:LQc/y;

    invoke-virtual {v1, p1, p0}, LQc/y;->collect(LQc/i;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4

    return-object v0

    :cond_4
    :goto_1
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
