.class public abstract LB0/O;
.super LB0/I;
.source "SourceFile"

# interfaces
.implements Lz0/w;
.implements Lz0/j;


# instance fields
.field public final i:Landroidx/compose/ui/node/a;

.field public j:LB0/O;

.field public k:LB0/O;

.field public l:Lsb/k;

.field public m:LH0/b;

.field public n:LH0/k;

.field public o:Lz0/y;

.field public p:Ljava/util/LinkedHashMap;

.field public q:J

.field public r:F

.field public s:Lr0/a;

.field public final t:LA4/a;

.field public u:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ls0/f;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Ls0/f;->a:F

    iput v1, v0, Ls0/f;->b:F

    iput v1, v0, Ls0/f;->c:F

    sget-wide v2, Ls0/d;->a:J

    iput-wide v2, v0, Ls0/f;->g:J

    iput-wide v2, v0, Ls0/f;->h:J

    const/high16 v2, 0x41000000    # 8.0f

    iput v2, v0, Ls0/f;->l:F

    sget-wide v2, Ls0/i;->a:J

    iput-wide v2, v0, Ls0/f;->m:J

    sget-object v2, Ls0/e;->a:LE5/v;

    iput-object v2, v0, Ls0/f;->n:Ls0/g;

    const/4 v2, 0x0

    iput v2, v0, Ls0/f;->p:I

    sget v2, Lr0/d;->d:I

    new-instance v2, LH0/c;

    invoke-direct {v2, v1}, LH0/c;-><init>(F)V

    iput-object v2, v0, Ls0/f;->q:LH0/c;

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/node/a;)V
    .locals 2

    invoke-direct {p0}, LB0/I;-><init>()V

    iput-object p1, p0, LB0/O;->i:Landroidx/compose/ui/node/a;

    iget-object v0, p1, Landroidx/compose/ui/node/a;->l:LH0/b;

    iput-object v0, p0, LB0/O;->m:LH0/b;

    iget-object p1, p1, Landroidx/compose/ui/node/a;->m:LH0/k;

    iput-object p1, p0, LB0/O;->n:LH0/k;

    sget-wide v0, LH0/i;->b:J

    iput-wide v0, p0, LB0/O;->q:J

    new-instance p1, LB0/a;

    const/4 v0, 0x2

    invoke-direct {p1, v0, p0}, LB0/a;-><init>(ILjava/lang/Object;)V

    new-instance p1, LA4/a;

    const/4 v0, 0x5

    invoke-direct {p1, v0, p0}, LA4/a;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, LB0/O;->t:LA4/a;

    return-void
.end method


# virtual methods
.method public final A()Lz0/y;
    .locals 1

    iget-object p0, p0, LB0/O;->o:Lz0/y;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Asking for measurement result of unmeasured layout modifier"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final B()J
    .locals 2

    iget-wide v0, p0, LB0/O;->q:J

    return-wide v0
.end method

.method public final D()V
    .locals 4

    iget-wide v0, p0, LB0/O;->q:J

    iget v2, p0, LB0/O;->r:F

    iget-object v3, p0, LB0/O;->l:Lsb/k;

    invoke-virtual {p0, v0, v1, v2, v3}, Lz0/G;->u(JFLsb/k;)V

    return-void
.end method

.method public final E(LB0/O;Lr0/a;Z)V
    .locals 2

    if-ne p1, p0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LB0/O;->k:LB0/O;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2, p3}, LB0/O;->E(LB0/O;Lr0/a;Z)V

    :cond_1
    iget-wide p0, p0, LB0/O;->q:J

    sget p3, LH0/i;->c:I

    const/16 p3, 0x20

    shr-long v0, p0, p3

    long-to-int p3, v0

    iget v0, p2, Lr0/a;->a:F

    int-to-float p3, p3

    sub-float/2addr v0, p3

    iput v0, p2, Lr0/a;->a:F

    iget v0, p2, Lr0/a;->c:F

    sub-float/2addr v0, p3

    iput v0, p2, Lr0/a;->c:F

    const-wide v0, 0xffffffffL

    and-long/2addr p0, v0

    long-to-int p0, p0

    iget p1, p2, Lr0/a;->b:F

    int-to-float p0, p0

    sub-float/2addr p1, p0

    iput p1, p2, Lr0/a;->b:F

    iget p1, p2, Lr0/a;->d:F

    sub-float/2addr p1, p0

    iput p1, p2, Lr0/a;->d:F

    return-void
