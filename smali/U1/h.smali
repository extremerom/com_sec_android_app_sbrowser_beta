.class public final LU1/h;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:I

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LV/t;Lm0/m;LG5/J2;Lsb/n;I)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, LU1/h;->a:I

    iput-object p1, p0, LU1/h;->b:Ljava/lang/Object;

    iput-object p2, p0, LU1/h;->f:Ljava/lang/Object;

    iput-object p3, p0, LU1/h;->c:Ljava/lang/Object;

    iput-object p4, p0, LU1/h;->d:Ljava/lang/Object;

    iput p5, p0, LU1/h;->e:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 0

    iput p6, p0, LU1/h;->a:I

    iput-object p1, p0, LU1/h;->b:Ljava/lang/Object;

    iput-object p2, p0, LU1/h;->c:Ljava/lang/Object;

    iput-object p3, p0, LU1/h;->d:Ljava/lang/Object;

    iput-object p4, p0, LU1/h;->f:Ljava/lang/Object;

    iput p5, p0, LU1/h;->e:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget v0, p0, LU1/h;->a:I

    packed-switch v0, :pswitch_data_0

    move-object v5, p1

    check-cast v5, La0/m;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget p1, p0, LU1/h;->e:I

    invoke-static {p1}, La0/d;->P(I)I

    move-result p1

    or-int/lit8 v6, p1, 0x1

    iget-object v3, p0, LU1/h;->d:Ljava/lang/Object;

    iget-object v4, p0, LU1/h;->f:Ljava/lang/Object;

    iget-object p1, p0, LU1/h;->b:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Li0/a;

    iget-object v2, p0, LU1/h;->c:Ljava/lang/Object;

    invoke-virtual/range {v1 .. v6}, Li0/a;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;La0/m;I)Ljava/lang/Object;

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_0
    move-object v4, p1

    check-cast v4, La0/m;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget p1, p0, LU1/h;->e:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, La0/d;->P(I)I

    move-result v5

    iget-object p1, p0, LU1/h;->d:Ljava/lang/Object;

    move-object v2, p1

    check-cast v2, Ljava/util/ArrayList;

    iget-object p1, p0, LU1/h;->f:Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, Lsb/n;

    iget-object p1, p0, LU1/h;->b:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, LZ1/p;

    iget-object p0, p0, LU1/h;->c:Ljava/lang/Object;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-static/range {v0 .. v5}, LZ1/p;->n(LZ1/p;Landroid/content/Context;Ljava/util/ArrayList;Lsb/n;La0/m;I)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_1
    move-object v4, p1

    check-cast v4, La0/m;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget p1, p0, LU1/h;->e:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, La0/d;->P(I)I

    move-result v5

    iget-object p1, p0, LU1/h;->b:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, LV/t;

    iget-object p1, p0, LU1/h;->f:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lm0/m;

    iget-object p1, p0, LU1/h;->c:Ljava/lang/Object;

    move-object v2, p1

    check-cast v2, LG5/J2;

    iget-object p0, p0, LU1/h;->d:Ljava/lang/Object;

    move-object v3, p0

    check-cast v3, Lsb/n;

    invoke-static/range {v0 .. v5}, LG5/a3;->a(LV/t;Lm0/m;LG5/J2;Lsb/n;La0/m;I)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_2
    move-object v4, p1

    check-cast v4, La0/m;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget p1, p0, LU1/h;->e:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, La0/d;->P(I)I

    move-result v5

    iget-object p1, p0, LU1/h;->f:Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, Lx1/r;

    iget-object p1, p0, LU1/h;->c:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, LW1/d;

    iget-object p1, p0, LU1/h;->b:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, LR1/x;

    iget-object p0, p0, LU1/h;->d:Ljava/lang/Object;

    move-object v2, p0

    check-cast v2, Lf2/a;

    invoke-static/range {v0 .. v5}, LG5/S2;->c(LR1/x;LW1/d;Lf2/a;Lx1/r;La0/m;I)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_3
    move-object v4, p1

    check-cast v4, La0/m;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget p1, p0, LU1/h;->e:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, La0/d;->P(I)I

    move-result v5

    iget-object p1, p0, LU1/h;->c:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, LW1/d;

    iget-object p1, p0, LU1/h;->b:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, LR1/x;

    iget-object p1, p0, LU1/h;->d:Ljava/lang/Object;

    move-object v2, p1

    check-cast v2, Lf2/a;

    iget-object p0, p0, LU1/h;->f:Ljava/lang/Object;

    move-object v3, p0

    check-cast v3, Lm0/m;

    invoke-static/range {v0 .. v5}, LG5/C2;->a(LR1/x;LW1/d;Lf2/a;Lm0/m;La0/m;I)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
