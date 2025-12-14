.class public abstract Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mTextFieldBgColor:I

.field protected mToolbarBackgroundColor:I

.field protected mToolbarDelegate:Lcom/sec/android/app/sbrowser/toolbar/ToolbarDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/toolbar/ToolbarDelegate;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0604c8

    iput v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->mTextFieldBgColor:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->mToolbarBackgroundColor:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->mToolbarDelegate:Lcom/sec/android/app/sbrowser/toolbar/ToolbarDelegate;

    return-void
.end method

.method private getLocationBarMargin()I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscapeOrTabletStyle(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const p0, 0x7f071636

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->mToolbarDelegate:Lcom/sec/android/app/sbrowser/toolbar/ToolbarDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarDelegate;->isNewQuickAccessDefaultMobileLayout()Z

    move-result p0

    if-eqz p0, :cond_1

    const p0, 0x7f071637

    goto :goto_0

    :cond_1
    const p0, 0x7f071635

    :goto_0
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public changeMode()V
    .locals 2

    const-string v0, "si__ToolbarLayout"

    const-string v1, "changeMode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->setToolbarLayout()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->setToolbarHeight()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->setProgressBar()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->mToolbarDelegate:Lcom/sec/android/app/sbrowser/toolbar/ToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarDelegate;->updateToolbarShadow()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->updateLocationBarMargin()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->updateToolbarLayoutPosition()V

    return-void
.end method

.method public getBackgroundColor()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->mToolbarBackgroundColor:I

    return p0
.end method

.method public getBaseLayout()Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->mToolbarDelegate:Lcom/sec/android/app/sbrowser/toolbar/ToolbarDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarDelegate;->getBaseLayout()Landroid/widget/LinearLayout;

    move-result-object p0

    return-object p0
.end method

.method public getBlurRect()Landroid/graphics/Rect;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBookmarkBarContainer()Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->mToolbarDelegate:Lcom/sec/android/app/sbrowser/toolbar/ToolbarDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarDelegate;->getBookmarkBarContainer()Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;

    move-result-object p0

    return-object p0
.end method

.method public getLocationBar()Lcom/sec/android/app/sbrowser/omnibox/LocationBar;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->mToolbarDelegate:Lcom/sec/android/app/sbrowser/toolbar/ToolbarDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarDelegate;->getLocationBar()Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    move-result-object p0

    return-object p0
.end method

.method public getOuterLayout()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->mToolbarDelegate:Lcom/sec/android/app/sbrowser/toolbar/ToolbarDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarDelegate;->getOuterLayout()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getProgressBar()Landroidx/appcompat/widget/SeslProgressBar;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->mToolbarDelegate:Lcom/sec/android/app/sbrowser/toolbar/ToolbarDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarDelegate;->getProgressBar()Landroidx/appcompat/widget/SeslProgressBar;

    move-result-object p0

    return-object p0
.end method

.method public getTabBar()Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->mToolbarDelegate:Lcom/sec/android/app/sbrowser/toolbar/ToolbarDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarDelegate;->getTabBar()Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object p0

    return-object p0
.end method

.method public getToolbarHeight()I
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0715d5

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public getToolbarMainLayout()Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->mToolbarDelegate:Lcom/sec/android/app/sbrowser/toolbar/ToolbarDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarDelegate;->getToolbarMainLayout()Landroid/widget/RelativeLayout;

    move-result-object p0

    return-object p0
.end method

.method public getTransBarContainer()Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainer;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->mToolbarDelegate:Lcom/sec/android/app/sbrowser/toolbar/ToolbarDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarDelegate;->getTransBarContainer()Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainer;

    move-result-object p0

    return-object p0
.end method

.method public isEditMode()Z
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->getLocationBar()Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->isEditMode()Z

    move-result p0

    return p0
.end method

.method public abstract onModeFinished()V
.end method

.method public abstract setProgressBar()V
.end method

.method public setToolbarHeight()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->getToolbarMainLayout()Landroid/widget/RelativeLayout;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public abstract setToolbarLayout()V
.end method

.method public shouldApplyBrowserTheme()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public updateLocationBarMargin()V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->getLocationBar()Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->getLocationBarMargin()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->getLocationBar()Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isTabBar1LineLayout(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->getLocationBar()Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->isEditMode()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0715d8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_0

    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->getLocationBar()Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public updateTextFieldBackground(Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->getLocationBar()Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->getUrlBarParent()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->getBaseLayout()Landroid/widget/LinearLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletLayout(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->updateTextFieldColors(Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;)V

    :cond_0
    const v1, 0x7f080779

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setElevation(F)V

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->mTextFieldBgColor:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->mToolbarDelegate:Lcom/sec/android/app/sbrowser/toolbar/ToolbarDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarDelegate;->isHighContrastModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07073f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->mContext:Landroid/content/Context;

    const v3, 0x7f0604cf

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v2, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    :goto_0
    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->getLocationBar()Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->notifyBackgroundColorChanged(Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->getLocationBar()Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->updateSecurityButtonStatus()V

    return-void
.end method

.method public updateTextFieldColors(Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;)V
    .locals 1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->isHighContrast()Z

    move-result v0

    if-eqz v0, :cond_0

    const p1, 0x7f0604ce

    iput p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->mTextFieldBgColor:I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->mContext:Landroid/content/Context;

    const v0, 0x7f060d51

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->mToolbarBackgroundColor:I

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->isNightMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const p1, 0x7f0604d3

    iput p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->mTextFieldBgColor:I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->mContext:Landroid/content/Context;

    const v0, 0x7f060d52

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->mToolbarBackgroundColor:I

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->isIncognito()Z

    move-result v0

    if-eqz v0, :cond_2

    const p1, 0x7f0604d9

    iput p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->mTextFieldBgColor:I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->mContext:Landroid/content/Context;

    const v0, 0x7f060d55

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->mToolbarBackgroundColor:I

    goto/16 :goto_1

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->mToolbarDelegate:Lcom/sec/android/app/sbrowser/toolbar/ToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarDelegate;->isTabEditMode()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->isReaderThemeBlack()Z

    move-result v0

    if-eqz v0, :cond_3

    const p1, 0x7f0604d7

    iput p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->mTextFieldBgColor:I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->mContext:Landroid/content/Context;

    const v0, 0x7f060d53

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->mToolbarBackgroundColor:I

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->mToolbarDelegate:Lcom/sec/android/app/sbrowser/toolbar/ToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarDelegate;->isTabEditMode()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->isReaderThemeSepia()Z

    move-result v0

    if-eqz v0, :cond_4

    const p1, 0x7f0604d8

    iput p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->mTextFieldBgColor:I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->mContext:Landroid/content/Context;

    const v0, 0x7f060d54

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->mToolbarBackgroundColor:I

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->hasTheme()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->shouldApplyBrowserTheme()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->isLightTheme()Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x7f0604cc

    iput v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->mTextFieldBgColor:I

    goto :goto_0

    :cond_5
    const v0, 0x7f0604cb

    iput v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->mTextFieldBgColor:I

    :goto_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->getThemeColor()I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->mToolbarBackgroundColor:I

    goto :goto_1

    :cond_6
    const p1, 0x7f0604c8

    iput p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->mTextFieldBgColor:I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->mContext:Landroid/content/Context;

    const v0, 0x7f060d50

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ToolbarLayout;->mToolbarBackgroundColor:I

    :goto_1
    return-void
.end method

.method public updateToolbarLayout()V
    .locals 0

    return-void
.end method

.method public abstract updateToolbarLayoutPosition()V
.end method
