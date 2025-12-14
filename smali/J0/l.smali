.class public final LJ0/l;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p2, p0, LJ0/l;->a:I

    iput-object p3, p0, LJ0/l;->c:Ljava/lang/Object;

    iput-object p4, p0, LJ0/l;->d:Ljava/lang/Object;

    iput-object p5, p0, LJ0/l;->e:Ljava/lang/Object;

    iput p1, p0, LJ0/l;->b:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Lm0/m;Ldb/b;II)V
    .locals 0

    iput p5, p0, LJ0/l;->a:I

    iput-object p1, p0, LJ0/l;->c:Ljava/lang/Object;

    iput-object p2, p0, LJ0/l;->e:Ljava/lang/Object;

    iput-object p3, p0, LJ0/l;->d:Ljava/lang/Object;

    iput p4, p0, LJ0/l;->b:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, LJ0/l;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, La0/m;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget p2, p0, LJ0/l;->b:I

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, La0/d;->P(I)I

    move-result p2

    iget-object v0, p0, LJ0/l;->e:Ljava/lang/Object;

    check-cast v0, Lm0/m;

    iget-object v1, p0, LJ0/l;->d:Ljava/lang/Object;

    check-cast v1, Lsb/n;

    iget-object p0, p0, LJ0/l;->c:Ljava/lang/Object;

    check-cast p0, Lz0/L;

    invoke-static {p0, v0, v1, p1, p2}, Lz0/J;->a(Lz0/L;Lm0/m;Lsb/n;La0/m;I)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_0
    check-cast p1, La0/m;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget p2, p0, LJ0/l;->b:I

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, La0/d;->P(I)I

    move-result p2

    iget-object v0, p0, LJ0/l;->e:Ljava/lang/Object;

    check-cast v0, Li0/a;

    iget-object v1, p0, LJ0/l;->c:Ljava/lang/Object;

    check-cast v1, Lj0/h;

    iget-object p0, p0, LJ0/l;->d:Ljava/lang/Object;

    invoke-virtual {v1, p0, v0, p1, p2}, Lj0/h;->b(Ljava/lang/Object;Li0/a;La0/m;I)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_1
    check-cast p1, La0/m;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget p2, p0, LJ0/l;->b:I

    invoke-static {p2}, La0/d;->P(I)I

    move-result p2

    or-int/lit8 p2, p2, 0x1

    iget-object v0, p0, LJ0/l;->d:Ljava/lang/Object;

    iget-object v1, p0, LJ0/l;->e:Ljava/lang/Object;

    iget-object p0, p0, LJ0/l;->c:Ljava/lang/Object;

    check-cast p0, Li0/a;

    invoke-virtual {p0, v0, v1, p1, p2}, Li0/a;->d(Ljava/lang/Object;Ljava/lang/Object;La0/m;I)Ljava/lang/Object;

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_2
    check-cast p1, La0/m;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget p2, p0, LJ0/l;->b:I

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, La0/d;->P(I)I

    move-result p2

    iget-object v0, p0, LJ0/l;->e:Ljava/lang/Object;

    check-cast v0, Li0/a;

    iget-object v1, p0, LJ0/l;->c:Ljava/lang/Object;

    check-cast v1, LW/y;

    iget-object p0, p0, LJ0/l;->d:Ljava/lang/Object;

    invoke-virtual {v1, p0, v0, p1, p2}, LW/y;->b(Ljava/lang/Object;Li0/a;La0/m;I)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_3
    check-cast p1, La0/m;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget p2, p0, LJ0/l;->b:I

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, La0/d;->P(I)I

    move-result p2

    iget-object v0, p0, LJ0/l;->d:Ljava/lang/Object;

    check-cast v0, LW/h;

    iget-object v1, p0, LJ0/l;->e:Ljava/lang/Object;

    check-cast v1, Lz0/L;

    iget-object p0, p0, LJ0/l;->c:Ljava/lang/Object;

    check-cast p0, LG5/J2;

    invoke-static {p0, v0, v1, p1, p2}, LG5/c3;->a(LG5/J2;LW/h;Lz0/L;La0/m;I)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_4
    check-cast p1, La0/m;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget p2, p0, LJ0/l;->b:I

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, La0/d;->P(I)I

    move-result p2

    iget-object v0, p0, LJ0/l;->d:Ljava/lang/Object;

    check-cast v0, Lsb/k;

    iget-object v1, p0, LJ0/l;->c:Ljava/lang/Object;

    check-cast v1, Lsb/k;

    iget-object p0, p0, LJ0/l;->e:Ljava/lang/Object;

    check-cast p0, Lm0/m;

    invoke-static {v1, p0, v0, p1, p2}, LJ0/k;->a(Lsb/k;Lm0/m;Lsb/k;La0/m;I)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
