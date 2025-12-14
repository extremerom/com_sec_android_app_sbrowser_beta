.class public final LS/A;
.super Lkb/h;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public b:Ly0/d;

.field public c:LPc/m;

.field public d:LNc/B;

.field public e:Z

.field public f:I

.field public synthetic g:Ljava/lang/Object;

.field public final synthetic h:LNc/B;

.field public final synthetic i:La0/a0;

.field public final synthetic j:La0/a0;

.field public final synthetic k:LS/I;

.field public final synthetic l:LPc/m;

.field public final synthetic m:Z


# direct methods
.method public constructor <init>(LNc/B;La0/a0;La0/a0;LS/I;LPc/m;ZLib/c;)V
    .locals 0

    iput-object p1, p0, LS/A;->h:LNc/B;

    iput-object p2, p0, LS/A;->i:La0/a0;

    iput-object p3, p0, LS/A;->j:La0/a0;

    iput-object p4, p0, LS/A;->k:LS/I;

    iput-object p5, p0, LS/A;->l:LPc/m;

    iput-boolean p6, p0, LS/A;->m:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkb/h;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 9

    new-instance v8, LS/A;

    iget-object v2, p0, LS/A;->i:La0/a0;

    iget-object v3, p0, LS/A;->j:La0/a0;

    iget-object v4, p0, LS/A;->k:LS/I;

    iget-object v1, p0, LS/A;->h:LNc/B;

    iget-object v5, p0, LS/A;->l:LPc/m;

    iget-boolean v6, p0, LS/A;->m:Z

    move-object v0, v8

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, LS/A;-><init>(LNc/B;La0/a0;La0/a0;LS/I;LPc/m;ZLib/c;)V

    iput-object p1, v8, LS/A;->g:Ljava/lang/Object;

    return-object v8
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lx0/j;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, LS/A;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, LS/A;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, LS/A;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v10, p0

    sget-object v11, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v0, v10, LS/A;->f:I

    sget-object v12, LS/k;->a:LS/k;

    iget-object v13, v10, LS/A;->k:LS/I;

    iget-object v14, v10, LS/A;->h:LNc/B;

    const/4 v15, 0x2

    const/4 v9, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v9, :cond_1

    if-ne v0, v15, :cond_0

    iget-boolean v0, v10, LS/A;->e:Z

    iget-object v1, v10, LS/A;->d:LNc/B;

    iget-object v2, v10, LS/A;->c:LPc/m;

    iget-object v3, v10, LS/A;->b:Ly0/d;

    iget-object v4, v10, LS/A;->g:Ljava/lang/Object;

    check-cast v4, Lx0/j;

    :try_start_0
    invoke-static/range {p1 .. p1}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v18, v4

    move/from16 v19, v9

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object/from16 v1, p1

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_a

    :catch_0
    move-exception v0

    move/from16 v19, v9

    goto/16 :goto_8

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, v10, LS/A;->b:Ly0/d;

    iget-object v1, v10, LS/A;->g:Ljava/lang/Object;

    check-cast v1, Lx0/j;

    invoke-static/range {p1 .. p1}, LG5/A2;->f(Ljava/lang/Object;)V

    move-object v8, v1

    move-object/from16 v1, p1

    goto :goto_1

    :cond_2
    invoke-static/range {p1 .. p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object v0, v10, LS/A;->g:Ljava/lang/Object;

    check-cast v0, Lx0/j;

    :goto_0
    invoke-static {v14}, LNc/E;->u(LNc/B;)Z

    move-result v1

    if-eqz v1, :cond_a

    new-instance v7, Ly0/d;

    invoke-direct {v7}, Ly0/d;-><init>()V

    iput-object v0, v10, LS/A;->g:Ljava/lang/Object;

    iput-object v7, v10, LS/A;->b:Ly0/d;

    const/4 v1, 0x0

    iput-object v1, v10, LS/A;->c:LPc/m;

    iput-object v1, v10, LS/A;->d:LNc/B;

    iput v9, v10, LS/A;->f:I

    iget-object v2, v10, LS/A;->i:La0/a0;

    iget-object v3, v10, LS/A;->j:La0/a0;

    move-object v1, v0

    move-object v4, v7

    move-object v5, v13

    move-object/from16 v6, p0

    invoke-static/range {v1 .. v6}, LG5/L;->a(Lx0/j;La0/a0;La0/a0;Ly0/d;LS/I;Lkb/a;)Ljava/io/Serializable;

    move-result-object v1

    if-ne v1, v11, :cond_3

    return-object v11

    :cond_3
    move-object v8, v0

    move-object v0, v7

    :goto_1
    check-cast v1, Ldb/j;

    if-eqz v1, :cond_9

    iget-object v7, v10, LS/A;->l:LPc/m;

    iget-boolean v6, v10, LS/A;->m:Z

    :try_start_1
    iget-object v2, v1, Ldb/j;->a:Ljava/lang/Object;

    check-cast v2, Lx0/e;

    iget-object v1, v1, Ldb/j;->b:Ljava/lang/Object;

    check-cast v1, Lr0/b;

    iget-wide v3, v1, Lr0/b;->a:J

    iput-object v8, v10, LS/A;->g:Ljava/lang/Object;

    iput-object v0, v10, LS/A;->b:Ly0/d;

    iput-object v7, v10, LS/A;->c:LPc/m;

    iput-object v14, v10, LS/A;->d:LNc/B;

    iput-boolean v6, v10, LS/A;->e:Z

    iput v15, v10, LS/A;->f:I
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-object v1, v8

    move-object v5, v0

    move/from16 v16, v6

    move-object v6, v7

    move-object/from16 v17, v7

    move/from16 v7, v16

    move-object/from16 v18, v8

    move-object v8, v13

    move/from16 v19, v9

    move-object/from16 v9, p0

    :try_start_2
    invoke-static/range {v1 .. v9}, LG5/L;->b(Lx0/j;Lx0/e;JLy0/d;LPc/B;ZLS/I;LS/A;)Ljava/lang/Object;

    move-result-object v1
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-ne v1, v11, :cond_4

    return-object v11

    :cond_4
    move-object v4, v0

    move-object v2, v14

    move/from16 v0, v16

    move-object/from16 v3, v17

    :goto_2
    :try_start_3
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_7

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    invoke-static {v1, v1}, LG5/X2;->a(FF)J

    move-result-wide v1

    invoke-static {v1, v2}, LH0/o;->b(J)F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_6

    invoke-static {v1, v2}, LH0/o;->c(J)F

    move-result v5

    cmpl-float v5, v5, v6

    if-lez v5, :cond_6

    iget-object v5, v4, Ly0/d;->a:Lg7/t;

    invoke-static {v1, v2}, LH0/o;->b(J)F

    move-result v6

    invoke-virtual {v5, v6}, Lg7/t;->b(F)F

    move-result v5

    iget-object v4, v4, Ly0/d;->b:Lg7/t;

    invoke-static {v1, v2}, LH0/o;->c(J)F

    move-result v1

    invoke-virtual {v4, v1}, Lg7/t;->b(F)F

    move-result v1

    invoke-static {v5, v1}, LG5/X2;->a(FF)J

    move-result-wide v1

    new-instance v4, LS/n;

    if-eqz v0, :cond_5

    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_3

    :cond_5
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_3
    invoke-static {v1, v2}, LH0/o;->b(J)F

    move-result v5

    mul-float/2addr v5, v0

    invoke-static {v1, v2}, LH0/o;->c(J)F

    move-result v1

    mul-float/2addr v1, v0

    invoke-static {v5, v1}, LG5/X2;->a(FF)J

    move-result-wide v0

    invoke-direct {v4, v0, v1}, LS/n;-><init>(J)V

    goto :goto_4

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "maximumVelocity should be a positive value. You specified="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, LH0/o;->f(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    move-object v4, v12

    :goto_4
    invoke-interface {v3, v4}, LPc/B;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v18

    goto :goto_9

    :catchall_1
    move-exception v0

    move-object v2, v3

    goto :goto_a

    :catch_1
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    :goto_5
    move-object/from16 v4, v18

    goto :goto_8

    :catchall_2
    move-exception v0

    :goto_6
    move-object/from16 v2, v17

    goto :goto_a

    :catch_2
    move-exception v0

    :goto_7
    move-object v1, v14

    move-object/from16 v2, v17

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object/from16 v17, v7

    goto :goto_6

    :catch_3
    move-exception v0

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    move/from16 v19, v9

    goto :goto_7

    :goto_8
    :try_start_4
    invoke-static {v1}, LNc/E;->u(LNc/B;)Z

    move-result v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v1, :cond_8

    invoke-interface {v2, v12}, LPc/B;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v4

    :goto_9
    move/from16 v9, v19

    goto/16 :goto_0

    :cond_8
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_a
    invoke-interface {v2, v12}, LPc/B;->k(Ljava/lang/Object;)Ljava/lang/Object;

    throw v0

    :cond_9
    move-object/from16 v18, v8

    move-object/from16 v0, v18

    goto/16 :goto_0

    :cond_a
    sget-object v0, Ldb/r;->a:Ldb/r;

    return-object v0
.end method
