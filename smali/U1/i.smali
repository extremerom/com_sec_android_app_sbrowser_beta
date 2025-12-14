.class public final LU1/i;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:LV9/a;

.field public final synthetic c:Lsb/n;

.field public final synthetic d:Lsb/n;

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(LV9/a;Lsb/n;Lsb/n;II)V
    .locals 0

    iput p5, p0, LU1/i;->a:I

    iput-object p1, p0, LU1/i;->b:LV9/a;

    iput-object p2, p0, LU1/i;->c:Lsb/n;

    iput-object p3, p0, LU1/i;->d:Lsb/n;

    iput p4, p0, LU1/i;->e:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, LU1/i;->a:I

    check-cast p1, La0/m;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    packed-switch v0, :pswitch_data_0

    iget p2, p0, LU1/i;->e:I

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, La0/d;->P(I)I

    move-result p2

    iget-object v0, p0, LU1/i;->c:Lsb/n;

    iget-object v1, p0, LU1/i;->d:Lsb/n;

    iget-object p0, p0, LU1/i;->b:LV9/a;

    invoke-static {p0, v0, v1, p1, p2}, LG5/T2;->c(LV9/a;Lsb/n;Lsb/n;La0/m;I)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_0
    iget p2, p0, LU1/i;->e:I

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, La0/d;->P(I)I

    move-result p2

    iget-object v0, p0, LU1/i;->c:Lsb/n;

    iget-object v1, p0, LU1/i;->d:Lsb/n;

    iget-object p0, p0, LU1/i;->b:LV9/a;

    invoke-static {p0, v0, v1, p1, p2}, LG5/T2;->c(LV9/a;Lsb/n;Lsb/n;La0/m;I)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_1
    iget p2, p0, LU1/i;->e:I

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, La0/d;->P(I)I

    move-result p2

    iget-object v0, p0, LU1/i;->c:Lsb/n;

    iget-object v1, p0, LU1/i;->d:Lsb/n;

    iget-object p0, p0, LU1/i;->b:LV9/a;

    invoke-static {p0, v0, v1, p1, p2}, LG5/D2;->a(LV9/a;Lsb/n;Lsb/n;La0/m;I)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_2
    iget p2, p0, LU1/i;->e:I

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, La0/d;->P(I)I

    move-result p2

    iget-object v0, p0, LU1/i;->c:Lsb/n;

    iget-object v1, p0, LU1/i;->d:Lsb/n;

    iget-object p0, p0, LU1/i;->b:LV9/a;

    invoke-static {p0, v0, v1, p1, p2}, LG5/D2;->a(LV9/a;Lsb/n;Lsb/n;La0/m;I)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
