.class public final Lc2/J;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:I

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:La0/p0;

.field public final synthetic d:LQc/A0;

.field public final synthetic e:Lc2/m;

.field public final synthetic f:Landroid/content/Context;

.field public final synthetic g:Lx1/n;

.field public final synthetic h:Lc2/U;

.field public final synthetic i:Lc2/Q;


# direct methods
.method public constructor <init>(La0/p0;LQc/A0;Lc2/m;Landroid/content/Context;Lx1/n;Lc2/U;Lc2/Q;Lib/c;)V
    .locals 0

    iput-object p1, p0, Lc2/J;->c:La0/p0;

    iput-object p2, p0, Lc2/J;->d:LQc/A0;

    iput-object p3, p0, Lc2/J;->e:Lc2/m;

    iput-object p4, p0, Lc2/J;->f:Landroid/content/Context;

    iput-object p5, p0, Lc2/J;->g:Lx1/n;

    iput-object p6, p0, Lc2/J;->h:Lc2/U;

    iput-object p7, p0, Lc2/J;->i:Lc2/Q;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p8}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 10

    new-instance v9, Lc2/J;

    iget-object v1, p0, Lc2/J;->c:La0/p0;

    iget-object v2, p0, Lc2/J;->d:LQc/A0;

    iget-object v5, p0, Lc2/J;->g:Lx1/n;

    iget-object v3, p0, Lc2/J;->e:Lc2/m;

    iget-object v4, p0, Lc2/J;->f:Landroid/content/Context;

    iget-object v6, p0, Lc2/J;->h:Lc2/U;

    iget-object v7, p0, Lc2/J;->i:Lc2/Q;

    move-object v0, v9

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lc2/J;-><init>(La0/p0;LQc/A0;Lc2/m;Landroid/content/Context;Lx1/n;Lc2/U;Lc2/Q;Lib/c;)V

    iput-object p1, v9, Lc2/J;->b:Ljava/lang/Object;

    return-object v9
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Lc2/J;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lc2/J;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lc2/J;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, Lc2/J;->a:I

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

    iget-object p1, p0, Lc2/J;->b:Ljava/lang/Object;

    move-object v12, p1

    check-cast v12, LNc/B;

    new-instance v5, Ltb/v;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iget-object p1, p0, Lc2/J;->c:La0/p0;

    iget-wide v3, p1, La0/p0;->a:J

    iput-wide v3, v5, Ltb/v;->a:J

    new-instance v1, Lc2/I;

    iget-object v6, p0, Lc2/J;->d:LQc/A0;

    iget-object v9, p0, Lc2/J;->g:Lx1/n;

    iget-object v10, p0, Lc2/J;->h:Lc2/U;

    iget-object v7, p0, Lc2/J;->e:Lc2/m;

    iget-object v8, p0, Lc2/J;->f:Landroid/content/Context;

    iget-object v11, p0, Lc2/J;->i:Lc2/Q;

    const/4 v13, 0x0

    move-object v3, v1

    move-object v4, p1

    invoke-direct/range {v3 .. v13}, Lc2/I;-><init>(La0/p0;Ltb/v;LQc/A0;Lc2/m;Landroid/content/Context;Lx1/n;Lc2/U;Lc2/Q;LNc/B;Lib/c;)V

    iput v2, p0, Lc2/J;->a:I

    iget-object p1, p1, La0/p0;->s:LQc/A0;

    invoke-static {p1, v1, p0}, LQc/n0;->i(LQc/h;Lsb/n;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
