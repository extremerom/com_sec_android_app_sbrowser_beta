.class public final LB0/q;
.super LB0/O;
.source "SourceFile"


# instance fields
.field public v:LB0/o;

.field public w:LB0/p;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sget-wide v1, Ls0/b;->d:J

    invoke-static {v1, v2}, Ls0/e;->e(J)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/node/a;LB0/o;)V
    .locals 0

    invoke-direct {p0, p1}, LB0/O;-><init>(Landroidx/compose/ui/node/a;)V

    iput-object p2, p0, LB0/q;->v:LB0/o;

    iget-object p1, p1, Landroidx/compose/ui/node/a;->b:Landroidx/compose/ui/node/a;

    if-eqz p1, :cond_0

    new-instance p1, LB0/p;

    invoke-direct {p1, p0}, LB0/p;-><init>(LB0/q;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, LB0/q;->w:LB0/p;

    return-void
.end method


# virtual methods
.method public final F()V
    .locals 1

    iget-object v0, p0, LB0/q;->w:LB0/p;

    if-nez v0, :cond_0

    new-instance v0, LB0/p;

    invoke-direct {v0, p0}, LB0/p;-><init>(LB0/q;)V

    iput-object v0, p0, LB0/q;->w:LB0/p;

    :cond_0
    return-void
.end method

.method public final G()LB0/J;
    .locals 0

    iget-object p0, p0, LB0/q;->w:LB0/p;

    return-object p0
.end method

.method public final H()Lm0/l;
    .locals 0

    iget-object p0, p0, LB0/q;->v:LB0/o;

    check-cast p0, Lm0/l;

    iget-object p0, p0, Lm0/l;->a:Lm0/l;

    return-object p0
.end method

.method public final o(J)Lz0/G;
    .locals 2

    invoke-virtual {p0, p1, p2}, Lz0/G;->v(J)V

    iget-object v0, p0, LB0/q;->v:LB0/o;

    iget-object v1, p0, LB0/O;->j:LB0/O;

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-interface {v0, p0, v1, p1, p2}, LB0/o;->d(LB0/I;Lz0/w;J)Lz0/y;

    move-result-object p1

    invoke-virtual {p0, p1}, LB0/O;->O(Lz0/y;)V

    invoke-virtual {p0}, LB0/O;->L()V

    return-object p0
.end method

.method public final u(JFLsb/k;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, LB0/O;->N(JFLsb/k;)V

    iget-boolean p1, p0, LB0/I;->f:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, LB0/O;->M()V

    invoke-virtual {p0}, LB0/O;->A()Lz0/y;

    move-result-object p0

    invoke-interface {p0}, Lz0/y;->b()V

    return-void
.end method

.method public final w(Lz0/i;)I
    .locals 1

    iget-object v0, p0, LB0/q;->w:LB0/p;

    if-eqz v0, :cond_1

    iget-object p0, v0, LB0/J;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    const/high16 p0, -0x80000000

    goto :goto_0

    :cond_1
    invoke-static {p0, p1}, LB0/d;->b(LB0/I;Lz0/i;)I

    move-result p0

    :goto_0
    return p0
.end method
