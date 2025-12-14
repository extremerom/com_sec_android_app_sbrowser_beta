.class public final Lc2/h;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:I

.field public final synthetic b:Ltb/v;

.field public final synthetic c:Ltb/v;

.field public final synthetic d:Lc2/j;

.field public final synthetic e:J


# direct methods
.method public constructor <init>(Ltb/v;Ltb/v;Lc2/j;JLib/c;)V
    .locals 0

    iput-object p1, p0, Lc2/h;->b:Ltb/v;

    iput-object p2, p0, Lc2/h;->c:Ltb/v;

    iput-object p3, p0, Lc2/h;->d:Lc2/j;

    iput-wide p4, p0, Lc2/h;->e:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 7

    new-instance p1, Lc2/h;

    iget-object v3, p0, Lc2/h;->d:Lc2/j;

    iget-wide v4, p0, Lc2/h;->e:J

    iget-object v1, p0, Lc2/h;->b:Ltb/v;

    iget-object v2, p0, Lc2/h;->c:Ltb/v;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lc2/h;-><init>(Ltb/v;Ltb/v;Lc2/j;JLib/c;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Lc2/h;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lc2/h;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lc2/h;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, Lc2/h;->a:I

    iget-object v2, p0, Lc2/h;->d:Lc2/j;

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
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, Lc2/h;->b:Ltb/v;

    iget-wide v5, p1, Ltb/v;->a:J

    iget-object p1, p0, Lc2/h;->c:Ltb/v;

    iget-wide v7, p1, Ltb/v;->a:J

    cmp-long p1, v5, v7

    if-ltz p1, :cond_4

    iput v4, p0, Lc2/h;->a:I

    invoke-static {p0}, LNc/E;->N(Lkb/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    iget-wide p0, p0, Lc2/h;->e:J

    invoke-static {v2, p0, p1}, Lc2/j;->d(Lc2/j;J)V

    goto :goto_2

    :cond_4
    sub-long/2addr v7, v5

    const-wide/32 v4, 0xf4240

    div-long/2addr v7, v4

    iput v3, p0, Lc2/h;->a:I

    invoke-static {v7, v8, p0}, LNc/E;->k(JLkb/i;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_5

    return-object v0

    :cond_5
    :goto_1
    iget-object p0, v2, Lc2/j;->e:Lsb/a;

    invoke-interface {p0}, Lsb/a;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    invoke-static {v2, p0, p1}, Lc2/j;->d(Lc2/j;J)V

    :goto_2
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
