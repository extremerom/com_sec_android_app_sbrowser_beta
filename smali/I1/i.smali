.class public final LI1/i;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:I

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lc2/j;

.field public final synthetic d:LQc/A0;

.field public final synthetic e:La0/u;

.field public final synthetic f:Lz1/p;

.field public final synthetic g:Landroid/content/Context;

.field public final synthetic h:La0/p0;

.field public final synthetic i:Lz1/Q0;

.field public final synthetic j:LNc/C0;

.field public final synthetic k:LNc/B;

.field public final synthetic l:Lz1/e;


# direct methods
.method public constructor <init>(Lc2/j;LQc/A0;La0/u;Lz1/p;Landroid/content/Context;La0/p0;Lz1/Q0;LNc/C0;LNc/B;Lz1/e;Lib/c;)V
    .locals 0

    iput-object p1, p0, LI1/i;->c:Lc2/j;

    iput-object p2, p0, LI1/i;->d:LQc/A0;

    iput-object p3, p0, LI1/i;->e:La0/u;

    iput-object p4, p0, LI1/i;->f:Lz1/p;

    iput-object p5, p0, LI1/i;->g:Landroid/content/Context;

    iput-object p6, p0, LI1/i;->h:La0/p0;

    iput-object p7, p0, LI1/i;->i:Lz1/Q0;

    iput-object p8, p0, LI1/i;->j:LNc/C0;

    iput-object p9, p0, LI1/i;->k:LNc/B;

    iput-object p10, p0, LI1/i;->l:Lz1/e;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p11}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 13

    new-instance v12, LI1/i;

    iget-object v10, p0, LI1/i;->l:Lz1/e;

    iget-object v1, p0, LI1/i;->c:Lc2/j;

    iget-object v2, p0, LI1/i;->d:LQc/A0;

    iget-object v3, p0, LI1/i;->e:La0/u;

    iget-object v4, p0, LI1/i;->f:Lz1/p;

    iget-object v6, p0, LI1/i;->h:La0/p0;

    iget-object v7, p0, LI1/i;->i:Lz1/Q0;

    iget-object v8, p0, LI1/i;->j:LNc/C0;

    iget-object v5, p0, LI1/i;->g:Landroid/content/Context;

    iget-object v9, p0, LI1/i;->k:LNc/B;

    move-object v0, v12

    move-object v11, p2

    invoke-direct/range {v0 .. v11}, LI1/i;-><init>(Lc2/j;LQc/A0;La0/u;Lz1/p;Landroid/content/Context;La0/p0;Lz1/Q0;LNc/C0;LNc/B;Lz1/e;Lib/c;)V

    iput-object p1, v12, LI1/i;->b:Ljava/lang/Object;

    return-object v12
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, LI1/i;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, LI1/i;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, LI1/i;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v7, p0

    const-string v0, " Widget ui is generated"

    const-string v1, " Waiting for widget ui..."

    sget-object v8, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v7, LI1/i;->a:I

    iget-object v9, v7, LI1/i;->l:Lz1/e;

    iget-object v10, v7, LI1/i;->j:LNc/C0;

    const/4 v3, 0x2

    const/4 v11, 0x3

    iget-object v6, v7, LI1/i;->e:La0/u;

    iget-object v5, v7, LI1/i;->c:Lc2/j;

    iget-object v4, v7, LI1/i;->h:La0/p0;

    const-string v15, "GWT:OneTimeUpdate"

    const/4 v14, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v14, :cond_2

    if-eq v2, v3, :cond_1

    if-ne v2, v11, :cond_0

    invoke-static/range {p1 .. p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :try_start_0
    invoke-static/range {p1 .. p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto/16 :goto_3

    :catch_0
    move-object v12, v6

    move-object/from16 v19, v9

    move v0, v11

    move-object v11, v4

    move-object v9, v5

    goto/16 :goto_2

    :cond_2
    invoke-static/range {p1 .. p1}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v19, v9

    move-object v2, v15

    goto :goto_0

    :cond_3
    invoke-static/range {p1 .. p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object v2, v7, LI1/i;->b:Ljava/lang/Object;

    check-cast v2, LNc/B;

    :try_start_1
    new-instance v13, LI1/c;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    iget-object v12, v7, LI1/i;->f:Lz1/p;

    :try_start_2
    iget-object v11, v7, LI1/i;->g:Landroid/content/Context;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    const/16 v17, 0x0

    move-object/from16 v18, v12

    move-object v12, v13

    move-object/from16 v19, v9

    move-object v9, v13

    move-object v13, v6

    move-object/from16 v14, v18

    move-object/from16 v20, v15

    move-object v15, v11

    move-object/from16 v16, v4

    :try_start_3
    invoke-direct/range {v12 .. v17}, LI1/c;-><init>(La0/u;Lz1/p;Landroid/content/Context;La0/p0;Lib/c;)V

    const/4 v11, 0x0

    invoke-static {v2, v5, v11, v9, v3}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    new-instance v9, LI1/g;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    iget-object v15, v7, LI1/i;->d:LQc/A0;

    :try_start_4
    iget-object v14, v7, LI1/i;->g:Landroid/content/Context;

    iget-object v13, v7, LI1/i;->i:Lz1/Q0;

    const/16 v21, 0x0

    move-object v12, v9

    move-object/from16 v17, v13

    move-object v13, v4

    move-object/from16 v16, v14

    move-object v14, v15

    move-object/from16 v22, v15

    move-object/from16 v15, v18

    move-object/from16 v18, v21

    invoke-direct/range {v12 .. v18}, LI1/g;-><init>(La0/p0;LQc/A0;Lz1/p;Landroid/content/Context;Lz1/Q0;Lib/c;)V

    const/4 v12, 0x3

    invoke-static {v2, v11, v11, v9, v12}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    sget-object v2, Le7/a;->a:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v20

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, LI1/h;

    invoke-direct {v1, v3, v11}, Lkb/i;-><init>(ILib/c;)V

    const/4 v9, 0x1

    iput v9, v7, LI1/i;->a:I

    move-object/from16 v9, v22

    invoke-static {v9, v1, v7}, LQc/n0;->o(LQc/h;Lsb/n;Lkb/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v8, :cond_4

    return-object v8

    :cond_4
    :goto_0
    sget-object v1, Le7/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, v7, LI1/i;->k:LNc/B;

    iput v3, v7, LI1/i;->a:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-object v0, v6

    move-object v1, v5

    move-object v2, v10

    move-object v3, v4

    move-object v11, v4

    move-object v4, v9

    move-object v9, v5

    move-object/from16 v5, v19

    move-object v12, v6

    move-object/from16 v6, p0

    :try_start_5
    invoke-static/range {v0 .. v6}, LI1/l;->f(La0/u;Lc2/j;LNc/C0;La0/p0;LNc/B;Lz1/e;Lkb/c;)Ljava/lang/Object;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    if-ne v0, v8, :cond_5

    return-object v8

    :catch_1
    :goto_1
    const/4 v0, 0x3

    goto :goto_2

    :catch_2
    move-object v11, v4

    move-object v9, v5

    move-object v12, v6

    goto :goto_1

    :catch_3
    move-object v11, v4

    move-object v12, v6

    move-object/from16 v19, v9

    move-object v9, v5

    goto :goto_1

    :goto_2
    iput v0, v7, LI1/i;->a:I

    iget-object v4, v7, LI1/i;->k:LNc/B;

    move-object v0, v12

    move-object v1, v9

    move-object v2, v10

    move-object v3, v11

    move-object/from16 v5, v19

    move-object/from16 v6, p0

    invoke-static/range {v0 .. v6}, LI1/l;->f(La0/u;Lc2/j;LNc/C0;La0/p0;LNc/B;Lz1/e;Lkb/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v8, :cond_5

    return-object v8

    :cond_5
    :goto_3
    sget-object v0, Ldb/r;->a:Ldb/r;

    return-object v0
.end method