.end method

.method public abstract F()V
.end method

.method public abstract G()LB0/J;
.end method

.method public abstract H()Lm0/l;
.end method

.method public final I(Z)Lm0/l;
    .locals 2

    iget-object v0, p0, LB0/O;->i:Landroidx/compose/ui/node/a;

    iget-object v0, v0, Landroidx/compose/ui/node/a;->r:LB0/M;

    iget-object v1, v0, LB0/M;->d:Ljava/lang/Object;

    check-cast v1, LB0/O;

    if-ne v1, p0, :cond_0

    iget-object p0, v0, LB0/M;->f:Ljava/lang/Object;

    check-cast p0, Lm0/l;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object p0, p0, LB0/O;->k:LB0/O;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, LB0/O;->H()Lm0/l;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-object p0, p0, Lm0/l;->f:Lm0/l;

    goto :goto_0

    :cond_1
    move-object p0, v0

    goto :goto_0

    :cond_2
    iget-object p0, p0, LB0/O;->k:LB0/O;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, LB0/O;->H()Lm0/l;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final J()V
    .locals 0

    iget-object p0, p0, LB0/O;->k:LB0/O;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, LB0/O;->J()V

    :cond_0
    return-void
.end method

.method public final K()V
    .locals 3

    iget-object p0, p0, LB0/O;->i:Landroidx/compose/ui/node/a;

    iget-object p0, p0, Landroidx/compose/ui/node/a;->s:LB0/G;

    iget-object v0, p0, LB0/G;->a:Landroidx/compose/ui/node/a;

    iget-object v0, v0, Landroidx/compose/ui/node/a;->s:LB0/G;

    iget-object v0, v0, LB0/G;->c:LB0/v;

    sget-object v1, LB0/v;->LayingOut:LB0/v;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    sget-object v1, LB0/v;->LookaheadLayingOut:LB0/v;

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v1, p0, LB0/G;->m:LB0/F;

    iget-boolean v1, v1, LB0/F;->p:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0, v2}, LB0/G;->d(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, LB0/G;->c(Z)V

    :cond_2
    :goto_0
    sget-object v1, LB0/v;->LookaheadLayingOut:LB0/v;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, LB0/G;->n:LB0/C;

    if-eqz v0, :cond_3

    iget-boolean v0, v0, LB0/C;->o:Z

    if-ne v0, v2, :cond_3

    invoke-virtual {p0, v2}, LB0/G;->d(Z)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v2}, LB0/G;->c(Z)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final L()V
    .locals 10

    const/16 v0, 0x80

    invoke-static {v0}, LB0/d;->i(I)Z

    move-result v1

    invoke-virtual {p0, v1}, LB0/O;->I(Z)Lm0/l;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, v1, Lm0/l;->a:Lm0/l;

    iget v1, v1, Lm0/l;->d:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_5

    sget-object v1, Lk0/n;->a:LZ3/x;

    invoke-virtual {v1}, LZ3/x;->u()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk0/h;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Lk0/n;->h(Lk0/h;Lsb/k;Z)Lk0/h;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1}, Lk0/h;->j()Lk0/h;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {v0}, LB0/d;->i(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, LB0/O;->H()Lm0/l;

    move-result-object v5

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_0
    invoke-virtual {p0}, LB0/O;->H()Lm0/l;

    move-result-object v5

    iget-object v5, v5, Lm0/l;->e:Lm0/l;

    if-nez v5, :cond_1

    goto :goto_3

    :cond_1
    :goto_0
    invoke-virtual {p0, v4}, LB0/O;->I(Z)Lm0/l;

    move-result-object v4

    :goto_1
    if-eqz v4, :cond_4

    iget v6, v4, Lm0/l;->d:I

    and-int/2addr v6, v0

    if-eqz v6, :cond_4

    iget v6, v4, Lm0/l;->c:I

    and-int/2addr v6, v0

    if-eqz v6, :cond_3

    move-object v6, v4

    :goto_2
    if-eqz v6, :cond_3

    instance-of v7, v6, LB0/c;

    if-eqz v7, :cond_2

    check-cast v6, LB0/c;

    iget-wide v7, p0, Lz0/G;->c:J

    iget-object v6, v6, LB0/c;->k:Lm0/k;

    instance-of v9, v6, Lz0/C;

    if-eqz v9, :cond_2

    check-cast v6, Lz0/C;

    invoke-interface {v6, v7, v8}, Lz0/C;->f(J)V

    :cond_2
    move-object v6, v3

    goto :goto_2

    :cond_3
    if-eq v4, v5, :cond_4

    iget-object v4, v4, Lm0/l;->f:Lm0/l;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_4
    :goto_3
    :try_start_2
    invoke-static {v2}, Lk0/h;->p(Lk0/h;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v1}, Lk0/h;->c()V

    goto :goto_5

    :goto_4
    :try_start_3
    invoke-static {v2}, Lk0/h;->p(Lk0/h;)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    invoke-virtual {v1}, Lk0/h;->c()V

    throw p0

    :cond_5
    :goto_5
    return-void
.end method

.method public final M()V
    .locals 5

    const/16 v0, 0x80

    invoke-static {v0}, LB0/d;->i(I)Z

    move-result v1

    invoke-virtual {p0}, LB0/O;->H()Lm0/l;

    move-result-object v2

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, v2, Lm0/l;->e:Lm0/l;

    if-nez v2, :cond_1

    goto :goto_3

    :cond_1
    :goto_0
    invoke-virtual {p0, v1}, LB0/O;->I(Z)Lm0/l;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_4

    iget v3, v1, Lm0/l;->d:I

    and-int/2addr v3, v0

    if-eqz v3, :cond_4

    iget v3, v1, Lm0/l;->c:I

    and-int/2addr v3, v0

    if-eqz v3, :cond_3

    move-object v3, v1

    :goto_2
    if-eqz v3, :cond_3

    instance-of v4, v3, LB0/c;

    if-eqz v4, :cond_2

    check-cast v3, LB0/c;

    iget-object v3, v3, LB0/c;->k:Lm0/k;

    instance-of v4, v3, Lz0/B;

    if-eqz v4, :cond_2

    check-cast v3, Lz0/B;

    invoke-interface {v3, p0}, Lz0/B;->h(Lz0/j;)V

    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    :cond_3
    if-eq v1, v2, :cond_4

    iget-object v1, v1, Lm0/l;->f:Lm0/l;

    goto :goto_1

    :cond_4
    :goto_3
    return-void
.end method

.method public final N(JFLsb/k;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, p4, v0}, LB0/O;->Q(Lsb/k;Z)V

    iget-wide v0, p0, LB0/O;->q:J

    invoke-static {v0, v1, p1, p2}, LH0/i;->a(JJ)Z

    move-result p4

    if-nez p4, :cond_1

    iput-wide p1, p0, LB0/O;->q:J

    iget-object p1, p0, LB0/O;->i:Landroidx/compose/ui/node/a;

    iget-object p1, p1, Landroidx/compose/ui/node/a;->s:LB0/G;

    iget-object p1, p1, LB0/G;->m:LB0/F;

    invoke-virtual {p1}, LB0/F;->z()V

    iget-object p1, p0, LB0/O;->k:LB0/O;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, LB0/O;->J()V

    :cond_0
    invoke-static {p0}, LB0/I;->C(LB0/O;)V

    :cond_1
    iput p3, p0, LB0/O;->r:F

    return-void
.end method

.method public final O(Lz0/y;)V
    .locals 6

    iget-object v0, p0, LB0/O;->o:Lz0/y;

    if-eq p1, v0, :cond_d

    iput-object p1, p0, LB0/O;->o:Lz0/y;

    iget-object v1, p0, LB0/O;->i:Landroidx/compose/ui/node/a;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lz0/y;->getWidth()I

    move-result v2

    invoke-interface {v0}, Lz0/y;->getWidth()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-interface {p1}, Lz0/y;->getHeight()I

    move-result v2

    invoke-interface {v0}, Lz0/y;->getHeight()I

    move-result v0

    if-eq v2, v0, :cond_8

    :cond_0
    invoke-interface {p1}, Lz0/y;->getWidth()I

    move-result v0

    invoke-interface {p1}, Lz0/y;->getHeight()I

    move-result v2

    iget-object v3, p0, LB0/O;->k:LB0/O;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, LB0/O;->J()V

    :cond_1
    invoke-static {v0, v2}, LG5/V2;->a(II)J

    move-result-wide v2

    iget-wide v4, p0, Lz0/G;->c:J

    cmp-long v0, v4, v2

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iput-wide v2, p0, Lz0/G;->c:J

    invoke-virtual {p0}, Lz0/G;->t()V

    :goto_0
    iget-object v0, p0, LB0/O;->l:Lsb/k;

    if-nez v0, :cond_c

    const/4 v0, 0x4

    invoke-static {v0}, LB0/d;->i(I)Z

    move-result v2

    invoke-virtual {p0}, LB0/O;->H()Lm0/l;

    move-result-object v3

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    iget-object v3, v3, Lm0/l;->e:Lm0/l;

    if-nez v3, :cond_4

    goto :goto_4

    :cond_4
    :goto_1
    invoke-virtual {p0, v2}, LB0/O;->I(Z)Lm0/l;

    move-result-object v2

    :goto_2
    if-eqz v2, :cond_7

    iget v4, v2, Lm0/l;->d:I

    and-int/2addr v4, v0

    if-eqz v4, :cond_7

    iget v4, v2, Lm0/l;->c:I

    and-int/2addr v4, v0

    if-eqz v4, :cond_6

    move-object v4, v2

    :goto_3
    if-eqz v4, :cond_6

    instance-of v5, v4, LB0/j;

    if-eqz v5, :cond_5

    check-cast v4, LB0/j;

    invoke-interface {v4}, LB0/j;->n()V

    :cond_5
    const/4 v4, 0x0

    goto :goto_3

    :cond_6
    if-eq v2, v3, :cond_7

    iget-object v2, v2, Lm0/l;->f:Lm0/l;

    goto :goto_2

    :cond_7
    :goto_4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_8
    iget-object v0, p0, LB0/O;->p:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    invoke-interface {p1}, Lz0/y;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    :cond_a
    invoke-interface {p1}, Lz0/y;->a()Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, LB0/O;->p:Ljava/util/LinkedHashMap;

    invoke-static {v0, v2}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, v1, Landroidx/compose/ui/node/a;->s:LB0/G;

    iget-object v0, v0, LB0/G;->m:LB0/F;

    iget-object v0, v0, LB0/F;->m:LB0/z;

    invoke-virtual {v0}, LB0/z;->e()V

    iget-object v0, p0, LB0/O;->p:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, LB0/O;->p:Ljava/util/LinkedHashMap;

    :cond_b
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-interface {p1}, Lz0/y;->a()Ljava/util/Map;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_5

    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "null layer with a non-null layerBlock"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    :goto_5
    return-void
.end method

.method public final P(J)J
    .locals 4

    iget-wide v0, p0, LB0/O;->q:J

    invoke-static {p1, p2}, Lr0/b;->a(J)F

    move-result p0

    sget v2, LH0/i;->c:I

    const/16 v2, 0x20

    shr-long v2, v0, v2

    long-to-int v2, v2

    int-to-float v2, v2

    add-float/2addr p0, v2

    invoke-static {p1, p2}, Lr0/b;->b(J)F

    move-result p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    long-to-int p2, v0

    int-to-float p2, p2

    add-float/2addr p1, p2

    invoke-static {p0, p1}, LG5/A;->a(FF)J

    move-result-wide p0

    return-wide p0
.end method

.method public final Q(Lsb/k;Z)V
    .locals 2

    iget-object v0, p0, LB0/O;->i:Landroidx/compose/ui/node/a;

    if-nez p2, :cond_0

    iget-object p2, p0, LB0/O;->l:Lsb/k;

    if-ne p2, p1, :cond_0

    iget-object p2, p0, LB0/O;->m:LH0/b;

    iget-object v1, v0, Landroidx/compose/ui/node/a;->l:LH0/b;

    invoke-static {p2, v1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, LB0/O;->n:LH0/k;

    iget-object v1, v0, Landroidx/compose/ui/node/a;->m:LH0/k;

    :cond_0
    iput-object p1, p0, LB0/O;->l:Lsb/k;

    iget-object p1, v0, Landroidx/compose/ui/node/a;->l:LH0/b;

    iput-object p1, p0, LB0/O;->m:LH0/b;

    iget-object p1, v0, Landroidx/compose/ui/node/a;->m:LH0/k;

    iput-object p1, p0, LB0/O;->n:LH0/k;

    const/4 p1, 0x0

    iput-boolean p1, p0, LB0/O;->u:Z

    return-void
.end method

.method public final c()Z
    .locals 0

    invoke-virtual {p0}, LB0/O;->H()Lm0/l;

    move-result-object p0

    iget-boolean p0, p0, Lm0/l;->j:Z

    return p0
.end method

.method public final d()J
    .locals 2

    iget-wide v0, p0, Lz0/G;->c:J

    return-wide v0
.end method

.method public final e()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, LB0/O;->i:Landroidx/compose/ui/node/a;

    iget-object v1, v0, Landroidx/compose/ui/node/a;->r:LB0/M;

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, LB0/M;->k(I)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    invoke-virtual {p0}, LB0/O;->H()Lm0/l;

    iget-object p0, v0, Landroidx/compose/ui/node/a;->r:LB0/M;

    iget-object p0, p0, LB0/M;->e:Ljava/lang/Object;

    check-cast p0, LB0/V;

    move-object v1, v3

    :goto_0
    if-eqz p0, :cond_4

    iget v4, p0, Lm0/l;->c:I

    and-int/2addr v4, v2

    if-eqz v4, :cond_3

    move-object v4, p0

    :goto_1
    if-eqz v4, :cond_3

    instance-of v5, v4, LB0/c;

    if-eqz v5, :cond_2

    check-cast v4, LB0/c;

    iget-object v5, v0, Landroidx/compose/ui/node/a;->l:LH0/b;

    iget-object v4, v4, LB0/c;->k:Lm0/k;

    const-string v6, "null cannot be cast to non-null type androidx.compose.ui.layout.ParentDataModifier"

    invoke-static {v4, v6}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, LU/r;

    const-string v6, "<this>"

    invoke-static {v5, v6}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    move-object v1, v3

    :goto_2
    if-nez v1, :cond_1

    new-instance v1, LU/w;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v5, 0x0

    iput v5, v1, LU/w;->a:F

    const/4 v5, 0x1

    iput-boolean v5, v1, LU/w;->b:Z

    iput-object v3, v1, LU/w;->c:LG5/x2;

    :cond_1
    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v1, LU/w;->a:F

    iget-boolean v4, v4, LU/r;->a:Z

    iput-boolean v4, v1, LU/w;->b:Z

    :cond_2
    move-object v4, v3

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lm0/l;->e:Lm0/l;

    goto :goto_0

    :cond_4
    return-object v1

    :cond_5
    return-object v3
.end method

.method public final getFontScale()F
    .locals 0

    iget-object p0, p0, LB0/O;->i:Landroidx/compose/ui/node/a;

    iget-object p0, p0, Landroidx/compose/ui/node/a;->l:LH0/b;

    invoke-interface {p0}, LH0/b;->getFontScale()F

    move-result p0

    return p0
.end method

.method public final getLayoutDirection()LH0/k;
    .locals 0

    iget-object p0, p0, LB0/O;->i:Landroidx/compose/ui/node/a;

    iget-object p0, p0, Landroidx/compose/ui/node/a;->m:LH0/k;

    return-object p0
.end method

.method public final m()F
    .locals 0

    iget-object p0, p0, LB0/O;->i:Landroidx/compose/ui/node/a;

    iget-object p0, p0, Landroidx/compose/ui/node/a;->l:LH0/b;

    invoke-interface {p0}, LH0/b;->m()F

    move-result p0

    return p0
.end method

.method public final y()LB0/I;
    .locals 0

    iget-object p0, p0, LB0/O;->j:LB0/O;

    return-object p0
.end method

.method public final z()Z
    .locals 0

    iget-object p0, p0, LB0/O;->o:Lz0/y;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
