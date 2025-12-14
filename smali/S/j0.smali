.class public final LS/j0;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:J

.field public b:I

.field public synthetic c:J

.field public final synthetic d:LS/k0;


# direct methods
.method public constructor <init>(LS/k0;Lib/c;)V
    .locals 0

    iput-object p1, p0, LS/j0;->d:LS/k0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 1

    new-instance v0, LS/j0;

    iget-object p0, p0, LS/j0;->d:LS/k0;

    invoke-direct {v0, p0, p2}, LS/j0;-><init>(LS/k0;Lib/c;)V

    check-cast p1, LH0/o;

    iget-wide p0, p1, LH0/o;->a:J

    iput-wide p0, v0, LS/j0;->c:J

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, LH0/o;

    iget-wide v0, p1, LH0/o;->a:J

    check-cast p2, Lib/c;

    new-instance p1, LH0/o;

    invoke-direct {p1, v0, v1}, LH0/o;-><init>(J)V

    invoke-virtual {p0, p1, p2}, LS/j0;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, LS/j0;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, LS/j0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v6, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v0, p0, LS/j0;->b:I

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    iget-object v4, p0, LS/j0;->d:LS/k0;

    if-eqz v0, :cond_3

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, LS/j0;->a:J

    iget-wide v2, p0, LS/j0;->c:J

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    move-wide v9, v0

    move-object v0, p1

    goto :goto_2

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-wide v2, p0, LS/j0;->a:J

    iget-wide v7, p0, LS/j0;->c:J

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    move-object v0, p1

    goto :goto_1

    :cond_2
    iget-wide v7, p0, LS/j0;->c:J

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    move-object v0, p1

    goto :goto_0

    :cond_3
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-wide v7, p0, LS/j0;->c:J

    iget-object v0, v4, LS/k0;->c:La0/a0;

    invoke-interface {v0}, La0/K0;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw0/d;

    iput-wide v7, p0, LS/j0;->c:J

    iput v3, p0, LS/j0;->b:I

    invoke-virtual {v0, v7, v8, p0}, Lw0/d;->b(JLkb/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v6, :cond_4

    return-object v6

    :cond_4
    :goto_0
    check-cast v0, LH0/o;

    iget-wide v9, v0, LH0/o;->a:J

    invoke-static {v7, v8, v9, v10}, LH0/o;->d(JJ)J

    move-result-wide v9

    iput-wide v7, p0, LS/j0;->c:J

    iput-wide v9, p0, LS/j0;->a:J

    iput v2, p0, LS/j0;->b:I

    invoke-virtual {v4, v9, v10, p0}, LS/k0;->b(JLkb/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v6, :cond_5

    return-object v6

    :cond_5
    move-wide v2, v9

    :goto_1
    check-cast v0, LH0/o;

    iget-wide v9, v0, LH0/o;->a:J

    iget-object v0, v4, LS/k0;->c:La0/a0;

    invoke-interface {v0}, La0/K0;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw0/d;

    invoke-static {v2, v3, v9, v10}, LH0/o;->d(JJ)J

    move-result-wide v2

    iput-wide v7, p0, LS/j0;->c:J

    iput-wide v9, p0, LS/j0;->a:J

    iput v1, p0, LS/j0;->b:I

    move-wide v1, v2

    move-wide v3, v9

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lw0/d;->a(JJLkb/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v6, :cond_6

    return-object v6

    :cond_6
    move-wide v2, v7

    :goto_2
    check-cast v0, LH0/o;

    iget-wide v0, v0, LH0/o;->a:J

    invoke-static {v9, v10, v0, v1}, LH0/o;->d(JJ)J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, LH0/o;->d(JJ)J

    move-result-wide v0

    new-instance v2, LH0/o;

    invoke-direct {v2, v0, v1}, LH0/o;-><init>(J)V

    return-object v2
.end method
