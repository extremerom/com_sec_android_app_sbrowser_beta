.class public final LW1/e;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:LV9/a;

.field public final synthetic c:Lsb/n;

.field public final synthetic d:Lsb/n;

.field public final synthetic e:Li0/a;

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(LV9/a;Lsb/n;Lsb/n;Li0/a;II)V
    .locals 0

    iput p6, p0, LW1/e;->a:I

    iput-object p1, p0, LW1/e;->b:LV9/a;

    iput-object p2, p0, LW1/e;->c:Lsb/n;

    iput-object p3, p0, LW1/e;->d:Lsb/n;

    iput-object p4, p0, LW1/e;->e:Li0/a;

    iput p5, p0, LW1/e;->f:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget v0, p0, LW1/e;->a:I

    packed-switch v0, :pswitch_data_0

    move-object v5, p1

    check-cast v5, La0/m;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget p1, p0, LW1/e;->f:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, La0/d;->P(I)I

    move-result v6

    iget-object v4, p0, LW1/e;->e:Li0/a;

    iget-object v1, p0, LW1/e;->b:LV9/a;

    iget-object v2, p0, LW1/e;->c:Lsb/n;

    iget-object v3, p0, LW1/e;->d:Lsb/n;

    invoke-static/range {v1 .. v6}, LG5/y3;->a(LV9/a;Lsb/n;Lsb/n;Li0/a;La0/m;I)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_0
    move-object v4, p1

    check-cast v4, La0/m;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget p1, p0, LW1/e;->f:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, La0/d;->P(I)I

    move-result v5

    iget-object v3, p0, LW1/e;->e:Li0/a;

    iget-object v0, p0, LW1/e;->b:LV9/a;

    iget-object v1, p0, LW1/e;->c:Lsb/n;

    iget-object v2, p0, LW1/e;->d:Lsb/n;

    invoke-static/range {v0 .. v5}, LG5/s3;->a(LV9/a;Lsb/n;Lsb/n;Li0/a;La0/m;I)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_1
    move-object v4, p1

    check-cast v4, La0/m;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget p1, p0, LW1/e;->f:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, La0/d;->P(I)I

    move-result v5

    iget-object v3, p0, LW1/e;->e:Li0/a;

    iget-object v0, p0, LW1/e;->b:LV9/a;

    iget-object v1, p0, LW1/e;->c:Lsb/n;

    iget-object v2, p0, LW1/e;->d:Lsb/n;

    invoke-static/range {v0 .. v5}, LG5/h3;->a(LV9/a;Lsb/n;Lsb/n;Li0/a;La0/m;I)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
