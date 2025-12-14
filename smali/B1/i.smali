.class public final LB1/i;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, LB1/i;->a:I

    iput-object p2, p0, LB1/i;->b:Ljava/lang/Object;

    iput-object p3, p0, LB1/i;->c:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget v0, p0, LB1/i;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, La0/m;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    and-int/lit8 p2, p2, 0xb

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    move-object p2, p1

    check-cast p2, La0/q;

    invoke-virtual {p2}, La0/q;->x()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, La0/q;->K()V

    goto/16 :goto_3

    :cond_1
    :goto_0
    iget-object p2, p0, LB1/i;->b:Ljava/lang/Object;

    check-cast p2, Lz0/m;

    iget-object p2, p2, Lz0/m;->f:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    check-cast p1, La0/q;

    invoke-virtual {p1, p2}, La0/q;->T(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, La0/q;->f(Z)Z

    move-result p2

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object p0, p0, LB1/i;->c:Ljava/lang/Object;

    check-cast p0, Lsb/n;

    invoke-interface {p0, p1, p2}, Lsb/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    iget p0, p1, La0/q;->k:I

    if-nez p0, :cond_3

    const/4 p0, 0x1

    goto :goto_1

    :cond_3
    move p0, v1

    :goto_1
    if-eqz p0, :cond_7

    iget-boolean p0, p1, La0/q;->O:Z

    if-nez p0, :cond_5

    if-nez p2, :cond_4

    invoke-virtual {p1}, La0/q;->J()V

    goto :goto_2

    :cond_4
    iget-object p0, p1, La0/q;->F:La0/v0;

    iget p2, p0, La0/v0;->g:I

    iget p0, p0, La0/v0;->h:I

    iget-object v0, p1, La0/q;->L:Lb0/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lb0/b;->d(Z)V

    iget-object v0, v0, Lb0/b;->b:Lb0/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lb0/f;->c:Lb0/f;

    iget-object v0, v0, Lb0/a;->b:Lb0/D;

    invoke-virtual {v0, v2}, Lb0/D;->k(Lb0/C;)V

    iget-object v0, p1, La0/q;->r:Ljava/util/ArrayList;

    invoke-static {v0, p2, p0}, La0/d;->o(Ljava/util/ArrayList;II)V

    iget-object p0, p1, La0/q;->F:La0/v0;

    invoke-virtual {p0}, La0/v0;->m()V

    :cond_5
    :goto_2
    iget-boolean p0, p1, La0/q;->x:Z

    if-eqz p0, :cond_6

    iget-object p0, p1, La0/q;->F:La0/v0;

    iget p0, p0, La0/v0;->i:I

    iget p2, p1, La0/q;->y:I

    if-ne p0, p2, :cond_6

    const/4 p0, -0x1

    iput p0, p1, La0/q;->y:I

    iput-boolean v1, p1, La0/q;->x:Z

    :cond_6
    invoke-virtual {p1, v1}, La0/q;->p(Z)V

    :goto_3
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :cond_7
    const-string p0, "No nodes can be emitted before calling dactivateToEndGroup"

    invoke-static {p0}, La0/d;->t(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :pswitch_0
    check-cast p1, Lv2/H;

    check-cast p2, Lv2/H;

    const-string v0, "prependHint"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appendHint"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lv2/P;->PREPEND:Lv2/P;

    iget-object v1, p0, LB1/i;->b:Ljava/lang/Object;

    check-cast v1, Lv2/P;

    iget-object p0, p0, LB1/i;->c:Ljava/lang/Object;

    check-cast p0, Lv2/C1;

    if-ne v1, v0, :cond_8

    iput-object p0, p1, Lv2/H;->a:Lv2/C1;

    if-eqz p0, :cond_9

    iget-object p1, p1, Lv2/H;->b:LQc/m0;

    invoke-virtual {p1, p0}, LQc/m0;->a(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    iput-object p0, p2, Lv2/H;->a:Lv2/C1;

    if-eqz p0, :cond_9

    iget-object p1, p2, Lv2/H;->b:LQc/m0;

    invoke-virtual {p1, p0}, LQc/m0;->a(Ljava/lang/Object;)Z

    :cond_9
    :goto_4
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_1
    check-cast p1, La0/m;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    and-int/lit8 p2, p2, 0xb

    const/4 v0, 0x2

    if-ne p2, v0, :cond_b

    move-object p2, p1

    check-cast p2, La0/q;

    invoke-virtual {p2}, La0/q;->x()Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_5

    :cond_a
    invoke-virtual {p2}, La0/q;->K()V

    goto :goto_6

    :cond_b
    :goto_5
    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object v0, p0, LB1/i;->b:Ljava/lang/Object;

    check-cast v0, Li0/a;

    invoke-virtual {v0, p1, p2}, Li0/a;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, LB1/i;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_c

    goto :goto_6

    :cond_c
    const/16 p2, 0x30

    invoke-static {p0, p1, p2}, La2/e;->a(Ljava/lang/String;La0/m;I)V

    :goto_6
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_2
    check-cast p1, Lz0/M;

    check-cast p2, LH0/a;

    iget-wide v0, p2, LH0/a;->a:J

    const-string p2, "$this$null"

    invoke-static {p1, p2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, LW/k;

    iget-object v2, p0, LB1/i;->b:Ljava/lang/Object;

    check-cast v2, LW/h;

    invoke-direct {p2, v2, p1}, LW/k;-><init>(LW/h;Lz0/M;)V

    new-instance p1, LH0/a;

    invoke-direct {p1, v0, v1}, LH0/a;-><init>(J)V

    iget-object p0, p0, LB1/i;->c:Ljava/lang/Object;

    check-cast p0, Lsb/n;

    invoke-interface {p0, p2, p1}, Lsb/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lz0/y;

    return-object p0

    :pswitch_3
    check-cast p1, La0/m;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    and-int/lit8 p2, p2, 0xb

    const/4 v0, 0x2

    if-ne p2, v0, :cond_e

    move-object p2, p1

    check-cast p2, La0/q;

    invoke-virtual {p2}, La0/q;->x()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_7

    :cond_d
    invoke-virtual {p2}, La0/q;->K()V

    goto :goto_9

    :cond_e
    :goto_7
    iget-object p2, p0, LB1/i;->b:Ljava/lang/Object;

    check-cast p2, LW/h;

    iget-object v0, p2, LW/h;->b:LS/W;

    invoke-virtual {v0}, LS/W;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LW/i;

    invoke-interface {v0}, LW/i;->b()Ljava/util/Map;

    move-result-object v1

    iget-object p0, p0, LB1/i;->c:Ljava/lang/Object;

    check-cast p0, LW/g;

    iget-object v2, p0, LW/g;->a:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v2, p0, LW/g;->c:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    goto :goto_8

    :cond_f
    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    :goto_8
    check-cast p1, La0/q;

    const v2, -0x2aa9ca91

    invoke-virtual {p1, v2}, La0/q;->R(I)V

    invoke-interface {v0}, LW/i;->getItemCount()I

    move-result v2

    iget-object v3, p0, LW/g;->a:Ljava/lang/Object;

    if-ge v1, v2, :cond_10

    invoke-interface {v0, v1}, LW/i;->c(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    new-instance v4, LE1/d;

    const/4 v5, 0x3

    invoke-direct {v4, v1, v5, v0}, LE1/d;-><init>(IILjava/lang/Object;)V

    const v0, -0x49d78e04

    invoke-static {p1, v0, v4}, Li0/b;->b(La0/m;ILtb/m;)Li0/a;

    move-result-object v0

    const/16 v1, 0x238

    iget-object p2, p2, LW/h;->a:Lj0/c;

    invoke-interface {p2, v2, v0, p1, v1}, Lj0/c;->b(Ljava/lang/Object;Li0/a;La0/m;I)V

    :cond_10
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, La0/q;->p(Z)V

    new-instance p2, LB0/a;

    const/16 v0, 0xc

    invoke-direct {p2, v0, p0}, LB0/a;-><init>(ILjava/lang/Object;)V

    invoke-static {v3, p2, p1}, La0/d;->c(Ljava/lang/Object;Lsb/k;La0/m;)V

    :goto_9
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_4
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    iget-object p2, p0, LB1/i;->b:Ljava/lang/Object;

    check-cast p2, Ltb/t;

    iget v0, p2, Ltb/t;->a:F

    iget-object p0, p0, LB1/i;->c:Ljava/lang/Object;

    check-cast p0, LS/N;

    sub-float/2addr p1, v0

    invoke-interface {p0, p1}, LS/N;->scrollBy(F)F

    move-result p0

    add-float/2addr p0, v0

    iput p0, p2, Ltb/t;->a:F

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_5
    check-cast p1, La0/m;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    and-int/lit8 p2, p2, 0xb

    const/4 v0, 0x2

    if-ne p2, v0, :cond_12

    move-object p2, p1

    check-cast p2, La0/q;

    invoke-virtual {p2}, La0/q;->x()Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_a

    :cond_11
    invoke-virtual {p2}, La0/q;->K()V

    goto/16 :goto_e

    :cond_12
    :goto_a
    iget-object p2, p0, LB1/i;->b:Ljava/lang/Object;

    check-cast p2, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    :goto_b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v6, v0, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_17

    check-cast v1, Ldb/j;

    iget-object v3, v1, Ldb/j;->a:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    iget-object v1, v1, Ldb/j;->b:Ljava/lang/Object;

    check-cast v1, Lsb/o;

    const-wide/high16 v4, -0x8000000000000000L

    if-nez v3, :cond_13

    goto :goto_c

    :cond_13
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v7, v7, v4

    if-eqz v7, :cond_14

    :goto_c
    move-object v2, v3

    :cond_14
    if-eqz v2, :cond_15

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_d

    :cond_15
    const-wide/high16 v2, -0x4000000000000000L    # -2.0

    int-to-long v7, v0

    sub-long/2addr v2, v7

    :goto_d
    cmp-long v0, v2, v4

    if-eqz v0, :cond_16

    new-instance v0, LB1/h;

    const/4 v4, 0x0

    invoke-direct {v0, v4, v1}, LB1/h;-><init>(ILjava/lang/Object;)V

    const v1, -0x9c27446

    invoke-static {p1, v1, v0}, Li0/b;->b(La0/m;ILtb/m;)Li0/a;

    move-result-object v4

    iget-object v0, p0, LB1/i;->c:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, LK1/c;

    const/16 v7, 0x180

    move-wide v0, v2

    move-object v2, v5

    move-object v3, v4

    move-object v4, p1

    move v5, v7

    invoke-static/range {v0 .. v5}, LG5/o;->b(JLK1/c;Li0/a;La0/m;I)V

    move v0, v6

    goto :goto_b

    :cond_16
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Implicit list item ids exhausted."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_17
    invoke-static {}, Lfb/o;->l()V

    throw v2

    :cond_18
    :goto_e
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
