.class public final LB3/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LB3/f;
.implements LB3/o;
.implements LB3/k;
.implements LC3/a;
.implements LB3/l;


# instance fields
.field public final a:Landroid/graphics/Matrix;

.field public final b:Landroid/graphics/Path;

.field public final c:Lz3/t;

.field public final d:LH3/c;

.field public final e:Ljava/lang/String;

.field public final f:Z

.field public final g:LC3/i;

.field public final h:LC3/i;

.field public final i:LC3/q;

.field public j:LB3/e;


# direct methods
.method public constructor <init>(Lz3/t;LH3/c;LG3/m;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, LB3/s;->a:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, LB3/s;->b:Landroid/graphics/Path;

    iput-object p1, p0, LB3/s;->c:Lz3/t;

    iput-object p2, p0, LB3/s;->d:LH3/c;

    iget-object p1, p3, LG3/m;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, LB3/s;->e:Ljava/lang/String;

    iget-boolean p1, p3, LG3/m;->d:Z

    iput-boolean p1, p0, LB3/s;->f:Z

    iget-object p1, p3, LG3/m;->c:LF3/b;

    invoke-virtual {p1}, LF3/b;->f0()LC3/e;

    move-result-object p1

    move-object v0, p1

    check-cast v0, LC3/i;

    iput-object v0, p0, LB3/s;->g:LC3/i;

    invoke-virtual {p2, p1}, LH3/c;->g(LC3/e;)V

    invoke-virtual {p1, p0}, LC3/e;->a(LC3/a;)V

    iget-object p1, p3, LG3/m;->e:LF3/e;

    check-cast p1, LF3/b;

    invoke-virtual {p1}, LF3/b;->f0()LC3/e;

    move-result-object p1

    move-object v0, p1

    check-cast v0, LC3/i;

    iput-object v0, p0, LB3/s;->h:LC3/i;

    invoke-virtual {p2, p1}, LH3/c;->g(LC3/e;)V

    invoke-virtual {p1, p0}, LC3/e;->a(LC3/a;)V

    iget-object p1, p3, LG3/m;->f:Ljava/lang/Object;

    check-cast p1, LF3/d;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, LC3/q;

    invoke-direct {p3, p1}, LC3/q;-><init>(LF3/d;)V

    iput-object p3, p0, LB3/s;->i:LC3/q;

    invoke-virtual {p3, p2}, LC3/q;->a(LH3/c;)V

    invoke-virtual {p3, p0}, LC3/q;->b(LC3/a;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    iget-object p0, p0, LB3/s;->c:Lz3/t;

    invoke-virtual {p0}, Lz3/t;->invalidateSelf()V

    return-void
.end method

.method public final b(Ljava/util/List;Ljava/util/List;)V
    .locals 0

    iget-object p0, p0, LB3/s;->j:LB3/e;

    invoke-virtual {p0, p1, p2}, LB3/e;->b(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public final c(LE3/f;ILjava/util/ArrayList;LE3/f;)V
    .locals 3

    invoke-static {p1, p2, p3, p4, p0}, LL3/e;->e(LE3/f;ILjava/util/ArrayList;LE3/f;LB3/l;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, LB3/s;->j:LB3/e;

    iget-object v1, v1, LB3/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, LB3/s;->j:LB3/e;

    iget-object v1, v1, LB3/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LB3/d;

    instance-of v2, v1, LB3/l;

    if-eqz v2, :cond_0

    check-cast v1, LB3/l;

    invoke-static {p1, p2, p3, p4, v1}, LL3/e;->e(LE3/f;ILjava/util/ArrayList;LE3/f;LB3/l;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final d(Landroid/graphics/ColorFilter;Lo3/e;)V
    .locals 1

    iget-object v0, p0, LB3/s;->i:LC3/q;

    invoke-virtual {v0, p1, p2}, LC3/q;->c(Landroid/graphics/ColorFilter;Lo3/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lz3/w;->p:Ljava/lang/Float;

    if-ne p1, v0, :cond_1

    iget-object p0, p0, LB3/s;->g:LC3/i;

    invoke-virtual {p0, p2}, LC3/e;->k(Lo3/e;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lz3/w;->q:Ljava/lang/Float;

    if-ne p1, v0, :cond_2

    iget-object p0, p0, LB3/s;->h:LC3/i;

    invoke-virtual {p0, p2}, LC3/e;->k(Lo3/e;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final e()Landroid/graphics/Path;
    .locals 7

    iget-object v0, p0, LB3/s;->j:LB3/e;

    invoke-virtual {v0}, LB3/e;->e()Landroid/graphics/Path;

    move-result-object v0

    iget-object v1, p0, LB3/s;->b:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-object v2, p0, LB3/s;->g:LC3/i;

    invoke-virtual {v2}, LC3/e;->f()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v3, p0, LB3/s;->h:LC3/i;

    invoke-virtual {v3}, LC3/e;->f()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    float-to-int v2, v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_0

    iget-object v4, p0, LB3/s;->a:Landroid/graphics/Matrix;

    int-to-float v5, v2

    add-float/2addr v5, v3

    iget-object v6, p0, LB3/s;->i:LC3/q;

    invoke-virtual {v6, v5}, LC3/q;->f(F)Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    invoke-virtual {v1, v0, v4}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final f(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 0

    iget-object p0, p0, LB3/s;->j:LB3/e;

    invoke-virtual {p0, p1, p2, p3}, LB3/e;->f(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    return-void
.end method

.method public final g(Ljava/util/ListIterator;)V
    .locals 8

    iget-object v0, p0, LB3/s;->j:LB3/e;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LB3/d;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Ljava/util/ListIterator;->remove()V

    goto :goto_1

    :cond_2
    invoke-static {v6}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    new-instance p1, LB3/e;

    iget-object v3, p0, LB3/s;->d:LH3/c;

    const-string v4, "Repeater"

    iget-object v2, p0, LB3/s;->c:Lz3/t;

    iget-boolean v5, p0, LB3/s;->f:Z

    const/4 v7, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, LB3/e;-><init>(Lz3/t;LH3/c;Ljava/lang/String;ZLjava/util/ArrayList;LF3/d;)V

    iput-object p1, p0, LB3/s;->j:LB3/e;

    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LB3/s;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final h(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 9

    iget-object v0, p0, LB3/s;->g:LC3/i;

    invoke-virtual {v0}, LC3/e;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, LB3/s;->h:LC3/i;

    invoke-virtual {v1}, LC3/e;->f()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, LB3/s;->i:LC3/q;

    iget-object v3, v2, LC3/q;->m:LC3/e;

    invoke-virtual {v3}, LC3/e;->f()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    iget-object v5, v2, LC3/q;->n:LC3/e;

    invoke-virtual {v5}, LC3/e;->f()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    div-float/2addr v5, v4

    float-to-int v4, v0

    add-int/lit8 v4, v4, -0x1

    :goto_0
    if-ltz v4, :cond_0

    iget-object v6, p0, LB3/s;->a:Landroid/graphics/Matrix;

    invoke-virtual {v6, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    int-to-float v7, v4

    add-float v8, v7, v1

    invoke-virtual {v2, v8}, LC3/q;->f(F)Landroid/graphics/Matrix;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    int-to-float v8, p3

    div-float/2addr v7, v0

    invoke-static {v3, v5, v7}, LL3/e;->d(FFF)F

    move-result v7

    mul-float/2addr v7, v8

    iget-object v8, p0, LB3/s;->j:LB3/e;

    float-to-int v7, v7

    invoke-virtual {v8, p1, v6, v7}, LB3/e;->h(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method
