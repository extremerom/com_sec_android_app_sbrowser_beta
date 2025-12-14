.class public Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewQuickAccessAddItemViewHolder;
.super Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessAddItemViewHolder;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/databinding/QuickaccessIconViewAddItemBinding;Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AdapterDelegate;)V
    .locals 1
    .param p5    # Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AdapterDelegate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessAddItemViewHolder;-><init>(Lcom/sec/android/app/sbrowser/databinding/QuickaccessIconViewAddItemBinding;Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AdapterDelegate;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/databinding/QuickaccessIconViewAddItemBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object p2

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f070d38

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setMinimumWidth(I)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/databinding/QuickaccessIconViewAddItemBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object p2

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f070d36

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setMinimumHeight(I)V

    iget-object p2, p1, Lcom/sec/android/app/sbrowser/databinding/QuickaccessIconViewAddItemBinding;->addViewContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result p3

    iget-object p4, p1, Lcom/sec/android/app/sbrowser/databinding/QuickaccessIconViewAddItemBinding;->addViewContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p4}, Landroid/view/View;->getPaddingRight()I

    move-result p4

    iget-object p5, p1, Lcom/sec/android/app/sbrowser/databinding/QuickaccessIconViewAddItemBinding;->addViewContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p5}, Landroid/view/View;->getPaddingBottom()I

    move-result p5

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0, p4, p5}, Landroid/view/View;->setPadding(IIII)V

    iget-object p2, p1, Lcom/sec/android/app/sbrowser/databinding/QuickaccessIconViewAddItemBinding;->innerContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f070d4e

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p2, p1, Lcom/sec/android/app/sbrowser/databinding/QuickaccessIconViewAddItemBinding;->innerContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f070d3f

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070d41

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iget-object p3, p1, Lcom/sec/android/app/sbrowser/databinding/QuickaccessIconViewAddItemBinding;->icon:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    iput p2, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p3, p1, Lcom/sec/android/app/sbrowser/databinding/QuickaccessIconViewAddItemBinding;->icon:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    iput p2, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p3, p1, Lcom/sec/android/app/sbrowser/databinding/QuickaccessIconViewAddItemBinding;->dominantChar:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    iput p2, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p3, p1, Lcom/sec/android/app/sbrowser/databinding/QuickaccessIconViewAddItemBinding;->dominantChar:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    iput p2, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p2, p1, Lcom/sec/android/app/sbrowser/databinding/QuickaccessIconViewAddItemBinding;->title:Lcom/sec/android/app/sbrowser/databinding/QuickaccessIconViewItemTitleBinding;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/databinding/QuickaccessIconViewItemTitleBinding;->getRoot()Lcom/sec/android/app/sbrowser/common/widget/AutoLetterSpacingTextView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f070d48

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/QuickaccessIconViewAddItemBinding;->title:Lcom/sec/android/app/sbrowser/databinding/QuickaccessIconViewItemTitleBinding;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/databinding/QuickaccessIconViewItemTitleBinding;->getRoot()Lcom/sec/android/app/sbrowser/common/widget/AutoLetterSpacingTextView;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f070d4c

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1, v0, p0}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    return-void
.end method


# virtual methods
.method public updateIcon()V
    .locals 4

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->getIsSolidColorLightThemed()Landroidx/lifecycle/S;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0804fb

    goto :goto_0

    :cond_0
    const v0, 0x7f0804fd

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->mIcon:Landroid/widget/ImageView;

    const v2, 0x7f0b05ef

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearColorFilter()V

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->mLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->mLayout:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->mLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f080322

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessAddItemViewHolder;->mAddItemBinding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessIconViewAddItemBinding;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/databinding/QuickaccessIconViewAddItemBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->mContext:Landroid/content/Context;

    const v1, 0x7f140b4e

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/tooltip/TooltipCompat;->setHoverTooltip(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method
