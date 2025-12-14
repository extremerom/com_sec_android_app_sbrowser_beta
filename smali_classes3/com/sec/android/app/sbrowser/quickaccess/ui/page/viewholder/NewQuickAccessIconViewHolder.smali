.class public Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewQuickAccessIconViewHolder;
.super Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessIconViewHolder;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/databinding/QuickaccessIconViewItemBinding;Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AdapterDelegate;)V
    .locals 0
    .param p5    # Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AdapterDelegate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessIconViewHolder;-><init>(Lcom/sec/android/app/sbrowser/databinding/QuickaccessIconViewItemBinding;Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AdapterDelegate;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/databinding/QuickaccessIconViewItemBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object p2

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f070d38

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setMinimumWidth(I)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/databinding/QuickaccessIconViewItemBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object p2

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f070d36

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setMinimumHeight(I)V

    iget-object p2, p1, Lcom/sec/android/app/sbrowser/databinding/QuickaccessIconViewItemBinding;->container:Lcom/sec/android/app/sbrowser/databinding/QuickaccessIconViewItemContainerBinding;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/databinding/QuickaccessIconViewItemContainerBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3, p3, p3, p3}, Landroid/view/View;->setPadding(IIII)V

    iget-object p2, p1, Lcom/sec/android/app/sbrowser/databinding/QuickaccessIconViewItemBinding;->container:Lcom/sec/android/app/sbrowser/databinding/QuickaccessIconViewItemContainerBinding;

    iget-object p2, p2, Lcom/sec/android/app/sbrowser/databinding/QuickaccessIconViewItemContainerBinding;->innerContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget-object p4, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const p5, 0x7f070d4e

    invoke-virtual {p4, p5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    iput p4, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p2, p1, Lcom/sec/android/app/sbrowser/databinding/QuickaccessIconViewItemBinding;->container:Lcom/sec/android/app/sbrowser/databinding/QuickaccessIconViewItemContainerBinding;

    iget-object p2, p2, Lcom/sec/android/app/sbrowser/databinding/QuickaccessIconViewItemContainerBinding;->innerContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget-object p4, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const p5, 0x7f070d3f

    invoke-virtual {p4, p5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    iput p4, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p4, 0x7f070d41

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iget-object p4, p1, Lcom/sec/android/app/sbrowser/databinding/QuickaccessIconViewItemBinding;->container:Lcom/sec/android/app/sbrowser/databinding/QuickaccessIconViewItemContainerBinding;

    iget-object p4, p4, Lcom/sec/android/app/sbrowser/databinding/QuickaccessIconViewItemContainerBinding;->icon:Landroid/widget/ImageView;

    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    iput p2, p4, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p4, p1, Lcom/sec/android/app/sbrowser/databinding/QuickaccessIconViewItemBinding;->container:Lcom/sec/android/app/sbrowser/databinding/QuickaccessIconViewItemContainerBinding;

    iget-object p4, p4, Lcom/sec/android/app/sbrowser/databinding/QuickaccessIconViewItemContainerBinding;->icon:Landroid/widget/ImageView;

    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    iput p2, p4, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p4, p1, Lcom/sec/android/app/sbrowser/databinding/QuickaccessIconViewItemBinding;->container:Lcom/sec/android/app/sbrowser/databinding/QuickaccessIconViewItemContainerBinding;

    iget-object p4, p4, Lcom/sec/android/app/sbrowser/databinding/QuickaccessIconViewItemContainerBinding;->dominantChar:Landroid/widget/TextView;

    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    iput p2, p4, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p4, p1, Lcom/sec/android/app/sbrowser/databinding/QuickaccessIconViewItemBinding;->container:Lcom/sec/android/app/sbrowser/databinding/QuickaccessIconViewItemContainerBinding;

    iget-object p4, p4, Lcom/sec/android/app/sbrowser/databinding/QuickaccessIconViewItemContainerBinding;->dominantChar:Landroid/widget/TextView;

    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    iput p2, p4, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p2, p1, Lcom/sec/android/app/sbrowser/databinding/QuickaccessIconViewItemBinding;->container:Lcom/sec/android/app/sbrowser/databinding/QuickaccessIconViewItemContainerBinding;

    iget-object p2, p2, Lcom/sec/android/app/sbrowser/databinding/QuickaccessIconViewItemContainerBinding;->title:Lcom/sec/android/app/sbrowser/databinding/QuickaccessIconViewItemTitleBinding;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/databinding/QuickaccessIconViewItemTitleBinding;->getRoot()Lcom/sec/android/app/sbrowser/common/widget/AutoLetterSpacingTextView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object p4, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const p5, 0x7f070d48

    invoke-virtual {p4, p5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    iput p4, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput p3, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object p2, p1, Lcom/sec/android/app/sbrowser/databinding/QuickaccessIconViewItemBinding;->container:Lcom/sec/android/app/sbrowser/databinding/QuickaccessIconViewItemContainerBinding;

    iget-object p2, p2, Lcom/sec/android/app/sbrowser/databinding/QuickaccessIconViewItemContainerBinding;->title:Lcom/sec/android/app/sbrowser/databinding/QuickaccessIconViewItemTitleBinding;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/databinding/QuickaccessIconViewItemTitleBinding;->getRoot()Lcom/sec/android/app/sbrowser/common/widget/AutoLetterSpacingTextView;

    move-result-object p2

    iget-object p4, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const p5, 0x7f070d4c

    invoke-virtual {p4, p5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    int-to-float p4, p4

    invoke-virtual {p2, p3, p4}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/QuickaccessIconViewItemBinding;->container:Lcom/sec/android/app/sbrowser/databinding/QuickaccessIconViewItemContainerBinding;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/QuickaccessIconViewItemContainerBinding;->title:Lcom/sec/android/app/sbrowser/databinding/QuickaccessIconViewItemTitleBinding;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/databinding/QuickaccessIconViewItemTitleBinding;->getRoot()Lcom/sec/android/app/sbrowser/common/widget/AutoLetterSpacingTextView;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070b51

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f070b50

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    int-to-float p3, p3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->mContext:Landroid/content/Context;

    const p4, 0x7f0608c2

    invoke-virtual {p0, p4}, Landroid/content/Context;->getColor(I)I

    move-result p0

    const/4 p4, 0x0

    invoke-virtual {p1, p2, p4, p3, p0}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    return-void
.end method


# virtual methods
.method public getTitleLightColor()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->mAdapterDelegate:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AdapterDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AdapterDelegate;->getEditMode()Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->isNonNativeEditableView()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->getTitleLightColor()I

    move-result p0

    goto :goto_0

    :cond_0
    const p0, 0x7f060de9

    :goto_0
    return p0
.end method
