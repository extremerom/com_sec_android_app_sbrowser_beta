.class public final LK1/h;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lx1/r;

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Li0/a;

.field public final synthetic f:I

.field public final synthetic g:I


# direct methods
.method public synthetic constructor <init>(Lx1/r;IILi0/a;III)V
    .locals 0

    iput p7, p0, LK1/h;->a:I

    iput-object p1, p0, LK1/h;->b:Lx1/r;

    iput p2, p0, LK1/h;->c:I

    iput p3, p0, LK1/h;->d:I

    iput-object p4, p0, LK1/h;->e:Li0/a;

    iput p5, p0, LK1/h;->f:I

    iput p6, p0, LK1/h;->g:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget v0, p0, LK1/h;->a:I

    packed-switch v0, :pswitch_data_0

    move-object v5, p1

    check-cast v5, La0/m;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget p1, p0, LK1/h;->f:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, La0/d;->P(I)I

    move-result v6

    iget-object v4, p0, LK1/h;->e:Li0/a;

    iget v2, p0, LK1/h;->c:I

    iget v7, p0, LK1/h;->g:I

    iget-object v1, p0, LK1/h;->b:Lx1/r;

    iget v3, p0, LK1/h;->d:I

    invoke-static/range {v1 .. v7}, LG5/O3;->a(Lx1/r;IILi0/a;La0/m;II)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_0
    move-object v4, p1

    check-cast v4, La0/m;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget p1, p0, LK1/h;->f:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, La0/d;->P(I)I

    move-result v5

    iget-object v3, p0, LK1/h;->e:Li0/a;

    iget v1, p0, LK1/h;->c:I

    iget v6, p0, LK1/h;->g:I

    iget-object v0, p0, LK1/h;->b:Lx1/r;

    iget v2, p0, LK1/h;->d:I

    invoke-static/range {v0 .. v6}, LG5/M3;->a(Lx1/r;IILi0/a;La0/m;II)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
