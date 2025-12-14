.class public final LU/o;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lz0/G;


# direct methods
.method public synthetic constructor <init>(Lz0/G;I)V
    .locals 0

    iput p2, p0, LU/o;->a:I

    iput-object p1, p0, LU/o;->b:Lz0/G;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, LU/o;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lz0/F;

    const-string v0, "$this$layout"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LU/o;->b:Lz0/G;

    const/4 v0, 0x0

    invoke-static {p1, p0, v0, v0}, Lz0/F;->e(Lz0/F;Lz0/G;II)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_0
    check-cast p1, Lz0/F;

    const-string v0, "$this$layout"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LU/o;->b:Lz0/G;

    const/4 v0, 0x0

    invoke-static {p1, p0, v0, v0}, Lz0/F;->e(Lz0/F;Lz0/G;II)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
