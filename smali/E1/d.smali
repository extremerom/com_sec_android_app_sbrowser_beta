.class public final LE1/d;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;)V
    .locals 0

    iput p2, p0, LE1/d;->a:I

    iput-object p3, p0, LE1/d;->c:Ljava/lang/Object;

    iput p1, p0, LE1/d;->b:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, LE1/d;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, La0/m;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget p2, p0, LE1/d;->b:I

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, La0/d;->P(I)I

    move-result p2

    iget-object p0, p0, LE1/d;->c:Ljava/lang/Object;

    check-cast p0, Li0/a;

    invoke-static {p0, p1, p2}, LG5/d3;->a(Li0/a;La0/m;I)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_0
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
    const/4 p2, 0x0

    iget-object v0, p0, LE1/d;->c:Ljava/lang/Object;

    check-cast v0, LW/i;

    iget p0, p0, LE1/d;->b:I

    invoke-interface {v0, p0, p1, p2}, LW/i;->a(ILa0/m;I)V

    :goto_1
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_1
    check-cast p1, La0/m;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget p2, p0, LE1/d;->b:I

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, La0/d;->P(I)I

    move-result p2

    iget-object p0, p0, LE1/d;->c:Ljava/lang/Object;

    check-cast p0, LR1/m;

    invoke-virtual {p0, p1, p2}, LR1/m;->PreviewContent(La0/m;I)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_2
    check-cast p1, La0/m;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget p2, p0, LE1/d;->b:I

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, La0/d;->P(I)I

    move-result p2

    iget-object p0, p0, LE1/d;->c:Ljava/lang/Object;

    check-cast p0, Lx1/r;

    invoke-static {p0, p1, p2}, LG5/Q3;->a(Lx1/r;La0/m;I)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_3
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

    goto :goto_4

    :cond_3
    :goto_2
    sget-object p2, LE1/b;->a:LE1/b;

    check-cast p1, La0/q;

    const v0, 0x227c4e56

    invoke-virtual {p1, v0}, La0/q;->R(I)V

    const v0, -0x20ad3f64

    invoke-virtual {p1, v0}, La0/q;->R(I)V

    iget-object v0, p1, La0/q;->a:LJ2/i0;

    instance-of v0, v0, Lx1/b;

    if-eqz v0, :cond_7

    invoke-virtual {p1}, La0/q;->O()V

    iget-boolean v0, p1, La0/q;->O:Z

    if-eqz v0, :cond_4

    invoke-virtual {p1, p2}, La0/q;->k(Lsb/a;)V

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, La0/q;->d0()V

    :goto_3
    sget-object p2, LE1/c;->a:LE1/c;

    iget-boolean v0, p1, La0/q;->O:Z

    iget v1, p0, LE1/d;->b:I

    if-nez v0, :cond_5

    invoke-virtual {p1}, La0/q;->G()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, La0/q;->a0(Ljava/lang/Object;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, La0/q;->b(Ljava/lang/Object;Lsb/n;)V

    :cond_6
    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p0, p0, LE1/d;->c:Ljava/lang/Object;

    check-cast p0, Lsb/n;

    invoke-interface {p0, p1, v0}, Lsb/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, La0/q;->p(Z)V

    invoke-virtual {p1, p2}, La0/q;->p(Z)V

    invoke-virtual {p1, p2}, La0/q;->p(Z)V

    :goto_4
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :cond_7
    invoke-static {}, La0/d;->B()V

    const/4 p0, 0x0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
