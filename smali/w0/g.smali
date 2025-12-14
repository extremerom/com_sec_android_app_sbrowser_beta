.class public final Lw0/g;
.super Lm0/l;
.source "SourceFile"

# interfaces
.implements LA0/e;
.implements Lw0/a;


# instance fields
.field public k:Lw0/a;

.field public l:Lw0/d;

.field public final m:LA0/h;


# direct methods
.method public constructor <init>(Lw0/a;Lw0/d;)V
    .locals 0

    invoke-direct {p0}, Lm0/l;-><init>()V

    iput-object p1, p0, Lw0/g;->k:Lw0/a;

    if-nez p2, :cond_0

    new-instance p2, Lw0/d;

    invoke-direct {p2}, Lw0/d;-><init>()V

    :cond_0
    iput-object p2, p0, Lw0/g;->l:Lw0/d;

    sget-object p1, Lw0/i;->a:LA0/g;

    new-instance p2, LA0/h;

    invoke-direct {p2, p1}, LA0/h;-><init>(LA0/g;)V

    iget-object p1, p2, LA0/h;->b:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    iput-object p2, p0, Lw0/g;->m:LA0/h;

    return-void
.end method


# virtual methods
.method public final A()V
    .locals 3

    iget-object v0, p0, Lw0/g;->l:Lw0/d;

    iput-object p0, v0, Lw0/d;->a:Lw0/g;

    new-instance v1, LA4/a;

    const/16 v2, 0x1b

    invoke-direct {v1, v2, p0}, LA4/a;-><init>(ILjava/lang/Object;)V

    iput-object v1, v0, Lw0/d;->b:Ltb/m;

    iget-object v1, p0, Lm0/l;->b:LUc/e;

    if-eqz v1, :cond_0

    iput-object v1, v0, Lw0/d;->c:LUc/e;

    return-void

    :cond_0
    invoke-static {p0}, LB0/d;->n(LB0/i;)LB0/P;

    const/4 p0, 0x0

    throw p0
.end method

