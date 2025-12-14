.class public abstract LRc/i;
.super LRc/g;
.source "SourceFile"


# instance fields
.field public final d:LQc/h;


# direct methods
.method public constructor <init>(ILPc/a;LQc/h;Lib/h;)V
    .locals 0

    invoke-direct {p0, p4, p1, p2}, LRc/g;-><init>(Lib/h;ILPc/a;)V

    iput-object p3, p0, LRc/i;->d:LQc/h;

    return-void
.end method


# virtual methods
.method public final collect(LQc/i;Lib/c;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ldb/r;->a:Ldb/r;

    iget v1, p0, LRc/g;->b:I

    const/4 v2, -0x3

    if-ne v1, v2, :cond_4

    invoke-interface {p2}, Lib/c;->getContext()Lib/h;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v3, LNc/u;->c:LNc/u;

    iget-object v4, p0, LRc/g;->a:Lib/h;

    invoke-interface {v4, v2, v3}, Lib/h;->fold(Ljava/lang/Object;Lsb/n;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1, v4}, Lib/h;->plus(Lib/h;)Lib/h;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    invoke-static {v1, v4, v2}, LNc/E;->m(Lib/h;Lib/h;Z)Lib/h;

    move-result-object v2

    :goto_0
    invoke-static {v2, v1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, p1, p2}, LRc/i;->i(LQc/i;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_5

    :goto_1
    move-object v0, p0

    goto :goto_4

    :cond_1
    sget-object v3, Lib/d;->a:Lib/d;

    invoke-interface {v2, v3}, Lib/h;->get(Lib/g;)Lib/f;

    move-result-object v4

    invoke-interface {v1, v3}, Lib/h;->get(Lib/g;)Lib/f;

    move-result-object v1

    invoke-static {v4, v1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p2}, Lib/c;->getContext()Lib/h;

    move-result-object v1

    instance-of v3, p1, LRc/K;

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    instance-of v3, p1, LRc/F;

    :goto_2
    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    new-instance v3, LL2/k;

    invoke-direct {v3, p1, v1}, LL2/k;-><init>(LQc/i;Lib/h;)V

    move-object p1, v3

    :goto_3
    new-instance v1, LRc/h;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, LRc/h;-><init>(LRc/i;Lib/c;)V

    invoke-static {v2}, LUc/a;->m(Lib/h;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {v2, p1, p0, v1, p2}, LRc/c;->c(Lib/h;Ljava/lang/Object;Ljava/lang/Object;Lsb/n;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_5

    goto :goto_1

    :cond_4
    invoke-super {p0, p1, p2}, LRc/g;->collect(LQc/i;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_5

    goto :goto_1

    :cond_5
    :goto_4
    return-object v0
.end method

.method public final d(LPc/y;Lib/c;)Ljava/lang/Object;
    .locals 1

    new-instance v0, LRc/K;

    invoke-direct {v0, p1}, LRc/K;-><init>(LPc/y;)V

    invoke-virtual {p0, v0, p2}, LRc/i;->i(LQc/i;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    :goto_0
    return-object p0
.end method

.method public abstract i(LQc/i;Lib/c;)Ljava/lang/Object;
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LRc/i;->d:LQc/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, LRc/g;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
