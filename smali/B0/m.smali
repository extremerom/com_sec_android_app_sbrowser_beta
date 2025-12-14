.class public final LB0/m;
.super LB0/O;
.source "SourceFile"


# instance fields
.field public final v:LB0/V;

.field public w:LB0/l;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sget-wide v1, Ls0/b;->c:J

    invoke-static {v1, v2}, Ls0/e;->e(J)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/node/a;)V
    .locals 2

    invoke-direct {p0, p1}, LB0/O;-><init>(Landroidx/compose/ui/node/a;)V

    new-instance v0, LB0/V;

    invoke-direct {v0}, Lm0/l;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Lm0/l;->d:I

    iput-object v0, p0, LB0/m;->v:LB0/V;

    iput-object p0, v0, Lm0/l;->g:LB0/O;

    iget-object p1, p1, Landroidx/compose/ui/node/a;->b:Landroidx/compose/ui/node/a;

    if-eqz p1, :cond_0

    new-instance p1, LB0/l;

    invoke-direct {p1, p0}, LB0/J;-><init>(LB0/O;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, LB0/m;->w:LB0/l;

    return-void
.end method


# virtual methods
.method public final F()V
    .locals 1

    iget-object v0, p0, LB0/m;->w:LB0/l;

    if-nez v0, :cond_0

    new-instance v0, LB0/l;

    invoke-direct {v0, p0}, LB0/J;-><init>(LB0/O;)V

    iput-object v0, p0, LB0/m;->w:LB0/l;

    :cond_0
    return-void
.end method

.method public final G()LB0/J;
    .locals 0

    iget-object p0, p0, LB0/m;->w:LB0/l;

    return-object p0
.end method

.method public final H()Lm0/l;
    .locals 0

    iget-object p0, p0, LB0/m;->v:LB0/V;

    return-object p0
.end method

.method public final o(J)Lz0/G;
    .locals 6

    invoke-virtual {p0, p1, p2}, Lz0/G;->v(J)V

    iget-object v0, p0, LB0/O;->i:Landroidx/compose/ui/node/a;

    invoke-virtual {v0}, Landroidx/compose/ui/node/a;->l()Lc0/d;

    move-result-object v1

    iget v2, v1, Lc0/d;->c:I

    if-lez v2, :cond_1

    iget-object v1, v1, Lc0/d;->a:[Ljava/lang/Object;

    const/4 v3, 0x0

    :cond_0
    aget-object v4, v1, v3

    check-cast v4, Landroidx/compose/ui/node/a;

    iget-object v4, v4, Landroidx/compose/ui/node/a;->s:LB0/G;

    iget-object v4, v4, LB0/G;->m:LB0/F;

    sget-object v5, LB0/x;->NotUsed:LB0/x;

    iput-object v5, v4, LB0/F;->h:LB0/x;

    add-int/lit8 v3, v3, 0x1

    if-lt v3, v2, :cond_0

    :cond_1
    iget-object v1, v0, Landroidx/compose/ui/node/a;->j:Lz0/x;

    iget-object v0, v0, Landroidx/compose/ui/node/a;->s:LB0/G;

    iget-object v0, v0, LB0/G;->m:LB0/F;

    invoke-virtual {v0}, LB0/F;->w()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, p0, v0, p1, p2}, Lz0/x;->a(LB0/I;Ljava/util/List;J)Lz0/y;

    move-result-object p1

    invoke-virtual {p0, p1}, LB0/O;->O(Lz0/y;)V

    invoke-virtual {p0}, LB0/O;->L()V

    return-object p0
.end method

.method public final u(JFLsb/k;)V
    .locals 1

    invoke-virtual {p0, p1, p2, p3, p4}, LB0/O;->N(JFLsb/k;)V

    iget-boolean p1, p0, LB0/I;->f:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, LB0/O;->M()V

    iget-object p0, p0, LB0/O;->i:Landroidx/compose/ui/node/a;

    iget-object p0, p0, Landroidx/compose/ui/node/a;->s:LB0/G;

    iget-object p0, p0, LB0/G;->m:LB0/F;

    iget-object p1, p0, LB0/F;->s:LB0/G;

    iget-object p2, p1, LB0/G;->a:Landroidx/compose/ui/node/a;

    invoke-virtual {p2}, Landroidx/compose/ui/node/a;->j()Landroidx/compose/ui/node/a;

    move-result-object p2

    invoke-virtual {p0}, LB0/F;->n()LB0/m;

    move-result-object p3

    iget p3, p3, LB0/O;->r:F

    iget-object p1, p1, LB0/G;->a:Landroidx/compose/ui/node/a;

    iget-object p1, p1, Landroidx/compose/ui/node/a;->r:LB0/M;

    iget-object p4, p1, LB0/M;->d:Ljava/lang/Object;

    check-cast p4, LB0/O;

    :goto_0
    iget-object v0, p1, LB0/M;->c:Ljava/lang/Object;

    check-cast v0, LB0/m;

    if-eq p4, v0, :cond_1

    const-string v0, "null cannot be cast to non-null type androidx.compose.ui.node.LayoutModifierNodeCoordinator"

    invoke-static {p4, v0}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p4, LB0/q;

    iget v0, p4, LB0/O;->r:F

    add-float/2addr p3, v0

    iget-object p4, p4, LB0/O;->j:LB0/O;

    goto :goto_0

    :cond_1
    iget p1, p0, LB0/F;->q:F

    cmpg-float p1, p3, p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    iput p3, p0, LB0/F;->q:F

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroidx/compose/ui/node/a;->s()V

    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroidx/compose/ui/node/a;->n()V

    :cond_4
    :goto_1
    iget-boolean p1, p0, LB0/F;->l:Z

    if-nez p1, :cond_6

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Landroidx/compose/ui/node/a;->n()V

    :cond_5
    invoke-virtual {p0}, LB0/F;->x()V

    :cond_6
    if-eqz p2, :cond_8

    iget-object p1, p2, Landroidx/compose/ui/node/a;->s:LB0/G;

    iget-object p2, p1, LB0/G;->c:LB0/v;

    sget-object p3, LB0/v;->LayingOut:LB0/v;

    if-ne p2, p3, :cond_9

    iget p2, p0, LB0/F;->g:I

    const p3, 0x7fffffff

    if-ne p2, p3, :cond_7

    iget p2, p1, LB0/G;->i:I

    iput p2, p0, LB0/F;->g:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, LB0/G;->i:I

    goto :goto_2

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Place was called on a node which was placed already"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    const/4 p1, 0x0

    iput p1, p0, LB0/F;->g:I

    :cond_9
    :goto_2
    invoke-virtual {p0}, LB0/F;->i()V

    return-void
.end method

.method public final w(Lz0/i;)I
    .locals 5

    iget-object v0, p0, LB0/m;->w:LB0/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, LB0/l;->w(Lz0/i;)I

    move-result p0

    goto :goto_1

    :cond_0
    iget-object p0, p0, LB0/O;->i:Landroidx/compose/ui/node/a;

    iget-object p0, p0, Landroidx/compose/ui/node/a;->s:LB0/G;

    iget-object p0, p0, LB0/G;->m:LB0/F;

    iget-object v0, p0, LB0/F;->s:LB0/G;

    iget-object v1, v0, LB0/G;->c:LB0/v;

    sget-object v2, LB0/v;->Measuring:LB0/v;

    const/4 v3, 0x1

    iget-object v4, p0, LB0/F;->m:LB0/z;

    if-ne v1, v2, :cond_1

    iput-boolean v3, v4, LB0/z;->d:Z

    iget-boolean v1, v4, LB0/z;->b:Z

    if-eqz v1, :cond_2

    iput-boolean v3, v0, LB0/G;->d:Z

    iput-boolean v3, v0, LB0/G;->e:Z

    goto :goto_0

    :cond_1
    iput-boolean v3, v4, LB0/z;->e:Z

    :cond_2
    :goto_0
    invoke-virtual {p0}, LB0/F;->n()LB0/m;

    move-result-object v0

    iput-boolean v3, v0, LB0/I;->g:Z

    invoke-virtual {p0}, LB0/F;->i()V

    invoke-virtual {p0}, LB0/F;->n()LB0/m;

    move-result-object p0

    const/4 v0, 0x0

    iput-boolean v0, p0, LB0/I;->g:Z

    iget-object p0, v4, LB0/z;->g:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_1

    :cond_3
    const/high16 p0, -0x80000000

    :goto_1
    return p0
.end method
