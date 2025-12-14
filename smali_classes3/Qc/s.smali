.class public final LQc/s;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/o;


# instance fields
.field public a:Ltb/w;

.field public b:Ltb/v;

.field public c:I

.field public synthetic d:Ljava/lang/Object;

.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Lsb/k;

.field public final synthetic g:LRc/n;


# direct methods
.method public constructor <init>(Lsb/k;LRc/n;Lib/c;)V
    .locals 0

    iput-object p1, p0, LQc/s;->f:Lsb/k;

    iput-object p2, p0, LQc/s;->g:LRc/n;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p3}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, LNc/B;

    check-cast p2, LQc/i;

    check-cast p3, Lib/c;

    new-instance v0, LQc/s;

    iget-object v1, p0, LQc/s;->f:Lsb/k;

    iget-object p0, p0, LQc/s;->g:LRc/n;

    invoke-direct {v0, v1, p0, p3}, LQc/s;-><init>(Lsb/k;LRc/n;Lib/c;)V

    iput-object p1, v0, LQc/s;->d:Ljava/lang/Object;

    iput-object p2, v0, LQc/s;->e:Ljava/lang/Object;

    sget-object p0, Ldb/r;->a:Ldb/r;

    invoke-virtual {v0, p0}, LQc/s;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, LQc/s;->c:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    iget-object v2, v0, LQc/s;->a:Ltb/w;

    iget-object v7, v0, LQc/s;->e:Ljava/lang/Object;

    check-cast v7, LPc/A;

    iget-object v8, v0, LQc/s;->d:Ljava/lang/Object;

    check-cast v8, LQc/i;

    invoke-static/range {p1 .. p1}, LG5/A2;->f(Ljava/lang/Object;)V

    :cond_0
    move-object v9, v8

    move-object v8, v7

    move-object v7, v2

    goto/16 :goto_4

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v2, v0, LQc/s;->b:Ltb/v;

    iget-object v7, v0, LQc/s;->a:Ltb/w;

    iget-object v8, v0, LQc/s;->e:Ljava/lang/Object;

    check-cast v8, LPc/A;

    iget-object v9, v0, LQc/s;->d:Ljava/lang/Object;

    check-cast v9, LQc/i;

    invoke-static/range {p1 .. p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_3
    invoke-static/range {p1 .. p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object v2, v0, LQc/s;->d:Ljava/lang/Object;

    check-cast v2, LNc/B;

    iget-object v7, v0, LQc/s;->e:Ljava/lang/Object;

    check-cast v7, LQc/i;

    new-instance v8, LQc/r;

    iget-object v9, v0, LQc/s;->g:LRc/n;

    invoke-direct {v8, v9, v6}, LQc/r;-><init>(LRc/n;Lib/c;)V

    sget-object v9, Lib/i;->a:Lib/i;

    sget-object v10, LPc/a;->SUSPEND:LPc/a;

    sget-object v11, LNc/D;->DEFAULT:LNc/D;

    const/4 v12, 0x4

    invoke-static {v3, v12, v10}, LG5/r;->a(IILPc/a;)LPc/i;

    move-result-object v10

    invoke-static {v2, v9}, LNc/E;->z(LNc/B;Lib/h;)Lib/h;

    move-result-object v2

    new-instance v9, LPc/x;

    invoke-direct {v9, v2, v10}, LPc/x;-><init>(Lib/h;LPc/i;)V

    invoke-virtual {v9, v11, v9, v8}, LNc/a;->i0(LNc/D;LNc/a;Lsb/n;)V

    new-instance v2, Ltb/w;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object v8, v9

    move-object v9, v7

    move-object v7, v2

    :goto_0
    iget-object v2, v7, Ltb/w;->a:Ljava/lang/Object;

    sget-object v10, LRc/c;->d:LQ6/i;

    if-eq v2, v10, :cond_b

    new-instance v10, Ltb/v;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    if-eqz v2, :cond_7

    sget-object v11, LRc/c;->b:LQ6/i;

    if-ne v2, v11, :cond_4

    move-object v2, v6

    :cond_4
    iget-object v12, v0, LQc/s;->f:Lsb/k;

    invoke-interface {v12, v2}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v12

    iput-wide v12, v10, Ltb/v;->a:J

    const-wide/16 v14, 0x0

    cmp-long v2, v12, v14

    if-ltz v2, :cond_8

    if-nez v2, :cond_7

    iget-object v2, v7, Ltb/w;->a:Ljava/lang/Object;

    if-ne v2, v11, :cond_5

    move-object v2, v6

    :cond_5
    iput-object v9, v0, LQc/s;->d:Ljava/lang/Object;

    iput-object v8, v0, LQc/s;->e:Ljava/lang/Object;

    iput-object v7, v0, LQc/s;->a:Ltb/w;

    iput-object v10, v0, LQc/s;->b:Ltb/v;

    iput v5, v0, LQc/s;->c:I

    invoke-interface {v9, v2, v0}, LQc/i;->emit(Ljava/lang/Object;Lib/c;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_6

    return-object v1

    :cond_6
    move-object v2, v10

    :goto_1
    iput-object v6, v7, Ltb/w;->a:Ljava/lang/Object;

    move-object v10, v2

    :cond_7
    move-object v2, v7

    move-object v7, v8

    move-object v8, v9

    goto :goto_2

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Debounce timeout should not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_2
    new-instance v9, LXc/e;

    invoke-interface/range {p0 .. p0}, Lib/c;->getContext()Lib/h;

    move-result-object v11

    invoke-direct {v9, v11}, LXc/e;-><init>(Lib/h;)V

    iget-object v11, v2, Ltb/w;->a:Ljava/lang/Object;

    if-eqz v11, :cond_9

    iget-wide v10, v10, Ltb/v;->a:J

    new-instance v15, LQc/n;

    invoke-direct {v15, v8, v6, v2}, LQc/n;-><init>(LQc/i;Lib/c;Ltb/w;)V

    new-instance v13, LXc/b;

    invoke-direct {v13, v10, v11}, LXc/b;-><init>(J)V

    sget-object v14, LXc/a;->a:LXc/a;

    const/4 v10, 0x3

    invoke-static {v10, v14}, Ltb/z;->e(ILjava/lang/Object;)V

    sget-object v10, LXc/g;->a:LXc/g;

    new-instance v12, LXc/c;

    sget-object v16, LXc/h;->e:LQ6/i;

    const/16 v18, 0x0

    move-object v11, v12

    move-object v5, v12

    move-object v12, v9

    move-object/from16 v17, v15

    move-object v15, v10

    invoke-direct/range {v11 .. v18}, LXc/c;-><init>(LXc/e;Ljava/lang/Object;Lsb/o;Lsb/o;LQ6/i;Lkb/i;Lsb/o;)V

    invoke-virtual {v9, v5, v3}, LXc/e;->f(LXc/c;Z)V

    :cond_9
    invoke-interface {v7}, LPc/A;->m()Lo3/c;

    move-result-object v5

    new-instance v10, LQc/o;

    invoke-direct {v10, v8, v6, v2}, LQc/o;-><init>(LQc/i;Lib/c;Ltb/w;)V

    new-instance v15, LXc/c;

    iget-object v11, v5, Lo3/c;->a:Ljava/lang/Object;

    move-object v13, v11

    check-cast v13, LPc/i;

    sget-object v14, LPc/c;->a:LPc/c;

    sget-object v16, LPc/d;->a:LPc/d;

    const/16 v17, 0x0

    iget-object v5, v5, Lo3/c;->b:Ljava/lang/Object;

    move-object/from16 v18, v5

    check-cast v18, LPc/f;

    move-object v11, v15

    move-object v12, v9

    move-object v5, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v10

    invoke-direct/range {v11 .. v18}, LXc/c;-><init>(LXc/e;Ljava/lang/Object;Lsb/o;Lsb/o;LQ6/i;Lkb/i;Lsb/o;)V

    invoke-virtual {v9, v5, v3}, LXc/e;->f(LXc/c;Z)V

    iput-object v8, v0, LQc/s;->d:Ljava/lang/Object;

    iput-object v7, v0, LQc/s;->e:Ljava/lang/Object;

    iput-object v2, v0, LQc/s;->a:Ltb/w;

    iput-object v6, v0, LQc/s;->b:Ltb/v;

    iput v4, v0, LQc/s;->c:I

    sget-object v5, LXc/e;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v5, v9}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, LXc/c;

    if-eqz v5, :cond_a

    invoke-virtual {v9, v0}, LXc/e;->b(Lkb/c;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_3

    :cond_a
    invoke-virtual {v9, v0}, LXc/e;->d(Lkb/c;)Ljava/lang/Object;

    move-result-object v5

    :goto_3
    if-ne v5, v1, :cond_0

    return-object v1

    :goto_4
    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_b
    sget-object v0, Ldb/r;->a:Ldb/r;

    return-object v0
.end method
