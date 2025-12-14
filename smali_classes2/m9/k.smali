.class public final Lm9/k;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lm9/q;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(IILm9/q;)V
    .locals 0

    iput p2, p0, Lm9/k;->a:I

    iput-object p3, p0, Lm9/k;->b:Lm9/q;

    iput p1, p0, Lm9/k;->c:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lm9/k;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    iget-object v0, p0, Lm9/k;->b:Lm9/q;

    new-instance v1, Lm9/m;

    iget p0, p0, Lm9/k;->c:I

    invoke-direct {v1, v0, p0, p1}, Lm9/m;-><init>(Lm9/q;IF)V

    invoke-virtual {v0, v1}, Lj9/h;->k(Ljava/util/function/Consumer;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_0
    check-cast p1, Landroid/graphics/PointF;

    const-string v0, "p"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lm9/k;->b:Lm9/q;

    new-instance v1, Lm9/p;

    iget p0, p0, Lm9/k;->c:I

    invoke-direct {v1, v0, p0, p1}, Lm9/p;-><init>(Lm9/q;ILandroid/graphics/PointF;)V

    invoke-virtual {v0, v1}, Lj9/h;->k(Ljava/util/function/Consumer;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object v0, p0, Lm9/k;->b:Lm9/q;

    new-instance v1, Lj9/e;

    iget p0, p0, Lm9/k;->c:I

    invoke-direct {v1, p1, p0, v0}, Lj9/e;-><init>(IILm9/q;)V

    invoke-virtual {v0, v1}, Lj9/h;->k(Ljava/util/function/Consumer;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
