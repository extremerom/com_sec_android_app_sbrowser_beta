.class public final LS/y;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:Ltb/w;

.field public b:I

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ltb/w;

.field public final synthetic e:LPc/m;

.field public final synthetic f:LS/I;


# direct methods
.method public constructor <init>(Ltb/w;LPc/m;LS/I;Lib/c;)V
    .locals 0

    iput-object p1, p0, LS/y;->d:Ltb/w;

    iput-object p2, p0, LS/y;->e:LPc/m;

    iput-object p3, p0, LS/y;->f:LS/I;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 3

    new-instance v0, LS/y;

    iget-object v1, p0, LS/y;->e:LPc/m;

    iget-object v2, p0, LS/y;->f:LS/I;

    iget-object p0, p0, LS/y;->d:Ltb/w;

    invoke-direct {v0, p0, v1, v2, p2}, LS/y;-><init>(Ltb/w;LPc/m;LS/I;Lib/c;)V

    iput-object p1, v0, LS/y;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LS/K;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, LS/y;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, LS/y;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, LS/y;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, LS/y;->b:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, LS/y;->a:Ltb/w;

    iget-object v3, p0, LS/y;->c:Ljava/lang/Object;

    check-cast v3, LS/K;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_3

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, LS/y;->c:Ljava/lang/Object;

    check-cast p1, LS/K;

    move-object v3, p1

    :goto_0
    iget-object v1, p0, LS/y;->d:Ltb/w;

    iget-object p1, v1, Ltb/w;->a:Ljava/lang/Object;

    instance-of v4, p1, LS/n;

    if-nez v4, :cond_6

    instance-of v4, p1, LS/k;

    if-nez v4, :cond_6

    instance-of v4, p1, LS/l;

    if-eqz v4, :cond_2

    check-cast p1, LS/l;

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_4

    sget-object v4, LS/I;->Vertical:LS/I;

    iget-object v5, p0, LS/y;->f:LS/I;

    iget-wide v6, p1, LS/l;->a:J

    if-ne v5, v4, :cond_3

    invoke-static {v6, v7}, Lr0/b;->b(J)F

    move-result p1

    goto :goto_2

    :cond_3
    invoke-static {v6, v7}, Lr0/b;->a(J)F

    move-result p1

    :goto_2
    iget-object v4, v3, LS/K;->a:La0/a0;

    invoke-interface {v4}, La0/K0;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LS/k0;

    iget-object v5, v3, LS/K;->b:LS/N;

    invoke-virtual {v4, p1}, LS/k0;->f(F)J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7, v2}, LS/k0;->a(LS/N;JI)J

    :cond_4
    iput-object v3, p0, LS/y;->c:Ljava/lang/Object;

    iput-object v1, p0, LS/y;->a:Ltb/w;

    iput v2, p0, LS/y;->b:I

    iget-object p1, p0, LS/y;->e:LPc/m;

    invoke-interface {p1, p0}, LPc/A;->r(Lkb/i;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    :goto_3
    iput-object p1, v1, Ltb/w;->a:Ljava/lang/Object;

    goto :goto_0

    :cond_6
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
