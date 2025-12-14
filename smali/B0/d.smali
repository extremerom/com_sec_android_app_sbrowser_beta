.class public abstract LB0/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LH0/c;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, LH0/c;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1}, LH0/c;-><init>(F)V

    sput-object v0, LB0/d;->a:LH0/c;

    return-void
.end method

.method public static final a(Lc0/d;Lm0/l;)V
    .locals 2

    invoke-static {p1}, LB0/d;->m(LB0/i;)Landroidx/compose/ui/node/a;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/ui/node/a;->l()Lc0/d;

    move-result-object p1

    iget v0, p1, Lc0/d;->c:I

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    iget-object p1, p1, Lc0/d;->a:[Ljava/lang/Object;

    :cond_0
    aget-object v1, p1, v0

    check-cast v1, Landroidx/compose/ui/node/a;

    iget-object v1, v1, Landroidx/compose/ui/node/a;->r:LB0/M;

    iget-object v1, v1, LB0/M;->f:Ljava/lang/Object;

    check-cast v1, Lm0/l;

    invoke-virtual {p0, v1}, Lc0/d;->c(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_0

    :cond_1
    return-void
.end method

.method public static final b(LB0/I;Lz0/i;)I
    .locals 4

    invoke-virtual {p0}, LB0/I;->y()LB0/I;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, LB0/I;->A()Lz0/y;

    move-result-object v1

    invoke-interface {v1}, Lz0/y;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/high16 v2, -0x80000000

    if-eqz v1, :cond_0

    invoke-virtual {p0}, LB0/I;->A()Lz0/y;

    move-result-object p0

    invoke-interface {p0}, Lz0/y;->a()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    :cond_0
    invoke-virtual {v0, p1}, LB0/I;->x(Lz0/i;)I

    move-result v1

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, v0, LB0/I;->f:Z

    iput-boolean v2, p0, LB0/I;->g:Z

    invoke-virtual {p0}, LB0/I;->D()V

    const/4 v2, 0x0

    iput-boolean v2, v0, LB0/I;->f:Z

    iput-boolean v2, p0, LB0/I;->g:Z

    instance-of p0, p1, Lz0/i;

    if-eqz p0, :cond_2

    invoke-virtual {v0}, LB0/I;->B()J

    move-result-wide p0

    sget v0, LH0/i;->c:I

    const-wide v2, 0xffffffffL

    and-long/2addr p0, v2

    :goto_0
    long-to-int p0, p0

    add-int/2addr v1, p0

    move v2, v1

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, LB0/I;->B()J

    move-result-wide p0

    sget v0, LH0/i;->c:I

    const/16 v0, 0x20

    shr-long/2addr p0, v0

    goto :goto_0

    :cond_3
    :goto_1
    return v2

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Child of "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " cannot be null when calculating alignment line"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final c(LB0/c;)Z
    .locals 1

    invoke-static {p0}, LB0/d;->m(LB0/i;)Landroidx/compose/ui/node/a;

    move-result-object p0

    iget-object p0, p0, Landroidx/compose/ui/node/a;->r:LB0/M;

    iget-object p0, p0, LB0/M;->e:Ljava/lang/Object;

    check-cast p0, LB0/V;

    const-string v0, "null cannot be cast to non-null type androidx.compose.ui.node.TailModifierNode"

    invoke-static {p0, v0}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p0, p0, LB0/V;->k:Z

    return p0
.end method

.method public static final d(Lm0/l;)V
    .locals 2

    iget-boolean v0, p0, Lm0/l;->j:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lm0/l;->c:I

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, LB0/d;->e(Lm0/l;II)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "autoInvalidateInsertedNode called on unattached node"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final e(Lm0/l;II)V
    .locals 5

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lm0/l;->s()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    and-int/lit8 v0, p1, 0x2

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    instance-of v0, p0, LB0/o;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, LB0/o;

    invoke-static {v0}, LB0/d;->m(LB0/i;)Landroidx/compose/ui/node/a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/a;->o()V

    if-ne p2, v1, :cond_1

    invoke-static {p0, v1}, LB0/d;->l(LB0/i;I)LB0/O;

    move-result-object v0

    iget-object v0, v0, LB0/O;->t:LA4/a;

    invoke-virtual {v0}, LA4/a;->invoke()Ljava/lang/Object;

    :cond_1
    and-int/lit16 v0, p1, 0x100

    if-eqz v0, :cond_2

    instance-of v0, p0, LB0/k;

    if-eqz v0, :cond_2

    invoke-static {p0}, LB0/d;->m(LB0/i;)Landroidx/compose/ui/node/a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/a;->o()V

    :cond_2
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_3

    instance-of v0, p0, LB0/j;

    if-eqz v0, :cond_3

    move-object v0, p0

    check-cast v0, LB0/j;

    invoke-static {v0}, LB0/d;->j(LB0/j;)V

    :cond_3
    and-int/lit8 v0, p1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    instance-of v0, p0, LB0/U;

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    check-cast p0, LB0/U;

    invoke-static {p0}, LB0/d;->m(LB0/i;)Landroidx/compose/ui/node/a;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, LB0/d;->o(Landroidx/compose/ui/node/a;)LB0/P;

    throw v2

    :cond_5
    :goto_0
    and-int/lit8 v0, p1, 0x40

    const/4 v3, 0x1

    if-eqz v0, :cond_6

    instance-of v0, p0, LB0/c;

    if-eqz v0, :cond_6

    move-object v0, p0

    check-cast v0, LB0/c;

    invoke-static {v0}, LB0/d;->m(LB0/i;)Landroidx/compose/ui/node/a;

    move-result-object v0

    iget-object v0, v0, Landroidx/compose/ui/node/a;->s:LB0/G;

    iget-object v4, v0, LB0/G;->m:LB0/F;

    iput-boolean v3, v4, LB0/F;->j:Z

    iget-object v0, v0, LB0/G;->n:LB0/C;

    if-eqz v0, :cond_6

    iput-boolean v3, v0, LB0/C;->p:Z

    :cond_6
    and-int/lit16 v0, p1, 0x400

    if-eqz v0, :cond_8

    instance-of v0, p0, Lq0/g;

    if-eqz v0, :cond_8

    if-ne p2, v1, :cond_7

    invoke-virtual {p0}, Lm0/l;->w()V

    goto :goto_1

    :cond_7
    invoke-static {p0}, LB0/d;->n(LB0/i;)LB0/P;

    throw v2

    :cond_8
    :goto_1
    and-int/lit16 v0, p1, 0x800

    if-eqz v0, :cond_10

    instance-of v0, p0, Lq0/c;

    if-eqz v0, :cond_10

    move-object v0, p0

    check-cast v0, Lq0/c;

    sput-object v2, LB0/e;->b:Ljava/lang/Boolean;

    invoke-interface {v0}, Lq0/c;->q()V

    sget-object v4, LB0/e;->b:Ljava/lang/Boolean;

    if-eqz v4, :cond_10

    if-ne p2, v1, :cond_f

    check-cast v0, Lm0/l;

    iget-object p2, v0, Lm0/l;->a:Lm0/l;

    iget-boolean v0, p2, Lm0/l;->j:Z

    if-eqz v0, :cond_e

    new-instance v0, Lc0/d;

    const/16 v1, 0x10

    new-array v1, v1, [Lm0/l;

    invoke-direct {v0, v1}, Lc0/d;-><init>([Ljava/lang/Object;)V

    iget-object v1, p2, Lm0/l;->f:Lm0/l;

    if-nez v1, :cond_9

    invoke-static {v0, p2}, LB0/d;->a(Lc0/d;Lm0/l;)V

    goto :goto_2

    :cond_9
    invoke-virtual {v0, v1}, Lc0/d;->c(Ljava/lang/Object;)V

    :cond_a
    :goto_2
    invoke-virtual {v0}, Lc0/d;->m()Z

    move-result p2

    if-eqz p2, :cond_10

    iget p2, v0, Lc0/d;->c:I

    sub-int/2addr p2, v3

    invoke-virtual {v0, p2}, Lc0/d;->n(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lm0/l;

    iget v1, p2, Lm0/l;->d:I

    and-int/lit16 v1, v1, 0x400

    if-nez v1, :cond_b

    invoke-static {v0, p2}, LB0/d;->a(Lc0/d;Lm0/l;)V

    goto :goto_2

    :cond_b
    :goto_3
    if-eqz p2, :cond_a

    iget v1, p2, Lm0/l;->c:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_d

    :goto_4
    if-eqz p2, :cond_a

    instance-of v1, p2, Lq0/g;

    if-nez v1, :cond_c

    move-object p2, v2

    goto :goto_4

    :cond_c
    check-cast p2, Lq0/g;

    invoke-static {p2}, LB0/d;->n(LB0/i;)LB0/P;

    throw v2

    :cond_d
    iget-object p2, p2, Lm0/l;->f:Lm0/l;

    goto :goto_3

    :cond_e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "visitChildren called on an unattached node"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f
    invoke-static {v0}, LB0/d;->n(LB0/i;)LB0/P;

    throw v2

    :cond_10
    and-int/lit16 p1, p1, 0x1000

    if-eqz p1, :cond_12

    instance-of p1, p0, LB0/c;

    if-nez p1, :cond_11

    goto :goto_5

    :cond_11
    check-cast p0, LB0/c;

    invoke-static {p0}, LB0/d;->n(LB0/i;)LB0/P;

    throw v2

    :cond_12
    :goto_5
    return-void
.end method

.method public static final f(Lm0/l;)V
    .locals 2

    iget-boolean v0, p0, Lm0/l;->j:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lm0/l;->c:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, LB0/d;->e(Lm0/l;II)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "autoInvalidateUpdatedNode called on unattached node"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final g(Lm0/k;)I
    .locals 2

    instance-of v0, p0, Lz0/k;

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    instance-of v1, p0, Lp0/b;

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    instance-of v1, p0, Landroidx/compose/ui/semantics/AppendedSemanticsElement;

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x8

    :cond_2
    instance-of v1, p0, Lx0/g;

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x10

    :cond_3
    instance-of v1, p0, LA0/c;

    if-nez v1, :cond_4

    instance-of v1, p0, LA0/f;

    if-eqz v1, :cond_5

    :cond_4
    or-int/lit8 v0, v0, 0x20

    :cond_5
    instance-of v1, p0, LV/b;

    if-eqz v1, :cond_6

    or-int/lit16 v0, v0, 0x100

    :cond_6
    instance-of v1, p0, LU/r;

    if-eqz v1, :cond_7

    or-int/lit8 v0, v0, 0x40

    :cond_7
    instance-of v1, p0, Lz0/B;

    if-nez v1, :cond_8

    instance-of p0, p0, Lz0/C;

    if-eqz p0, :cond_9

    :cond_8
    or-int/lit16 v0, v0, 0x80

    :cond_9
    return v0
.end method

.method public static final h([I)I
    .locals 3

    const/4 v0, 0x2

    aget v0, p0, v0

    const/4 v1, 0x0

    aget v1, p0, v1

    sub-int/2addr v0, v1

    const/4 v1, 0x3

    aget v1, p0, v1

    const/4 v2, 0x1

    aget p0, p0, v2

    sub-int/2addr v1, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public static final i(I)Z
    .locals 0

    and-int/lit16 p0, p0, 0x80

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final j(LB0/j;)V
    .locals 1

    move-object v0, p0

    check-cast v0, Lm0/l;

    iget-object v0, v0, Lm0/l;->a:Lm0/l;

    iget-boolean v0, v0, Lm0/l;->j:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {p0, v0}, LB0/d;->l(LB0/i;I)LB0/O;

    move-result-object p0

    invoke-virtual {p0}, LB0/O;->J()V

    :cond_0
    return-void
.end method

.method public static final k(Landroidx/compose/ui/node/a;)Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/a;->b:Landroidx/compose/ui/node/a;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/compose/ui/node/a;->j()Landroidx/compose/ui/node/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/compose/ui/node/a;->b:Landroidx/compose/ui/node/a;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object p0, p0, Landroidx/compose/ui/node/a;->s:LB0/G;

    iget-boolean p0, p0, LB0/G;->b:Z

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static final l(LB0/i;I)LB0/O;
    .locals 2

    move-object v0, p0

    check-cast v0, Lm0/l;

    iget-object v0, v0, Lm0/l;->a:Lm0/l;

    iget-object v0, v0, Lm0/l;->g:LB0/O;

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, LB0/O;->H()Lm0/l;

    move-result-object v1

    if-eq v1, p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, LB0/d;->i(I)Z

    move-result p0

    if-eqz p0, :cond_1

    iget-object v0, v0, LB0/O;->j:LB0/O;

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static final m(LB0/i;)Landroidx/compose/ui/node/a;
    .locals 1

    check-cast p0, Lm0/l;

    iget-object p0, p0, Lm0/l;->a:Lm0/l;

    iget-object p0, p0, Lm0/l;->g:LB0/O;

    if-eqz p0, :cond_0

    iget-object p0, p0, LB0/O;->i:Landroidx/compose/ui/node/a;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot obtain node coordinator. Is the Modifier.Node attached?"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final n(LB0/i;)LB0/P;
    .locals 1

    invoke-static {p0}, LB0/d;->m(LB0/i;)Landroidx/compose/ui/node/a;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "This node does not have an owner."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final o(Landroidx/compose/ui/node/a;)LB0/P;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "LayoutNode should be attached to an owner"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
