.class public final Lv2/l;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:I

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:LA7/c;


# direct methods
.method public constructor <init>(LA7/c;Lib/c;)V
    .locals 0

    iput-object p1, p0, Lv2/l;->c:LA7/c;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 1

    new-instance v0, Lv2/l;

    iget-object p0, p0, Lv2/l;->c:LA7/c;

    invoke-direct {v0, p0, p2}, Lv2/l;-><init>(LA7/c;Lib/c;)V

    iput-object p1, v0, Lv2/l;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LQc/i;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Lv2/l;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lv2/l;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lv2/l;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, Lv2/l;->a:I

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

    iget-object p1, p0, Lv2/l;->b:Ljava/lang/Object;

    check-cast p1, LQc/i;

    new-instance v1, Ltb/u;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/high16 v3, -0x80000000

    iput v3, v1, Ltb/u;->a:I

    iget-object v3, p0, Lv2/l;->c:LA7/c;

    iget-object v3, v3, LA7/c;->c:Ljava/lang/Object;

    check-cast v3, LQc/F0;

    new-instance v4, Lv2/j;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lkb/i;-><init>(ILib/c;)V

    new-instance v5, LJ2/v;

    const/4 v6, 0x2

    invoke-direct {v5, v6, v3, v4}, LJ2/v;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, LQc/a0;

    invoke-direct {v3, v1, p1}, LQc/a0;-><init>(Ltb/u;LQc/i;)V

    iput v2, p0, Lv2/l;->a:I

    invoke-virtual {v5, v3, p0}, LJ2/v;->collect(LQc/i;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
