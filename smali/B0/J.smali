.class public abstract LB0/J;
.super LB0/I;
.source "SourceFile"

# interfaces
.implements Lz0/w;


# instance fields
.field public final i:LB0/O;

.field public j:J

.field public k:Ljava/util/LinkedHashMap;

.field public l:Lz0/y;

.field public final m:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>(LB0/O;)V
    .locals 2

    invoke-direct {p0}, LB0/I;-><init>()V

    iput-object p1, p0, LB0/J;->i:LB0/O;

    sget-wide v0, LH0/i;->b:J

    iput-wide v0, p0, LB0/J;->j:J

    new-instance p1, Lz0/v;

    invoke-direct {p1, p0}, Lz0/v;-><init>(LB0/J;)V

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, LB0/J;->m:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public static final E(LB0/J;Lz0/y;)V
    .locals 4

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lz0/y;->getWidth()I

    move-result v0

    invoke-interface {p1}, Lz0/y;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, LG5/V2;->a(II)J

    move-result-wide v0

    iget-wide v2, p0, Lz0/G;->c:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iput-wide v0, p0, Lz0/G;->c:J

    invoke-virtual {p0}, Lz0/G;->t()V

    :goto_0
    sget-object v0, Ldb/r;->a:Ldb/r;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_3

    iget-wide v0, p0, Lz0/G;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    iput-wide v2, p0, Lz0/G;->c:J

    invoke-virtual {p0}, Lz0/G;->t()V

    :cond_3
    :goto_2
    iget-object v0, p0, LB0/J;->l:Lz0/y;

    invoke-static {v0, p1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    if-eqz p1, :cond_7

    iget-object v0, p0, LB0/J;->k:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    invoke-interface {p1}, Lz0/y;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_5
    invoke-interface {p1}, Lz0/y;->a()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, LB0/J;->k:Ljava/util/LinkedHashMap;

    invoke-static {v0, v1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, LB0/J;->i:LB0/O;

    iget-object v0, v0, LB0/O;->i:Landroidx/compose/ui/node/a;

    iget-object v0, v0, Landroidx/compose/ui/node/a;->s:LB0/G;

    iget-object v0, v0, LB0/G;->n:LB0/C;

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    iget-object v0, v0, LB0/C;->l:LB0/z;

    invoke-virtual {v0}, LB0/z;->e()V

    iget-object v0, p0, LB0/J;->k:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_6

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, LB0/J;->k:Ljava/util/LinkedHashMap;

    :cond_6
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-interface {p1}, Lz0/y;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_7
    iput-object p1, p0, LB0/J;->l:Lz0/y;

    return-void
.end method


# virtual methods
.method public final A()Lz0/y;
    .locals 1

    iget-object p0, p0, LB0/J;->l:Lz0/y;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "LookaheadDelegate has not been measured yet when measureResult is requested."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final B()J
    .locals 2

    iget-wide v0, p0, LB0/J;->j:J

    return-wide v0
.end method

.method public final D()V
    .locals 4

    iget-wide v0, p0, LB0/J;->j:J

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, LB0/J;->u(JFLsb/k;)V

    return-void
.end method

.method public F()V
    .locals 0

    invoke-virtual {p0}, LB0/J;->A()Lz0/y;

    move-result-object p0

    invoke-interface {p0}, Lz0/y;->b()V

    return-void
.end method

.method public final e()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, LB0/J;->i:LB0/O;

    invoke-virtual {p0}, LB0/O;->e()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final f()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final getFontScale()F
    .locals 0

    iget-object p0, p0, LB0/J;->i:LB0/O;

    invoke-virtual {p0}, LB0/O;->getFontScale()F

    move-result p0

    return p0
.end method

.method public final getLayoutDirection()LH0/k;
    .locals 0

    iget-object p0, p0, LB0/J;->i:LB0/O;

    iget-object p0, p0, LB0/O;->i:Landroidx/compose/ui/node/a;

    iget-object p0, p0, Landroidx/compose/ui/node/a;->m:LH0/k;

    return-object p0
.end method

.method public final m()F
    .locals 0

    iget-object p0, p0, LB0/J;->i:LB0/O;

    invoke-virtual {p0}, LB0/O;->m()F

    move-result p0

    return p0
.end method

.method public final u(JFLsb/k;)V
    .locals 0

    iget-wide p3, p0, LB0/J;->j:J

    invoke-static {p3, p4, p1, p2}, LH0/i;->a(JJ)Z

    move-result p3

    if-nez p3, :cond_1

    iput-wide p1, p0, LB0/J;->j:J

    iget-object p1, p0, LB0/J;->i:LB0/O;

    iget-object p2, p1, LB0/O;->i:Landroidx/compose/ui/node/a;

    iget-object p2, p2, Landroidx/compose/ui/node/a;->s:LB0/G;

    iget-object p2, p2, LB0/G;->n:LB0/C;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, LB0/C;->x()V

    :cond_0
    invoke-static {p1}, LB0/I;->C(LB0/O;)V

    :cond_1
    iget-boolean p1, p0, LB0/I;->f:Z

    if-eqz p1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, LB0/J;->F()V

    return-void
.end method

.method public final y()LB0/I;
    .locals 0

    iget-object p0, p0, LB0/J;->i:LB0/O;

    iget-object p0, p0, LB0/O;->j:LB0/O;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, LB0/O;->G()LB0/J;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final z()Z
    .locals 0

    iget-object p0, p0, LB0/J;->l:Lz0/y;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
