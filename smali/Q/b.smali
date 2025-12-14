.class public final LQ/b;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# instance fields
.field public a:LQ/i;

.field public b:Ltb/s;

.field public c:I

.field public final synthetic d:LQ/d;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:LQ/F;

.field public final synthetic g:J

.field public final synthetic h:Lsb/k;


# direct methods
.method public constructor <init>(LQ/d;Ljava/lang/Object;LQ/F;JLsb/k;Lib/c;)V
    .locals 0

    iput-object p1, p0, LQ/b;->d:LQ/d;

    iput-object p2, p0, LQ/b;->e:Ljava/lang/Object;

    iput-object p3, p0, LQ/b;->f:LQ/F;

    iput-wide p4, p0, LQ/b;->g:J

    iput-object p6, p0, LQ/b;->h:Lsb/k;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p7}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Lib/c;)Lib/c;
    .locals 9

    new-instance v8, LQ/b;

    iget-object v3, p0, LQ/b;->f:LQ/F;

    iget-object v1, p0, LQ/b;->d:LQ/d;

    iget-object v2, p0, LQ/b;->e:Ljava/lang/Object;

    iget-wide v4, p0, LQ/b;->g:J

    iget-object v6, p0, LQ/b;->h:Lsb/k;

    move-object v0, v8

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, LQ/b;-><init>(LQ/d;Ljava/lang/Object;LQ/F;JLsb/k;Lib/c;)V

    return-object v8
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lib/c;

    invoke-virtual {p0, p1}, LQ/b;->create(Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, LQ/b;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, LQ/b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    sget-object v7, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, v0, LQ/b;->c:I

    const-wide/high16 v8, -0x8000000000000000L

    const/4 v2, 0x1

    iget-object v6, v0, LQ/b;->d:LQ/d;

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v1, v0, LQ/b;->b:Ltb/s;

    iget-object v0, v0, LQ/b;->a:LQ/i;

    :try_start_0
    invoke-static/range {p1 .. p1}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v12, v6

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v12, v6

    goto/16 :goto_2

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static/range {p1 .. p1}, LG5/A2;->f(Ljava/lang/Object;)V

    :try_start_1
    iget-object v1, v6, LQ/d;->c:LQ/i;

    iget-object v3, v6, LQ/d;->a:LA7/h;

    iget-object v3, v3, LA7/h;->a:Ljava/lang/Object;

    check-cast v3, Ltb/m;

    iget-object v4, v0, LQ/b;->e:Ljava/lang/Object;

    invoke-interface {v3, v4}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LQ/m;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "<set-?>"

    invoke-static {v3, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, v1, LQ/i;->c:LQ/m;
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0

    iget-object v3, v0, LQ/b;->f:LQ/F;

    :try_start_2
    iget-object v1, v3, LQ/F;->d:Ljava/lang/Object;

    iget-object v4, v6, LQ/d;->e:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v4, v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v4, v6, LQ/d;->d:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v4, v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    iget-object v1, v6, LQ/d;->c:LQ/i;

    iget-object v4, v1, LQ/i;->b:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v4}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v12

    iget-object v4, v1, LQ/i;->c:LQ/m;

    invoke-static {v4}, LG5/w;->b(LQ/m;)LQ/m;

    move-result-object v13

    iget-wide v14, v1, LQ/i;->d:J

    iget-boolean v4, v1, LQ/i;->f:Z

    new-instance v5, LQ/i;

    iget-object v11, v1, LQ/i;->a:LA7/h;

    const-wide/high16 v16, -0x8000000000000000L

    move-object v10, v5

    move/from16 v18, v4

    invoke-direct/range {v10 .. v18}, LQ/i;-><init>(LA7/h;Ljava/lang/Object;LQ/m;JJZ)V

    new-instance v4, Ltb/s;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iget-wide v14, v0, LQ/b;->g:J

    new-instance v16, LQ/a;

    iget-object v13, v0, LQ/b;->h:Lsb/k;

    const/4 v1, 0x0

    move-object/from16 v10, v16

    move-object v11, v6

    move-object v12, v5

    move-wide/from16 v17, v14

    move-object v14, v4

    move v15, v1

    invoke-direct/range {v10 .. v15}, LQ/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    iput-object v5, v0, LQ/b;->a:LQ/i;

    iput-object v4, v0, LQ/b;->b:Ltb/s;

    iput v2, v0, LQ/b;->c:I
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v5

    move-object v2, v3

    move-object v10, v4

    move-wide/from16 v3, v17

    move-object v11, v5

    move-object/from16 v5, v16

    move-object v12, v6

    move-object/from16 v6, p0

    :try_start_3
    invoke-static/range {v1 .. v6}, LG5/x;->e(LQ/i;LQ/e;JLsb/k;Lkb/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v7, :cond_2

    return-object v7

    :cond_2
    move-object v1, v10

    move-object v0, v11

    :goto_0
    iget-boolean v1, v1, Ltb/s;->a:Z

    if-eqz v1, :cond_3

    sget-object v1, LQ/f;->BoundReached:LQ/f;

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_3
    sget-object v1, LQ/f;->Finished:LQ/f;

    :goto_1
    iget-object v2, v12, LQ/d;->c:LQ/i;

    iget-object v3, v2, LQ/i;->c:LQ/m;

    invoke-virtual {v3}, LQ/m;->d()V

    iput-wide v8, v2, LQ/i;->d:J

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v3, v12, LQ/d;->d:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    new-instance v2, Lt9/c;

    invoke-direct {v2, v0, v1}, Lt9/c;-><init>(LQ/i;LQ/f;)V
    :try_end_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_1

    return-object v2

    :goto_2
    iget-object v1, v12, LQ/d;->c:LQ/i;

    iget-object v2, v1, LQ/i;->c:LQ/m;

    invoke-virtual {v2}, LQ/m;->d()V

    iput-wide v8, v1, LQ/i;->d:J

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v2, v12, LQ/d;->d:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    throw v0
.end method
