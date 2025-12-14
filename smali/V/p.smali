.class public final LV/p;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 0

    iput p4, p0, LV/p;->a:I

    iput-object p1, p0, LV/p;->c:Ljava/lang/Object;

    iput-object p2, p0, LV/p;->d:Ljava/lang/Object;

    iput p3, p0, LV/p;->b:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget v0, p0, LV/p;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, La0/m;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget p2, p0, LV/p;->b:I

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, La0/d;->P(I)I

    move-result p2

    iget-object v0, p0, LV/p;->d:Ljava/lang/Object;

    check-cast v0, Li0/a;

    iget-object p0, p0, LV/p;->c:Ljava/lang/Object;

    check-cast p0, LJ1/b;

    invoke-static {p0, v0, p1, p2}, LG5/y2;->a(LJ1/b;Li0/a;La0/m;I)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_0
    check-cast p1, La0/m;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget p2, p0, LV/p;->b:I

    invoke-static {p2}, La0/d;->P(I)I

    move-result p2

    or-int/lit8 p2, p2, 0x1

    iget-object v0, p0, LV/p;->c:Ljava/lang/Object;

    check-cast v0, Li0/a;

    iget-object p0, p0, LV/p;->d:Ljava/lang/Object;

    invoke-virtual {v0, p0, p1, p2}, Li0/a;->a(Ljava/lang/Object;La0/m;I)Ljava/lang/Object;

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_1
    check-cast p1, La0/m;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget p2, p0, LV/p;->b:I

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, La0/d;->P(I)I

    move-result p2

    iget-object v0, p0, LV/p;->d:Ljava/lang/Object;

    check-cast v0, Li0/a;

    iget-object p0, p0, LV/p;->c:Ljava/lang/Object;

    check-cast p0, La2/e;

    invoke-virtual {p0, v0, p1, p2}, La2/e;->c(Li0/a;La0/m;I)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_2
    check-cast p1, La0/m;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget p2, p0, LV/p;->b:I

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, La0/d;->P(I)I

    move-result p2

    iget-object v0, p0, LV/p;->d:Ljava/lang/Object;

    check-cast v0, Li0/a;

    iget-object p0, p0, LV/p;->c:Ljava/lang/Object;

    check-cast p0, La0/h0;

    invoke-static {p0, v0, p1, p2}, La0/d;->a(La0/h0;Li0/a;La0/m;I)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_3
    check-cast p1, La0/m;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget-object p2, p0, LV/p;->c:Ljava/lang/Object;

    check-cast p2, [La0/h0;

    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [La0/h0;

    iget v0, p0, LV/p;->b:I

    or-int/lit8 v0, v0, 0x1

    invoke-static {v0}, La0/d;->P(I)I

    move-result v0

    iget-object p0, p0, LV/p;->d:Ljava/lang/Object;

    check-cast p0, Li0/a;

    invoke-static {p2, p0, p1, v0}, La0/d;->b([La0/h0;Li0/a;La0/m;I)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_4
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

    goto :goto_1

    :cond_1
    :goto_0
    move-object p2, p1

    check-cast p2, La0/q;

    const v0, -0x2f7337b1

    invoke-virtual {p2, v0}, La0/q;->Q(I)V

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lj0/h;->d:Lo3/c;

    sget-object v3, Lj0/i;->b:Lj0/i;

    const/16 v4, 0xc00

    invoke-static {v1, v2, v3, p2, v4}, LG5/R3;->e([Ljava/lang/Object;Lo3/c;Lsb/a;La0/m;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj0/h;

    sget-object v2, Lj0/m;->a:La0/L0;

    invoke-virtual {p2, v2}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj0/k;

    iput-object v2, v1, Lj0/h;->c:Lj0/k;

    invoke-virtual {p2, v0}, La0/q;->p(Z)V

    iget-object p2, p0, LV/p;->c:Ljava/lang/Object;

    check-cast p2, LW/y;

    iget-object v0, p2, LW/y;->b:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    iget v0, p0, LV/p;->b:I

    shl-int/lit8 v0, v0, 0x3

    and-int/lit8 v0, v0, 0x70

    or-int/lit8 v0, v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p0, p0, LV/p;->d:Ljava/lang/Object;

    check-cast p0, Li0/a;

    invoke-virtual {p0, p2, p1, v0}, Li0/a;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_5
    check-cast p1, La0/m;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget p2, p0, LV/p;->b:I

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, La0/d;->P(I)I

    move-result p2

    iget-object v0, p0, LV/p;->c:Ljava/lang/Object;

    check-cast v0, LV/t;

    iget-object p0, p0, LV/p;->d:Ljava/lang/Object;

    check-cast p0, LV/J;

    invoke-static {v0, p0, p1, p2}, LG5/Q2;->c(LV/t;LV/J;La0/m;I)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_6
    check-cast p1, La0/m;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    and-int/lit8 p2, p2, 0xb

    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    move-object p2, p1

    check-cast p2, La0/q;

    invoke-virtual {p2}, La0/q;->x()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, La0/q;->K()V

    goto :goto_3

    :cond_3
    :goto_2
    iget-object p2, p0, LV/p;->c:Ljava/lang/Object;

    check-cast p2, LW/d;

    iget-object p2, p2, LW/d;->c:Lt9/c;

    iget-object p2, p2, Lt9/c;->c:Ljava/lang/Object;

    check-cast p2, Li0/a;

    iget v0, p0, LV/p;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object p0, p0, LV/p;->d:Ljava/lang/Object;

    check-cast p0, LV/g;

    invoke-virtual {p2, p0, v0, p1, v1}, Li0/a;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
