.class public final Landroidx/compose/ui/node/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La0/j;
.implements LB0/h;


# static fields
.field public static final x:LB0/u;

.field public static final y:LB0/t;


# instance fields
.field public final a:Z

.field public b:Landroidx/compose/ui/node/a;

.field public c:I

.field public final d:Lo3/c;

.field public e:Lc0/d;

.field public f:Z

.field public g:Landroidx/compose/ui/node/a;

.field public h:LJ0/q;

.field public i:Z

.field public j:Lz0/x;

.field public final k:LP7/c;

.field public l:LH0/b;

.field public m:LH0/k;

.field public n:Landroidx/compose/ui/platform/q;

.field public o:LB0/x;

.field public p:LB0/x;

.field public q:Z

.field public final r:LB0/M;

.field public final s:LB0/G;

.field public t:Lz0/t;

.field public final u:Z

.field public v:Lm0/m;

.field public w:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LB0/u;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/compose/ui/node/a;->x:LB0/u;

    new-instance v0, LB0/t;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/compose/ui/node/a;->y:LB0/t;

    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 2

    const/4 p2, 0x1

    and-int/2addr p1, p2

    if-eqz p1, :cond_0

    const/4 p3, 0x0

    :cond_0
    sget-object p1, LC0/f;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Landroidx/compose/ui/node/a;->a:Z

    new-instance p1, Lo3/c;

    new-instance p2, Lc0/d;

    const/16 p3, 0x10

    new-array v0, p3, [Landroidx/compose/ui/node/a;

    invoke-direct {p2, v0}, Lc0/d;-><init>([Ljava/lang/Object;)V

    new-instance v0, LA4/a;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, LA4/a;-><init>(ILjava/lang/Object;)V

    invoke-direct {p1, p2, v0}, Lo3/c;-><init>(Ljava/lang/Object;Ljava/io/Serializable;)V

    iput-object p1, p0, Landroidx/compose/ui/node/a;->d:Lo3/c;

    new-instance p1, Lc0/d;

    new-array p2, p3, [Landroidx/compose/ui/node/a;

    invoke-direct {p1, p2}, Lc0/d;-><init>([Ljava/lang/Object;)V

    const/4 p1, 0x1

    sget-object p2, Landroidx/compose/ui/node/a;->x:LB0/u;

    iput-object p2, p0, Landroidx/compose/ui/node/a;->j:Lz0/x;

    new-instance p2, LP7/c;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, LP7/c;-><init>(I)V

    iput-object p2, p0, Landroidx/compose/ui/node/a;->k:LP7/c;

    sget-object p2, LB0/d;->a:LH0/c;

    iput-object p2, p0, Landroidx/compose/ui/node/a;->l:LH0/b;

    sget-object p2, LH0/k;->Ltr:LH0/k;

    iput-object p2, p0, Landroidx/compose/ui/node/a;->m:LH0/k;

    sget-object p2, Landroidx/compose/ui/node/a;->y:LB0/t;

    iput-object p2, p0, Landroidx/compose/ui/node/a;->n:Landroidx/compose/ui/platform/q;

    sget-object p2, La0/w;->T:La0/v;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, LB0/x;->NotUsed:LB0/x;

    iput-object p2, p0, Landroidx/compose/ui/node/a;->o:LB0/x;

    iput-object p2, p0, Landroidx/compose/ui/node/a;->p:LB0/x;

    new-instance p2, LB0/M;

    invoke-direct {p2, p0}, LB0/M;-><init>(Landroidx/compose/ui/node/a;)V

    iput-object p2, p0, Landroidx/compose/ui/node/a;->r:LB0/M;

    new-instance p2, LB0/G;

    invoke-direct {p2, p0}, LB0/G;-><init>(Landroidx/compose/ui/node/a;)V

    iput-object p2, p0, Landroidx/compose/ui/node/a;->s:LB0/G;

    iput-boolean p1, p0, Landroidx/compose/ui/node/a;->u:Z

    sget-object p1, Lm0/j;->a:Lm0/j;

    iput-object p1, p0, Landroidx/compose/ui/node/a;->v:Lm0/m;

    return-void
.end method

.method public static v(Landroidx/compose/ui/node/a;ZI)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/node/a;->b:Landroidx/compose/ui/node/a;

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Lookahead measure cannot be requested on a node that is not a part of theLookaheadScope"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static w(Landroidx/compose/ui/node/a;)V
    .locals 3

    iget-object v0, p0, Landroidx/compose/ui/node/a;->s:LB0/G;

    iget-object v0, v0, LB0/G;->c:LB0/v;

    sget-object v1, LB0/y;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    iget-object p0, p0, Landroidx/compose/ui/node/a;->s:LB0/G;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean p0, p0, LB0/G;->f:Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected state "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, LB0/G;->c:LB0/v;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final A(Lz0/x;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/a;->j:Lz0/x;

    invoke-static {v0, p1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Landroidx/compose/ui/node/a;->j:Lz0/x;

    iget-object v0, p0, Landroidx/compose/ui/node/a;->k:LP7/c;

    iget-object v0, v0, LP7/c;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/compose/ui/node/a;->o()V

    :cond_0
    return-void
.end method

.method public final B(Lm0/m;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Landroidx/compose/ui/node/a;->a:Z

    if-eqz v2, :cond_1

    iget-object v2, v0, Landroidx/compose/ui/node/a;->v:Lm0/m;

    sget-object v3, Lm0/j;->a:Lm0/j;

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Modifiers are not supported on virtual LayoutNodes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-boolean v2, v0, Landroidx/compose/ui/node/a;->w:Z

    if-nez v2, :cond_2c

    iput-object v1, v0, Landroidx/compose/ui/node/a;->v:Lm0/m;

    iget-object v2, v0, Landroidx/compose/ui/node/a;->r:LB0/M;

    iget-object v3, v2, LB0/M;->f:Ljava/lang/Object;

    check-cast v3, Lm0/l;

    sget-object v7, Landroidx/compose/ui/node/b;->a:LB0/N;

    if-eq v3, v7, :cond_2b

    iput-object v7, v3, Lm0/l;->e:Lm0/l;

    iput-object v3, v7, Lm0/l;->f:Lm0/l;

    iget-object v3, v2, LB0/M;->g:Ljava/lang/Object;

    move-object v9, v3

    check-cast v9, Lc0/d;

    if-eqz v9, :cond_2

    iget v4, v9, Lc0/d;->c:I

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    iget-object v5, v2, LB0/M;->h:Ljava/lang/Object;

    check-cast v5, Lc0/d;

    const/16 v6, 0x10

    if-nez v5, :cond_3

    new-instance v5, Lc0/d;

    new-array v8, v6, [Lm0/k;

    invoke-direct {v5, v8}, Lc0/d;-><init>([Ljava/lang/Object;)V

    :cond_3
    move-object v10, v5

    iget v5, v10, Lc0/d;->c:I

    if-ge v5, v6, :cond_4

    move v5, v6

    :cond_4
    new-instance v8, Lc0/d;

    new-array v5, v5, [Lm0/m;

    invoke-direct {v8, v5}, Lc0/d;-><init>([Ljava/lang/Object;)V

    invoke-virtual {v8, v1}, Lc0/d;->c(Ljava/lang/Object;)V

    const/4 v1, 0x0

    move-object v5, v1

    :goto_2
    invoke-virtual {v8}, Lc0/d;->m()Z

    move-result v11

    const/4 v12, 0x1

    if-eqz v11, :cond_8

    iget v11, v8, Lc0/d;->c:I

    sub-int/2addr v11, v12

    invoke-virtual {v8, v11}, Lc0/d;->n(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lm0/m;

    instance-of v12, v11, Lm0/f;

    if-eqz v12, :cond_5

    check-cast v11, Lm0/f;

    iget-object v12, v11, Lm0/f;->b:Lm0/m;

    invoke-virtual {v8, v12}, Lc0/d;->c(Ljava/lang/Object;)V

    iget-object v11, v11, Lm0/f;->a:Lm0/m;

    invoke-virtual {v8, v11}, Lc0/d;->c(Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    instance-of v12, v11, Lm0/k;

    if-eqz v12, :cond_6

    invoke-virtual {v10, v11}, Lc0/d;->c(Ljava/lang/Object;)V

    goto :goto_2

    :cond_6
    if-nez v5, :cond_7

    new-instance v5, LB0/a;

    const/4 v12, 0x1

    invoke-direct {v5, v12, v10}, LB0/a;-><init>(ILjava/lang/Object;)V

    :cond_7
    move-object v12, v5

    invoke-interface {v11, v5}, Lm0/m;->e(Lsb/k;)Z

    move-object v5, v12

    goto :goto_2

    :cond_8
    iget v5, v10, Lc0/d;->c:I

    iget-object v8, v2, LB0/M;->e:Ljava/lang/Object;

    move-object v11, v8

    check-cast v11, LB0/V;

    iget-object v8, v2, LB0/M;->c:Ljava/lang/Object;

    move-object v13, v8

    check-cast v13, LB0/m;

    const-string v8, "expected prior modifier list to be non-empty"

    iget-object v14, v2, LB0/M;->b:Ljava/lang/Object;

    check-cast v14, Landroidx/compose/ui/node/a;

    if-ne v5, v4, :cond_10

    iget-object v5, v7, Lm0/l;->f:Lm0/l;

    move-object v6, v5

    const/4 v5, 0x0

    :goto_3
    if-eqz v6, :cond_c

    if-ge v5, v4, :cond_c

    if-eqz v9, :cond_b

    iget-object v7, v9, Lc0/d;->a:[Ljava/lang/Object;

    aget-object v7, v7, v5

    check-cast v7, Lm0/k;

    iget-object v15, v10, Lc0/d;->a:[Ljava/lang/Object;

    aget-object v15, v15, v5

    check-cast v15, Lm0/k;

    invoke-static {v7, v15}, Landroidx/compose/ui/node/b;->a(Lm0/k;Lm0/k;)I

    move-result v3

    if-eqz v3, :cond_a

    if-eq v3, v12, :cond_9

    goto :goto_4

    :cond_9
    invoke-static {v7, v15, v6}, LB0/M;->p(Lm0/k;Lm0/k;Lm0/l;)V

    :goto_4
    iget-object v6, v6, Lm0/l;->f:Lm0/l;

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_a
    iget-object v3, v6, Lm0/l;->e:Lm0/l;

    move-object v7, v3

    goto :goto_5

    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    move-object v7, v6

    :goto_5
    if-ge v5, v4, :cond_15

    if-eqz v9, :cond_f

    if-eqz v7, :cond_e

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v8, 0x0

    move-object v3, v2

    move v4, v5

    move-object v5, v9

    move-object v6, v10

    invoke-virtual/range {v3 .. v8}, LB0/M;->o(ILc0/d;Lc0/d;Lm0/l;Z)V

    :cond_d
    :goto_6
    move v3, v12

    goto/16 :goto_b

    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "structuralUpdate requires a non-null tail"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v4, :cond_12

    const/4 v3, 0x0

    :goto_7
    iget v4, v10, Lc0/d;->c:I

    if-ge v3, v4, :cond_11

    iget-object v4, v10, Lc0/d;->a:[Ljava/lang/Object;

    aget-object v4, v4, v3

    check-cast v4, Lm0/k;

    invoke-static {v4, v7}, LB0/M;->e(Lm0/k;Lm0/l;)Lm0/l;

    move-result-object v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_11
    iget-object v3, v11, Lm0/l;->e:Lm0/l;

    const/16 v16, 0x0

    :goto_8
    if-eqz v3, :cond_d

    sget-object v4, Landroidx/compose/ui/node/b;->a:LB0/N;

    if-eq v3, v4, :cond_d

    iget v4, v3, Lm0/l;->c:I

    or-int v4, v16, v4

    iput v4, v3, Lm0/l;->d:I

    iget-object v3, v3, Lm0/l;->e:Lm0/l;

    move/from16 v16, v4

    goto :goto_8

    :cond_12
    iget v3, v10, Lc0/d;->c:I

    if-nez v3, :cond_17

    if-eqz v9, :cond_16

    iget-object v3, v7, Lm0/l;->f:Lm0/l;

    const/4 v4, 0x0

    :goto_9
    if-eqz v3, :cond_13

    iget v5, v9, Lc0/d;->c:I

    if-ge v4, v5, :cond_13

    invoke-static {v3}, LB0/M;->f(Lm0/l;)Lm0/l;

    move-result-object v3

    iget-object v3, v3, Lm0/l;->f:Lm0/l;

    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_13
    invoke-virtual {v14}, Landroidx/compose/ui/node/a;->j()Landroidx/compose/ui/node/a;

    move-result-object v3

    if-eqz v3, :cond_14

    iget-object v3, v3, Landroidx/compose/ui/node/a;->r:LB0/M;

    iget-object v3, v3, LB0/M;->c:Ljava/lang/Object;

    check-cast v3, LB0/m;

    goto :goto_a

    :cond_14
    move-object v3, v1

    :goto_a
    iput-object v3, v13, LB0/O;->k:LB0/O;

    iput-object v13, v2, LB0/M;->d:Ljava/lang/Object;

    :cond_15
    const/4 v3, 0x0

    goto :goto_b

    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    if-nez v9, :cond_18

    new-instance v9, Lc0/d;

    new-array v3, v6, [Lm0/k;

    invoke-direct {v9, v3}, Lc0/d;-><init>([Ljava/lang/Object;)V

    :cond_18
    const/4 v4, 0x0

    const/4 v8, 0x0

    move-object v3, v2

    move-object v5, v9

    move-object v6, v10

    invoke-virtual/range {v3 .. v8}, LB0/M;->o(ILc0/d;Lc0/d;Lm0/l;Z)V

    goto/16 :goto_6

    :goto_b
    iput-object v10, v2, LB0/M;->g:Ljava/lang/Object;

    if-eqz v9, :cond_19

    invoke-virtual {v9}, Lc0/d;->g()V

    goto :goto_c

    :cond_19
    move-object v9, v1

    :goto_c
    iput-object v9, v2, LB0/M;->h:Ljava/lang/Object;

    sget-object v4, Landroidx/compose/ui/node/b;->a:LB0/N;

    iget-object v5, v4, Lm0/l;->f:Lm0/l;

    if-nez v5, :cond_1a

    move-object v5, v11

    :cond_1a
    iput-object v1, v5, Lm0/l;->e:Lm0/l;

    iput-object v1, v4, Lm0/l;->f:Lm0/l;

    const/4 v6, -0x1

    iput v6, v4, Lm0/l;->d:I

    iput-object v1, v4, Lm0/l;->g:LB0/O;

    if-eq v5, v4, :cond_2a

    iput-object v5, v2, LB0/M;->f:Ljava/lang/Object;

    if-eqz v3, :cond_20

    iget-object v3, v11, Lm0/l;->e:Lm0/l;

    :goto_d
    if-eqz v3, :cond_1e

    iget v4, v3, Lm0/l;->c:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1b

    instance-of v4, v3, LB0/o;

    if-eqz v4, :cond_1b

    move-object v4, v3

    check-cast v4, LB0/o;

    goto :goto_e

    :cond_1b
    move-object v4, v1

    :goto_e
    if-eqz v4, :cond_1d

    iget-object v5, v3, Lm0/l;->g:LB0/O;

    if-eqz v5, :cond_1c

    check-cast v5, LB0/q;

    iput-object v4, v5, LB0/q;->v:LB0/o;

    goto :goto_f

    :cond_1c
    new-instance v5, LB0/q;

    invoke-direct {v5, v14, v4}, LB0/q;-><init>(Landroidx/compose/ui/node/a;LB0/o;)V

    iput-object v5, v3, Lm0/l;->g:LB0/O;

    :goto_f
    iput-object v5, v13, LB0/O;->k:LB0/O;

    iput-object v13, v5, LB0/O;->j:LB0/O;

    move-object v13, v5

    goto :goto_10

    :cond_1d
    iput-object v13, v3, Lm0/l;->g:LB0/O;

    :goto_10
    iget-object v3, v3, Lm0/l;->e:Lm0/l;

    goto :goto_d

    :cond_1e
    invoke-virtual {v14}, Landroidx/compose/ui/node/a;->j()Landroidx/compose/ui/node/a;

    move-result-object v3

    if-eqz v3, :cond_1f

    iget-object v1, v3, Landroidx/compose/ui/node/a;->r:LB0/M;

    iget-object v1, v1, LB0/M;->c:Ljava/lang/Object;

    check-cast v1, LB0/m;

    :cond_1f
    iput-object v1, v13, LB0/O;->k:LB0/O;

    iput-object v13, v2, LB0/M;->d:Ljava/lang/Object;

    :cond_20
    iget-object v1, v0, Landroidx/compose/ui/node/a;->s:LB0/G;

    iget-object v3, v1, LB0/G;->m:LB0/F;

    iget-object v4, v3, LB0/F;->k:LU/w;

    iget-object v5, v1, LB0/G;->a:Landroidx/compose/ui/node/a;

    const/4 v6, 0x0

    iget-object v7, v3, LB0/F;->s:LB0/G;

    if-nez v4, :cond_21

    invoke-virtual {v7}, LB0/G;->a()LB0/O;

    move-result-object v4

    invoke-virtual {v4}, LB0/O;->e()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_21

    goto :goto_11

    :cond_21
    iget-boolean v4, v3, LB0/F;->j:Z

    if-nez v4, :cond_22

    goto :goto_11

    :cond_22
    iput-boolean v6, v3, LB0/F;->j:Z

    invoke-virtual {v7}, LB0/G;->a()LB0/O;

    move-result-object v4

    invoke-virtual {v4}, LB0/O;->e()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LU/w;

    iput-object v4, v3, LB0/F;->k:LU/w;

    invoke-virtual {v5}, Landroidx/compose/ui/node/a;->j()Landroidx/compose/ui/node/a;

    :goto_11
    iget-object v1, v1, LB0/G;->n:LB0/C;

    if-eqz v1, :cond_26

    iget-object v3, v1, LB0/C;->q:LU/w;

    iget-object v4, v1, LB0/C;->r:LB0/G;

    if-nez v3, :cond_23

    invoke-virtual {v4}, LB0/G;->a()LB0/O;

    move-result-object v3

    invoke-virtual {v3}, LB0/O;->G()LB0/J;

    move-result-object v3

    invoke-static {v3}, Ltb/k;->c(Ljava/lang/Object;)V

    iget-object v3, v3, LB0/J;->i:LB0/O;

    invoke-virtual {v3}, LB0/O;->e()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_23

    goto :goto_12

    :cond_23
    iget-boolean v3, v1, LB0/C;->p:Z

    if-nez v3, :cond_24

    goto :goto_12

    :cond_24
    iput-boolean v6, v1, LB0/C;->p:Z

    invoke-virtual {v4}, LB0/G;->a()LB0/O;

    move-result-object v3

    invoke-virtual {v3}, LB0/O;->G()LB0/J;

    move-result-object v3

    invoke-static {v3}, Ltb/k;->c(Ljava/lang/Object;)V

    iget-object v3, v3, LB0/J;->i:LB0/O;

    invoke-virtual {v3}, LB0/O;->e()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LU/w;

    iput-object v3, v1, LB0/C;->q:LU/w;

    invoke-static {v5}, LB0/d;->k(Landroidx/compose/ui/node/a;)Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-virtual {v5}, Landroidx/compose/ui/node/a;->j()Landroidx/compose/ui/node/a;

    goto :goto_12

    :cond_25
    invoke-virtual {v5}, Landroidx/compose/ui/node/a;->j()Landroidx/compose/ui/node/a;

    move-result-object v1

    if-eqz v1, :cond_26

    const/4 v3, 0x3

    invoke-static {v1, v6, v3}, Landroidx/compose/ui/node/a;->v(Landroidx/compose/ui/node/a;ZI)V

    :cond_26
    :goto_12
    const/16 v1, 0x200

    invoke-virtual {v2, v1}, LB0/M;->k(I)Z

    move-result v1

    if-eqz v1, :cond_29

    iget-object v1, v0, Landroidx/compose/ui/node/a;->b:Landroidx/compose/ui/node/a;

    if-nez v1, :cond_29

    iget-object v1, v0, Landroidx/compose/ui/node/a;->b:Landroidx/compose/ui/node/a;

    invoke-static {v0, v1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    iput-object v0, v0, Landroidx/compose/ui/node/a;->b:Landroidx/compose/ui/node/a;

    iget-object v1, v0, Landroidx/compose/ui/node/a;->s:LB0/G;

    iget-object v2, v1, LB0/G;->n:LB0/C;

    if-nez v2, :cond_27

    new-instance v2, LB0/C;

    invoke-direct {v2, v1}, LB0/C;-><init>(LB0/G;)V

    iput-object v2, v1, LB0/G;->n:LB0/C;

    :cond_27
    iget-object v1, v0, Landroidx/compose/ui/node/a;->r:LB0/M;

    iget-object v2, v1, LB0/M;->d:Ljava/lang/Object;

    check-cast v2, LB0/O;

    iget-object v1, v1, LB0/M;->c:Ljava/lang/Object;

    check-cast v1, LB0/m;

    iget-object v1, v1, LB0/O;->j:LB0/O;

    :goto_13
    invoke-static {v2, v1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    if-eqz v2, :cond_28

    invoke-virtual {v2}, LB0/O;->F()V

    iget-object v2, v2, LB0/O;->j:LB0/O;

    goto :goto_13

    :cond_28
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/node/a;->o()V

    :cond_29
    return-void

    :cond_2a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "trimChain did not update the head"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "padChain called on already padded chain"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "modifier is updated when deactivated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final C(Landroidx/compose/ui/platform/q;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/a;->n:Landroidx/compose/ui/platform/q;

    invoke-static {v0, p1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iput-object p1, p0, Landroidx/compose/ui/node/a;->n:Landroidx/compose/ui/platform/q;

    iget-object p0, p0, Landroidx/compose/ui/node/a;->r:LB0/M;

    iget-object p0, p0, LB0/M;->f:Ljava/lang/Object;

    check-cast p0, Lm0/l;

    iget p1, p0, Lm0/l;->d:I

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_2

    :goto_0
    if-eqz p0, :cond_2

    iget p1, p0, Lm0/l;->c:I

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_1

    move-object p1, p0

    :goto_1
    if-eqz p1, :cond_1

    instance-of v0, p1, LB0/S;

    if-eqz v0, :cond_0

    check-cast p1, LB0/S;

    invoke-interface {p1}, LB0/S;->r()V

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    iget p1, p0, Lm0/l;->d:I

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_2

    iget-object p0, p0, Lm0/l;->f:Lm0/l;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final D()V
    .locals 10

    iget v0, p0, Landroidx/compose/ui/node/a;->c:I

    if-lez v0, :cond_6

    iget-boolean v0, p0, Landroidx/compose/ui/node/a;->f:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/ui/node/a;->f:Z

    iget-object v1, p0, Landroidx/compose/ui/node/a;->e:Lc0/d;

    if-nez v1, :cond_0

    new-instance v1, Lc0/d;

    const/16 v2, 0x10

    new-array v2, v2, [Landroidx/compose/ui/node/a;

    invoke-direct {v1, v2}, Lc0/d;-><init>([Ljava/lang/Object;)V

    iput-object v1, p0, Landroidx/compose/ui/node/a;->e:Lc0/d;

    :cond_0
    invoke-virtual {v1}, Lc0/d;->g()V

    iget-object v2, p0, Landroidx/compose/ui/node/a;->d:Lo3/c;

    iget-object v2, v2, Lo3/c;->a:Ljava/lang/Object;

    check-cast v2, Lc0/d;

    iget v3, v2, Lc0/d;->c:I

    if-lez v3, :cond_5

    iget-object v2, v2, Lc0/d;->a:[Ljava/lang/Object;

    :cond_1
    aget-object v4, v2, v0

    check-cast v4, Landroidx/compose/ui/node/a;

    iget-boolean v5, v4, Landroidx/compose/ui/node/a;->a:Z

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Landroidx/compose/ui/node/a;->l()Lc0/d;

    move-result-object v4

    iget v5, v1, Lc0/d;->c:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Lc0/d;->l()Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    iget v6, v1, Lc0/d;->c:I

    iget v7, v4, Lc0/d;->c:I

    add-int/2addr v6, v7

    invoke-virtual {v1, v6}, Lc0/d;->i(I)V

    iget-object v6, v1, Lc0/d;->a:[Ljava/lang/Object;

    iget v7, v1, Lc0/d;->c:I

    if-eq v5, v7, :cond_3

    iget v8, v4, Lc0/d;->c:I

    add-int/2addr v8, v5

    invoke-static {v8, v5, v7, v6, v6}, Lfb/l;->i(III[Ljava/lang/Object;[Ljava/lang/Object;)V

    :cond_3
    iget-object v7, v4, Lc0/d;->a:[Ljava/lang/Object;

    iget v8, v4, Lc0/d;->c:I

    const/4 v9, 0x0

    invoke-static {v5, v9, v8, v7, v6}, Lfb/l;->i(III[Ljava/lang/Object;[Ljava/lang/Object;)V

    iget v5, v1, Lc0/d;->c:I

    iget v4, v4, Lc0/d;->c:I

    add-int/2addr v5, v4

    iput v5, v1, Lc0/d;->c:I

    goto :goto_0

    :cond_4
    invoke-virtual {v1, v4}, Lc0/d;->c(Ljava/lang/Object;)V

    :goto_0
    add-int/lit8 v0, v0, 0x1

    if-lt v0, v3, :cond_1

    :cond_5
    iget-object p0, p0, Landroidx/compose/ui/node/a;->s:LB0/G;

    iget-object v0, p0, LB0/G;->m:LB0/F;

    const/4 v1, 0x1

    iput-boolean v1, v0, LB0/F;->o:Z

    iget-object p0, p0, LB0/G;->n:LB0/C;

    if-eqz p0, :cond_6

    iput-boolean v1, p0, LB0/C;->n:Z

    :cond_6
    return-void
.end method

.method public final a()V
    .locals 7

    iget-object v0, p0, Landroidx/compose/ui/node/a;->h:LJ0/q;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LJ0/i;->a()V

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/node/a;->t:Lz0/t;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lz0/t;->e(Z)V

    :cond_1
    iput-boolean v1, p0, Landroidx/compose/ui/node/a;->w:Z

    iget-object p0, p0, Landroidx/compose/ui/node/a;->r:LB0/M;

    iget-object v0, p0, LB0/M;->e:Ljava/lang/Object;

    check-cast v0, LB0/V;

    :goto_0
    if-eqz v0, :cond_4

    iget-boolean v1, v0, Lm0/l;->j:Z

    if-eqz v1, :cond_3

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lm0/l;->w()V

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "reset() called on an unattached node"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    iget-object v0, v0, Lm0/l;->e:Lm0/l;

    goto :goto_0

    :cond_4
    iget-object v0, p0, LB0/M;->g:Ljava/lang/Object;

    check-cast v0, Lc0/d;

    if-eqz v0, :cond_7

    iget v1, v0, Lc0/d;->c:I

    if-lez v1, :cond_7

    iget-object v2, v0, Lc0/d;->a:[Ljava/lang/Object;

    const/4 v3, 0x0

    :cond_5
    aget-object v4, v2, v3

    check-cast v4, Lm0/k;

    instance-of v5, v4, Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;

    if-eqz v5, :cond_6

    new-instance v5, Landroidx/compose/ui/node/ForceUpdateElement;

    check-cast v4, LB0/K;

    invoke-direct {v5, v4}, Landroidx/compose/ui/node/ForceUpdateElement;-><init>(LB0/K;)V

    iget-object v4, v0, Lc0/d;->a:[Ljava/lang/Object;

    aget-object v6, v4, v3

    aput-object v5, v4, v3

    :cond_6
    add-int/lit8 v3, v3, 0x1

    if-lt v3, v1, :cond_5

    :cond_7
    iget-object p0, p0, LB0/M;->e:Ljava/lang/Object;

    check-cast p0, LB0/V;

    move-object v0, p0

    :goto_2
    if-eqz v0, :cond_9

    iget-boolean v1, v0, Lm0/l;->j:Z

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lm0/l;->x()V

    :cond_8
    iget-object v0, v0, Lm0/l;->e:Lm0/l;

    goto :goto_2

    :cond_9
    :goto_3
    if-eqz p0, :cond_b

    iget-boolean v0, p0, Lm0/l;->j:Z

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lm0/l;->t()V

    :cond_a
    iget-object p0, p0, Lm0/l;->e:Lm0/l;

    goto :goto_3

    :cond_b
    return-void
.end method

.method public final b()V
    .locals 1

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "onReuse is only expected on attached node"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/node/a;->h:LJ0/q;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LJ0/i;->c()V

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/node/a;->t:Lz0/t;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lz0/t;->c()V

    :cond_1
    iget-object p0, p0, Landroidx/compose/ui/node/a;->r:LB0/M;

    iget-object v0, p0, LB0/M;->d:Ljava/lang/Object;

    check-cast v0, LB0/O;

    iget-object p0, p0, LB0/M;->c:Ljava/lang/Object;

    check-cast p0, LB0/m;

    iget-object p0, p0, LB0/O;->j:LB0/O;

    :goto_0
    invoke-static {v0, p0}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    iget-object v1, v0, LB0/O;->t:LA4/a;

    invoke-virtual {v1}, LA4/a;->invoke()Ljava/lang/Object;

    iget-object v0, v0, LB0/O;->j:LB0/O;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final d()V
    .locals 5

    iget-object v0, p0, Landroidx/compose/ui/node/a;->o:LB0/x;

    iput-object v0, p0, Landroidx/compose/ui/node/a;->p:LB0/x;

    sget-object v0, LB0/x;->NotUsed:LB0/x;

    iput-object v0, p0, Landroidx/compose/ui/node/a;->o:LB0/x;

    invoke-virtual {p0}, Landroidx/compose/ui/node/a;->l()Lc0/d;

    move-result-object p0

    iget v0, p0, Lc0/d;->c:I

    if-lez v0, :cond_2

    iget-object p0, p0, Lc0/d;->a:[Ljava/lang/Object;

    const/4 v1, 0x0

    :cond_0
    aget-object v2, p0, v1

    check-cast v2, Landroidx/compose/ui/node/a;

    iget-object v3, v2, Landroidx/compose/ui/node/a;->o:LB0/x;

    sget-object v4, LB0/x;->NotUsed:LB0/x;

    if-eq v3, v4, :cond_1

    invoke-virtual {v2}, Landroidx/compose/ui/node/a;->d()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    if-lt v1, v0, :cond_0

    :cond_2
    return-void
.end method

.method public final e(I)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_0

    const-string v3, "  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v2, "|-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/compose/ui/node/a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/compose/ui/node/a;->l()Lc0/d;

    move-result-object p0

    iget v2, p0, Lc0/d;->c:I

    if-lez v2, :cond_2

    iget-object p0, p0, Lc0/d;->a:[Ljava/lang/Object;

    move v3, v1

    :cond_1
    aget-object v4, p0, v3

    check-cast v4, Landroidx/compose/ui/node/a;

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v4, v5}, Landroidx/compose/ui/node/a;->e(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    if-lt v3, v2, :cond_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    if-nez p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string p1, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {p0, p1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    return-object p0
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/node/a;->b:Landroidx/compose/ui/node/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroidx/compose/ui/node/a;->v(Landroidx/compose/ui/node/a;ZI)V

    :cond_0
    iget-object p0, p0, Landroidx/compose/ui/node/a;->s:LB0/G;

    iget-object p0, p0, LB0/G;->m:LB0/F;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final g()Ljava/util/List;
    .locals 9

    iget-object p0, p0, Landroidx/compose/ui/node/a;->s:LB0/G;

    iget-object p0, p0, LB0/G;->n:LB0/C;

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    iget-object v0, p0, LB0/C;->r:LB0/G;

    iget-object v1, v0, LB0/G;->a:Landroidx/compose/ui/node/a;

    invoke-virtual {v1}, Landroidx/compose/ui/node/a;->h()Ljava/util/List;

    iget-boolean v1, p0, LB0/C;->n:Z

    iget-object v2, p0, LB0/C;->m:Lc0/d;

    if-nez v1, :cond_0

    invoke-virtual {v2}, Lc0/d;->f()Ljava/util/List;

    move-result-object p0

    goto :goto_1

    :cond_0
    iget-object v0, v0, LB0/G;->a:Landroidx/compose/ui/node/a;

    invoke-virtual {v0}, Landroidx/compose/ui/node/a;->l()Lc0/d;

    move-result-object v1

    iget v3, v1, Lc0/d;->c:I

    const/4 v4, 0x0

    if-lez v3, :cond_3

    iget-object v1, v1, Lc0/d;->a:[Ljava/lang/Object;

    move v5, v4

    :cond_1
    aget-object v6, v1, v5

    check-cast v6, Landroidx/compose/ui/node/a;

    iget v7, v2, Lc0/d;->c:I

    if-gt v7, v5, :cond_2

    iget-object v6, v6, Landroidx/compose/ui/node/a;->s:LB0/G;

    iget-object v6, v6, LB0/G;->n:LB0/C;

    invoke-static {v6}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v2, v6}, Lc0/d;->c(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v6, v6, Landroidx/compose/ui/node/a;->s:LB0/G;

    iget-object v6, v6, LB0/G;->n:LB0/C;

    invoke-static {v6}, Ltb/k;->c(Ljava/lang/Object;)V

    iget-object v7, v2, Lc0/d;->a:[Ljava/lang/Object;

    aget-object v8, v7, v5

    aput-object v6, v7, v5

    :goto_0
    add-int/lit8 v5, v5, 0x1

    if-lt v5, v3, :cond_1

    :cond_3
    invoke-virtual {v0}, Landroidx/compose/ui/node/a;->h()Ljava/util/List;

    move-result-object v0

    check-cast v0, Lc0/a;

    iget-object v0, v0, Lc0/a;->a:Lc0/d;

    iget v0, v0, Lc0/d;->c:I

    iget v1, v2, Lc0/d;->c:I

    invoke-virtual {v2, v0, v1}, Lc0/d;->p(II)V

    iput-boolean v4, p0, LB0/C;->n:Z

    invoke-virtual {v2}, Lc0/d;->f()Ljava/util/List;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public final h()Ljava/util/List;
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/ui/node/a;->l()Lc0/d;

    move-result-object p0

    invoke-virtual {p0}, Lc0/d;->f()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final i()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/node/a;->d:Lo3/c;

    iget-object p0, p0, Lo3/c;->a:Ljava/lang/Object;

    check-cast p0, Lc0/d;

    invoke-virtual {p0}, Lc0/d;->f()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final j()Landroidx/compose/ui/node/a;
    .locals 2

    iget-object p0, p0, Landroidx/compose/ui/node/a;->g:Landroidx/compose/ui/node/a;

    :goto_0
    if-eqz p0, :cond_0

    iget-boolean v0, p0, Landroidx/compose/ui/node/a;->a:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Landroidx/compose/ui/node/a;->g:Landroidx/compose/ui/node/a;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final k()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/node/a;->s:LB0/G;

    iget-object p0, p0, LB0/G;->m:LB0/F;

    iget p0, p0, LB0/F;->g:I

    return p0
.end method

.method public final l()Lc0/d;
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/ui/node/a;->D()V

    iget v0, p0, Landroidx/compose/ui/node/a;->c:I

    if-nez v0, :cond_0

    iget-object p0, p0, Landroidx/compose/ui/node/a;->d:Lo3/c;

    iget-object p0, p0, Lo3/c;->a:Ljava/lang/Object;

    check-cast p0, Lc0/d;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/compose/ui/node/a;->e:Lc0/d;

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    :goto_0
    return-object p0
.end method

.method public final m(ILandroidx/compose/ui/node/a;)V
    .locals 2

    iget-object v0, p2, Landroidx/compose/ui/node/a;->g:Landroidx/compose/ui/node/a;

    if-nez v0, :cond_2

    iput-object p0, p2, Landroidx/compose/ui/node/a;->g:Landroidx/compose/ui/node/a;

    iget-object v0, p0, Landroidx/compose/ui/node/a;->d:Lo3/c;

    iget-object v1, v0, Lo3/c;->a:Ljava/lang/Object;

    check-cast v1, Lc0/d;

    invoke-virtual {v1, p1, p2}, Lc0/d;->b(ILjava/lang/Object;)V

    iget-object p1, v0, Lo3/c;->b:Ljava/lang/Object;

    check-cast p1, LA4/a;

    invoke-virtual {p1}, LA4/a;->invoke()Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/compose/ui/node/a;->s()V

    iget-boolean p1, p2, Landroidx/compose/ui/node/a;->a:Z

    if-eqz p1, :cond_0

    iget p1, p0, Landroidx/compose/ui/node/a;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/compose/ui/node/a;->c:I

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/node/a;->p()V

    iget-object p1, p2, Landroidx/compose/ui/node/a;->s:LB0/G;

    iget p1, p1, LB0/G;->l:I

    if-lez p1, :cond_1

    iget-object p0, p0, Landroidx/compose/ui/node/a;->s:LB0/G;

    iget p1, p0, LB0/G;->l:I

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, LB0/G;->b(I)V

    :cond_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Cannot insert "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " because it already has a parent. This tree: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/a;->e(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " Other tree: "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p2, Landroidx/compose/ui/node/a;->g:Landroidx/compose/ui/node/a;

    if-eqz p0, :cond_3

    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/a;->e(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final n()V
    .locals 3

    iget-boolean v0, p0, Landroidx/compose/ui/node/a;->u:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/compose/ui/node/a;->r:LB0/M;

    iget-object v1, v0, LB0/M;->c:Ljava/lang/Object;

    check-cast v1, LB0/m;

    iget-object v0, v0, LB0/M;->d:Ljava/lang/Object;

    check-cast v0, LB0/O;

    iget-object v0, v0, LB0/O;->k:LB0/O;

    :goto_0
    invoke-static {v1, v0}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v1, :cond_0

    iget-object v1, v1, LB0/O;->k:LB0/O;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/compose/ui/node/a;->j()Landroidx/compose/ui/node/a;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroidx/compose/ui/node/a;->n()V

    :cond_2
    return-void
.end method

.method public final o()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/node/a;->b:Landroidx/compose/ui/node/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroidx/compose/ui/node/a;->v(Landroidx/compose/ui/node/a;ZI)V

    :cond_0
    return-void
.end method

.method public final p()V
    .locals 1

    iget v0, p0, Landroidx/compose/ui/node/a;->c:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/node/a;->f:Z

    :cond_0
    iget-boolean v0, p0, Landroidx/compose/ui/node/a;->a:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroidx/compose/ui/node/a;->g:Landroidx/compose/ui/node/a;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/compose/ui/node/a;->p()V

    :cond_1
    return-void
.end method

.method public final q(III)V
    .locals 5

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_3

    if-le p1, p2, :cond_1

    add-int v1, p1, v0

    goto :goto_1

    :cond_1
    move v1, p1

    :goto_1
    if-le p1, p2, :cond_2

    add-int v2, p2, v0

    goto :goto_2

    :cond_2
    add-int v2, p2, p3

    add-int/lit8 v2, v2, -0x2

    :goto_2
    iget-object v3, p0, Landroidx/compose/ui/node/a;->d:Lo3/c;

    iget-object v4, v3, Lo3/c;->a:Ljava/lang/Object;

    check-cast v4, Lc0/d;

    invoke-virtual {v4, v1}, Lc0/d;->n(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v4, v3, Lo3/c;->b:Ljava/lang/Object;

    check-cast v4, LA4/a;

    invoke-virtual {v4}, LA4/a;->invoke()Ljava/lang/Object;

    check-cast v1, Landroidx/compose/ui/node/a;

    iget-object v3, v3, Lo3/c;->a:Ljava/lang/Object;

    check-cast v3, Lc0/d;

    invoke-virtual {v3, v2, v1}, Lc0/d;->b(ILjava/lang/Object;)V

    invoke-virtual {v4}, LA4/a;->invoke()Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroidx/compose/ui/node/a;->s()V

    invoke-virtual {p0}, Landroidx/compose/ui/node/a;->p()V

    invoke-virtual {p0}, Landroidx/compose/ui/node/a;->o()V

    return-void
.end method

.method public final r(Landroidx/compose/ui/node/a;)V
    .locals 4

    iget-object v0, p1, Landroidx/compose/ui/node/a;->s:LB0/G;

    iget v0, v0, LB0/G;->l:I

    if-lez v0, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/node/a;->s:LB0/G;

    iget v1, v0, LB0/G;->l:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, LB0/G;->b(I)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/compose/ui/node/a;->g:Landroidx/compose/ui/node/a;

    iget-object v1, p1, Landroidx/compose/ui/node/a;->r:LB0/M;

    iget-object v1, v1, LB0/M;->d:Ljava/lang/Object;

    check-cast v1, LB0/O;

    iput-object v0, v1, LB0/O;->k:LB0/O;

    iget-boolean v1, p1, Landroidx/compose/ui/node/a;->a:Z

    if-eqz v1, :cond_2

    iget v1, p0, Landroidx/compose/ui/node/a;->c:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroidx/compose/ui/node/a;->c:I

    iget-object p1, p1, Landroidx/compose/ui/node/a;->d:Lo3/c;

    iget-object p1, p1, Lo3/c;->a:Ljava/lang/Object;

    check-cast p1, Lc0/d;

    iget v1, p1, Lc0/d;->c:I

    if-lez v1, :cond_2

    iget-object p1, p1, Lc0/d;->a:[Ljava/lang/Object;

    const/4 v2, 0x0

    :cond_1
    aget-object v3, p1, v2

    check-cast v3, Landroidx/compose/ui/node/a;

    iget-object v3, v3, Landroidx/compose/ui/node/a;->r:LB0/M;

    iget-object v3, v3, LB0/M;->d:Ljava/lang/Object;

    check-cast v3, LB0/O;

    iput-object v0, v3, LB0/O;->k:LB0/O;

    add-int/lit8 v2, v2, 0x1

    if-lt v2, v1, :cond_1

    :cond_2
    invoke-virtual {p0}, Landroidx/compose/ui/node/a;->p()V

    invoke-virtual {p0}, Landroidx/compose/ui/node/a;->s()V

    return-void
.end method

.method public final s()V
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/ui/node/a;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/node/a;->j()Landroidx/compose/ui/node/a;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/node/a;->s()V

    :cond_0
    return-void
.end method

.method public final t()V
    .locals 4

    iget-object v0, p0, Landroidx/compose/ui/node/a;->d:Lo3/c;

    iget-object v1, v0, Lo3/c;->a:Ljava/lang/Object;

    check-cast v1, Lc0/d;

    iget v1, v1, Lc0/d;->c:I

    add-int/lit8 v1, v1, -0x1

    :goto_0
    const/4 v2, -0x1

    iget-object v3, v0, Lo3/c;->a:Ljava/lang/Object;

    check-cast v3, Lc0/d;

    if-ge v2, v1, :cond_0

    iget-object v2, v3, Lc0/d;->a:[Ljava/lang/Object;

    aget-object v2, v2, v1

    check-cast v2, Landroidx/compose/ui/node/a;

    invoke-virtual {p0, v2}, Landroidx/compose/ui/node/a;->r(Landroidx/compose/ui/node/a;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lc0/d;->g()V

    iget-object p0, v0, Lo3/c;->b:Ljava/lang/Object;

    check-cast p0, LA4/a;

    invoke-virtual {p0}, LA4/a;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v3, "%07x"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " children: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/compose/ui/node/a;->h()Ljava/util/List;

    move-result-object v1

    check-cast v1, Lc0/a;

    iget-object v1, v1, Lc0/a;->a:Lc0/d;

    iget v1, v1, Lc0/d;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " measurePolicy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/compose/ui/node/a;->j:Lz0/x;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u(II)V
    .locals 2

    if-ltz p2, :cond_1

    add-int/2addr p2, p1

    add-int/lit8 p2, p2, -0x1

    if-gt p1, p2, :cond_0

    :goto_0
    iget-object v0, p0, Landroidx/compose/ui/node/a;->d:Lo3/c;

    iget-object v1, v0, Lo3/c;->a:Ljava/lang/Object;

    check-cast v1, Lc0/d;

    invoke-virtual {v1, p2}, Lc0/d;->n(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v0, v0, Lo3/c;->b:Ljava/lang/Object;

    check-cast v0, LA4/a;

    invoke-virtual {v0}, LA4/a;->invoke()Ljava/lang/Object;

    check-cast v1, Landroidx/compose/ui/node/a;

    invoke-virtual {p0, v1}, Landroidx/compose/ui/node/a;->r(Landroidx/compose/ui/node/a;)V

    if-eq p2, p1, :cond_0

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    const-string p0, "count ("

    const-string p1, ") must be greater than 0"

    invoke-static {p2, p0, p1}, Lt/b;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final x()V
    .locals 5

    invoke-virtual {p0}, Landroidx/compose/ui/node/a;->l()Lc0/d;

    move-result-object p0

    iget v0, p0, Lc0/d;->c:I

    if-lez v0, :cond_2

    iget-object p0, p0, Lc0/d;->a:[Ljava/lang/Object;

    const/4 v1, 0x0

    :cond_0
    aget-object v2, p0, v1

    check-cast v2, Landroidx/compose/ui/node/a;

    iget-object v3, v2, Landroidx/compose/ui/node/a;->p:LB0/x;

    iput-object v3, v2, Landroidx/compose/ui/node/a;->o:LB0/x;

    sget-object v4, LB0/x;->NotUsed:LB0/x;

    if-eq v3, v4, :cond_1

    invoke-virtual {v2}, Landroidx/compose/ui/node/a;->x()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    if-lt v1, v0, :cond_0

    :cond_2
    return-void
.end method

.method public final y(La0/w;)V
    .locals 3

    sget-object v0, Landroidx/compose/ui/platform/k;->a:La0/L0;

    check-cast p1, Li0/e;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0}, La0/d;->G(La0/e0;La0/g0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LH0/b;

    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/a;->z(LH0/b;)V

    sget-object v0, Landroidx/compose/ui/platform/k;->b:La0/L0;

    invoke-static {p1, v0}, La0/d;->G(La0/e0;La0/g0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LH0/k;

    iget-object v1, p0, Landroidx/compose/ui/node/a;->m:LH0/k;

    iget-object v2, p0, Landroidx/compose/ui/node/a;->r:LB0/M;

    if-eq v1, v0, :cond_2

    iput-object v0, p0, Landroidx/compose/ui/node/a;->m:LH0/k;

    invoke-virtual {p0}, Landroidx/compose/ui/node/a;->o()V

    invoke-virtual {p0}, Landroidx/compose/ui/node/a;->j()Landroidx/compose/ui/node/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/ui/node/a;->n()V

    :cond_0
    iget-object v0, v2, LB0/M;->d:Ljava/lang/Object;

    check-cast v0, LB0/O;

    :goto_0
    iget-object v1, v2, LB0/M;->c:Ljava/lang/Object;

    check-cast v1, LB0/m;

    if-eq v0, v1, :cond_1

    const-string v1, "null cannot be cast to non-null type androidx.compose.ui.node.LayoutModifierNodeCoordinator"

    invoke-static {v0, v1}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, LB0/q;

    iget-object v0, v0, LB0/O;->j:LB0/O;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_2
    sget-object v0, Landroidx/compose/ui/platform/k;->c:La0/L0;

    invoke-static {p1, v0}, La0/d;->G(La0/e0;La0/g0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/platform/q;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/a;->C(Landroidx/compose/ui/platform/q;)V

    iget-object p0, v2, LB0/M;->f:Ljava/lang/Object;

    check-cast p0, Lm0/l;

    iget p1, p0, Lm0/l;->d:I

    const v0, 0x8000

    and-int/2addr p1, v0

    if-eqz p1, :cond_5

    :goto_1
    if-eqz p0, :cond_5

    iget p1, p0, Lm0/l;->c:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_4

    move-object p1, p0

    :goto_2
    if-eqz p1, :cond_4

    instance-of v1, p1, Lq0/g;

    if-eqz v1, :cond_3

    check-cast p1, Lq0/g;

    check-cast p1, Lm0/l;

    iget-object p1, p1, Lm0/l;->a:Lm0/l;

    iget-boolean v1, p1, Lm0/l;->j:Z

    if-eqz v1, :cond_3

    invoke-static {p1}, LB0/d;->f(Lm0/l;)V

    :cond_3
    const/4 p1, 0x0

    goto :goto_2

    :cond_4
    iget p1, p0, Lm0/l;->d:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_5

    iget-object p0, p0, Lm0/l;->f:Lm0/l;

    goto :goto_1

    :cond_5
    return-void
.end method

.method public final z(LH0/b;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/a;->l:LH0/b;

    invoke-static {v0, p1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iput-object p1, p0, Landroidx/compose/ui/node/a;->l:LH0/b;

    invoke-virtual {p0}, Landroidx/compose/ui/node/a;->o()V

    invoke-virtual {p0}, Landroidx/compose/ui/node/a;->j()Landroidx/compose/ui/node/a;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/compose/ui/node/a;->n()V

    :cond_0
    iget-object p0, p0, Landroidx/compose/ui/node/a;->r:LB0/M;

    iget-object p1, p0, LB0/M;->d:Ljava/lang/Object;

    check-cast p1, LB0/O;

    :goto_0
    iget-object v0, p0, LB0/M;->c:Ljava/lang/Object;

    check-cast v0, LB0/m;

    if-eq p1, v0, :cond_1

    const-string v0, "null cannot be cast to non-null type androidx.compose.ui.node.LayoutModifierNodeCoordinator"

    invoke-static {p1, v0}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, LB0/q;

    iget-object p1, p1, LB0/O;->j:LB0/O;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, LB0/M;->f:Ljava/lang/Object;

    check-cast p0, Lm0/l;

    iget p1, p0, Lm0/l;->d:I

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_4

    :goto_1
    if-eqz p0, :cond_4

    iget p1, p0, Lm0/l;->c:I

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_3

    move-object p1, p0

    :goto_2
    if-eqz p1, :cond_3

    instance-of v0, p1, LB0/S;

    if-eqz v0, :cond_2

    check-cast p1, LB0/S;

    invoke-interface {p1}, LB0/S;->o()V

    :cond_2
    const/4 p1, 0x0

    goto :goto_2

    :cond_3
    iget p1, p0, Lm0/l;->d:I

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_4

    iget-object p0, p0, Lm0/l;->f:Lm0/l;

    goto :goto_1

    :cond_4
    return-void
.end method
