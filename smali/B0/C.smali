.class public final LB0/C;
.super Lz0/G;
.source "SourceFile"

# interfaces
.implements Lz0/w;
.implements LB0/b;


# instance fields
.field public f:I

.field public g:LB0/x;

.field public h:Z

.field public i:LH0/a;

.field public final j:J

.field public k:Z

.field public final l:LB0/z;

.field public final m:Lc0/d;

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:LU/w;

.field public final synthetic r:LB0/G;


# direct methods
.method public constructor <init>(LB0/G;)V
    .locals 2

    iput-object p1, p0, LB0/C;->r:LB0/G;

    invoke-direct {p0}, Lz0/G;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, LB0/C;->f:I

    sget-object v0, LB0/x;->NotUsed:LB0/x;

    iput-object v0, p0, LB0/C;->g:LB0/x;

    sget-wide v0, LH0/i;->b:J

    iput-wide v0, p0, LB0/C;->j:J

    new-instance v0, LB0/z;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, LB0/z;-><init>(LB0/b;I)V

    iput-object v0, p0, LB0/C;->l:LB0/z;

    new-instance v0, Lc0/d;

    const/16 v1, 0x10

    new-array v1, v1, [LB0/C;

    invoke-direct {v0, v1}, Lc0/d;-><init>([Ljava/lang/Object;)V

    iput-object v0, p0, LB0/C;->m:Lc0/d;

    const/4 v0, 0x1

    iput-boolean v0, p0, LB0/C;->n:Z

    iput-boolean v0, p0, LB0/C;->p:Z

    iget-object p1, p1, LB0/G;->m:LB0/F;

    iget-object p1, p1, LB0/F;->k:LU/w;

    iput-object p1, p0, LB0/C;->q:LU/w;

    return-void
.end method


# virtual methods
.method public final a()LB0/z;
    .locals 0

    iget-object p0, p0, LB0/C;->l:LB0/z;

    return-object p0
.end method

.method public final b()LB0/b;
    .locals 0

    iget-object p0, p0, LB0/C;->r:LB0/G;

    iget-object p0, p0, LB0/G;->a:Landroidx/compose/ui/node/a;

    invoke-virtual {p0}, Landroidx/compose/ui/node/a;->j()Landroidx/compose/ui/node/a;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroidx/compose/ui/node/a;->s:LB0/G;

    if-eqz p0, :cond_0

    iget-object p0, p0, LB0/G;->n:LB0/C;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final e()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, LB0/C;->q:LU/w;

    return-object p0
.end method

.method public final g(LB0/a;)V
    .locals 3

    iget-object p0, p0, LB0/C;->r:LB0/G;

    iget-object p0, p0, LB0/G;->a:Landroidx/compose/ui/node/a;

    invoke-virtual {p0}, Landroidx/compose/ui/node/a;->l()Lc0/d;

    move-result-object p0

    iget v0, p0, Lc0/d;->c:I

    if-lez v0, :cond_1

    iget-object p0, p0, Lc0/d;->a:[Ljava/lang/Object;

    const/4 v1, 0x0

    :cond_0
    aget-object v2, p0, v1

    check-cast v2, Landroidx/compose/ui/node/a;

    iget-object v2, v2, Landroidx/compose/ui/node/a;->s:LB0/G;

    iget-object v2, v2, LB0/G;->n:LB0/C;

    invoke-static {v2}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p1, v2}, LB0/a;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    if-lt v1, v0, :cond_0

    :cond_1
    return-void
.end method

.method public final i()V
    .locals 8

    const/4 v0, 0x1

    iput-boolean v0, p0, LB0/C;->o:Z

    iget-object v0, p0, LB0/C;->l:LB0/z;

    invoke-virtual {v0}, LB0/z;->g()V

    iget-object v1, p0, LB0/C;->r:LB0/G;

    iget-boolean v2, v1, LB0/G;->f:Z

    iget-object v3, v1, LB0/G;->a:Landroidx/compose/ui/node/a;

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v3}, Landroidx/compose/ui/node/a;->l()Lc0/d;

    move-result-object v2

    iget v5, v2, Lc0/d;->c:I

    if-lez v5, :cond_1

    iget-object v2, v2, Lc0/d;->a:[Ljava/lang/Object;

    move v6, v4

    :cond_0
    aget-object v7, v2, v6

    check-cast v7, Landroidx/compose/ui/node/a;

    iget-object v7, v7, Landroidx/compose/ui/node/a;->s:LB0/G;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v6, v6, 0x1

    if-lt v6, v5, :cond_0

    :cond_1
    invoke-virtual {p0}, LB0/C;->n()LB0/m;

    move-result-object v2

    iget-object v2, v2, LB0/m;->w:LB0/l;

    invoke-static {v2}, Ltb/k;->c(Ljava/lang/Object;)V

    iget-boolean v5, v1, LB0/G;->g:Z

    if-nez v5, :cond_4

    iget-boolean v2, v2, LB0/I;->g:Z

    if-nez v2, :cond_2

    iget-boolean v2, v1, LB0/G;->f:Z

    if-nez v2, :cond_4

    :cond_2
    iget-boolean v1, v0, LB0/z;->b:Z

    if-eqz v1, :cond_3

    invoke-virtual {v0}, LB0/z;->g()V

    iget-object v1, v0, LB0/z;->f:LB0/b;

    if-eqz v1, :cond_3

    invoke-virtual {v0}, LB0/z;->f()V

    :cond_3
    iput-boolean v4, p0, LB0/C;->o:Z

    return-void

    :cond_4
    iput-boolean v4, v1, LB0/G;->f:Z

    sget-object p0, LB0/v;->LookaheadLayingOut:LB0/v;

    iput-object p0, v1, LB0/G;->c:LB0/v;

    invoke-static {v3}, LB0/d;->o(Landroidx/compose/ui/node/a;)LB0/P;

    const/4 p0, 0x0

    throw p0
.end method

.method public final k()Z
    .locals 0

    iget-boolean p0, p0, LB0/C;->k:Z

    return p0
.end method

.method public final n()LB0/m;
    .locals 0

    iget-object p0, p0, LB0/C;->r:LB0/G;

    iget-object p0, p0, LB0/G;->a:Landroidx/compose/ui/node/a;

    iget-object p0, p0, Landroidx/compose/ui/node/a;->r:LB0/M;

    iget-object p0, p0, LB0/M;->c:Ljava/lang/Object;

    check-cast p0, LB0/m;

    return-object p0
.end method

.method public final o(J)Lz0/G;
    .locals 8

    iget-object v0, p0, LB0/C;->r:LB0/G;

    iget-object v1, v0, LB0/G;->a:Landroidx/compose/ui/node/a;

    invoke-virtual {v1}, Landroidx/compose/ui/node/a;->j()Landroidx/compose/ui/node/a;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v1, Landroidx/compose/ui/node/a;->s:LB0/G;

    iget-object v1, v1, LB0/G;->c:LB0/v;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    sget-object v3, LB0/v;->LookaheadMeasuring:LB0/v;

    const/4 v4, 0x0

    iget-object v5, v0, LB0/G;->a:Landroidx/compose/ui/node/a;

    if-eq v1, v3, :cond_2

    invoke-virtual {v5}, Landroidx/compose/ui/node/a;->j()Landroidx/compose/ui/node/a;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, v1, Landroidx/compose/ui/node/a;->s:LB0/G;

    iget-object v1, v1, LB0/G;->c:LB0/v;

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    sget-object v3, LB0/v;->LookaheadLayingOut:LB0/v;

    if-ne v1, v3, :cond_3

    :cond_2
    iput-boolean v4, v0, LB0/G;->b:Z

    :cond_3
    invoke-virtual {v5}, Landroidx/compose/ui/node/a;->j()Landroidx/compose/ui/node/a;

    move-result-object v1

    const/4 v3, 0x1

    if-eqz v1, :cond_9

    iget-object v6, p0, LB0/C;->g:LB0/x;

    sget-object v7, LB0/x;->NotUsed:LB0/x;

    if-eq v6, v7, :cond_5

    iget-boolean v6, v5, Landroidx/compose/ui/node/a;->q:Z

    if-eqz v6, :cond_4

    goto :goto_2

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "measure() may not be called multiple times on the same Measurable. If you want to get the content size of the Measurable before calculating the final constraints, please use methods like minIntrinsicWidth()/maxIntrinsicWidth() and minIntrinsicHeight()/maxIntrinsicHeight()"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_2
    iget-object v1, v1, Landroidx/compose/ui/node/a;->s:LB0/G;

    iget-object v6, v1, LB0/G;->c:LB0/v;

    sget-object v7, LB0/B;->a:[I

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v6, v7, v6

    if-eq v6, v3, :cond_8

    const/4 v7, 0x2

    if-eq v6, v7, :cond_8

    const/4 v7, 0x3

    if-eq v6, v7, :cond_7

    const/4 v7, 0x4

    if-ne v6, v7, :cond_6

    goto :goto_3

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Measurable could be only measured from the parent\'s measure or layout block. Parents state is "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, v1, LB0/G;->c:LB0/v;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_3
    sget-object v1, LB0/x;->InLayoutBlock:LB0/x;

    goto :goto_4

    :cond_8
    sget-object v1, LB0/x;->InMeasureBlock:LB0/x;

    :goto_4
    iput-object v1, p0, LB0/C;->g:LB0/x;

    goto :goto_5

    :cond_9
    sget-object v1, LB0/x;->NotUsed:LB0/x;

    iput-object v1, p0, LB0/C;->g:LB0/x;

    :goto_5
    iget-object v1, v5, Landroidx/compose/ui/node/a;->o:LB0/x;

    sget-object v6, LB0/x;->NotUsed:LB0/x;

    if-ne v1, v6, :cond_a

    invoke-virtual {v5}, Landroidx/compose/ui/node/a;->d()V

    :cond_a
    iget-object v1, v0, LB0/G;->a:Landroidx/compose/ui/node/a;

    iget-boolean v5, v1, Landroidx/compose/ui/node/a;->w:Z

    if-nez v5, :cond_12

    invoke-virtual {v1}, Landroidx/compose/ui/node/a;->j()Landroidx/compose/ui/node/a;

    move-result-object v1

    iget-object v5, v0, LB0/G;->a:Landroidx/compose/ui/node/a;

    iget-boolean v6, v5, Landroidx/compose/ui/node/a;->q:Z

    if-nez v6, :cond_c

    if-eqz v1, :cond_b

    iget-boolean v1, v1, Landroidx/compose/ui/node/a;->q:Z

    if-eqz v1, :cond_b

    goto :goto_6

    :cond_b
    move v3, v4

    :cond_c
    :goto_6
    iput-boolean v3, v5, Landroidx/compose/ui/node/a;->q:Z

    iget-object v1, v5, Landroidx/compose/ui/node/a;->s:LB0/G;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, LB0/C;->i:LH0/a;

    if-nez v1, :cond_d

    goto :goto_7

    :cond_d
    iget-wide v6, v1, LH0/a;->a:J

    cmp-long v1, v6, p1

    if-nez v1, :cond_e

    invoke-virtual {v5}, Landroidx/compose/ui/node/a;->x()V

    return-object p0

    :cond_e
    :goto_7
    new-instance v1, LH0/a;

    invoke-direct {v1, p1, p2}, LH0/a;-><init>(J)V

    iput-object v1, p0, LB0/C;->i:LH0/a;

    invoke-virtual {p0, p1, p2}, Lz0/G;->v(J)V

    iget-object p0, p0, LB0/C;->l:LB0/z;

    iput-boolean v4, p0, LB0/z;->d:Z

    invoke-virtual {v5}, Landroidx/compose/ui/node/a;->l()Lc0/d;

    move-result-object p0

    iget p1, p0, Lc0/d;->c:I

    if-lez p1, :cond_10

    iget-object p0, p0, Lc0/d;->a:[Ljava/lang/Object;

    :cond_f
    aget-object p2, p0, v4

    check-cast p2, Landroidx/compose/ui/node/a;

    iget-object p2, p2, Landroidx/compose/ui/node/a;->s:LB0/G;

    iget-object p2, p2, LB0/G;->n:LB0/C;

    invoke-static {p2}, Ltb/k;->c(Ljava/lang/Object;)V

    iget-object p2, p2, LB0/C;->l:LB0/z;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v4, v4, 0x1

    if-lt v4, p1, :cond_f

    :cond_10
    invoke-virtual {v0}, LB0/G;->a()LB0/O;

    move-result-object p0

    invoke-virtual {p0}, LB0/O;->G()LB0/J;

    move-result-object p0

    if-eqz p0, :cond_11

    sget-object p0, LB0/v;->LookaheadMeasuring:LB0/v;

    iput-object p0, v0, LB0/G;->c:LB0/v;

    invoke-static {v5}, LB0/d;->o(Landroidx/compose/ui/node/a;)LB0/P;

    throw v2

    :cond_11
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Lookahead result from lookaheadRemeasure cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "measure is called on a deactivated node"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final q()V
    .locals 2

    iget-object p0, p0, LB0/C;->r:LB0/G;

    iget-object p0, p0, LB0/G;->a:Landroidx/compose/ui/node/a;

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Landroidx/compose/ui/node/a;->v(Landroidx/compose/ui/node/a;ZI)V

    return-void
.end method

.method public final r()I
    .locals 0

    iget-object p0, p0, LB0/C;->r:LB0/G;

    invoke-virtual {p0}, LB0/G;->a()LB0/O;

    move-result-object p0

    invoke-virtual {p0}, LB0/O;->G()LB0/J;

    move-result-object p0

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lz0/G;->r()I

    move-result p0

    return p0
.end method

.method public final requestLayout()V
    .locals 0

    iget-object p0, p0, LB0/C;->r:LB0/G;

    iget-object p0, p0, LB0/G;->a:Landroidx/compose/ui/node/a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final s()I
    .locals 0

    iget-object p0, p0, LB0/C;->r:LB0/G;

    invoke-virtual {p0}, LB0/G;->a()LB0/O;

    move-result-object p0

    invoke-virtual {p0}, LB0/O;->G()LB0/J;

    move-result-object p0

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lz0/G;->s()I

    move-result p0

    return p0
.end method

.method public final u(JFLsb/k;)V
    .locals 2

    iget-object p3, p0, LB0/C;->r:LB0/G;

    iget-object p4, p3, LB0/G;->a:Landroidx/compose/ui/node/a;

    iget-boolean p4, p4, Landroidx/compose/ui/node/a;->w:Z

    if-nez p4, :cond_3

    sget-object p4, LB0/v;->LookaheadLayingOut:LB0/v;

    iput-object p4, p3, LB0/G;->c:LB0/v;

    const/4 p4, 0x1

    iput-boolean p4, p0, LB0/C;->h:Z

    iget-wide v0, p0, LB0/C;->j:J

    invoke-static {p1, p2, v0, v1}, LH0/i;->a(JJ)Z

    move-result p1

    if-nez p1, :cond_2

    iget-boolean p1, p3, LB0/G;->k:Z

    if-nez p1, :cond_0

    iget-boolean p1, p3, LB0/G;->j:Z

    if-eqz p1, :cond_1

    :cond_0
    iput-boolean p4, p3, LB0/G;->f:Z

    :cond_1
    invoke-virtual {p0}, LB0/C;->x()V

    :cond_2
    iget-object p0, p3, LB0/G;->a:Landroidx/compose/ui/node/a;

    invoke-static {p0}, LB0/d;->o(Landroidx/compose/ui/node/a;)LB0/P;

    const/4 p0, 0x0

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "place is called on a deactivated node"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final w()V
    .locals 5

    iget-boolean v0, p0, LB0/C;->k:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, LB0/C;->k:Z

    iget-object p0, p0, LB0/C;->r:LB0/G;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    iget-object p0, p0, LB0/G;->a:Landroidx/compose/ui/node/a;

    invoke-virtual {p0}, Landroidx/compose/ui/node/a;->l()Lc0/d;

    move-result-object p0

    iget v0, p0, Lc0/d;->c:I

    if-lez v0, :cond_3

    iget-object p0, p0, Lc0/d;->a:[Ljava/lang/Object;

    const/4 v1, 0x0

    :cond_1
    aget-object v2, p0, v1

    check-cast v2, Landroidx/compose/ui/node/a;

    invoke-virtual {v2}, Landroidx/compose/ui/node/a;->k()I

    move-result v3

    const v4, 0x7fffffff

    if-eq v3, v4, :cond_2

    iget-object v3, v2, Landroidx/compose/ui/node/a;->s:LB0/G;

    iget-object v3, v3, LB0/G;->n:LB0/C;

    invoke-static {v3}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v3}, LB0/C;->w()V

    invoke-static {v2}, Landroidx/compose/ui/node/a;->w(Landroidx/compose/ui/node/a;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    if-lt v1, v0, :cond_1

    :cond_3
    return-void
.end method

.method public final x()V
    .locals 4

    iget-object p0, p0, LB0/C;->r:LB0/G;

    iget v0, p0, LB0/G;->l:I

    if-lez v0, :cond_3

    iget-object p0, p0, LB0/G;->a:Landroidx/compose/ui/node/a;

    invoke-virtual {p0}, Landroidx/compose/ui/node/a;->l()Lc0/d;

    move-result-object p0

    iget v0, p0, Lc0/d;->c:I

    if-lez v0, :cond_3

    iget-object p0, p0, Lc0/d;->a:[Ljava/lang/Object;

    const/4 v1, 0x0

    :cond_0
    aget-object v2, p0, v1

    check-cast v2, Landroidx/compose/ui/node/a;

    iget-object v2, v2, Landroidx/compose/ui/node/a;->s:LB0/G;

    iget-boolean v3, v2, LB0/G;->j:Z

    if-nez v3, :cond_1

    iget-boolean v3, v2, LB0/G;->k:Z

    :cond_1
    iget-object v2, v2, LB0/G;->n:LB0/C;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, LB0/C;->x()V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    if-lt v1, v0, :cond_0

    :cond_3
    return-void
.end method
