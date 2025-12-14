.class public Lcom/sec/android/app/sbrowser/toolbar/ToolbarCompact;
.super Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;
.source "SourceFile"


# instance fields
.field private final mToolbarBackground:Lcom/sec/android/app/sbrowser/toolbar/ToolbarBackgroundDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/toolbar/ToolbarDelegate;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/toolbar/ToolbarDelegate;)V

    new-instance p1, Lcom/sec/android/app/sbrowser/toolbar/ToolbarBackgroundDrawable;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarBackgroundDrawable;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarCompact;->mToolbarBackground:Lcom/sec/android/app/sbrowser/toolbar/ToolbarBackgroundDrawable;

    return-void
.end method

.method private setParentClipChildren(Landroid/view/ViewGroup;)V
    .locals 1

    :goto_0
    if-eqz p1, :cond_2

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of p0, p0, Landroid/view/ViewGroup;

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p0

    const v0, 0x7f0b0d77

    if-ne p0, v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public changeMode()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->changeMode()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->getLocationBar()Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->updateAllButtonStatus()V

    return-void
.end method

.method public getBlurRect()Landroid/graphics/Rect;
    .locals 4

    const/4 v0, 0x2

    new-array v1, v0, [I

    new-array v0, v0, [I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->getBaseLayout()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->getToolbarMainLayout()Landroid/widget/RelativeLayout;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 p0, 0x0

    aget v3, v0, p0

    aget p0, v1, p0

    sub-int/2addr v3, p0

    const/4 p0, 0x1

    aget v0, v0, p0

    aget p0, v1, p0

    sub-int/2addr v0, p0

    new-instance p0, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v3

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {p0, v3, v0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method

.method public getToolbarHeight()I
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0715cb

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public onModeFinished()V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->getBaseLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0715d7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0715d5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v2, -0x1

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->getBaseLayout()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->getBaseLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->getOuterLayout()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->getLocationBar()Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07073e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->getLocationBar()Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->updateAllButtonStatus()V

    return-void
.end method

.method public setProgressBar()V
    .locals 0

    return-void
.end method

.method public setToolbarHeight()V
    .locals 6

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->getBaseLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0715cc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->isEditMode()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0715cd

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarCompact;->getToolbarHeight()I

    move-result v4

    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isPhoneLandscapeOrTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0715c9

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->isEditMode()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->getWindowWidth(Landroid/content/Context;)I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3f5c28f6    # 0.86f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0715d3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    :goto_1
    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0715c8

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v4, -0x1

    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->getBaseLayout()Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->getBaseLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->getOuterLayout()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->getLocationBar()Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarCompact;->getToolbarHeight()I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->getToolbarMainLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->getNavigationBarHeight(Landroid/view/View;)I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->getBottomCutoutHeight(Landroid/content/Context;)I

    move-result v2

    add-int/2addr v2, v0

    add-int/2addr v2, v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->getToolbarMainLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0715d2

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {v0, v3, p0, v3, v2}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public setToolbarLayout()V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->getToolbarMainLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v2, 0xc

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->getBaseLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarCompact;->setParentClipChildren(Landroid/view/ViewGroup;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->getBaseLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarCompact;->mToolbarBackground:Lcom/sec/android/app/sbrowser/toolbar/ToolbarBackgroundDrawable;

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public shouldApplyBrowserTheme()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public updateLocationBarMargin()V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->getLocationBar()Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->isEditMode()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f0715cd

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public updateTextFieldBackground(Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->getLocationBar()Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->getUrlBarParent()Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public updateTextFieldColors(Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->updateTextFieldColors(Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;)V

    goto :goto_0

    :cond_0
    const p1, 0x7f060dc2

    iput p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->mTextFieldBgColor:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->mToolbarBackgroundColor:I

    :goto_0
    return-void
.end method

.method public updateToolbarLayout()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarCompact;->changeMode()V

    return-void
.end method

.method public updateToolbarLayoutPosition()V
    .locals 0

    return-void
.end method
