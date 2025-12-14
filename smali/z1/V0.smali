.class public final Lz1/V0;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:J

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lsb/n;

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(JLjava/lang/Object;Lsb/n;II)V
    .locals 0

    iput p6, p0, Lz1/V0;->a:I

    iput-wide p1, p0, Lz1/V0;->b:J

    iput-object p3, p0, Lz1/V0;->c:Ljava/lang/Object;

    iput-object p4, p0, Lz1/V0;->d:Lsb/n;

    iput p5, p0, Lz1/V0;->e:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lz1/b1;JLsb/n;I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lz1/V0;->a:I

    iput-object p1, p0, Lz1/V0;->c:Ljava/lang/Object;

    iput-wide p2, p0, Lz1/V0;->b:J

    iput-object p4, p0, Lz1/V0;->d:Lsb/n;

    iput p5, p0, Lz1/V0;->e:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lz1/V0;->a:I

    packed-switch v0, :pswitch_data_0

    move-object v5, p1

    check-cast v5, La0/m;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget p1, p0, Lz1/V0;->e:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, La0/d;->P(I)I

    move-result v6

    iget-object p1, p0, Lz1/V0;->c:Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, LK1/c;

    iget-object p1, p0, Lz1/V0;->d:Lsb/n;

    move-object v4, p1

    check-cast v4, Li0/a;

    iget-wide v1, p0, Lz1/V0;->b:J

    invoke-static/range {v1 .. v6}, LG5/o;->b(JLK1/c;Li0/a;La0/m;I)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_0
    move-object v3, p1

    check-cast v3, La0/m;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget p1, p0, Lz1/V0;->e:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, La0/d;->P(I)I

    move-result v0

    iget-object p1, p0, Lz1/V0;->c:Ljava/lang/Object;

    move-object v5, p1

    check-cast v5, Lz1/b1;

    iget-object v4, p0, Lz1/V0;->d:Lsb/n;

    iget-wide v1, p0, Lz1/V0;->b:J

    invoke-static/range {v0 .. v5}, LG5/Y2;->b(IJLa0/m;Lsb/n;Lz1/b1;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_1
    move-object v3, p1

    check-cast v3, La0/m;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget p1, p0, Lz1/V0;->e:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, La0/d;->P(I)I

    move-result v0

    iget-wide v1, p0, Lz1/V0;->b:J

    iget-object v4, p0, Lz1/V0;->d:Lsb/n;

    iget-object p0, p0, Lz1/V0;->c:Ljava/lang/Object;

    move-object v5, p0

    check-cast v5, Lz1/b1;

    invoke-static/range {v0 .. v5}, LG5/Y2;->a(IJLa0/m;Lsb/n;Lz1/b1;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
