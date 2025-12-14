.class public final LS/C;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:I

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Z

.field public final synthetic d:La0/a0;

.field public final synthetic e:La0/a0;

.field public final synthetic f:LS/I;

.field public final synthetic g:LPc/m;

.field public final synthetic h:Z


# direct methods
.method public constructor <init>(ZLa0/a0;La0/a0;LS/I;LPc/m;ZLib/c;)V
    .locals 0

    iput-boolean p1, p0, LS/C;->c:Z

    iput-object p2, p0, LS/C;->d:La0/a0;

    iput-object p3, p0, LS/C;->e:La0/a0;

    iput-object p4, p0, LS/C;->f:LS/I;

    iput-object p5, p0, LS/C;->g:LPc/m;

    iput-boolean p6, p0, LS/C;->h:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 9

    new-instance v8, LS/C;

    iget-object v2, p0, LS/C;->d:La0/a0;

    iget-object v3, p0, LS/C;->e:La0/a0;

    iget-object v4, p0, LS/C;->f:LS/I;

    iget-boolean v1, p0, LS/C;->c:Z

    iget-object v5, p0, LS/C;->g:LPc/m;

    iget-boolean v6, p0, LS/C;->h:Z

    move-object v0, v8

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, LS/C;-><init>(ZLa0/a0;La0/a0;LS/I;LPc/m;ZLib/c;)V

    iput-object p1, v8, LS/C;->b:Ljava/lang/Object;

    return-object v8
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lx0/k;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, LS/C;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, LS/C;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, LS/C;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, LS/C;->a:I

    sget-object v2, Ldb/r;->a:Ldb/r;

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, LS/C;->b:Ljava/lang/Object;

    move-object v5, p1

    check-cast v5, Lx0/k;

    iget-boolean p1, p0, LS/C;->c:Z

    if-nez p1, :cond_2

    return-object v2

    :cond_2
    new-instance p1, LS/B;

    iget-object v6, p0, LS/C;->d:La0/a0;

    iget-object v7, p0, LS/C;->e:La0/a0;

    iget-object v8, p0, LS/C;->f:LS/I;

    iget-object v9, p0, LS/C;->g:LPc/m;

    iget-boolean v10, p0, LS/C;->h:Z

    const/4 v11, 0x0

    move-object v4, p1

    invoke-direct/range {v4 .. v11}, LS/B;-><init>(Lx0/k;La0/a0;La0/a0;LS/I;LPc/m;ZLib/c;)V

    iput v3, p0, LS/C;->a:I

    invoke-static {p1, p0}, LNc/E;->j(Lsb/n;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    return-object v2
.end method
