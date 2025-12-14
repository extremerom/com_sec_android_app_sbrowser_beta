.class public final Landroidx/recyclerview/widget/G0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/A1;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/recyclerview/widget/J0;


# direct methods
.method public synthetic constructor <init>(Landroidx/recyclerview/widget/J0;I)V
    .locals 0

    iput p2, p0, Landroidx/recyclerview/widget/G0;->a:I

    iput-object p1, p0, Landroidx/recyclerview/widget/G0;->b:Landroidx/recyclerview/widget/J0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)I
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/G0;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/K0;

    iget-object p0, p0, Landroidx/recyclerview/widget/G0;->b:Landroidx/recyclerview/widget/J0;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/J0;->getDecoratedTop(Landroid/view/View;)I

    move-result p0

    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr p0, p1

    return p0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/K0;

    iget-object p0, p0, Landroidx/recyclerview/widget/G0;->b:Landroidx/recyclerview/widget/J0;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/J0;->getDecoratedLeft(Landroid/view/View;)I

    move-result p0

    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr p0, p1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/G0;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/recyclerview/widget/G0;->b:Landroidx/recyclerview/widget/J0;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/J0;->getPaddingTop()I

    move-result p0

    return p0

    :pswitch_0
    iget-object p0, p0, Landroidx/recyclerview/widget/G0;->b:Landroidx/recyclerview/widget/J0;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/J0;->getPaddingLeft()I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/G0;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/recyclerview/widget/G0;->b:Landroidx/recyclerview/widget/J0;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/J0;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/J0;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v0, p0

    return v0

    :pswitch_0
    iget-object p0, p0, Landroidx/recyclerview/widget/G0;->b:Landroidx/recyclerview/widget/J0;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/J0;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/J0;->getPaddingRight()I

    move-result p0

    sub-int/2addr v0, p0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Landroid/view/View;)I
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/G0;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/K0;

    iget-object p0, p0, Landroidx/recyclerview/widget/G0;->b:Landroidx/recyclerview/widget/J0;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/J0;->getDecoratedBottom(Landroid/view/View;)I

    move-result p0

    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p0, p1

    return p0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/K0;

    iget-object p0, p0, Landroidx/recyclerview/widget/G0;->b:Landroidx/recyclerview/widget/J0;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/J0;->getDecoratedRight(Landroid/view/View;)I

    move-result p0

    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr p0, p1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getChildAt(I)Landroid/view/View;
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/G0;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/recyclerview/widget/G0;->b:Landroidx/recyclerview/widget/J0;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/J0;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Landroidx/recyclerview/widget/G0;->b:Landroidx/recyclerview/widget/J0;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/J0;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
