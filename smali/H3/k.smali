.class public final LH3/k;
.super LH3/c;
.source "SourceFile"


# instance fields
.field public final C:LB3/e;

.field public final D:LH3/e;


# direct methods
.method public constructor <init>(Lz3/t;LH3/i;LH3/e;Lz3/g;)V
    .locals 2

    invoke-direct {p0, p1, p2}, LH3/c;-><init>(Lz3/t;LH3/i;)V

    iput-object p3, p0, LH3/k;->D:LH3/e;

    new-instance p3, LG3/q;

    const-string v0, "__container"

    iget-object p2, p2, LH3/i;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-direct {p3, v0, v1, p2}, LG3/q;-><init>(Ljava/lang/String;ZLjava/util/List;)V

    new-instance p2, LB3/e;

    invoke-direct {p2, p1, p0, p3, p4}, LB3/e;-><init>(Lz3/t;LH3/c;LG3/q;Lz3/g;)V

    iput-object p2, p0, LH3/k;->C:LB3/e;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, LB3/e;->b(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final f(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, LH3/c;->f(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget-object p2, p0, LH3/c;->n:Landroid/graphics/Matrix;

    iget-object p0, p0, LH3/k;->C:LB3/e;

    invoke-virtual {p0, p1, p2, p3}, LB3/e;->f(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    return-void
.end method

.method public final k(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 0

    iget-object p0, p0, LH3/k;->C:LB3/e;

    invoke-virtual {p0, p1, p2, p3}, LB3/e;->h(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    return-void
.end method

.method public final l()Lo3/f;
    .locals 1

    iget-object v0, p0, LH3/c;->p:LH3/i;

    iget-object v0, v0, LH3/i;->w:Lo3/f;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, LH3/k;->D:LH3/e;

    iget-object p0, p0, LH3/c;->p:LH3/i;

    iget-object p0, p0, LH3/i;->w:Lo3/f;

    return-object p0
.end method

.method public final m()LA7/c;
    .locals 1

    iget-object v0, p0, LH3/c;->p:LH3/i;

    iget-object v0, v0, LH3/i;->x:LA7/c;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, LH3/k;->D:LH3/e;

    iget-object p0, p0, LH3/c;->p:LH3/i;

    iget-object p0, p0, LH3/i;->x:LA7/c;

    return-object p0
.end method

.method public final q(LE3/f;ILjava/util/ArrayList;LE3/f;)V
    .locals 0

    iget-object p0, p0, LH3/k;->C:LB3/e;

    invoke-virtual {p0, p1, p2, p3, p4}, LB3/e;->c(LE3/f;ILjava/util/ArrayList;LE3/f;)V

    return-void
.end method
