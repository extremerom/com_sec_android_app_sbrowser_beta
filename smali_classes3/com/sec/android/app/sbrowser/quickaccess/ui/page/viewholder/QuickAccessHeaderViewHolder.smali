.class public Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessHeaderViewHolder;
.super Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/BaseViewHolder;
.source "SourceFile"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mEditTextClickListener:Landroid/view/View$OnClickListener;

.field private final mEditTextView:Landroid/widget/TextView;

.field private final mQuickAccessHeader:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private final mTitle:Landroid/widget/TextView;

.field private final mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p4}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/BaseViewHolder;-><init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;)V

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessHeaderViewHolder;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessHeaderViewHolder;->mContext:Landroid/content/Context;

    const p3, 0x7f0b0953

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessHeaderViewHolder;->mTitle:Landroid/widget/TextView;

    const p4, 0x7f140b92

    invoke-static {p2, p3, p4}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessFormatUtils;->setContentDescriptionForAccessibility(Landroid/content/Context;Landroid/widget/TextView;I)V

    const p3, 0x7f0b0952

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessHeaderViewHolder;->mQuickAccessHeader:Landroidx/constraintlayout/widget/ConstraintLayout;

    const p3, 0x7f0b094b

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessHeaderViewHolder;->mEditTextView:Landroid/widget/TextView;

    const p4, 0x7f140b5c

    invoke-virtual {p2, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setButtonContentDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    new-instance p4, LK6/a;

    const/16 v0, 0x1b

    invoke-direct {p4, v0, p0}, LK6/a;-><init>(ILjava/lang/Object;)V

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessHeaderViewHolder;->mEditTextClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p3, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessHeaderViewHolder;->setFocusBehavior(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessHeaderViewHolder;->updateTopMargin(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessHeaderViewHolder;->updateTouchDelegate()V

    return-void
.end method

.method public static synthetic b(Landroid/view/View;IIIILandroid/view/View;IIIIIIII)V
    .locals 0

    invoke-static/range {p0 .. p13}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessHeaderViewHolder;->lambda$setTouchDelegate$2(Landroid/view/View;IIIILandroid/view/View;IIIIIIII)V

    return-void
.end method

.method public static synthetic c(Landroid/view/View;IIIILandroid/view/View;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessHeaderViewHolder;->lambda$setTouchDelegate$1(Landroid/view/View;IIIILandroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessHeaderViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessHeaderViewHolder;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method private getTopMarginWhenTablet()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessHeaderViewHolder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscapeView(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessHeaderViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070dc0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessHeaderViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070dbf

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessHeaderViewHolder;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->onClickEdit(Landroid/content/Context;)V

    const-string p0, "100"

    const-string p1, "1010"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$setTouchDelegate$1(Landroid/view/View;IIIILandroid/view/View;)V
    .locals 2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget v1, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, p1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget p1, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, p2

    iput p1, v0, Landroid/graphics/Rect;->left:I

    iget p1, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr p1, p3

    iput p1, v0, Landroid/graphics/Rect;->right:I

    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, p4

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    new-instance p1, Landroid/view/TouchDelegate;

    invoke-direct {p1, v0, p0}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {p5, p1}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    return-void
.end method

.method private static synthetic lambda$setTouchDelegate$2(Landroid/view/View;IIIILandroid/view/View;IIIIIIII)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p5

    check-cast p5, Landroid/view/View;

    if-nez p5, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/h;

    const/4 p13, 0x0

    move-object p6, v0

    move-object p7, p0

    move p8, p1

    move p9, p2

    move p10, p3

    move p11, p4

    move-object p12, p5

    invoke-direct/range {p6 .. p13}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/h;-><init>(Landroid/view/View;IIIILandroid/view/View;I)V

    invoke-virtual {p5, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setFocusBehavior(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessHeaderViewHolder;->mEditTextView:Landroid/widget/TextView;

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessHeaderViewHolder$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessHeaderViewHolder$1;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessHeaderViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isBookmarkBarEnabled(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const p1, 0x7f0b0171

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isTabBarEnabled(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0b0c8b

    goto :goto_0

    :cond_1
    const p1, 0x7f0b06b2

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessHeaderViewHolder;->mEditTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setNextFocusUpId(I)V

    return-void
.end method

.method private setLayoutMarginTop(Landroid/view/View;I)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const p0, 0x7f0b0952

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setTouchDelegate(Landroid/view/View;IIII)V
    .locals 7

    new-instance p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/g;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p4

    move v3, p2

    move v4, p3

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/g;-><init>(Landroid/view/View;IIIII)V

    invoke-virtual {p1, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method private updateEditButtonColor()V
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessHeaderViewHolder;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->getTheme()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessHeaderViewHolder;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->getTheme()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isShowButtonShapeEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v2, :cond_2

    const v1, 0x7f0804e5

    goto :goto_1

    :cond_2
    const v1, 0x7f0804e4

    :goto_1
    if-eqz v2, :cond_3

    const v2, 0x7f0608c5

    goto :goto_3

    :cond_3
    const v2, 0x7f0608c3

    goto :goto_3

    :cond_4
    if-eqz v2, :cond_5

    const v1, 0x7f0804e9

    goto :goto_2

    :cond_5
    const v1, 0x7f0804e3

    :goto_2
    if-eqz v2, :cond_6

    const v2, 0x7f060894

    goto :goto_3

    :cond_6
    const v2, 0x7f060893

    :goto_3
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessHeaderViewHolder;->mEditTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessHeaderViewHolder;->mEditTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method private updateEditButtonVisibility()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessHeaderViewHolder;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->isEditButtonVisible()Landroidx/lifecycle/S;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessHeaderViewHolder;->mEditTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessHeaderViewHolder;->mEditTextView:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessHeaderViewHolder;->mEditTextClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessHeaderViewHolder;->mEditTextView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessHeaderViewHolder;->mEditTextView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method private updateQAHeaderVisibility()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessHeaderViewHolder;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->isQuickAccessHeaderVisible()Landroidx/lifecycle/S;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessHeaderViewHolder;->mQuickAccessHeader:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updateTitleColor()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessHeaderViewHolder;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->getTheme()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessHeaderViewHolder;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->getTheme()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x7f0608c6

    goto :goto_1

    :cond_1
    :goto_0
    const v0, 0x7f0608c7

    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessHeaderViewHolder;->mTitle:Landroid/widget/TextView;

    iget-object p0, p0, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private updateTopMargin(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessHeaderViewHolder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletLayout(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessHeaderViewHolder;->getTopMarginWhenTablet()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessHeaderViewHolder;->setLayoutMarginTop(Landroid/view/View;I)V

    return-void
.end method

.method private updateTouchDelegate()V
    .locals 8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessHeaderViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070dc4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessHeaderViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070dc5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessHeaderViewHolder;->mEditTextView:Landroid/widget/TextView;

    const/4 v7, 0x0

    move-object v2, p0

    move v4, v5

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessHeaderViewHolder;->setTouchDelegate(Landroid/view/View;IIII)V

    return-void
.end method


# virtual methods
.method public bind()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessHeaderViewHolder;->updateTitleColor()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessHeaderViewHolder;->updateEditButtonColor()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessHeaderViewHolder;->updateEditButtonVisibility()V

    return-void
.end method

.method public bind(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "edit_button_visibility"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessHeaderViewHolder;->updateEditButtonVisibility()V

    goto :goto_0

    :cond_1
    const-string v1, "theme"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessHeaderViewHolder;->updateEditButtonColor()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessHeaderViewHolder;->updateTitleColor()V

    goto :goto_0

    :cond_2
    const-string v1, "layout"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessHeaderViewHolder;->updateTopMargin(Landroid/view/View;)V

    goto :goto_0

    :cond_3
    const-string v1, "header_visibility"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessHeaderViewHolder;->updateQAHeaderVisibility()V

    goto :goto_0

    :cond_4
    return-void
.end method
