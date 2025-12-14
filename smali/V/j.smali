.class public final LV/j;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:I

.field public final synthetic b:LV/N;


# direct methods
.method public constructor <init>(LV/N;Lib/c;)V
    .locals 0

    iput-object p1, p0, LV/j;->b:LV/N;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 0

    new-instance p1, LV/j;

    iget-object p0, p0, LV/j;->b:LV/N;

    invoke-direct {p1, p0, p2}, LV/j;-><init>(LV/N;Lib/c;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, LV/j;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, LV/j;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, LV/j;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, LV/j;->a:I

    sget-object v2, Ldb/r;->a:Ldb/r;

    iget-object v3, p0, LV/j;->b:LV/N;

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v4, :cond_0

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-wide v5, v3, LV/N;->c:J

    new-instance p1, LH0/i;

    invoke-direct {p1, v5, v6}, LH0/i;-><init>(J)V

    iput v4, p0, LV/j;->a:I

    iget-object v1, v3, LV/N;->b:LQ/d;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, LQ/c;

    const/4 v5, 0x0

    invoke-direct {v4, v1, p1, v5}, LQ/c;-><init>(LQ/d;LH0/i;Lib/c;)V

    sget-object p1, LQ/s;->Default:LQ/s;

    iget-object v1, v1, LQ/d;->f:LQ/v;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, LQ/u;

    invoke-direct {v6, p1, v1, v4, v5}, LQ/u;-><init>(LQ/s;LQ/v;Lsb/k;Lib/c;)V

    invoke-static {v6, p0}, LNc/E;->j(Lsb/n;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    goto :goto_0

    :cond_2
    move-object p0, v2

    :goto_0
    if-ne p0, v0, :cond_3

    return-object v0

    :cond_3
    :goto_1
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object p1, v3, LV/N;->d:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    return-object v2
.end method
