.class public final LS/M;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:I

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:F

.field public final synthetic d:LQ/h;

.field public final synthetic e:Ltb/t;


# direct methods
.method public constructor <init>(FLQ/h;Ltb/t;Lib/c;)V
    .locals 0

    iput p1, p0, LS/M;->c:F

    iput-object p2, p0, LS/M;->d:LQ/h;

    iput-object p3, p0, LS/M;->e:Ltb/t;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 3

    new-instance v0, LS/M;

    iget-object v1, p0, LS/M;->d:LQ/h;

    iget-object v2, p0, LS/M;->e:Ltb/t;

    iget p0, p0, LS/M;->c:F

    invoke-direct {v0, p0, v1, v2, p2}, LS/M;-><init>(FLQ/h;Ltb/t;Lib/c;)V

    iput-object p1, v0, LS/M;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LS/N;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, LS/M;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, LS/M;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, LS/M;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    sget-object v6, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v0, p0, LS/M;->a:I

    sget-object v7, Ldb/r;->a:Ldb/r;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object v0, p0, LS/M;->b:Ljava/lang/Object;

    check-cast v0, LS/N;

    new-instance v2, LB1/i;

    iget-object v3, p0, LS/M;->e:Ltb/t;

    const/4 v4, 0x1

    invoke-direct {v2, v4, v3, v0}, LB1/i;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput v1, p0, LS/M;->a:I

    sget-object v0, LQ/H;->a:LA7/h;

    new-instance v1, Ljava/lang/Float;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Ljava/lang/Float;-><init>(F)V

    new-instance v12, Ljava/lang/Float;

    iget v4, p0, LS/M;->c:F

    invoke-direct {v12, v4}, Ljava/lang/Float;-><init>(F)V

    new-instance v4, Ljava/lang/Float;

    invoke-direct {v4, v3}, Ljava/lang/Float;-><init>(F)V

    iget-object v3, v0, LA7/h;->a:Ljava/lang/Object;

    check-cast v3, Ltb/m;

    invoke-interface {v3, v4}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LQ/m;

    if-nez v3, :cond_2

    iget-object v3, v0, LA7/h;->a:Ljava/lang/Object;

    check-cast v3, Ltb/m;

    invoke-interface {v3, v1}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LQ/m;

    const-string v4, "<this>"

    invoke-static {v3, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, LQ/m;->c()LQ/m;

    move-result-object v3

    :cond_2
    new-instance v4, LQ/F;

    iget-object v9, p0, LS/M;->d:LQ/h;

    move-object v8, v4

    move-object v10, v0

    move-object v11, v1

    move-object v13, v3

    invoke-direct/range {v8 .. v13}, LQ/F;-><init>(LQ/h;LA7/h;Ljava/lang/Object;Ljava/lang/Object;LQ/m;)V

    new-instance v8, LQ/i;

    const/16 v9, 0x38

    invoke-direct {v8, v0, v1, v3, v9}, LQ/i;-><init>(LA7/h;Ljava/lang/Object;LQ/m;I)V

    new-instance v9, LC1/j;

    const/4 v1, 0x5

    invoke-direct {v9, v1, v2, v0}, LC1/j;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const-wide/high16 v2, -0x8000000000000000L

    move-object v0, v8

    move-object v1, v4

    move-object v4, v9

    move-object v5, p0

    invoke-static/range {v0 .. v5}, LG5/x;->e(LQ/i;LQ/e;JLsb/k;Lkb/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v6, :cond_3

    goto :goto_0

    :cond_3
    move-object v0, v7

    :goto_0
    if-ne v0, v6, :cond_4

    goto :goto_1

    :cond_4
    move-object v0, v7

    :goto_1
    if-ne v0, v6, :cond_5

    return-object v6

    :cond_5
    :goto_2
    return-object v7
.end method
