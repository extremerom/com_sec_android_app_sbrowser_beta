.class public final LY2/q;
.super LY2/h0;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LY2/q;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(LY2/i0;LN/f;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LY2/q;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LY2/q;->c:Ljava/lang/Object;

    iput-object p2, p0, LY2/q;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onTransitionEnd(LY2/f0;)V
    .locals 2

    iget v0, p0, LY2/q;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LY2/q;->c:Ljava/lang/Object;

    check-cast v0, LY2/i0;

    iget-object v0, v0, LY2/i0;->b:Landroid/view/ViewGroup;

    iget-object v1, p0, LY2/q;->b:Ljava/lang/Object;

    check-cast v1, LN/f;

    invoke-virtual {v1, v0}, LN/A;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1, p0}, LY2/f0;->removeListener(LY2/d0;)LY2/f0;

    return-void

    :pswitch_0
    invoke-virtual {p1, p0}, LY2/f0;->removeListener(LY2/d0;)LY2/f0;

    iget-object p0, p0, LY2/q;->b:Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    sget p1, LY2/H;->g:I

    const p1, 0x7f0b054b

    invoke-virtual {p0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LY2/H;

    if-eqz p1, :cond_0

    iget v0, p1, LY2/H;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, LY2/H;->d:I

    if-gtz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, LY2/F;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    const p1, 0x7f0b0ddd

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const p1, 0x7f0b0885

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onTransitionPause(LY2/f0;)V
    .locals 1

    iget v0, p0, LY2/q;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, LY2/h0;->onTransitionPause(LY2/f0;)V

    return-void

    :pswitch_0
    iget-object p0, p0, LY2/q;->c:Ljava/lang/Object;

    check-cast p0, LY2/H;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, LY2/H;->setVisibility(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onTransitionResume(LY2/f0;)V
    .locals 1

    iget v0, p0, LY2/q;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, LY2/h0;->onTransitionResume(LY2/f0;)V

    return-void

    :pswitch_0
    iget-object p0, p0, LY2/q;->c:Ljava/lang/Object;

    check-cast p0, LY2/H;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, LY2/H;->setVisibility(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
