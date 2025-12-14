.class public final LL2/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQc/h;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:LQc/h;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(LQc/h;Ljava/lang/Object;Ldb/b;I)V
    .locals 0

    iput p4, p0, LL2/l;->a:I

    iput-object p1, p0, LL2/l;->b:LQc/h;

    iput-object p2, p0, LL2/l;->c:Ljava/lang/Object;

    iput-object p3, p0, LL2/l;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final collect(LQc/i;Lib/c;)Ljava/lang/Object;
    .locals 11

    iget-object v0, p0, LL2/l;->b:LQc/h;

    sget-object v1, Ldb/r;->a:Ldb/r;

    iget-object v2, p0, LL2/l;->c:Ljava/lang/Object;

    iget-object v3, p0, LL2/l;->d:Ljava/lang/Object;

    iget v4, p0, LL2/l;->a:I

    packed-switch v4, :pswitch_data_0

    new-instance v0, LRc/A;

    move-object v9, v3

    check-cast v9, Lsb/o;

    const/4 v10, 0x0

    iget-object v6, p0, LL2/l;->b:LQc/h;

    move-object v7, v2

    check-cast v7, LQc/h;

    move-object v5, v0

    move-object v8, p1

    invoke-direct/range {v5 .. v10}, LRc/A;-><init>(LQc/h;LQc/h;LQc/i;Lsb/o;Lib/c;)V

    invoke-static {v0, p2}, LNc/E;->j(Lsb/n;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_0

    move-object v1, p0

    :cond_0
    return-object v1

    :pswitch_0
    check-cast v2, LQc/h;

    const/4 p0, 0x2

    new-array p0, p0, [LQc/h;

    const/4 v4, 0x0

    aput-object v0, p0, v4

    const/4 v0, 0x1

    aput-object v2, p0, v0

    sget-object v0, LQc/d0;->a:LQc/d0;

    new-instance v2, LQc/b0;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, LQc/b0;-><init>(Lsb/o;Lib/c;)V

    invoke-static {p1, p2, v0, v2, p0}, LRc/c;->a(LQc/i;Lib/c;Lsb/a;Lsb/o;[LQc/h;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_1

    move-object v1, p0

    :cond_1
    return-object v1

    :pswitch_1
    new-instance p0, LL2/k;

    check-cast v3, Lsb/k;

    check-cast v2, LJ2/U;

    invoke-direct {p0, p1, v2, v3}, LL2/k;-><init>(LQc/i;LJ2/U;Lsb/k;)V

    invoke-interface {v0, p0, p2}, LQc/h;->collect(LQc/i;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_2

    move-object v1, p0

    :cond_2
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
