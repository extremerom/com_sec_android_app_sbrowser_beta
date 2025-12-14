.class public final Lx6/a;
.super LG5/C;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lx6/a;->a:I

    iput-object p2, p0, Lx6/a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)F
    .locals 1

    iget v0, p0, Lx6/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lx6/a;->b:Ljava/lang/Object;

    check-cast p0, LU/b;

    iget p0, p0, LU/b;->b:F

    return p0

    :pswitch_0
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result p1

    iget-object p0, p0, Lx6/a;->b:Ljava/lang/Object;

    check-cast p0, LZ3/x;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 p0, 0x447a0000    # 1000.0f

    mul-float/2addr p1, p0

    return p1

    :pswitch_1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result p1

    iget-object p0, p0, Lx6/a;->b:Ljava/lang/Object;

    check-cast p0, LZ3/x;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 p0, 0x447a0000    # 1000.0f

    mul-float/2addr p1, p0

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final f(Ljava/lang/Object;F)V
    .locals 1

    iget v0, p0, Lx6/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lx6/a;->b:Ljava/lang/Object;

    check-cast p0, LU/b;

    iput p2, p0, LU/b;->b:F

    return-void

    :pswitch_0
    check-cast p1, Landroid/view/View;

    iget-object p0, p0, Lx6/a;->b:Ljava/lang/Object;

    check-cast p0, LZ3/x;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 p0, 0x447a0000    # 1000.0f

    div-float/2addr p2, p0

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    return-void

    :pswitch_1
    check-cast p1, Landroid/view/View;

    iget-object p0, p0, Lx6/a;->b:Ljava/lang/Object;

    check-cast p0, LZ3/x;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 p0, 0x447a0000    # 1000.0f

    div-float/2addr p2, p0

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
