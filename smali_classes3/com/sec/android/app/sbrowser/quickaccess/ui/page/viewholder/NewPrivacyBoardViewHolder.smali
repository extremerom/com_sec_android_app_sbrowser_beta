.class public Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewPrivacyBoardViewHolder;
.super Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/PrivacyBoardViewHolder;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BlurViewHolder;


# instance fields
.field private final mCardView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessCardView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/PrivacyBoardViewHolder;-><init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    const v0, 0x7f0b08ff

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessCardView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewPrivacyBoardViewHolder;->mCardView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessCardView;

    if-eqz p1, :cond_0

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p3, 0x7f070d6a

    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessCardView;->setRoundedCornerRadius(I)V

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessCardView;->setViewModel(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;)V

    :cond_0
    return-void
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewPrivacyBoardViewHolder;)Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessCardView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewPrivacyBoardViewHolder;->mCardView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessCardView;

    return-object p0
.end method


# virtual methods
.method public addListener()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewPrivacyBoardViewHolder;->mCardView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessCardView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessCardView;->addOnPreDrawListener()V

    return-void
.end method

.method public getNumberTextStyleSpan()Ljava/lang/Object;
    .locals 2

    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    iget-object p0, p0, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f1502eb

    invoke-direct {v0, p0, v1}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public getPrivacyTextColor()I
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/PrivacyBoardViewHolder;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->getIsSolidColorLightThemed()Landroidx/lifecycle/S;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f060895

    goto :goto_0

    :cond_0
    const p0, 0x7f0607dc

    :goto_0
    invoke-virtual {v0, p0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0
.end method

.method public removeListener()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewPrivacyBoardViewHolder;->mCardView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessCardView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessCardView;->removeOnPreDrawListener()V

    return-void
.end method

.method public updateBlurBackground()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewPrivacyBoardViewHolder;->mCardView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessCardView;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewPrivacyBoardViewHolder$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewPrivacyBoardViewHolder$1;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewPrivacyBoardViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public updatePrivacyTextColor()V
    .locals 10

    iget-object v0, p0, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/PrivacyBoardViewHolder;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->getIsSolidColorLightThemed()Landroidx/lifecycle/S;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/PrivacyBoardViewHolder;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->getTheme()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/PrivacyBoardViewHolder;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->getTheme()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/PrivacyBoardViewHolder;->mTitle:Landroid/widget/TextView;

    const v4, 0x7f060887

    const v5, 0x7f060895

    if-eqz v1, :cond_2

    move v6, v5

    goto :goto_1

    :cond_2
    move v6, v4

    :goto_1
    invoke-virtual {v0, v6}, Landroid/content/Context;->getColor(I)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz v1, :cond_3

    move v2, v5

    goto :goto_2

    :cond_3
    if-eqz v3, :cond_4

    const v2, 0x7f0608b2

    goto :goto_2

    :cond_4
    const v2, 0x7f0607de

    :goto_2
    if-eqz v3, :cond_5

    const v6, 0x7f0804cd

    goto :goto_3

    :cond_5
    const v6, 0x7f0804cc

    :goto_3
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isShowButtonShapeEnabled()Z

    move-result v7

    if-eqz v7, :cond_9

    if-eqz v3, :cond_6

    const v4, 0x7f0804e5

    goto :goto_4

    :cond_6
    const v4, 0x7f0804e4

    :goto_4
    if-eqz v1, :cond_7

    move v7, v5

    goto :goto_7

    :cond_7
    if-eqz v3, :cond_8

    const v7, 0x7f0608c5

    goto :goto_7

    :cond_8
    const v7, 0x7f0608c3

    goto :goto_7

    :cond_9
    if-eqz v3, :cond_a

    const v7, 0x7f0804e9

    goto :goto_5

    :cond_a
    const v7, 0x7f0804e3

    :goto_5
    if-eqz v1, :cond_b

    move v4, v5

    goto :goto_6

    :cond_b
    if-eqz v3, :cond_c

    const v4, 0x7f0608b6

    :cond_c
    :goto_6
    move v9, v7

    move v7, v4

    move v4, v9

    :goto_7
    iget-object v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/PrivacyBoardViewHolder;->mPrivacyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/PrivacyBoardViewHolder;->mTurnOnTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/content/Context;->getColor(I)I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/PrivacyBoardViewHolder;->mTurnOnTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/PrivacyBoardViewHolder;->mContentLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v6}, Landroid/view/View;->setBackgroundResource(I)V

    if-eqz v1, :cond_d

    goto :goto_8

    :cond_d
    if-eqz v3, :cond_e

    const v5, 0x7f0607dd

    goto :goto_8

    :cond_e
    const v5, 0x7f0607dc

    :goto_8
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/PrivacyBoardViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method
