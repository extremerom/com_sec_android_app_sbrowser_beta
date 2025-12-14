.class public final LR1/s;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/samsung/android/motionphoto/utils/ex/e;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/motionphoto/utils/ex/e;II)V
    .locals 0

    iput p3, p0, LR1/s;->a:I

    iput-object p1, p0, LR1/s;->b:Lcom/samsung/android/motionphoto/utils/ex/e;

    iput p2, p0, LR1/s;->c:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, LR1/s;->a:I

    check-cast p1, La0/m;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    packed-switch v0, :pswitch_data_0

    iget p2, p0, LR1/s;->c:I

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, La0/d;->P(I)I

    move-result p2

    iget-object p0, p0, LR1/s;->b:Lcom/samsung/android/motionphoto/utils/ex/e;

    invoke-static {p0, p1, p2}, LG5/D;->a(Lcom/samsung/android/motionphoto/utils/ex/e;La0/m;I)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_0
    iget p2, p0, LR1/s;->c:I

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, La0/d;->P(I)I

    move-result p2

    iget-object p0, p0, LR1/s;->b:Lcom/samsung/android/motionphoto/utils/ex/e;

    invoke-static {p0, p1, p2}, LG5/D;->a(Lcom/samsung/android/motionphoto/utils/ex/e;La0/m;I)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
