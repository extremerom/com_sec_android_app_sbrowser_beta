.class public final LI1/g;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:I

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:La0/p0;

.field public final synthetic d:LQc/A0;

.field public final synthetic e:Lz1/p;

.field public final synthetic f:Landroid/content/Context;

.field public final synthetic g:Lz1/Q0;


# direct methods
.method public constructor <init>(La0/p0;LQc/A0;Lz1/p;Landroid/content/Context;Lz1/Q0;Lib/c;)V
    .locals 0

    iput-object p1, p0, LI1/g;->c:La0/p0;

    iput-object p2, p0, LI1/g;->d:LQc/A0;

    iput-object p3, p0, LI1/g;->e:Lz1/p;

    iput-object p4, p0, LI1/g;->f:Landroid/content/Context;

    iput-object p5, p0, LI1/g;->g:Lz1/Q0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 8

    new-instance v7, LI1/g;

    iget-object v5, p0, LI1/g;->g:Lz1/Q0;

    iget-object v1, p0, LI1/g;->c:La0/p0;

    iget-object v2, p0, LI1/g;->d:LQc/A0;

    iget-object v3, p0, LI1/g;->e:Lz1/p;

    iget-object v4, p0, LI1/g;->f:Landroid/content/Context;

    move-object v0, v7

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, LI1/g;-><init>(La0/p0;LQc/A0;Lz1/p;Landroid/content/Context;Lz1/Q0;Lib/c;)V

    iput-object p1, v7, LI1/g;->b:Ljava/lang/Object;

    return-object v7
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, LI1/g;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, LI1/g;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, LI1/g;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, LI1/g;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-eq v1, v2, :cond_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, LI1/g;->b:Ljava/lang/Object;

    move-object v10, p1

    check-cast v10, LNc/B;

    new-instance v5, Ltb/v;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iget-object p1, p0, LI1/g;->c:La0/p0;

    iget-wide v3, p1, La0/p0;->a:J

    iput-wide v3, v5, Ltb/v;->a:J

    new-instance v1, LI1/f;

    iget-object v9, p0, LI1/g;->g:Lz1/Q0;

    iget-object v6, p0, LI1/g;->d:LQc/A0;

    iget-object v7, p0, LI1/g;->e:Lz1/p;

    iget-object v8, p0, LI1/g;->f:Landroid/content/Context;

    move-object v3, v1

    move-object v4, p1

    invoke-direct/range {v3 .. v10}, LI1/f;-><init>(La0/p0;Ltb/v;LQc/A0;Lz1/p;Landroid/content/Context;Lz1/Q0;LNc/B;)V

    iput v2, p0, LI1/g;->a:I

    iget-object p1, p1, La0/p0;->s:LQc/A0;

    invoke-virtual {p1, v1, p0}, LQc/A0;->collect(LQc/i;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    new-instance p0, LI5/b;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method
