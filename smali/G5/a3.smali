.class public abstract LG5/a3;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(LV/t;Lm0/m;LG5/J2;Lsb/n;La0/m;I)V
    .locals 7

    const-string v0, "itemProvider"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "measurePolicy"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p4, La0/q;

    const v0, 0x32d52bd3

    invoke-virtual {p4, v0}, La0/q;->S(I)La0/q;

    and-int/lit8 v0, p5, 0xe

    if-nez v0, :cond_1

    invoke-virtual {p4, p0}, La0/q;->e(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, p5

    goto :goto_1

    :cond_1
    move v0, p5

    :goto_1
    and-int/lit8 v1, p5, 0x70

    if-nez v1, :cond_3

    invoke-virtual {p4, p1}, La0/q;->e(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x20

    goto :goto_2

    :cond_2
    const/16 v1, 0x10

    :goto_2
    or-int/2addr v0, v1

    :cond_3
    and-int/lit16 v1, p5, 0x380

    if-nez v1, :cond_5

    invoke-virtual {p4, p2}, La0/q;->e(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x100

    goto :goto_3

    :cond_4
    const/16 v1, 0x80

    :goto_3
    or-int/2addr v0, v1

    :cond_5
    and-int/lit16 v1, p5, 0x1c00

    if-nez v1, :cond_7

    invoke-virtual {p4, p3}, La0/q;->g(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0x800

    goto :goto_4

    :cond_6
    const/16 v1, 0x400

    :goto_4
    or-int/2addr v0, v1

    :cond_7
    move v5, v0

    and-int/lit16 v0, v5, 0x16db

    const/16 v1, 0x492

    if-ne v0, v1, :cond_9

    invoke-virtual {p4}, La0/q;->x()Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {p4}, La0/q;->K()V

    goto :goto_6

    :cond_9
    :goto_5
    invoke-static {p0, p4}, La0/d;->I(Ljava/lang/Object;La0/m;)La0/a0;

    move-result-object v6

    new-instance v0, LW/j;

    move-object v1, v0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, LW/j;-><init>(LG5/J2;Lm0/m;Lsb/n;ILa0/a0;)V

    const v1, 0x500aafab

    invoke-static {p4, v1, v0}, Li0/b;->b(La0/m;ILtb/m;)Li0/a;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v0, p4, v1}, LG5/d3;->a(Li0/a;La0/m;I)V

    :goto_6
    invoke-virtual {p4}, La0/q;->r()La0/i0;

    move-result-object p4

    if-nez p4, :cond_a

    goto :goto_7

    :cond_a
    new-instance v6, LU1/h;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, LU1/h;-><init>(LV/t;Lm0/m;LG5/J2;Lsb/n;I)V

    iput-object v6, p4, La0/i0;->d:Lsb/n;

    :goto_7
    return-void
.end method

.method public static final b(I)Ljava/lang/String;
    .locals 1

    const-string v0, "appWidgetLayout-"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/autofill/password/k;->i(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Landroid/content/Context;Lx1/l;)LF1/j;
    .locals 7

    const-string v0, "context"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "element"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, LF1/j;->y()LF1/i;

    move-result-object v0

    instance-of v1, p1, LK1/l;

    if-eqz v1, :cond_0

    sget-object v2, LF1/k;->BOX:LF1/k;

    goto/16 :goto_0

    :cond_0
    instance-of v2, p1, LK1/n;

    if-eqz v2, :cond_2

    move-object v2, p1

    check-cast v2, LK1/n;

    iget-object v2, v2, LK1/n;->d:Lx1/r;

    invoke-static {v2}, LG5/W2;->a(Lx1/r;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, LF1/k;->RADIO_ROW:LF1/k;

    goto :goto_0

    :cond_1
    sget-object v2, LF1/k;->ROW:LF1/k;

    goto :goto_0

    :cond_2
    instance-of v2, p1, LK1/m;

    if-eqz v2, :cond_4

    move-object v2, p1

    check-cast v2, LK1/m;

    iget-object v2, v2, LK1/m;->d:Lx1/r;

    invoke-static {v2}, LG5/W2;->a(Lx1/r;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, LF1/k;->RADIO_COLUMN:LF1/k;

    goto :goto_0

    :cond_3
    sget-object v2, LF1/k;->COLUMN:LF1/k;

    goto :goto_0

    :cond_4
    instance-of v2, p1, Le2/b;

    if-eqz v2, :cond_5

    sget-object v2, LF1/k;->TEXT:LF1/k;

    goto :goto_0

    :cond_5
    instance-of v2, p1, LB1/b;

    if-eqz v2, :cond_6

    sget-object v2, LF1/k;->LIST_ITEM:LF1/k;

    goto :goto_0

    :cond_6
    instance-of v2, p1, LB1/a;

    if-eqz v2, :cond_7

    sget-object v2, LF1/k;->LAZY_COLUMN:LF1/k;

    goto :goto_0

    :cond_7
    instance-of v2, p1, LK1/o;

    if-eqz v2, :cond_8

    sget-object v2, LF1/k;->SPACER:LF1/k;

    goto :goto_0

    :cond_8
    instance-of v2, p1, Lx1/m;

    if-eqz v2, :cond_a

    instance-of v2, p1, Lz1/J;

    if-eqz v2, :cond_9

    sget-object v2, LF1/k;->IMAGE_BUTTON:LF1/k;

    goto :goto_0

    :cond_9
    sget-object v2, LF1/k;->IMAGE:LF1/k;

    goto :goto_0

    :cond_a
    instance-of v2, p1, Lz1/K;

    if-eqz v2, :cond_b

    sget-object v2, LF1/k;->LINEAR_PROGRESS_INDICATOR:LF1/k;

    goto :goto_0

    :cond_b
    instance-of v2, p1, Lz1/Q0;

    if-eqz v2, :cond_c

    sget-object v2, LF1/k;->REMOTE_VIEWS_ROOT:LF1/k;

    goto :goto_0

    :cond_c
    instance-of v2, p1, Lz1/L;

    if-eqz v2, :cond_1c

    sget-object v2, LF1/k;->SIZE_BOX:LF1/k;

    :goto_0
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/v;->c()V

    iget-object v3, v0, Landroidx/glance/appwidget/protobuf/v;->b:Landroidx/glance/appwidget/protobuf/y;

    check-cast v3, LF1/j;

    invoke-static {v3, v2}, LF1/j;->u(LF1/j;LF1/k;)V

    invoke-interface {p1}, Lx1/l;->b()Lx1/r;

    move-result-object v2

    sget-object v3, Lz1/y0;->z:Lz1/y0;

    const/4 v4, 0x0

    invoke-interface {v2, v4, v3}, Lx1/r;->a(Ljava/lang/Object;Lsb/n;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LK1/w;

    sget-object v3, Lf2/g;->a:Lf2/g;

    if-eqz v2, :cond_d

    iget-object v2, v2, LK1/w;->a:Lf2/h;

    goto :goto_1

    :cond_d
    move-object v2, v3

    :goto_1
    invoke-static {v2, p0}, LG5/a3;->e(Lf2/h;Landroid/content/Context;)LF1/c;

    move-result-object v2

    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/v;->c()V

    iget-object v5, v0, Landroidx/glance/appwidget/protobuf/v;->b:Landroidx/glance/appwidget/protobuf/y;

    check-cast v5, LF1/j;

    invoke-static {v5, v2}, LF1/j;->w(LF1/j;LF1/c;)V

    invoke-interface {p1}, Lx1/l;->b()Lx1/r;

    move-result-object v2

    sget-object v5, Lz1/y0;->A:Lz1/y0;

    invoke-interface {v2, v4, v5}, Lx1/r;->a(Ljava/lang/Object;Lsb/n;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LK1/p;

    if-eqz v2, :cond_e

    iget-object v3, v2, LK1/p;->a:Lf2/h;

    :cond_e
    invoke-static {v3, p0}, LG5/a3;->e(Lf2/h;Landroid/content/Context;)LF1/c;

    move-result-object v2

    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/v;->c()V

    iget-object v3, v0, Landroidx/glance/appwidget/protobuf/v;->b:Landroidx/glance/appwidget/protobuf/y;

    check-cast v3, LF1/j;

    invoke-static {v3, v2}, LF1/j;->q(LF1/j;LF1/c;)V

    invoke-interface {p1}, Lx1/l;->b()Lx1/r;

    move-result-object v2

    sget-object v3, Lz1/y0;->x:Lz1/y0;

    invoke-interface {v2, v4, v3}, Lx1/r;->a(Ljava/lang/Object;Lsb/n;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_f

    move v2, v5

    goto :goto_2

    :cond_f
    move v2, v3

    :goto_2
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/v;->c()V

    iget-object v6, v0, Landroidx/glance/appwidget/protobuf/v;->b:Landroidx/glance/appwidget/protobuf/y;

    check-cast v6, LF1/j;

    invoke-static {v6, v2}, LF1/j;->n(LF1/j;Z)V

    invoke-interface {p1}, Lx1/l;->b()Lx1/r;

    move-result-object v2

    sget-object v6, Lz1/y0;->y:Lz1/y0;

    invoke-interface {v2, v4, v6}, Lx1/r;->a(Ljava/lang/Object;Lsb/n;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_10

    sget-object v2, LF1/l;->BACKGROUND_NODE:LF1/l;

    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/v;->c()V

    iget-object v4, v0, Landroidx/glance/appwidget/protobuf/v;->b:Landroidx/glance/appwidget/protobuf/y;

    check-cast v4, LF1/j;

    invoke-static {v4, v2}, LF1/j;->s(LF1/j;LF1/l;)V

    :cond_10
    instance-of v2, p1, Lx1/m;

    if-eqz v2, :cond_15

    move-object v1, p1

    check-cast v1, Lx1/m;

    iget v2, v1, Lx1/m;->d:I

    invoke-static {v2, v5}, LK1/k;->a(II)Z

    move-result v4

    if-eqz v4, :cond_11

    sget-object v2, LF1/b;->FIT:LF1/b;

    goto :goto_3

    :cond_11
    invoke-static {v2, v3}, LK1/k;->a(II)Z

    move-result v4

    if-eqz v4, :cond_12

    sget-object v2, LF1/b;->CROP:LF1/b;

    goto :goto_3

    :cond_12
    const/4 v4, 0x2

    invoke-static {v2, v4}, LK1/k;->a(II)Z

    move-result v2

    if-eqz v2, :cond_14

    sget-object v2, LF1/b;->FILL_BOUNDS:LF1/b;

    :goto_3
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/v;->c()V

    iget-object v4, v0, Landroidx/glance/appwidget/protobuf/v;->b:Landroidx/glance/appwidget/protobuf/y;

    check-cast v4, LF1/j;

    invoke-static {v4, v2}, LF1/j;->t(LF1/j;LF1/b;)V

    invoke-static {v1}, LG5/z2;->c(Lx1/m;)Z

    move-result v2

    xor-int/2addr v2, v5

    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/v;->c()V

    iget-object v4, v0, Landroidx/glance/appwidget/protobuf/v;->b:Landroidx/glance/appwidget/protobuf/y;

    check-cast v4, LF1/j;

    invoke-static {v4, v2}, LF1/j;->p(LF1/j;Z)V

    iget-object v1, v1, Lx1/m;->c:Lx1/v;

    if-eqz v1, :cond_13

    move v3, v5

    :cond_13
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/v;->c()V

    iget-object v1, v0, Landroidx/glance/appwidget/protobuf/v;->b:Landroidx/glance/appwidget/protobuf/y;

    check-cast v1, LF1/j;

    invoke-static {v1, v3}, LF1/j;->o(LF1/j;Z)V

    goto/16 :goto_4

    :cond_14
    new-instance p0, Ljava/lang/IllegalStateException;

    iget p1, v1, Lx1/m;->d:I

    invoke-static {p1}, LK1/k;->b(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown content scale "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    instance-of v2, p1, LK1/m;

    if-eqz v2, :cond_16

    move-object v1, p1

    check-cast v1, LK1/m;

    iget v1, v1, LK1/m;->f:I

    invoke-static {v1}, LG5/a3;->g(I)LF1/d;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/v;->c()V

    iget-object v2, v0, Landroidx/glance/appwidget/protobuf/v;->b:Landroidx/glance/appwidget/protobuf/y;

    check-cast v2, LF1/j;

    invoke-static {v2, v1}, LF1/j;->r(LF1/j;LF1/d;)V

    goto :goto_4

    :cond_16
    instance-of v2, p1, LK1/n;

    if-eqz v2, :cond_17

    move-object v1, p1

    check-cast v1, LK1/n;

    iget v1, v1, LK1/n;->f:I

    invoke-static {v1}, LG5/a3;->f(I)LF1/m;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/v;->c()V

    iget-object v2, v0, Landroidx/glance/appwidget/protobuf/v;->b:Landroidx/glance/appwidget/protobuf/y;

    check-cast v2, LF1/j;

    invoke-static {v2, v1}, LF1/j;->v(LF1/j;LF1/m;)V

    goto :goto_4

    :cond_17
    if-eqz v1, :cond_18

    move-object v1, p1

    check-cast v1, LK1/l;

    iget-object v2, v1, LK1/l;->e:LK1/c;

    iget v2, v2, LK1/c;->a:I

    invoke-static {v2}, LG5/a3;->g(I)LF1/d;

    move-result-object v2

    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/v;->c()V

    iget-object v3, v0, Landroidx/glance/appwidget/protobuf/v;->b:Landroidx/glance/appwidget/protobuf/y;

    check-cast v3, LF1/j;

    invoke-static {v3, v2}, LF1/j;->r(LF1/j;LF1/d;)V

    iget-object v1, v1, LK1/l;->e:LK1/c;

    iget v1, v1, LK1/c;->b:I

    invoke-static {v1}, LG5/a3;->f(I)LF1/m;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/v;->c()V

    iget-object v2, v0, Landroidx/glance/appwidget/protobuf/v;->b:Landroidx/glance/appwidget/protobuf/y;

    check-cast v2, LF1/j;

    invoke-static {v2, v1}, LF1/j;->v(LF1/j;LF1/m;)V

    goto :goto_4

    :cond_18
    instance-of v1, p1, LB1/a;

    if-eqz v1, :cond_19

    move-object v1, p1

    check-cast v1, LB1/a;

    iget v1, v1, LB1/a;->e:I

    invoke-static {v1}, LG5/a3;->g(I)LF1/d;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/v;->c()V

    iget-object v2, v0, Landroidx/glance/appwidget/protobuf/v;->b:Landroidx/glance/appwidget/protobuf/y;

    check-cast v2, LF1/j;

    invoke-static {v2, v1}, LF1/j;->r(LF1/j;LF1/d;)V

    :cond_19
    :goto_4
    instance-of v1, p1, Lx1/n;

    if-eqz v1, :cond_1b

    instance-of v1, p1, LB1/a;

    if-nez v1, :cond_1b

    check-cast p1, Lx1/n;

    iget-object p1, p1, Lx1/n;->c:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lx1/l;

    invoke-static {p0, v2}, LG5/a3;->c(Landroid/content/Context;Lx1/l;)LF1/j;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_1a
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/v;->c()V

    iget-object p0, v0, Landroidx/glance/appwidget/protobuf/v;->b:Landroidx/glance/appwidget/protobuf/y;

    check-cast p0, LF1/j;

    invoke-static {p0, v1}, LF1/j;->m(LF1/j;Ljava/util/ArrayList;)V

    :cond_1b
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/v;->a()Landroidx/glance/appwidget/protobuf/y;

    move-result-object p0

    check-cast p0, LF1/j;

    return-object p0

    :cond_1c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Unknown element type "

    invoke-static {v0, p1}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static d(I)I
    .locals 3

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/view/HapticFeedbackConstants;

    const-string v2, "hidden_semGetVibrationIndex"

    invoke-static {v1, v2, v0}, LG5/k2;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {v1, v0, p0}, LG5/k2;->j(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static final e(Lf2/h;Landroid/content/Context;)LF1/c;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    sget-object p1, Lz1/i1;->a:Lz1/i1;

    invoke-virtual {p1, p0}, Lz1/i1;->a(Lf2/h;)LF1/c;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0, p1}, Lz1/H0;->e(Lf2/h;Landroid/content/Context;)Lf2/h;

    move-result-object p0

    instance-of p1, p0, Lf2/c;

    if-eqz p1, :cond_1

    sget-object p0, LF1/c;->EXACT:LF1/c;

    goto :goto_0

    :cond_1
    instance-of p1, p0, Lf2/g;

    if-eqz p1, :cond_2

    sget-object p0, LF1/c;->WRAP:LF1/c;

    goto :goto_0

    :cond_2
    instance-of p1, p0, Lf2/e;

    if-eqz p1, :cond_3

    sget-object p0, LF1/c;->FILL:LF1/c;

    goto :goto_0

    :cond_3
    instance-of p0, p0, Lf2/d;

    if-eqz p0, :cond_4

    sget-object p0, LF1/c;->EXPAND:LF1/c;

    :goto_0
    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "After resolution, no other type should be present"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final f(I)LF1/m;
    .locals 3

    const/4 v0, 0x0

    invoke-static {p0, v0}, LK1/b;->b(II)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, LF1/m;->TOP:LF1/m;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, v0}, LK1/b;->b(II)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, LF1/m;->CENTER_VERTICALLY:LF1/m;

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    invoke-static {p0, v0}, LK1/b;->b(II)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, LF1/m;->BOTTOM:LF1/m;

    :goto_0
    return-object p0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p0}, LK1/b;->c(I)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unknown vertical alignment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final g(I)LF1/d;
    .locals 3

    const/4 v0, 0x0

    invoke-static {p0, v0}, LK1/a;->b(II)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, LF1/d;->START:LF1/d;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, v0}, LK1/a;->b(II)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, LF1/d;->CENTER_HORIZONTALLY:LF1/d;

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    invoke-static {p0, v0}, LK1/a;->b(II)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, LF1/d;->END:LF1/d;

    :goto_0
    return-object p0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p0}, LK1/a;->c(I)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unknown horizontal alignment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
