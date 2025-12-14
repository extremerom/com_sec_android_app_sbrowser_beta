.class public Lcom/sec/android/app/sbrowser/omnibox/BookmarkButton;
.super Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;
.source "SourceFile"


# instance fields
.field private mBookmarkStarButtonColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;)V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/omnibox/BookmarkButton;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/omnibox/BookmarkButton;->lambda$setButtonResource$0(Landroid/view/View;)V

    return-void
.end method

.method private getBookmarkOnColor()I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->isSecretModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f060172

    goto :goto_0

    :cond_0
    const v0, 0x7f060171

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0
.end method

.method private synthetic lambda$setButtonResource$0(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/omnibox/BookmarkButton;->onBookmarkStarButtonClick()V

    return-void
.end method

.method private onBookmarkStarButtonClick()V
    .locals 3

    const-string v0, "si__BookmarkButton"

    const-string v1, "onBookmarkStarButtonClick"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->getScreenID()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isBookmarked()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Off"

    goto :goto_0

    :cond_0
    const-string v1, "On"

    :goto_0
    const-string v2, "2001"

    invoke-static {v0, v2, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/sec/sbrowser/spl/util/PlatformInfo;->ONEUI_VERSION:I

    const v1, 0x13a74

    if-lt v0, v1, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/VibratorUtil;->getInstance()Lcom/sec/android/app/sbrowser/common/utils/VibratorUtil;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/VibratorUtil;->runHapticFeedbackEffect(I)V

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mEventListener:Lcom/sec/android/app/sbrowser/common/toolbar/LocationBarEventListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/toolbar/LocationBarEventListener;->onBookmarkStarIconClicked()V

    return-void
.end method

.method private updateBookmarkStarButtonColor(Z)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mButton:Landroid/widget/ImageButton;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->dismissCustomHoverPopup(Landroid/view/View;)V

    iget v0, p0, Lcom/sec/android/app/sbrowser/omnibox/BookmarkButton;->mBookmarkStarButtonColor:I

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/omnibox/BookmarkButton;->getBookmarkOnColor()I

    move-result v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/BookmarkButton;->getBookmarkOffColor()I

    move-result v1

    :goto_0
    iput v1, p0, Lcom/sec/android/app/sbrowser/omnibox/BookmarkButton;->mBookmarkStarButtonColor:I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "isBookmarked"

    if-nez v2, :cond_2

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne p1, v1, :cond_2

    iget v1, p0, Lcom/sec/android/app/sbrowser/omnibox/BookmarkButton;->mBookmarkStarButtonColor:I

    if-ne v0, v1, :cond_2

    return-void

    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mContext:Landroid/content/Context;

    const v1, 0x7f08076e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mContext:Landroid/content/Context;

    const v2, 0x7f140be0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mContext:Landroid/content/Context;

    const v1, 0x7f08076d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mContext:Landroid/content/Context;

    const v2, 0x7f140864

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    iget v2, p0, Lcom/sec/android/app/sbrowser/omnibox/BookmarkButton;->mBookmarkStarButtonColor:I

    invoke-static {v0, v2}, Lcom/sec/terrace/base/TerraceApiCompatibilityUtils;->setTint(Landroid/graphics/drawable/Drawable;I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->getIconBackground()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mButton:Landroid/widget/ImageButton;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/sbrowser/tooltip/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    const-string v3, "isNotBookmarked"

    :goto_2
    invoke-virtual {p0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getBookmarkOffColor()I
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->getCurrentTheme()Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;->isLightTheme()Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v2

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->getReaderThemeColor()I

    move-result v2

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isHighContrastModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    const v0, 0x7f06016c

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isNightModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    const v0, 0x7f06016d

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->isSecretModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    const v0, 0x7f060170

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isEditMode()Z

    move-result v4

    if-nez v4, :cond_5

    const/4 v4, 0x2

    if-ne v2, v4, :cond_5

    const v0, 0x7f06016e

    goto :goto_1

    :cond_5
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isEditMode()Z

    move-result v4

    if-nez v4, :cond_6

    const/4 v4, 0x3

    if-ne v2, v4, :cond_6

    const v0, 0x7f06016f

    goto :goto_1

    :cond_6
    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isFocusLayoutType(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;->getBottomTextColor()I

    move-result p0

    return p0

    :cond_7
    const v0, 0x7f060d5f

    goto :goto_1

    :cond_8
    if-eqz v3, :cond_a

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isFocusLayoutType(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;->getBottomTextColor()I

    move-result p0

    return p0

    :cond_9
    const v0, 0x7f060d5e

    goto :goto_1

    :cond_a
    const v0, 0x7f06016b

    :goto_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0
.end method

.method public setButtonResource()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mParent:Landroid/view/View;

    const v1, 0x7f0b018e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mDelegate:Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;->getLeftButtonKeyListener()Landroid/view/View$OnKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mButton:Landroid/widget/ImageButton;

    new-instance v1, LK6/a;

    const/16 v2, 0xb

    invoke-direct {v1, v2, p0}, LK6/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/sec/android/app/sbrowser/omnibox/BookmarkButton$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/omnibox/BookmarkButton$1;-><init>(Lcom/sec/android/app/sbrowser/omnibox/BookmarkButton;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method public updateBookmarkStarButtonStatus()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->isEditMode()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isBookmarkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isLoading()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->isPortalPage()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mUrlBar:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mButton:Landroid/widget/ImageButton;

    invoke-static {v2, v0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setEnabledWithAlpha(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isBookmarked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/omnibox/BookmarkButton;->updateBookmarkStarButtonColor(Z)V

    return-void

    :cond_3
    :goto_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mButton:Landroid/widget/ImageButton;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public updateButtonColor()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/BookmarkButton;->updateBookmarkStarButtonStatus()V

    return-void
.end method
