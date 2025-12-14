.class public final LX1/f;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lf2/a;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lf2/a;II)V
    .locals 0

    iput p3, p0, LX1/f;->a:I

    iput-object p1, p0, LX1/f;->b:Lf2/a;

    iput p2, p0, LX1/f;->c:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, LX1/f;->a:I

    check-cast p1, La0/m;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    packed-switch v0, :pswitch_data_0

    iget p2, p0, LX1/f;->c:I

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, La0/d;->P(I)I

    move-result p2

    iget-object p0, p0, LX1/f;->b:Lf2/a;

    invoke-static {p0, p1, p2}, LG5/x3;->a(Lf2/a;La0/m;I)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_0
    iget p2, p0, LX1/f;->c:I

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, La0/d;->P(I)I

    move-result p2

    iget-object p0, p0, LX1/f;->b:Lf2/a;

    invoke-static {p0, p1, p2}, LG5/r3;->a(Lf2/a;La0/m;I)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
