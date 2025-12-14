.class public final LRc/t;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:LPc/m;

.field public b:[B

.field public c:I

.field public d:I

.field public e:I

.field public synthetic f:Ljava/lang/Object;

.field public final synthetic g:[LQc/h;

.field public final synthetic h:Ltb/m;

.field public final synthetic i:Lkb/i;

.field public final synthetic j:LQc/i;


# direct methods
.method public constructor <init>(LQc/i;Lib/c;Lsb/a;Lsb/o;[LQc/h;)V
    .locals 0

    iput-object p5, p0, LRc/t;->g:[LQc/h;

    check-cast p3, Ltb/m;

    iput-object p3, p0, LRc/t;->h:Ltb/m;

    check-cast p4, Lkb/i;

    iput-object p4, p0, LRc/t;->i:Lkb/i;

    iput-object p1, p0, LRc/t;->j:LQc/i;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 7

    new-instance v6, LRc/t;

    iget-object v4, p0, LRc/t;->i:Lkb/i;

    iget-object v3, p0, LRc/t;->h:Ltb/m;

    iget-object v5, p0, LRc/t;->g:[LQc/h;

    iget-object v1, p0, LRc/t;->j:LQc/i;

    move-object v0, v6

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, LRc/t;-><init>(LQc/i;Lib/c;Lsb/a;Lsb/o;[LQc/h;)V

    iput-object p1, v6, LRc/t;->f:Ljava/lang/Object;

    return-object v6
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, LRc/t;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, LRc/t;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, LRc/t;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, LRc/t;->e:I

    sget-object v3, LRc/c;->c:LQ6/i;

    sget-object v4, Ldb/r;->a:Ldb/r;

    const/4 v5, 0x1

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x2

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-eq v2, v9, :cond_1

    if-ne v2, v6, :cond_0

    iget v2, v0, LRc/t;->d:I

    iget v10, v0, LRc/t;->c:I

    iget-object v11, v0, LRc/t;->b:[B

    iget-object v12, v0, LRc/t;->a:LPc/m;

    iget-object v13, v0, LRc/t;->f:Ljava/lang/Object;

    check-cast v13, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, LG5/A2;->f(Ljava/lang/Object;)V

    move v8, v7

    move v7, v2

    move-object v2, v11

    move-object v11, v13

    goto/16 :goto_5

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v2, v0, LRc/t;->d:I

    iget v10, v0, LRc/t;->c:I

    iget-object v11, v0, LRc/t;->b:[B

    iget-object v12, v0, LRc/t;->a:LPc/m;

    iget-object v13, v0, LRc/t;->f:Ljava/lang/Object;

    check-cast v13, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, LG5/A2;->f(Ljava/lang/Object;)V

    move v7, v2

    move-object v2, v11

    move-object v11, v13

    goto :goto_1

    :cond_2
    iget v2, v0, LRc/t;->d:I

    iget v10, v0, LRc/t;->c:I

    iget-object v11, v0, LRc/t;->b:[B

    iget-object v12, v0, LRc/t;->a:LPc/m;

    iget-object v13, v0, LRc/t;->f:Ljava/lang/Object;

    check-cast v13, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, LG5/A2;->f(Ljava/lang/Object;)V

    move-object/from16 v14, p1

    check-cast v14, LPc/p;

    iget-object v14, v14, LPc/p;->a:Ljava/lang/Object;

    move v7, v2

    move-object v2, v11

    move-object v11, v13

    goto :goto_2

    :cond_3
    invoke-static/range {p1 .. p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object v2, v0, LRc/t;->f:Ljava/lang/Object;

    check-cast v2, LNc/B;

    iget-object v10, v0, LRc/t;->g:[LQc/h;

    array-length v10, v10

    if-nez v10, :cond_4

    return-object v4

    :cond_4
    new-array v11, v10, [Ljava/lang/Object;

    invoke-static {v11, v3, v7, v10}, Lfb/l;->n([Ljava/lang/Object;LQ6/i;II)V

    const/4 v12, 0x6

    invoke-static {v10, v12, v8}, LG5/r;->a(IILPc/a;)LPc/i;

    move-result-object v12

    new-instance v15, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v15, v10}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    move v14, v7

    :goto_0
    if-ge v14, v10, :cond_5

    new-instance v13, LRc/s;

    iget-object v7, v0, LRc/t;->g:[LQc/h;

    const/16 v18, 0x0

    move-object/from16 p1, v13

    move/from16 v19, v14

    move-object v14, v7

    move-object v7, v15

    move/from16 v15, v19

    move-object/from16 v16, v7

    move-object/from16 v17, v12

    invoke-direct/range {v13 .. v18}, LRc/s;-><init>([LQc/h;ILjava/util/concurrent/atomic/AtomicInteger;LPc/i;Lib/c;)V

    invoke-static {v2, v8, v8, v13, v6}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    add-int/lit8 v14, v19, 0x1

    move-object v15, v7

    const/4 v7, 0x0

    goto :goto_0

    :cond_5
    new-array v2, v10, [B

    const/4 v7, 0x0

    :cond_6
    :goto_1
    add-int/2addr v7, v5

    int-to-byte v7, v7

    iput-object v11, v0, LRc/t;->f:Ljava/lang/Object;

    iput-object v12, v0, LRc/t;->a:LPc/m;

    iput-object v2, v0, LRc/t;->b:[B

    iput v10, v0, LRc/t;->c:I

    iput v7, v0, LRc/t;->d:I

    iput v5, v0, LRc/t;->e:I

    invoke-interface {v12, v0}, LPc/A;->l(Lkb/i;)Ljava/lang/Object;

    move-result-object v14

    if-ne v14, v1, :cond_7

    return-object v1

    :cond_7
    :goto_2
    instance-of v13, v14, LPc/o;

    if-nez v13, :cond_8

    goto :goto_3

    :cond_8
    move-object v14, v8

    :goto_3
    check-cast v14, Lfb/z;

    if-nez v14, :cond_9

    return-object v4

    :cond_9
    iget v13, v14, Lfb/z;->a:I

    aget-object v15, v11, v13

    iget-object v14, v14, Lfb/z;->b:Ljava/lang/Object;

    aput-object v14, v11, v13

    if-ne v15, v3, :cond_a

    add-int/lit8 v10, v10, -0x1

    :cond_a
    aget-byte v14, v2, v13

    if-eq v14, v7, :cond_c

    int-to-byte v14, v7

    aput-byte v14, v2, v13

    invoke-interface {v12}, LPc/A;->n()Ljava/lang/Object;

    move-result-object v13

    instance-of v14, v13, LPc/o;

    if-nez v14, :cond_b

    goto :goto_4

    :cond_b
    move-object v13, v8

    :goto_4
    move-object v14, v13

    check-cast v14, Lfb/z;

    if-nez v14, :cond_9

    :cond_c
    if-nez v10, :cond_6

    iget-object v13, v0, LRc/t;->h:Ltb/m;

    invoke-interface {v13}, Lsb/a;->invoke()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/Object;

    iget-object v14, v0, LRc/t;->i:Lkb/i;

    iget-object v15, v0, LRc/t;->j:LQc/i;

    if-nez v13, :cond_d

    iput-object v11, v0, LRc/t;->f:Ljava/lang/Object;

    iput-object v12, v0, LRc/t;->a:LPc/m;

    iput-object v2, v0, LRc/t;->b:[B

    iput v10, v0, LRc/t;->c:I

    iput v7, v0, LRc/t;->d:I

    iput v9, v0, LRc/t;->e:I

    invoke-interface {v14, v15, v11, v0}, Lsb/o;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v1, :cond_6

    return-object v1

    :cond_d
    const/16 v5, 0xe

    const/4 v8, 0x0

    invoke-static {v8, v8, v5, v11, v13}, Lfb/l;->k(III[Ljava/lang/Object;[Ljava/lang/Object;)V

    iput-object v11, v0, LRc/t;->f:Ljava/lang/Object;

    iput-object v12, v0, LRc/t;->a:LPc/m;

    iput-object v2, v0, LRc/t;->b:[B

    iput v10, v0, LRc/t;->c:I

    iput v7, v0, LRc/t;->d:I

    iput v6, v0, LRc/t;->e:I

    invoke-interface {v14, v15, v13, v0}, Lsb/o;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_e

    return-object v1

    :cond_e
    :goto_5
    const/4 v5, 0x1

    const/4 v8, 0x0

    goto/16 :goto_1
.end method
