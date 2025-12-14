.class public final LB0/F;
.super Lz0/G;
.source "SourceFile"

# interfaces
.implements Lz0/w;
.implements LB0/b;


# instance fields
.field public f:I

.field public g:I

.field public h:LB0/x;

.field public i:J

.field public j:Z

.field public k:LU/w;

.field public l:Z

.field public final m:LB0/z;

.field public final n:Lc0/d;

.field public o:Z

.field public p:Z

.field public q:F

.field public final r:J

.field public final synthetic s:LB0/G;


# direct methods
.method public constructor <init>(LB0/G;)V
    .locals 5

    iput-object p1, p0, LB0/F;->s:LB0/G;

    invoke-direct {p0}, Lz0/G;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, LB0/F;->f:I

    iput v0, p0, LB0/F;->g:I

    sget-object v0, LB0/x;->NotUsed:LB0/x;

    iput-object v0, p0, LB0/F;->h:LB0/x;

    sget-wide v0, LH0/i;->b:J

    iput-wide v0, p0, LB0/F;->i:J

    const/4 v2, 0x1

    iput-boolean v2, p0, LB0/F;->j:Z

    new-instance v3, LB0/z;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, LB0/z;-><init>(LB0/b;I)V

    iput-object v3, p0, LB0/F;->m:LB0/z;

    new-instance v3, Lc0/d;

    const/16 v4, 0x10

    new-array v4, v4, [LB0/F;

    invoke-direct {v3, v4}, Lc0/d;-><init>([Ljava/lang/Object;)V

    iput-object v3, p0, LB0/F;->n:Lc0/d;

    iput-boolean v2, p0, LB0/F;->o:Z

    new-instance v2, LA4/a;

    const/4 v3, 0x3

    invoke-direct {v2, v3, p0}, LA4/a;-><init>(ILjava/lang/Object;)V

    iput-wide v0, p0, LB0/F;->r:J

    new-instance v0, LB0/E;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, p0}, LB0/E;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a()LB0/z;
    .locals 0

    iget-object p0, p0, LB0/F;->m:LB0/z;

    return-object p0
.end method

.method public final b()LB0/b;
    .locals 0

    iget-object p0, p0, LB0/F;->s:LB0/G;

    iget-object p0, p0, LB0/G;->a:Landroidx/compose/ui/node/a;

    invoke-virtual {p0}, Landroidx/compose/ui/node/a;->j()Landroidx/compose/ui/node/a;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroidx/compose/ui/node/a;->s:LB0/G;

    if-eqz p0, :cond_0

    iget-object p0, p0, LB0/G;->m:LB0/F;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final e()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, LB0/F;->k:LU/w;

    return-object p0
.end method

.method public final g(LB0/a;)V
    .locals 3

    iget-object p0, p0, LB0/F;->s:LB0/G;

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

    iget-object v2, v2, LB0/G;->m:LB0/F;

    invoke-virtual {p1, v2}, LB0/a;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    if-lt v1, v0, :cond_0

    :cond_1
    return-void
.end method

.method public final i()V
    .locals 9

    const/4 v0, 0x1

    iput-boolean v0, p0, LB0/F;->p:Z

    iget-object v0, p0, LB0/F;->m:LB0/z;

    invoke-virtual {v0}, LB0/z;->g()V

    iget-object v1, p0, LB0/F;->s:LB0/G;

    iget-boolean v2, v1, LB0/G;->d:Z

    const/4 v3, 0x0

    iget-object v4, v1, LB0/G;->a:Landroidx/compose/ui/node/a;

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v4}, Landroidx/compose/ui/node/a;->l()Lc0/d;

    move-result-object v2

    iget v6, v2, Lc0/d;->c:I

    if-lez v6, :cond_1

    iget-object v2, v2, Lc0/d;->a:[Ljava/lang/Object;

    move v7, v5

    :cond_0
    aget-object v8, v2, v7

    check-cast v8, Landroidx/compose/ui/node/a;

    iget-object v8, v8, Landroidx/compose/ui/node/a;->s:LB0/G;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v7, v7, 0x1

    if-lt v7, v6, :cond_0

    :cond_1
    iget-boolean v2, v1, LB0/G;->e:Z

    if-nez v2, :cond_4

    invoke-virtual {p0}, LB0/F;->n()LB0/m;

    move-result-object v2

    iget-boolean v2, v2, LB0/I;->g:Z

    if-nez v2, :cond_2

    iget-boolean v2, v1, LB0/G;->d:Z

    if-nez v2, :cond_4

    :cond_2
    iget-boolean v1, v0, LB0/z;->b:Z

    if-eqz v1, :cond_3

    invoke-virtual {v0}, LB0/z;->g()V

    iget-object v1, v0, LB0/z;->f:LB0/b;

    if-eqz v1, :cond_3

    invoke-virtual {v0}, LB0/z;->f()V

    :cond_3
    iput-boolean v5, p0, LB0/F;->p:Z

    return-void

    :cond_4
    iput-boolean v5, v1, LB0/G;->d:Z

    sget-object p0, LB0/v;->LayingOut:LB0/v;

    iput-object p0, v1, LB0/G;->c:LB0/v;

    invoke-virtual {v1, v5}, LB0/G;->d(Z)V

    invoke-static {v4}, LB0/d;->o(Landroidx/compose/ui/node/a;)LB0/P;

    throw v3
.end method

.method public final k()Z
    .locals 0

    iget-boolean p0, p0, LB0/F;->l:Z

    return p0
.end method

.method public final n()LB0/m;
    .locals 0

    iget-object p0, p0, LB0/F;->s:LB0/G;

    iget-object p0, p0, LB0/G;->a:Landroidx/compose/ui/node/a;

    iget-object p0, p0, Landroidx/compose/ui/node/a;->r:LB0/M;

    iget-object p0, p0, LB0/M;->c:Ljava/lang/Object;

    check-cast p0, LB0/m;

    return-object p0
.end method

.method public final o(J)Lz0/G;
    .locals 4

    iget-object v0, p0, LB0/F;->s:LB0/G;

    iget-object v1, v0, LB0/G;->a:Landroidx/compose/ui/node/a;

    iget-object v2, v1, Landroidx/compose/ui/node/a;->o:LB0/x;

    sget-object v3, LB0/x;->NotUsed:LB0/x;

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Landroidx/compose/ui/node/a;->d()V

    :cond_0
    iget-object v1, v0, LB0/G;->a:Landroidx/compose/ui/node/a;

    invoke-static {v1}, LB0/d;->k(Landroidx/compose/ui/node/a;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, v0, LB0/G;->n:LB0/C;

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    iput-object v3, v0, LB0/C;->g:LB0/x;

    invoke-virtual {v0, p1, p2}, LB0/C;->o(J)Lz0/G;

    :cond_1
    invoke-virtual {v1}, Landroidx/compose/ui/node/a;->j()Landroidx/compose/ui/node/a;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p2, p0, LB0/F;->h:LB0/x;

    if-eq p2, v3, :cond_3

    iget-boolean p2, v1, Landroidx/compose/ui/node/a;->q:Z

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "measure() may not be called multiple times on the same Measurable. If you want to get the content size of the Measurable before calculating the final constraints, please use methods like minIntrinsicWidth()/maxIntrinsicWidth() and minIntrinsicHeight()/maxIntrinsicHeight()"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    iget-object p1, p1, Landroidx/compose/ui/node/a;->s:LB0/G;

    iget-object p2, p1, LB0/G;->c:LB0/v;

    sget-object v0, LB0/D;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_5

    const/4 v0, 0x2

    if-ne p2, v0, :cond_4

    sget-object p1, LB0/x;->InLayoutBlock:LB0/x;

    goto :goto_1

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Measurable could be only measured from the parent\'s measure or layout block. Parents state is "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, LB0/G;->c:LB0/v;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    sget-object p1, LB0/x;->InMeasureBlock:LB0/x;

    :goto_1
    iput-object p1, p0, LB0/F;->h:LB0/x;

    goto :goto_2

    :cond_6
    iput-object v3, p0, LB0/F;->h:LB0/x;

    :goto_2
    iget-object p0, p0, LB0/F;->s:LB0/G;

    iget-object p0, p0, LB0/G;->a:Landroidx/compose/ui/node/a;

    iget-boolean p1, p0, Landroidx/compose/ui/node/a;->w:Z

    if-nez p1, :cond_7

    invoke-static {p0}, LB0/d;->o(Landroidx/compose/ui/node/a;)LB0/P;

    const/4 p0, 0x0

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "measure is called on a deactivated node"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final q()V
    .locals 0

    iget-object p0, p0, LB0/F;->s:LB0/G;

    iget-object p0, p0, LB0/G;->a:Landroidx/compose/ui/node/a;

    iget-boolean p0, p0, Landroidx/compose/ui/node/a;->i:Z

    return-void
.end method

.method public final r()I
    .locals 0

    iget-object p0, p0, LB0/F;->s:LB0/G;

    invoke-virtual {p0}, LB0/G;->a()LB0/O;

    move-result-object p0

    invoke-virtual {p0}, Lz0/G;->r()I

    move-result p0

    return p0
.end method

.method public final requestLayout()V
    .locals 0

    iget-object p0, p0, LB0/F;->s:LB0/G;

    iget-object p0, p0, LB0/G;->a:Landroidx/compose/ui/node/a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final s()I
    .locals 0

    iget-object p0, p0, LB0/F;->s:LB0/G;

    invoke-virtual {p0}, LB0/G;->a()LB0/O;

    move-result-object p0

    invoke-virtual {p0}, Lz0/G;->s()I

    move-result p0

    return p0
.end method

.method public final u(JFLsb/k;)V
    .locals 6

    iget-wide p3, p0, LB0/F;->i:J

    invoke-static {p1, p2, p3, p4}, LH0/i;->a(JJ)Z

    move-result p3

    iget-object p4, p0, LB0/F;->s:LB0/G;

    if-nez p3, :cond_2

    iget-boolean p3, p4, LB0/G;->k:Z

    if-nez p3, :cond_0

    iget-boolean p3, p4, LB0/G;->j:Z

    if-eqz p3, :cond_1

    :cond_0
    const/4 p3, 0x1

    iput-boolean p3, p4, LB0/G;->d:Z

    :cond_1
    invoke-virtual {p0}, LB0/F;->z()V

    :cond_2
    iget-object p3, p4, LB0/G;->a:Landroidx/compose/ui/node/a;

    invoke-static {p3}, LB0/d;->k(Landroidx/compose/ui/node/a;)Z

    move-result p3

    const/4 v0, 0x0

    iget-object v1, p4, LB0/G;->a:Landroidx/compose/ui/node/a;

    if-eqz p3, :cond_5

    invoke-virtual {p4}, LB0/G;->a()LB0/O;

    move-result-object p3

    iget-object p3, p3, LB0/O;->k:LB0/O;

    if-eqz p3, :cond_4

    iget-object p3, p3, LB0/I;->h:Lz0/u;

    if-eqz p3, :cond_4

    iget-object v2, p4, LB0/G;->n:LB0/C;

    invoke-static {v2}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroidx/compose/ui/node/a;->j()Landroidx/compose/ui/node/a;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, v3, Landroidx/compose/ui/node/a;->s:LB0/G;

    const/4 v4, 0x0

    iput v4, v3, LB0/G;->h:I

    :cond_3
    const v3, 0x7fffffff

    iput v3, v2, LB0/C;->f:I

    const/16 v3, 0x20

    shr-long v3, p1, v3

    long-to-int v3, v3

    const-wide v4, 0xffffffffL

    and-long/2addr v4, p1

    long-to-int v4, v4

    invoke-static {p3, v2, v3, v4}, Lz0/F;->c(Lz0/F;Lz0/G;II)V

    goto :goto_0

    :cond_4
    invoke-static {v1}, LB0/d;->o(Landroidx/compose/ui/node/a;)LB0/P;

    throw v0

    :cond_5
    :goto_0
    iget-object p3, p4, LB0/G;->n:LB0/C;

    if-eqz p3, :cond_7

    iget-boolean p3, p3, LB0/C;->h:Z

    if-eqz p3, :cond_6

    goto :goto_1

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Error: Placement happened before lookahead."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_1
    iget-boolean p3, v1, Landroidx/compose/ui/node/a;->w:Z

    if-nez p3, :cond_8

    sget-object p3, LB0/v;->LayingOut:LB0/v;

    iput-object p3, p4, LB0/G;->c:LB0/v;

    iput-wide p1, p0, LB0/F;->i:J

    invoke-static {v1}, LB0/d;->o(Landroidx/compose/ui/node/a;)LB0/P;

    throw v0

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "place is called on a deactivated node"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final w()Ljava/util/List;
    .locals 9

    iget-object v0, p0, LB0/F;->s:LB0/G;

    iget-object v1, v0, LB0/G;->a:Landroidx/compose/ui/node/a;

    invoke-virtual {v1}, Landroidx/compose/ui/node/a;->D()V

    iget-boolean v1, p0, LB0/F;->o:Z

    iget-object v2, p0, LB0/F;->n:Lc0/d;

    if-nez v1, :cond_0

    invoke-virtual {v2}, Lc0/d;->f()Ljava/util/List;

    move-result-object p0

    return-object p0

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

    iget-object v6, v6, LB0/G;->m:LB0/F;

    invoke-virtual {v2, v6}, Lc0/d;->c(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v6, v6, Landroidx/compose/ui/node/a;->s:LB0/G;

    iget-object v6, v6, LB0/G;->m:LB0/F;

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

    iput-boolean v4, p0, LB0/F;->o:Z

    invoke-virtual {v2}, Lc0/d;->f()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final x()V
    .locals 5

    iget-boolean v0, p0, LB0/F;->l:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, LB0/F;->l:Z

    iget-object p0, p0, LB0/F;->s:LB0/G;

    iget-object p0, p0, LB0/G;->a:Landroidx/compose/ui/node/a;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/node/a;->s:LB0/G;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/node/a;->r:LB0/M;

    iget-object v1, v0, LB0/M;->d:Ljava/lang/Object;

    check-cast v1, LB0/O;

    iget-object v0, v0, LB0/M;->c:Ljava/lang/Object;

    check-cast v0, LB0/m;

    iget-object v0, v0, LB0/O;->j:LB0/O;

    :goto_0
    invoke-static {v1, v0}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v1, :cond_2

    iget-boolean v2, v1, LB0/O;->u:Z

    if-eqz v2, :cond_1

    invoke-virtual {v1}, LB0/O;->J()V

    :cond_1
    iget-object v1, v1, LB0/O;->j:LB0/O;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroidx/compose/ui/node/a;->l()Lc0/d;

    move-result-object p0

    iget v0, p0, Lc0/d;->c:I

    if-lez v0, :cond_5

    iget-object p0, p0, Lc0/d;->a:[Ljava/lang/Object;

    const/4 v1, 0x0

    :cond_3
    aget-object v2, p0, v1

    check-cast v2, Landroidx/compose/ui/node/a;

    invoke-virtual {v2}, Landroidx/compose/ui/node/a;->k()I

    move-result v3

    const v4, 0x7fffffff

    if-eq v3, v4, :cond_4

    iget-object v3, v2, Landroidx/compose/ui/node/a;->s:LB0/G;

    iget-object v3, v3, LB0/G;->m:LB0/F;

    invoke-virtual {v3}, LB0/F;->x()V

    invoke-static {v2}, Landroidx/compose/ui/node/a;->w(Landroidx/compose/ui/node/a;)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    if-lt v1, v0, :cond_3

    :cond_5
    return-void
.end method

.method public final y()V
    .locals 3

    iget-boolean v0, p0, LB0/F;->l:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, LB0/F;->l:Z

    iget-object p0, p0, LB0/F;->s:LB0/G;

    iget-object p0, p0, LB0/G;->a:Landroidx/compose/ui/node/a;

    invoke-virtual {p0}, Landroidx/compose/ui/node/a;->l()Lc0/d;

    move-result-object p0

    iget v1, p0, Lc0/d;->c:I

    if-lez v1, :cond_1

    iget-object p0, p0, Lc0/d;->a:[Ljava/lang/Object;

    :cond_0
    aget-object v2, p0, v0

    check-cast v2, Landroidx/compose/ui/node/a;

    iget-object v2, v2, Landroidx/compose/ui/node/a;->s:LB0/G;

    iget-object v2, v2, LB0/G;->m:LB0/F;

    invoke-virtual {v2}, LB0/F;->y()V

    add-int/lit8 v0, v0, 0x1

    if-lt v0, v1, :cond_0

    :cond_1
    return-void
.end method

.method public final z()V
    .locals 4

    iget-object p0, p0, LB0/F;->s:LB0/G;

    iget v0, p0, LB0/G;->l:I

    if-lez v0, :cond_2

    iget-object p0, p0, LB0/G;->a:Landroidx/compose/ui/node/a;

    invoke-virtual {p0}, Landroidx/compose/ui/node/a;->l()Lc0/d;

    move-result-object p0

    iget v0, p0, Lc0/d;->c:I

    if-lez v0, :cond_2

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
    iget-object v2, v2, LB0/G;->m:LB0/F;

    invoke-virtual {v2}, LB0/F;->z()V

    add-int/lit8 v1, v1, 0x1

    if-lt v1, v0, :cond_0

    :cond_2
    return-void
.end method
