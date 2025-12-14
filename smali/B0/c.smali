.class public final LB0/c;
.super Lm0/l;
.source "SourceFile"

# interfaces
.implements LB0/o;
.implements LB0/j;
.implements LB0/U;
.implements LB0/S;
.implements LA0/e;
.implements LB0/k;
.implements Lq0/c;
.implements LB0/i;


# instance fields
.field public k:Lm0/k;

.field public l:LA0/a;

.field public m:Ljava/util/HashSet;


# virtual methods
.method public final b(LA0/g;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, LB0/c;->m:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lm0/l;->a:Lm0/l;

    iget-boolean v1, v0, Lm0/l;->j:Z

    if-eqz v1, :cond_5

    iget-object v0, v0, Lm0/l;->e:Lm0/l;

    invoke-static {p0}, LB0/d;->m(LB0/i;)Landroidx/compose/ui/node/a;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_4

    iget-object v1, p0, Landroidx/compose/ui/node/a;->r:LB0/M;

    iget-object v1, v1, LB0/M;->f:Ljava/lang/Object;

    check-cast v1, Lm0/l;

    iget v1, v1, Lm0/l;->d:I

    and-int/lit8 v1, v1, 0x20

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    :goto_1
    if-eqz v0, :cond_2

    iget v1, v0, Lm0/l;->c:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_1

    move-object v1, v0

    :goto_2
    if-eqz v1, :cond_1

    instance-of v3, v1, LA0/e;

    if-eqz v3, :cond_0

    check-cast v1, LA0/e;

    invoke-interface {v1}, LA0/e;->e()LAb/E;

    move-result-object v3

    invoke-virtual {v3, p1}, LAb/E;->d(LA0/g;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, LA0/e;->e()LAb/E;

    move-result-object p0

    invoke-virtual {p0, p1}, LAb/E;->h(LA0/g;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    move-object v1, v2

    goto :goto_2

    :cond_1
    iget-object v0, v0, Lm0/l;->e:Lm0/l;

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroidx/compose/ui/node/a;->j()Landroidx/compose/ui/node/a;

    move-result-object p0

    if-eqz p0, :cond_3

    iget-object v0, p0, Landroidx/compose/ui/node/a;->r:LB0/M;

    if-eqz v0, :cond_3

    iget-object v0, v0, LB0/M;->e:Ljava/lang/Object;

    check-cast v0, LB0/V;

    goto :goto_0

    :cond_3
    move-object v0, v2

    goto :goto_0

    :cond_4
    iget-object p0, p1, LA0/g;->a:Ltb/m;

    invoke-interface {p0}, Lsb/a;->invoke()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "visitAncestors called on an unattached node"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final d(LB0/I;Lz0/w;J)Lz0/y;
    .locals 1

    iget-object p0, p0, LB0/c;->k:Lm0/k;

    const-string v0, "null cannot be cast to non-null type androidx.compose.ui.layout.LayoutModifier"

    invoke-static {p0, v0}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lz0/k;

    invoke-interface {p0, p1, p2, p3, p4}, Lz0/k;->d(LB0/I;Lz0/w;J)Lz0/y;

    move-result-object p0

    return-object p0
.end method

.method public final e()LAb/E;
    .locals 0

    iget-object p0, p0, LB0/c;->l:LA0/a;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, LA0/b;->a:LA0/b;

    :goto_0
    return-object p0
.end method

.method public final k()V
    .locals 10

    iget-object p0, p0, LB0/c;->k:Lm0/k;

    const-string v0, "null cannot be cast to non-null type androidx.compose.ui.input.pointer.PointerInputModifier"

    invoke-static {p0, v0}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lx0/g;

    iget-object p0, p0, Lx0/g;->b:Lo3/l;

    iget-object v0, p0, Lo3/l;->a:Ljava/lang/Object;

    check-cast v0, Lx0/f;

    sget-object v1, Lx0/f;->Dispatching:Lx0/f;

    if-ne v0, v1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    new-instance v0, Lm9/g;

    iget-object v1, p0, Lo3/l;->b:Ljava/lang/Object;

    check-cast v1, Lx0/g;

    const/4 v2, 0x6

    invoke-direct {v0, v2, v1}, Lm9/g;-><init>(ILjava/lang/Object;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-wide v2, v4

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/MotionEvent;->setSource(I)V

    invoke-virtual {v0, v2}, Lm9/g;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    sget-object v0, Lx0/f;->Unknown:Lx0/f;

    iput-object v0, p0, Lo3/l;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    return-void
.end method

.method public final n()V
    .locals 0

    invoke-static {p0}, LB0/d;->j(LB0/j;)V

    return-void
.end method

.method public final q()V
    .locals 1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "applyFocusProperties called on wrong node"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LB0/c;->k:Lm0/k;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LB0/c;->y(Z)V

    return-void
.end method

.method public final v()V
    .locals 0

    invoke-virtual {p0}, LB0/c;->z()V

    return-void
.end method

.method public final y(Z)V
    .locals 5

    iget-boolean v0, p0, Lm0/l;->j:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, LB0/c;->k:Lm0/k;

    iget v1, p0, Lm0/l;->c:I

    and-int/lit8 v1, v1, 0x20

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    instance-of v1, v0, LA0/c;

    if-nez v1, :cond_3

    instance-of v1, v0, LA0/f;

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, LA0/f;

    iget-object v3, p0, LB0/c;->l:LA0/a;

    if-eqz v3, :cond_1

    invoke-interface {v1}, LA0/f;->getKey()LA0/g;

    move-result-object v4

    invoke-virtual {v3, v4}, LA0/a;->d(LA0/g;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    iput-object v1, v3, LA0/a;->a:LA0/f;

    invoke-static {p0}, LB0/d;->n(LB0/i;)LB0/P;

    throw v2

    :cond_1
    :goto_0
    new-instance v3, LA0/a;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v1, v3, LA0/a;->a:LA0/f;

    iput-object v3, p0, LB0/c;->l:LA0/a;

    invoke-static {p0}, LB0/d;->c(LB0/c;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p0}, LB0/d;->n(LB0/i;)LB0/P;

    throw v2

    :cond_3
    invoke-static {p0}, LB0/d;->n(LB0/i;)LB0/P;

    throw v2

    :cond_4
    :goto_1
    iget v1, p0, Lm0/l;->c:I

    and-int/lit8 v1, v1, 0x4

    const/4 v3, 0x2

    if-eqz v1, :cond_5

    if-nez p1, :cond_5

    invoke-static {p0, v3}, LB0/d;->l(LB0/i;I)LB0/O;

    move-result-object v1

    invoke-virtual {v1}, LB0/O;->J()V

    :cond_5
    iget v1, p0, Lm0/l;->c:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_7

    invoke-static {p0}, LB0/d;->c(LB0/c;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lm0/l;->g:LB0/O;

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    check-cast v1, LB0/q;

    iput-object p0, v1, LB0/q;->v:LB0/o;

    :cond_6
    if-nez p1, :cond_7

    invoke-static {p0, v3}, LB0/d;->l(LB0/i;I)LB0/O;

    move-result-object p1

    invoke-virtual {p1}, LB0/O;->J()V

    invoke-static {p0}, LB0/d;->m(LB0/i;)Landroidx/compose/ui/node/a;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/ui/node/a;->o()V

    :cond_7
    instance-of p1, v0, LV/G;

    if-eqz p1, :cond_8

    move-object p1, v0

    check-cast p1, LV/G;

    invoke-static {p0}, LB0/d;->m(LB0/i;)Landroidx/compose/ui/node/a;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "remeasurement"

    invoke-static {v1, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, LV/G;->a:LV/J;

    iget-object p1, p1, LV/J;->k:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p1, v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    :cond_8
    iget p1, p0, Lm0/l;->c:I

    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_b

    instance-of p1, v0, Lz0/C;

    if-eqz p1, :cond_9

    invoke-static {p0}, LB0/d;->c(LB0/c;)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-static {p0}, LB0/d;->m(LB0/i;)Landroidx/compose/ui/node/a;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/ui/node/a;->o()V

    :cond_9
    instance-of p1, v0, Lz0/B;

    if-eqz p1, :cond_b

    invoke-static {p0}, LB0/d;->c(LB0/c;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_2

    :cond_a
    invoke-static {p0}, LB0/d;->n(LB0/i;)LB0/P;

    throw v2

    :cond_b
    :goto_2
    iget p1, p0, Lm0/l;->c:I

    and-int/lit16 p1, p1, 0x100

    if-eqz p1, :cond_c

    instance-of p1, v0, LV/b;

    if-eqz p1, :cond_c

    invoke-static {p0}, LB0/d;->c(LB0/c;)Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-static {p0}, LB0/d;->m(LB0/i;)Landroidx/compose/ui/node/a;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/ui/node/a;->o()V

    :cond_c
    iget p1, p0, Lm0/l;->c:I

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_d

    instance-of p1, v0, Lx0/g;

    if-eqz p1, :cond_d

    check-cast v0, Lx0/g;

    iget-object p1, v0, Lx0/g;->b:Lo3/l;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_d
    iget p1, p0, Lm0/l;->c:I

    and-int/lit8 p1, p1, 0x8

    if-nez p1, :cond_e

    return-void

    :cond_e
    invoke-static {p0}, LB0/d;->n(LB0/i;)LB0/P;

    throw v2

    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "initializeModifier called on unattached node"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final z()V
    .locals 3

    iget-boolean v0, p0, Lm0/l;->j:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, LB0/c;->k:Lm0/k;

    iget v1, p0, Lm0/l;->c:I

    and-int/lit8 v1, v1, 0x20

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    instance-of v1, v0, LA0/f;

    if-nez v1, :cond_0

    instance-of v1, v0, LA0/c;

    if-eqz v1, :cond_1

    check-cast v0, LA0/c;

    invoke-interface {v0}, LA0/c;->i()V

    goto :goto_0

    :cond_0
    invoke-static {p0}, LB0/d;->n(LB0/i;)LB0/P;

    throw v2

    :cond_1
    :goto_0
    iget v0, p0, Lm0/l;->c:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-static {p0}, LB0/d;->n(LB0/i;)LB0/P;

    throw v2

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "unInitializeModifier called on unattached node"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