.method public final a(JLib/c;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p3, Lw0/f;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lw0/f;

    iget v1, v0, Lw0/f;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lw0/f;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lw0/f;

    check-cast p3, Lkb/c;

    invoke-direct {v0, p0, p3}, Lw0/f;-><init>(Lw0/g;Lkb/c;)V

    :goto_0
    iget-object p3, v0, Lw0/f;->c:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, Lw0/f;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-wide p0, v0, Lw0/f;->b:J

    invoke-static {p3}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_4

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-wide p1, v0, Lw0/f;->b:J

    iget-object p0, v0, Lw0/f;->a:Lw0/g;

    invoke-static {p3}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p3}, LG5/A2;->f(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lw0/g;->z()Lw0/a;

    move-result-object p3

    if-eqz p3, :cond_5

    iput-object p0, v0, Lw0/f;->a:Lw0/g;

    iput-wide p1, v0, Lw0/f;->b:J

    iput v4, v0, Lw0/f;->e:I

    invoke-interface {p3, p1, p2, v0}, Lw0/a;->a(JLib/c;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    check-cast p3, LH0/o;

    iget-wide v4, p3, LH0/o;->a:J

    :goto_2
    move-wide v6, p1

    move-object p2, p0

    move-wide p0, v4

    move-wide v4, v6

    goto :goto_3

    :cond_5
    sget-wide v4, LH0/o;->b:J

    goto :goto_2

    :goto_3
    iget-object p2, p2, Lw0/g;->k:Lw0/a;

    invoke-static {v4, v5, p0, p1}, LH0/o;->d(JJ)J

    move-result-wide v4

    const/4 p3, 0x0

    iput-object p3, v0, Lw0/f;->a:Lw0/g;

    iput-wide p0, v0, Lw0/f;->b:J

    iput v3, v0, Lw0/f;->e:I

    invoke-interface {p2, v4, v5, v0}, Lw0/a;->a(JLib/c;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_6

    return-object v1

    :cond_6
    :goto_4
    check-cast p3, LH0/o;

    iget-wide p2, p3, LH0/o;->a:J

    invoke-static {p0, p1, p2, p3}, LH0/o;->e(JJ)J

    move-result-wide p0

    new-instance p2, LH0/o;

    invoke-direct {p2, p0, p1}, LH0/o;-><init>(J)V

    return-object p2
.end method

.method public final c(IJ)J
    .locals 2

    invoke-virtual {p0}, Lw0/g;->z()Lw0/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lw0/a;->c(IJ)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    sget v0, Lr0/b;->d:I

    sget-wide v0, Lr0/b;->b:J

    :goto_0
    iget-object p0, p0, Lw0/g;->k:Lw0/a;

    invoke-static {p2, p3, v0, v1}, Lr0/b;->c(JJ)J

    move-result-wide p2

    invoke-interface {p0, p1, p2, p3}, Lw0/a;->c(IJ)J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Lr0/b;->d(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public final e()LAb/E;
    .locals 0

    iget-object p0, p0, Lw0/g;->m:LA0/h;

    return-object p0
.end method

.method public final g(JJLib/c;)Ljava/lang/Object;
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p5

    instance-of v2, v1, Lw0/e;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lw0/e;

    iget v3, v2, Lw0/e;->f:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lw0/e;->f:I

    goto :goto_0

    :cond_0
    new-instance v2, Lw0/e;

    check-cast v1, Lkb/c;

    invoke-direct {v2, p0, v1}, Lw0/e;-><init>(Lw0/g;Lkb/c;)V

    :goto_0
    iget-object v1, v2, Lw0/e;->d:Ljava/lang/Object;

    sget-object v9, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v3, v2, Lw0/e;->f:I

    const/4 v10, 0x2

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    if-eq v3, v4, :cond_2

    if-ne v3, v10, :cond_1

    iget-wide v2, v2, Lw0/e;->b:J

    invoke-static {v1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-wide v3, v2, Lw0/e;->c:J

    iget-wide v5, v2, Lw0/e;->b:J

    iget-object v0, v2, Lw0/e;->a:Lw0/g;

    invoke-static {v1}, LG5/A2;->f(Ljava/lang/Object;)V

    move-wide v13, v3

    move-wide v11, v5

    goto :goto_1

    :cond_3
    invoke-static {v1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object v3, v0, Lw0/g;->k:Lw0/a;

    iput-object v0, v2, Lw0/e;->a:Lw0/g;

    move-wide/from16 v11, p1

    iput-wide v11, v2, Lw0/e;->b:J

    move-wide/from16 v13, p3

    iput-wide v13, v2, Lw0/e;->c:J

    iput v4, v2, Lw0/e;->f:I

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-object v8, v2

    invoke-interface/range {v3 .. v8}, Lw0/a;->g(JJLib/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v9, :cond_4

    return-object v9

    :cond_4
    :goto_1
    check-cast v1, LH0/o;

    iget-wide v3, v1, LH0/o;->a:J

    invoke-virtual {v0}, Lw0/g;->z()Lw0/a;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-static {v11, v12, v3, v4}, LH0/o;->e(JJ)J

    move-result-wide v5

    invoke-static {v13, v14, v3, v4}, LH0/o;->d(JJ)J

    move-result-wide v7

    const/4 v1, 0x0

    iput-object v1, v2, Lw0/e;->a:Lw0/g;

    iput-wide v3, v2, Lw0/e;->b:J

    iput v10, v2, Lw0/e;->f:I

    move-object p0, v0

    move-wide/from16 p1, v5

    move-wide/from16 p3, v7

    move-object/from16 p5, v2

    invoke-interface/range {p0 .. p5}, Lw0/a;->g(JJLib/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v9, :cond_5

    return-object v9

    :cond_5
    move-wide v2, v3

    :goto_2
    check-cast v1, LH0/o;

    iget-wide v0, v1, LH0/o;->a:J

    move-wide v3, v2

    goto :goto_3

    :cond_6
    sget-wide v0, LH0/o;->b:J

    :goto_3
    invoke-static {v3, v4, v0, v1}, LH0/o;->e(JJ)J

    move-result-wide v0

    new-instance v2, LH0/o;

    invoke-direct {v2, v0, v1}, LH0/o;-><init>(J)V

    return-object v2
.end method

.method public final i(JJI)J
    .locals 8

    iget-object v0, p0, Lw0/g;->k:Lw0/a;

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lw0/a;->i(JJI)J

    move-result-wide v0

    invoke-virtual {p0}, Lw0/g;->z()Lw0/a;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {p1, p2, v0, v1}, Lr0/b;->d(JJ)J

    move-result-wide v3

    invoke-static {p3, p4, v0, v1}, Lr0/b;->c(JJ)J

    move-result-wide v5

    move v7, p5

    invoke-interface/range {v2 .. v7}, Lw0/a;->i(JJI)J

    move-result-wide p0

    goto :goto_0

    :cond_0
    sget p0, Lr0/b;->d:I

    sget-wide p0, Lr0/b;->b:J

    :goto_0
    invoke-static {v0, v1, p0, p1}, Lr0/b;->d(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public final u()V
    .locals 0

    invoke-virtual {p0}, Lw0/g;->A()V

    return-void
.end method

.method public final v()V
    .locals 2

    iget-object v0, p0, Lw0/g;->l:Lw0/d;

    iget-object v1, v0, Lw0/d;->a:Lw0/g;

    if-ne v1, p0, :cond_0

    const/4 p0, 0x0

    iput-object p0, v0, Lw0/d;->a:Lw0/g;

    :cond_0
    return-void
.end method

.method public final y()LNc/B;
    .locals 1

    iget-boolean v0, p0, Lm0/l;->j:Z

    if-eqz v0, :cond_0

    sget-object v0, Lw0/i;->a:LA0/g;

    invoke-interface {p0, v0}, LA0/e;->b(LA0/g;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw0/g;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lw0/g;->y()LNc/B;

    move-result-object p0

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lw0/g;->l:Lw0/d;

    iget-object p0, p0, Lw0/d;->c:LUc/e;

    if-eqz p0, :cond_2

    :goto_1
    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "in order to access nested coroutine scope you need to attach dispatcher to the `Modifier.nestedScroll` first."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final z()Lw0/a;
    .locals 1

    iget-boolean v0, p0, Lm0/l;->j:Z

    if-eqz v0, :cond_0

    sget-object v0, Lw0/i;->a:LA0/g;

    invoke-interface {p0, v0}, LA0/e;->b(LA0/g;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lw0/a;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
