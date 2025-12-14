.class public abstract Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;,
        Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$TabMainViewCallbacks;
    }
.end annotation


# instance fields
.field protected mCallBacks:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$TabMainViewCallbacks;

.field protected final mContext:Landroid/content/Context;

.field protected mCurrentTabThumbnail:Landroid/graphics/Bitmap;

.field protected mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

.field protected mIntroAnimDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation$Delegate;

.field protected mLastVisitedGroupPosition:I

.field protected mModeType:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field protected mOutroAnimDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailOutroAnimation$Delegate;

.field protected mPrevModeTypeBeforeMove:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;

.field protected mSavedScrollPosition:I

.field protected mTabLoader:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object p2, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;->NORMAL:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mModeType:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mPrevModeTypeBeforeMove:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;

    const/4 p2, 0x0

    iput p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mSavedScrollPosition:I

    const/4 p2, -0x1

    iput p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mLastVisitedGroupPosition:I

    new-instance p2, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$1;

    invoke-direct {p2, p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$1;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mIntroAnimDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation$Delegate;

    new-instance p2, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$2;

    invoke-direct {p2, p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$2;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mOutroAnimDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailOutroAnimation$Delegate;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->lambda$onEnterAnimationEnded$0()V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->lambda$startPrivacyModeExitAnimation$1(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onEnterAnimationEnded$0()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->hide()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$startPrivacyModeExitAnimation$1(Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->startPrivacyModeExitAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateSavedCurrentTabThumbnail()V
    .locals 2

    const-string v0, "TabMainView"

    const-string v1, "[updateSavedCurrentTabThumbnail]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mCurrentTabThumbnail:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->updateCurrentTabThumbnail(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mCurrentTabThumbnail:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public abstract animateTabsOnLoad()V
.end method

.method public changeTabViewVisibility(I)V
    .locals 0

    return-void
.end method

.method public abstract clearAllTextHighlight()V
.end method

.method public clearForSwitchMode()V
    .locals 0

    return-void
.end method

.method public abstract closeAllFilteredList()V
.end method

.method public abstract closeAllUnlockedTabs()V
.end method

.method public closeSelected()V
    .locals 0

    return-void
.end method

.method public destroyListAdaptor()V
    .locals 0

    return-void
.end method

.method public destroyTabViews()V
    .locals 6

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->getTabList(Z)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mTabLoader:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;

    invoke-virtual {v4, v5, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->unloadTabData(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method

.method public abstract dismissTabById(I)V
.end method

.method public abstract dismissTabById(IZ)V
.end method

.method public enterEditModeWithType(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[enterEditModeWithType] modeType : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TabMainView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;->NORMAL:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mModeType:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;

    sget-object v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;->GROUP:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->setGroupableList()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->setSelectableList()V

    :goto_0
    return-void
.end method

.method public enterMoveMode()V
    .locals 0

    return-void
.end method

.method public exitEditMode()V
    .locals 0

    return-void
.end method

.method public focusBottomTab()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public focusCurrTab()V
    .locals 0

    return-void
.end method

.method public focusForefrontTab()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public focusNextTab(Z)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public focusTab(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public focusTabCloseBtn()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public focusTopTab()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->getActivity()Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentGroup()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->getCurrentGroup()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract getCurrentShowingItemCount()I
.end method

.method public abstract getFilter()Ljava/lang/String;
.end method

.method public getFirstVisibleTabView()Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getGroupCnt()I
.end method

.method public getHeaderHeight()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getModeType()Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mModeType:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;

    return-object p0
.end method

.method public getModeTypeBeforeMove()Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mPrevModeTypeBeforeMove:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;

    return-object p0
.end method

.method public abstract getOriginalTabList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;",
            ">;"
        }
    .end annotation
.end method

.method public getScreenID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->isSecretModeEnabled()Z

    move-result p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/multi_tab/MultiTabLoggingHelper;->getScreenID(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSelectableItemCount()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getSelectedGroup()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getSelectedGroupCount()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getSelectedItemCount()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract getSelectedItemList()Ljava/util/List;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;",
            ">;"
        }
    .end annotation
.end method

.method public getSelectedTabsCount()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract getSharableTabCount()I
.end method

.method public getTabById(I)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->getTabList(Z)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;

    if-eqz v1, :cond_1

    iget v2, v1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->mId:I

    if-ne v2, p1, :cond_1

    return-object v1

    :cond_2
    return-object v0
.end method

.method public getTabGroupIndex(Ljava/lang/String;)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public abstract getTabList(Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTabViewById(I)Landroid/view/View;
.end method

.method public groupTabs(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public isAnySelectedGroupHaveLockedMember()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isCloseBySuggestion()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isFirstSelectedItem()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isGroupSelected()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isLastSelectedItem()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isModeChanging()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract isMultiTabScrolling()Z
.end method

.method public isMultiTabTouching()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isNoItemSelected()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract isOnTop()Z
.end method

.method public isSharable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract isSwiping()Z
.end method

.method public isTabCloseBtn(Landroid/view/View;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isTabDragging()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract isTabStackAvailable()Z
.end method

.method public isValidTabView(Landroid/view/View;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract lockSelected()V
.end method

.method public moveTabToGroup(Ljava/lang/String;IZ)V
    .locals 0

    return-void
.end method

.method public notifyAllTabsRemoved()V
    .locals 0

    return-void
.end method

.method public notifySearchFilterChanged(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->getTabList(Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mTabLoader:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;

    invoke-virtual {v2, v1, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->notifySearchFilterChanged(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public notifyUpdateNativePage(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method public notifyUpdatedBitmap(ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->getTabById(I)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mTabLoader:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->notifyUpdatedBitmap(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public notifyUpdatedFavicon(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->getTabById(I)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mTabLoader:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->notifyTabBgColor(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;)V

    return-void
.end method

.method public notifyUpdatedThemeColor(II)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->getTabById(I)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mTabLoader:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->notifyUpdatedThemeColor(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;I)V

    :cond_0
    return-void
.end method

.method public notifyUpdatedTitle(ILjava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->getTabById(I)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mTabLoader:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->notifyUpdatedTitle(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public notifyUpdatedUrl(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged()V
    .locals 0

    return-void
.end method

.method public onEnterAnimationEnded()V
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->updateSavedCurrentTabThumbnail()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->setMultiTabAnimating(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mCallBacks:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$TabMainViewCallbacks;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$TabMainViewCallbacks;->onEnterAnimationEnded()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/h;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/h;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onEnterAnimationStarted()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->setMultiTabAnimating(Z)V

    return-void
.end method

.method public onTabThumbnailCreated(ILandroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->getCurrentTabId()I

    move-result v0

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->updateCurrentTabThumbnail(Landroid/graphics/Bitmap;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mCurrentTabThumbnail:Landroid/graphics/Bitmap;

    return-void
.end method

.method public readyForMoveMode()V
    .locals 0

    return-void
.end method

.method public abstract refreshTabList()V
.end method

.method public abstract renameGroup(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract reopenClosedTab()V
.end method

.method public abstract requestCloseTab(I)V
.end method

.method public reserveUpdateAfterDialog()V
    .locals 0

    return-void
.end method

.method public restoreSelect()V
    .locals 0

    return-void
.end method

.method public runActionsBySkipAnim(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method public saveCurrentViewingPosition()V
    .locals 0

    return-void
.end method

.method public scrollForAlign()V
    .locals 0

    return-void
.end method

.method public abstract scrollPageUpDown(Z)V
.end method

.method public searchTabs(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->updateSearchedList(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->getCurrentShowingItemCount()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->updateSearchData()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->searchTabsUsingSearchApi(Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->showSimilarResultMessage(Z)V

    return-void
.end method

.method public selectAll(Z)V
    .locals 0

    return-void
.end method

.method public selectSuggestedTabs(Ljava/util/HashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public selectTabAfterModeChange(I)V
    .locals 0

    return-void
.end method

.method public setAppBarOffsetRatio(F)V
    .locals 0

    return-void
.end method

.method public setCallbacks(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$TabMainViewCallbacks;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mCallBacks:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$TabMainViewCallbacks;

    return-void
.end method

.method public setCtrlKeyPressed(Z)V
    .locals 0

    return-void
.end method

.method public setCurrentGroup(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->setCurrentGroup(Ljava/lang/String;)V

    return-void
.end method

.method public setDelegate(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    return-void
.end method

.method public setEditToolbarTitle(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->setEditToolbarTitle(I)V

    return-void
.end method

.method public setGroupableList()V
    .locals 0

    return-void
.end method

.method public setIsTabDragging(Z)V
    .locals 0

    return-void
.end method

.method public setLastVisitedGroupPosition(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mLastVisitedGroupPosition:I

    return-void
.end method

.method public setLoader(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mTabLoader:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;

    return-void
.end method

.method public setLongClickedPosition(I)V
    .locals 0

    return-void
.end method

.method public setModeChange(Z)V
    .locals 0

    return-void
.end method

.method public setScrollPositionWithGroup(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setSelectableList()V
    .locals 0

    return-void
.end method

.method public setShiftKeyPressed(Z)V
    .locals 0

    return-void
.end method

.method public abstract shareSelected()V
.end method

.method public shareWithChooserReceiver(Ljava/lang/String;)V
    .locals 3

    const-string v0, "[shareWithChooserReceiver]"

    const-string v1, "TabMainView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v2, "[shareWithChooserReceiver] createChooser"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/sec/android/app/sbrowser/utils/ShareHelper$IntentBuilder;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sec/android/app/sbrowser/utils/ShareHelper$IntentBuilder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/sec/android/app/sbrowser/utils/ShareHelper$IntentBuilder;->chooserIntent(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/utils/ShareHelper$IntentBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/utils/ShareHelper$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object p1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->isNoBottomButtonExceptShare()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/16 p0, 0x800

    invoke-static {v0, p0, v2, p1}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->startActivity(Landroid/app/Activity;IZLandroid/content/Intent;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->getShareButtonPosition()I

    move-result p0

    invoke-static {v0, p0, v2, p1}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->startActivity(Landroid/app/Activity;IZLandroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public shouldUseDarkTheme()Z
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isContentDarkModeEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isHighContrastModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isReaderPage()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getReaderTheme()I

    move-result p0

    const/4 v2, 0x2

    if-ne p0, v2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    return v1

    :cond_2
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public showSnackbarForReopenClosedTab(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->getCurrentGroup()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string v1, ""

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const v2, 0x7f141039

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f141038

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/SnackbarUtil;->show(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public abstract startCloseAllTabsAnimation()V
.end method

.method public abstract startIntroAnimation(Landroid/view/View;I)V
.end method

.method public abstract startOutroAnimation(ZLcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
.end method

.method public abstract startPrivacyModeExitAnimation(Ljava/lang/Runnable;)V
.end method

.method public startPrivacyModeExitAnimation(Ljava/lang/Runnable;I)V
    .locals 3

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/main_activity/a;

    const/4 v2, 0x4

    invoke-direct {v1, v2, p0, p1}, Lcom/sec/android/app/sbrowser/main_activity/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    int-to-long p0, p2

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public startTabViewIntroAnimation(I)V
    .locals 0

    return-void
.end method

.method public abstract supportHorizontalFocusMove()Z
.end method

.method public ungroupTabs()V
    .locals 0

    return-void
.end method

.method public abstract unlockSelected()V
.end method

.method public updateButtonsBySelect()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->updateButtonsBySelect()V

    return-void
.end method

.method public abstract updateCurrentTabThumbnail(Landroid/graphics/Bitmap;)V
.end method

.method public abstract updateSearchedList(Ljava/lang/String;)V
.end method

.method public abstract updateSearchedListUsingSearchApi(Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract updateTabStacks()V
.end method

.method public updateTabStacksBySelect(I)V
    .locals 0

    return-void
.end method

.method public updateUnloadedTabThumbnails(Z)V
    .locals 0

    return-void
.end method
