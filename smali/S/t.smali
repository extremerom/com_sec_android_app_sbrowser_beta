.class public final LS/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lsb/o;

.field public final b:Lsb/o;

.field public final c:La0/a0;

.field public final d:LP7/c;


# direct methods
.method public constructor <init>(Lsb/o;Lsb/o;La0/a0;LP7/c;)V
    .locals 1

    const-string v0, "dragStartInteraction"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LS/t;->a:Lsb/o;

    iput-object p2, p0, LS/t;->b:Lsb/o;

    iput-object p3, p0, LS/t;->c:La0/a0;

    iput-object p4, p0, LS/t;->d:LP7/c;

    return-void
.end method


# virtual methods
.method public final a(LNc/B;Lkb/c;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p2, LS/q;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, LS/q;

    iget v1, v0, LS/q;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LS/q;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, LS/q;

    invoke-direct {v0, p0, p2}, LS/q;-><init>(LS/t;Lkb/c;)V

    :goto_0
    iget-object p2, v0, LS/q;->c:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, LS/q;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p1, v0, LS/q;->b:LNc/B;

    iget-object p0, v0, LS/q;->a:LS/t;

    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p2, p0, LS/t;->c:La0/a0;

    invoke-interface {p2}, La0/K0;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LT/a;

    if-eqz p2, :cond_5

    iget-object p2, p0, LS/t;->d:LP7/c;

    if-eqz p2, :cond_4

    new-instance v2, LF6/e;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object p0, v0, LS/q;->a:LS/t;

    iput-object p1, v0, LS/q;->b:LNc/B;

    iput v4, v0, LS/q;->e:I

    invoke-virtual {p2, v2, v0}, LP7/c;->m(LT/b;Lkb/c;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    iget-object p2, p0, LS/t;->c:La0/a0;

    invoke-interface {p2, v5}, La0/a0;->setValue(Ljava/lang/Object;)V

    :cond_5
    sget-wide v6, LH0/o;->b:J

    new-instance p2, LH0/o;

    invoke-direct {p2, v6, v7}, LH0/o;-><init>(J)V

    iput-object v5, v0, LS/q;->a:LS/t;

    iput-object v5, v0, LS/q;->b:LNc/B;

    iput v3, v0, LS/q;->e:I

    iget-object p0, p0, LS/t;->b:Lsb/o;

    invoke-interface {p0, p1, p2, v0}, Lsb/o;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_6

    return-object v1

    :cond_6
    :goto_2
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public final b(LNc/B;LS/m;Lkb/c;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p3, LS/r;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, LS/r;

    iget v1, v0, LS/r;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LS/r;->g:I

    goto :goto_0

    :cond_0
    new-instance v0, LS/r;

    invoke-direct {v0, p0, p3}, LS/r;-><init>(LS/t;Lkb/c;)V

    :goto_0
    iget-object p3, v0, LS/r;->e:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, LS/r;->g:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, LG5/A2;->f(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, LS/r;->d:LT/a;

    iget-object p1, v0, LS/r;->c:LS/m;

    iget-object p2, v0, LS/r;->b:LNc/B;

    iget-object v2, v0, LS/r;->a:LS/t;

    invoke-static {p3}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object p2, v0, LS/r;->c:LS/m;

    iget-object p1, v0, LS/r;->b:LNc/B;

    iget-object p0, v0, LS/r;->a:LS/t;

    invoke-static {p3}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p3}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p3, p0, LS/t;->c:La0/a0;

    invoke-interface {p3}, La0/K0;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, LT/a;

    if-eqz p3, :cond_5

    iget-object p3, p0, LS/t;->d:LP7/c;

    if-eqz p3, :cond_5

    new-instance v2, LF6/e;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object p0, v0, LS/r;->a:LS/t;

    iput-object p1, v0, LS/r;->b:LNc/B;

    iput-object p2, v0, LS/r;->c:LS/m;

    iput v5, v0, LS/r;->g:I

    invoke-virtual {p3, v2, v0}, LP7/c;->m(LT/b;Lkb/c;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_5

    return-object v1

    :cond_5
    :goto_1
    new-instance p3, LT/a;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iget-object v2, p0, LS/t;->d:LP7/c;

    if-eqz v2, :cond_7

    iput-object p0, v0, LS/r;->a:LS/t;

    iput-object p1, v0, LS/r;->b:LNc/B;

    iput-object p2, v0, LS/r;->c:LS/m;

    iput-object p3, v0, LS/r;->d:LT/a;

    iput v4, v0, LS/r;->g:I

    invoke-virtual {v2, p3, v0}, LP7/c;->m(LT/b;Lkb/c;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_6

    return-object v1

    :cond_6
    move-object v2, p0

    move-object p0, p3

    move-object v6, p2

    move-object p2, p1

    move-object p1, v6

    :goto_2
    move-object p3, p0

    move-object p0, v2

    move-object v6, p2

    move-object p2, p1

    move-object p1, v6

    :cond_7
    iget-object v2, p0, LS/t;->c:La0/a0;

    invoke-interface {v2, p3}, La0/a0;->setValue(Ljava/lang/Object;)V

    iget-wide p2, p2, LS/m;->a:J

    new-instance v2, Lr0/b;

    invoke-direct {v2, p2, p3}, Lr0/b;-><init>(J)V

    const/4 p2, 0x0

    iput-object p2, v0, LS/r;->a:LS/t;

    iput-object p2, v0, LS/r;->b:LNc/B;

    iput-object p2, v0, LS/r;->c:LS/m;

    iput-object p2, v0, LS/r;->d:LT/a;

    iput v3, v0, LS/r;->g:I

    iget-object p0, p0, LS/t;->a:Lsb/o;

    invoke-interface {p0, p1, v2, v0}, Lsb/o;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_8

    return-object v1

    :cond_8
    :goto_3
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public final c(LNc/B;LS/n;Lkb/c;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p3, LS/s;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, LS/s;

    iget v1, v0, LS/s;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LS/s;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, LS/s;

    invoke-direct {v0, p0, p3}, LS/s;-><init>(LS/t;Lkb/c;)V

    :goto_0
    iget-object p3, v0, LS/s;->d:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, LS/s;->f:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p2, v0, LS/s;->c:LS/n;

    iget-object p1, v0, LS/s;->b:LNc/B;

    iget-object p0, v0, LS/s;->a:LS/t;

    invoke-static {p3}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p3}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p3, p0, LS/t;->c:La0/a0;

    invoke-interface {p3}, La0/K0;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, LT/a;

    if-eqz p3, :cond_5

    iget-object p3, p0, LS/t;->d:LP7/c;

    if-eqz p3, :cond_4

    new-instance v2, LO7/a;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object p0, v0, LS/s;->a:LS/t;

    iput-object p1, v0, LS/s;->b:LNc/B;

    iput-object p2, v0, LS/s;->c:LS/n;

    iput v4, v0, LS/s;->f:I

    invoke-virtual {p3, v2, v0}, LP7/c;->m(LT/b;Lkb/c;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    iget-object p3, p0, LS/t;->c:La0/a0;

    invoke-interface {p3, v5}, La0/a0;->setValue(Ljava/lang/Object;)V

    :cond_5
    iget-wide p2, p2, LS/n;->a:J

    new-instance v2, LH0/o;

    invoke-direct {v2, p2, p3}, LH0/o;-><init>(J)V

    iput-object v5, v0, LS/s;->a:LS/t;

    iput-object v5, v0, LS/s;->b:LNc/B;

    iput-object v5, v0, LS/s;->c:LS/n;

    iput v3, v0, LS/s;->f:I

    iget-object p0, p0, LS/t;->b:Lsb/o;

    invoke-interface {p0, p1, v2, v0}, Lsb/o;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_6

    return-object v1

    :cond_6
    :goto_2
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
