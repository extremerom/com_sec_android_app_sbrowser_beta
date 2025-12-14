.class public Lcom/sec/android/app/sbrowser/omnibox/LocationBar;
.super Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;
.implements Lcom/sec/android/app/sbrowser/omnibox/UrlBar$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/omnibox/LocationBar$EditModeListener;
    }
.end annotation


# instance fields
.field private final mEditModeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/omnibox/LocationBar$EditModeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mIsDirectWritingEnabled:Z

.field private mIsResultViewBottomModeShowing:Ljava/lang/Boolean;

.field private mIsSearchWindowVisible:Ljava/lang/Boolean;

.field private mIsSummarizeSplitOverViewShowing:Ljava/lang/Boolean;

.field private mIsTouchDisabled:Z

.field private mSearchWindowVisibilityObserver:Landroidx/lifecycle/Y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Y;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->mIsDirectWritingEnabled:Z

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->mIsSummarizeSplitOverViewShowing:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->mIsResultViewBottomModeShowing:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->mIsSearchWindowVisible:Ljava/lang/Boolean;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->mEditModeListeners:Ljava/util/ArrayList;

    return-void
.end method

.method public static synthetic f(Lcom/sec/android/app/sbrowser/omnibox/LocationBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->lambda$updateSearchEngine$5()V

    return-void
.end method

.method public static synthetic g(Lcom/sec/android/app/sbrowser/omnibox/LocationBar;Lcom/sec/android/app/sbrowser/common/livedata/Event;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->lambda$showSearchWindow$3(Lcom/sec/android/app/sbrowser/common/livedata/Event;)V

    return-void
.end method

.method private getFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p0, "/"

    invoke-virtual {p1, p0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p0

    if-gez p0, :cond_0

    return-object p1

    :cond_0
    add-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getHostName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isJapan()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isDcm()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->removeHttpHttpsScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->removeTrailingSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->getHostName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lcom/sec/android/app/sbrowser/omnibox/LocationBar;Lcom/sec/android/app/sbrowser/common/livedata/Event;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->lambda$showSearchWindow$4(Lcom/sec/android/app/sbrowser/common/livedata/Event;)V

    return-void
.end method

.method public static synthetic i(Lcom/sec/android/app/sbrowser/omnibox/LocationBar;Lcom/sec/android/app/sbrowser/common/livedata/Event;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->onSearchWindowVisibilityChanged(Lcom/sec/android/app/sbrowser/common/livedata/Event;)V

    return-void
.end method

.method private isNewQuickAccessDefaultMobileLayout()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isNewQuickAccessPage()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isDefaultMobileLayout(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isNewQuickAccessMobileLayout()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isNewQuickAccessPage()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscapeOrTabletStyle(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isSkipScroll(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const-string p0, "data:"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isJapan()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isDcm()Z

    move-result p0

    if-nez p0, :cond_3

    :cond_1
    const-string p0, "blob:null/"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_0
    return v0
.end method

.method public static synthetic j(Lcom/sec/android/app/sbrowser/omnibox/LocationBar;Lcom/sec/android/app/sbrowser/common/livedata/Event;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->lambda$showSearchWindow$1(Lcom/sec/android/app/sbrowser/common/livedata/Event;)V

    return-void
.end method

.method public static synthetic k(Lcom/sec/android/app/sbrowser/omnibox/LocationBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->lambda$notifyCurrentUrlChanged$0()V

    return-void
.end method

.method public static synthetic l(Lcom/sec/android/app/sbrowser/omnibox/LocationBar;Lcom/sec/android/app/sbrowser/common/livedata/Event;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->lambda$showSearchWindow$2(Lcom/sec/android/app/sbrowser/common/livedata/Event;)V

    return-void
.end method

.method private synthetic lambda$notifyCurrentUrlChanged$0()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->getCurrentUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->setUrlToEditText(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onFinishInflate$6(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mRetainEditModeOnFocusCleared:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->isEditMode()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mUrlBar:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    invoke-virtual {p2}, Landroid/view/View;->hasFocus()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mUrlBar:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    invoke-virtual {p0, p2, p1}, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->onFocusChange(Landroid/view/View;Z)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$onFocusChange$7()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->onUrlBarFocusChanged(Z)V

    return-void
.end method

.method private synthetic lambda$showSearchWindow$1(Lcom/sec/android/app/sbrowser/common/livedata/Event;)V
    .locals 1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/livedata/Event;->isHandled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/livedata/Event;->getContentIfNotHandled()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->clearFocus()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->enterEditMode(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->clearFocus()V

    :cond_3
    :goto_0
    return-void
.end method

.method private synthetic lambda$showSearchWindow$2(Lcom/sec/android/app/sbrowser/common/livedata/Event;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->makeLoadUrlInternalCall(Lcom/sec/android/app/sbrowser/common/livedata/Event;Z)V

    return-void
.end method

.method private synthetic lambda$showSearchWindow$3(Lcom/sec/android/app/sbrowser/common/livedata/Event;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->makeLoadUrlInternalCall(Lcom/sec/android/app/sbrowser/common/livedata/Event;Z)V

    return-void
.end method

.method private synthetic lambda$showSearchWindow$4(Lcom/sec/android/app/sbrowser/common/livedata/Event;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/livedata/Event;->isHandled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->getSBrowserViewModel()Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/livedata/Event;->getContentIfNotHandled()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessAddItemParameter;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;->addQuickAccessItems(Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessAddItemParameter;Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->clearFocus()V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$updateSearchEngine$5()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->getSearchWindowViewModel()Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->onSearchEngineChanged()V

    return-void
.end method

.method public static synthetic m(Lcom/sec/android/app/sbrowser/omnibox/LocationBar;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->lambda$onFinishInflate$6(Landroid/view/View;Z)V

    return-void
.end method

.method private makeLoadUrlInternalCall(Lcom/sec/android/app/sbrowser/common/livedata/Event;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/common/livedata/Event<",
            "Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchSuggestionItem;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/livedata/Event;->isHandled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/livedata/Event;->getContentIfNotHandled()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchSuggestionItem;

    new-instance v0, Lcom/sec/android/app/sbrowser/search_window/utils/SuggestionSALoggingUtils;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/sec/android/app/sbrowser/search_window/utils/SuggestionSALoggingUtils;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchSuggestionItem;)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/search_window/utils/SuggestionSALoggingUtils;->sendEventLog()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->clearFocus()V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchSuggestionItem;->getPageSource()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchSuggestionItem;->getDisplayText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->insertSearchHistory(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchSuggestionItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchSuggestionItem;->getTransitionType()I

    move-result v1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchSuggestionItem;->getPageSource()I

    move-result p1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->loadUrlInternal(Ljava/lang/String;IIZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic n(Lcom/sec/android/app/sbrowser/omnibox/LocationBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->lambda$onFocusChange$7()V

    return-void
.end method

.method private onSearchWindowVisibilityChanged(Lcom/sec/android/app/sbrowser/common/livedata/Event;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/common/livedata/Event<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mSearchWindowPopup:Lcom/sec/android/app/sbrowser/search_window/SearchWindowPopup;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/livedata/Event;->isHandled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/livedata/Event;->getContentIfNotHandled()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->mIsSearchWindowVisible:Ljava/lang/Boolean;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onSearchWindowVisibilityChanged: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->mIsSearchWindowVisible:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "si__LocationBar"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->mIsSearchWindowVisible:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mSearchWindowPopup:Lcom/sec/android/app/sbrowser/search_window/SearchWindowPopup;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/search_window/SearchWindowPopup;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mSearchWindowPopup:Lcom/sec/android/app/sbrowser/search_window/SearchWindowPopup;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lm/n;

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/search_window/SearchWindowPopup;->show(Lm/n;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mSearchWindowPopup:Lcom/sec/android/app/sbrowser/search_window/SearchWindowPopup;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/search_window/SearchWindowPopup;->isShowing()Z

    move-result p1

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mSearchWindowPopup:Lcom/sec/android/app/sbrowser/search_window/SearchWindowPopup;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/search_window/SearchWindowPopup;->dismiss()V

    :cond_4
    :goto_0
    return-void
.end method

.method private onUrlBarFocusChanged(Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->switchReaderIconAndProgressVisibility(Z)V

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->isEditMode()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mSearchEngineButton:Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;->setSearchEngineButtonVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mCopyButton:Lcom/sec/android/app/sbrowser/omnibox/CopyButton;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/omnibox/CopyButton;->setCopyButtonVisibility(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mSearchEngineButton:Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;->restoreNativeSearchEngineAsPreferenceValue()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "si__LocationBar"

    const-string v2, "failed to change native search engine value to pref value"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->hideKeyboard()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mSearchEngineButton:Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;->hideSearchEngineList()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->dismissSearchWindow()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->getCurrentUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->setUrlToEditText(Ljava/lang/String;)V

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mIsFocusedFromPen:Z

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mSearchEngineButton:Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;->setSearchEngineButtonVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mCopyButton:Lcom/sec/android/app/sbrowser/omnibox/CopyButton;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/omnibox/CopyButton;->setCopyButtonVisibility(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->updateSoftInputMode()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->showSearchWindow()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mUrlBar:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->isMousePasteUrlBar()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mUrlBar:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->isMouseClickRightButton()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mUrlBar:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditText;->setIgnoreTextChangesForAutocomplete(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->getCurrentUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->setUrlToEditText(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mUrlBar:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditText;->setIgnoreTextChangesForAutocomplete(Z)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isNativePage()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->isSecretModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "1102"

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->isNewQuickAccessDefaultMobileLayout()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "1073"

    goto :goto_0

    :cond_4
    const-string v0, "1004"

    goto :goto_0

    :cond_5
    const-string v0, "2037"

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->getScreenID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->requestShowKeyboard()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->notifyOnShowKeyboard()V

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mUrlBar:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->isEditMode()Z

    move-result v1

    if-eqz v1, :cond_6

    const v1, 0x800013

    goto :goto_2

    :cond_6
    const/16 v1, 0x11

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->updateAllButtonStatus()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->mEditModeListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/omnibox/LocationBar$EditModeListener;

    if-eqz p1, :cond_7

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBar$EditModeListener;->onEditModeStarted()V

    goto :goto_3

    :cond_7
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBar$EditModeListener;->onEditModeFinished()V

    goto :goto_3

    :cond_8
    return-void
.end method

.method private updateSoftInputMode()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateSoftInputMode summary: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->mIsSummarizeSplitOverViewShowing:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->mIsResultViewBottomModeShowing:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "si__LocationBar"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isNewGuiEnabled()Z

    move-result v0

    const/16 v1, 0x30

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v0, v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isFocusLayoutType(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->mIsSummarizeSplitOverViewShowing:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->mIsResultViewBottomModeShowing:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->isNewQuickAccessMobileLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method public addEditModeListener(Lcom/sec/android/app/sbrowser/omnibox/LocationBar$EditModeListener;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->mEditModeListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearFocus()V
    .locals 2

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->clearFocus()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mUrlBar:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mUrlBar:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->onFocusChange(Landroid/view/View;Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->dismissSearchWindow()V

    return-void
.end method

.method public clearFocusIfRequired(II)V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isNewGuiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isFocusLayoutType(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->getWindowWidth(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    :cond_1
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->clearFocus()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->hideKeyboard()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mSearchWindowPopup:Lcom/sec/android/app/sbrowser/search_window/SearchWindowPopup;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/search_window/SearchWindowPopup;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mSearchWindowPopup:Lcom/sec/android/app/sbrowser/search_window/SearchWindowPopup;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/search_window/SearchWindowPopup;->clearFocus()V

    :cond_3
    :goto_0
    return-void
.end method

.method public clearFocusUrlBar()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->clearFocus()V

    return-void
.end method

.method public destroy()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mSearchEngineButton:Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;->destroy()V

    return-void
.end method

.method public dismissSearchWindow()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mSearchWindowPopup:Lcom/sec/android/app/sbrowser/search_window/SearchWindowPopup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->mSearchWindowVisibilityObserver:Landroidx/lifecycle/Y;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->getSearchWindowViewModel()Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->getSearchWindowVisibility()Landroidx/lifecycle/S;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->mSearchWindowVisibilityObserver:Landroidx/lifecycle/Y;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/S;->removeObserver(Landroidx/lifecycle/Y;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mSearchWindowPopup:Lcom/sec/android/app/sbrowser/search_window/SearchWindowPopup;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/search_window/SearchWindowPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mSearchWindowPopup:Lcom/sec/android/app/sbrowser/search_window/SearchWindowPopup;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/search_window/SearchWindowPopup;->dismiss()V

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mSearchWindowPopup:Lcom/sec/android/app/sbrowser/search_window/SearchWindowPopup;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->getSearchWindowViewModel()Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->getCurrentUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->updateCurrentTabUrl(Ljava/lang/String;)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->mIsTouchDisabled:Z

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public finishEditMode()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->isEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->clearFocus()V

    const/4 p0, 0x1

    return p0
.end method

.method public getLocationBarButtons()Ljava/util/List;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mButtons:[Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->getButton()Landroid/widget/ImageButton;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getUrlBarParent()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mUrlBarParent:Landroid/view/View;

    return-object p0
.end method

.method public hideAllPopups()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mUrlBar:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->isEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->dismissSearchWindow()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mSearchEngineButton:Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;->hideSearchEngineList()V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->dismissReconnectToOnlinePopup()V

    return-void
.end method

.method public initSearchEnginePopup()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mSearchEngineButton:Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;->initSearchEnginePopup()V

    return-void
.end method

.method public notifyBackgroundColorChanged(Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mButtons:[Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->updateButtonColor()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->setBackground(Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;)V

    return-void
.end method

.method public notifyBookmarkStatusChanged()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mBookmarkButton:Lcom/sec/android/app/sbrowser/omnibox/BookmarkButton;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/BookmarkButton;->updateBookmarkStarButtonStatus()V

    return-void
.end method

.method public notifyButtonAvailabilityChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->updateLocationBarEndIcon()V

    return-void
.end method

.method public notifyCurrentUrlChanged()V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isNewQuickAccessPage()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/omnibox/d;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/omnibox/d;-><init>(Lcom/sec/android/app/sbrowser/omnibox/LocationBar;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->getCurrentUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->setUrlToEditText(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->getSearchWindowViewModel()Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->getCurrentUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->updateCurrentTabUrl(Ljava/lang/String;)V

    return-void
.end method

.method public notifyDeepLinkStatusChange()V
    .locals 2

    const-string v0, "si__LocationBar"

    const-string v1, "notifyDeepLinkStatusChange"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mDeepLinkButton:Lcom/sec/android/app/sbrowser/omnibox/DeepLinkButton;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/DeepLinkButton;->updateDeepLinkButtonStatus()V

    return-void
.end method

.method public notifyLoadingStatusChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->updateAllButtonStatus()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->notifyCurrentUrlChanged()V

    return-void
.end method

.method public notifyPWAModeChanged()V
    .locals 2

    const-string v0, "si__LocationBar"

    const-string v1, "notifyPWAModeChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mPWAButton:Lcom/sec/android/app/sbrowser/omnibox/PWAButton;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/omnibox/PWAButton;->updatePWAButtonStatus()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mDeepLinkButton:Lcom/sec/android/app/sbrowser/omnibox/DeepLinkButton;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/DeepLinkButton;->updateDeepLinkButtonStatus()V

    return-void
.end method

.method public notifyReaderStatusChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->updateLocationBarEndIcon()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mReaderButton:Lcom/sec/android/app/sbrowser/omnibox/ReaderButton;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/omnibox/ReaderButton;->updateReaderButtonStatus()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mPWAButton:Lcom/sec/android/app/sbrowser/omnibox/PWAButton;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/PWAButton;->updatePWAButtonStatus()V

    return-void
.end method

.method public notifySecretModeChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mUrlBar:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    xor-int/lit8 v1, p1, 0x1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->setPredictionOnIme(Landroid/widget/EditText;Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mSecretIcon:Lcom/sec/android/app/sbrowser/omnibox/SecretIcon;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/omnibox/SecretIcon;->setSecretIconVisibility(I)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mUrlBar:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method public onAutocompleteReceived(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mUrlBar:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditText;->shouldAutocomplete()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mUrlBar:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditText;->getTextWithoutAutocomplete()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mUrlBar:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditText;->setAutocompleteText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mSearchEngineButton:Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;->onConfigurationChanged()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->isEditMode()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->updateSoftInputMode()V

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mUrlBar:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    if-nez v0, :cond_0

    const-string p0, "si__LocationBar"

    const-string v0, "onDetachedFromWindow, mUrlBar == null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->dismissSearchWindow()V

    return-void
.end method

.method public onDirectWritingStarted()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->dismissSearchWindow()V

    return-void
.end method

.method public onFinishInflate()V
    .locals 3

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->onFinishInflate()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mUrlBar:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->setListener(Lcom/sec/android/app/sbrowser/omnibox/UrlBar$Listener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mUrlBar:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mLocationBarKeyEvent:Lcom/sec/android/app/sbrowser/omnibox/LocationBarKeyEvent;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarKeyEvent;->getUrlBarKeyListener()Landroid/view/View$OnKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mUrlBarParent:Landroid/view/View;

    const v1, 0x7f0b06b2

    invoke-virtual {v0, v1}, Landroid/view/View;->setNextFocusUpId(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mUrlBarParent:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setNextFocusDownId(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mUrlBarParent:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setNextFocusForwardId(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mUrlBarParent:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setNextFocusLeftId(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mUrlBarParent:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setNextFocusRightId(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mUrlBarParent:Landroid/view/View;

    new-instance v1, LK6/b;

    const/4 v2, 0x5

    invoke-direct {v1, v2, p0}, LK6/b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mUrlBarParent:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-static {v1, v2}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPointerIcon(Landroid/view/PointerIcon;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isChina()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mUrlBar:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->updateHandwritingBoundsOffsets()V

    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    const-string v0, "onFocusChange, hasFocus = "

    const-string v1, "si__LocationBar"

    invoke-static {v0, v1, p2}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mUrlBar:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setCursorVisible(Z)V

    const/4 p1, 0x0

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mSearchEngineButton:Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;->lazyInflateIfNeeded()V

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mRetainEditModeOnFocusCleared:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->isEditMode()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mUrlBar:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->setEditMode(Z)V

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->onUrlBarFocusChanged(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mUrlBar:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->attachTextChangeListener()V

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mUrlBar:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    invoke-virtual {p2, p1}, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->setMouseClickRightButton(Z)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mDeleteButton:Lcom/sec/android/app/sbrowser/omnibox/DeleteButton;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->hasFocus()Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mReloadButton:Lcom/sec/android/app/sbrowser/omnibox/ReloadButton;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->hasFocus()Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mVoiceButton:Lcom/sec/android/app/sbrowser/omnibox/VoiceButton;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->hasFocus()Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mSecurityButton:Lcom/sec/android/app/sbrowser/omnibox/SecurityButton;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->hasFocus()Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mCopyButton:Lcom/sec/android/app/sbrowser/omnibox/CopyButton;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->hasFocus()Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mSearchEngineButton:Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;->hasFocus()Z

    move-result p2

    if-nez p2, :cond_4

    iget-boolean p2, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mRetainEditModeOnFocusCleared:Z

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mUrlBar:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    invoke-virtual {p2, p1}, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->setEditMode(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mUrlBar:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->detachTextChangeListener()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->hideKeyboard()V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/sec/android/app/sbrowser/omnibox/d;

    const/4 v0, 0x2

    invoke-direct {p2, p0, v0}, Lcom/sec/android/app/sbrowser/omnibox/d;-><init>(Lcom/sec/android/app/sbrowser/omnibox/LocationBar;I)V

    const-wide/16 v0, 0x32

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->hideKeyboard()V

    return-void
.end method

.method public onPenEvent(Landroid/view/MotionEvent;)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->mIsDirectWritingEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mUrlBar:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mIsFocusedFromPen:Z

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mUrlBar:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->onPenEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onUrlBarTextChanged(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "-------------onTextChange - text : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "si__LocationBar"

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mSearchWindowPopup:Lcom/sec/android/app/sbrowser/search_window/SearchWindowPopup;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/search_window/SearchWindowPopup;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->updateAllButtonStatus()V

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mSearchWindowPopup:Lcom/sec/android/app/sbrowser/search_window/SearchWindowPopup;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/search_window/SearchWindowPopup;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->mIsSearchWindowVisible:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mSearchWindowPopup:Lcom/sec/android/app/sbrowser/search_window/SearchWindowPopup;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lm/n;

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/search_window/SearchWindowPopup;->show(Lm/n;)V

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->getSearchWindowViewModel()Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->updateUrlBarText(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mSearchEngineButton:Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;->hideSearchEngineList()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mCopyButton:Lcom/sec/android/app/sbrowser/omnibox/CopyButton;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/omnibox/CopyButton;->setCopyButtonVisibility(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->updateLocationBarEndIcon()V

    return-void
.end method

.method public onUrlBarTextDragged(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->loadUrlInternal(Ljava/lang/String;II)V

    return-void
.end method

.method public onVoiceRecognizerResult(Lcom/sec/android/app/sbrowser/utils/VoiceRecognizer$Result;)V
    .locals 4

    const-string v0, "onVoiceRecognizerResult"

    const-string v1, "si__LocationBar"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/utils/VoiceRecognizer$Result;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/utils/VoiceRecognizer$Result;->keyword()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/utils/VoiceRecognizer$Result;->isConfidential()Z

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    const-string p1, "onVoiceRecognizerResult, loadUrl"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "onVoiceRecognizerResult keyword = "

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0, v2, v2}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->loadUrlInternal(Ljava/lang/String;II)V

    goto :goto_0

    :cond_1
    const-string p1, "onVoiceRecognizerResult, confidenceScore is low"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mUrlBar:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    invoke-virtual {p1, v0, v2}, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->setText(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->requestShowKeyboard()V

    :goto_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isDirectWritingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->mIsDirectWritingEnabled:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mUrlBar:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->showSearchWindow()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->updateSoftInputMode()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mUrlBar:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->showKeyboardWithDelayIfFocused(Landroid/view/View;)V

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mSearchEngineButton:Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public requestFocusWithKeyboard()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mUrlBar:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mUrlBar:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->showKeyboardWithDelayIfFocused(Landroid/view/View;)V

    return-void
.end method

.method public setBackground(Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mUrlBar:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->setBackground(Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;)V

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public setFocusUrlBar()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mUrlBar:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method public setFocusUrlBarForSearch()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mUrlBar:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method public setFocusUrlBarInLocationBar()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->setFocusUrlBar()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->requestShowKeyboard()V

    :cond_0
    return-void
.end method

.method public setResultViewBottomModeStatus(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->mIsResultViewBottomModeShowing:Ljava/lang/Boolean;

    return-void
.end method

.method public setSummarizeSplitOverViewStatus(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->mIsSummarizeSplitOverViewShowing:Ljava/lang/Boolean;

    return-void
.end method

.method public setTouchEnabled(Z)V
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->mIsTouchDisabled:Z

    return-void
.end method

.method public setUrlToEditText(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->setUrlToEditText(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->getSearchWindowViewModel()Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->updateUrlBarText(Ljava/lang/String;)V

    return-void
.end method

.method public setUrlToEditText(Ljava/lang/String;Z)V
    .locals 5

    invoke-static {p1}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    const-string v0, "about:blank"

    if-nez p2, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isLoading()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mUrlBar:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isNativePageUrl(Ljava/lang/String;)Z

    move-result p2

    const-string v1, ""

    if-eqz p2, :cond_2

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isParentalControlUrl(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    :cond_2
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isMultiCpUrl()Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isUnifiedHomepageUrl()Z

    move-result p2

    if-eqz p2, :cond_4

    :cond_3
    move-object p1, v1

    :cond_4
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isOfflineMode()Z

    move-result p2

    const-string v2, "content://com.sec.android.app.sbrowser.beta.DownloadFileProvider"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "data:image"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object p1, v3

    goto/16 :goto_3

    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->isSecretModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz v2, :cond_6

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->isEditMode()Z

    move-result v2

    if-nez v2, :cond_d

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isLoading()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->getHostName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_7
    const-string v2, "internet://"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "internet-native://"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_1

    :cond_8
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_2

    :cond_9
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isFileUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->getHostName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_a
    move-object v0, p1

    goto :goto_2

    :cond_b
    :goto_1
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->removeTrailingSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    if-eqz p2, :cond_c

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->getOriginalUrl()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->getHostName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_c
    move-object p1, v0

    goto :goto_3

    :cond_d
    if-eqz p2, :cond_e

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->getCurrentUrl()Ljava/lang/String;

    move-result-object p1

    :cond_e
    :goto_3
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isParentalControlNativePage()Z

    move-result p2

    if-nez p2, :cond_f

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isParentalControlUrl(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_11

    :cond_f
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlUtil;->isParentalControlEnabled()Z

    move-result p2

    if-nez p2, :cond_10

    goto :goto_4

    :cond_10
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->getParentalControlBlockedUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11

    goto :goto_4

    :cond_11
    move-object v1, p1

    :goto_4
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mUrlBar:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->isMouseClickUrlBar()Z

    move-result p1

    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mUrlBar:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    invoke-virtual {p1, v1}, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->setTextByPost(Ljava/lang/String;)V

    goto :goto_5

    :cond_12
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mUrlBar:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_13

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mUrlBar:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    const/4 p2, 0x0

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->isSkipScroll(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v1, p2, v0}, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->setText(Ljava/lang/String;ZZ)V

    :cond_13
    :goto_5
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mCompactUrlTextView:Landroid/widget/TextView;

    if-eqz p0, :cond_14

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_14
    return-void
.end method

.method public shouldCaptureLater()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public showSearchWindow()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mUrlBar:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->isDirectWritingWorking()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mUrlBar:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->isMouseClickRightButton()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mUrlBar:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->setMouseClickRightButton(Z)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mSearchWindowPopup:Lcom/sec/android/app/sbrowser/search_window/SearchWindowPopup;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->getLifecycleOwner()Landroidx/lifecycle/J;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->getSearchWindowViewModel()Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->getEvent()Landroidx/lifecycle/S;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/omnibox/c;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/omnibox/c;-><init>(Lcom/sec/android/app/sbrowser/omnibox/LocationBar;I)V

    invoke-virtual {v1, v0, v2}, Landroidx/lifecycle/S;->observe(Landroidx/lifecycle/J;Landroidx/lifecycle/Y;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->getSearchWindowViewModel()Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->getSuggestionItemSelectedEvent()Landroidx/lifecycle/S;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/omnibox/c;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/omnibox/c;-><init>(Lcom/sec/android/app/sbrowser/omnibox/LocationBar;I)V

    invoke-virtual {v1, v0, v2}, Landroidx/lifecycle/S;->observe(Landroidx/lifecycle/J;Landroidx/lifecycle/Y;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->getSearchWindowViewModel()Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->getLongClickSuggestionItemSelectedEvent()Landroidx/lifecycle/S;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/omnibox/c;

    const/4 v3, 0x4

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/omnibox/c;-><init>(Lcom/sec/android/app/sbrowser/omnibox/LocationBar;I)V

    invoke-virtual {v1, v0, v2}, Landroidx/lifecycle/S;->observe(Landroidx/lifecycle/J;Landroidx/lifecycle/Y;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->getSearchWindowViewModel()Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->getQuickAccessAddEvent()Landroidx/lifecycle/S;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/omnibox/c;

    const/4 v3, 0x5

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/omnibox/c;-><init>(Lcom/sec/android/app/sbrowser/omnibox/LocationBar;I)V

    invoke-virtual {v1, v0, v2}, Landroidx/lifecycle/S;->observe(Landroidx/lifecycle/J;Landroidx/lifecycle/Y;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->getSearchWindowViewModel()Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->getAutocompleteText()Landroidx/lifecycle/S;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/omnibox/c;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/omnibox/c;-><init>(Lcom/sec/android/app/sbrowser/omnibox/LocationBar;I)V

    invoke-virtual {v1, v0, v2}, Landroidx/lifecycle/S;->observe(Landroidx/lifecycle/J;Landroidx/lifecycle/Y;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/omnibox/c;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/omnibox/c;-><init>(Lcom/sec/android/app/sbrowser/omnibox/LocationBar;I)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->mSearchWindowVisibilityObserver:Landroidx/lifecycle/Y;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isNewGuiEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/sec/android/app/sbrowser/search_window/ui/NewSearchWindowDialogImpl;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/search_window/ui/NewSearchWindowDialogImpl;-><init>(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;-><init>(Landroid/view/View;)V

    :goto_0
    iput-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mSearchWindowPopup:Lcom/sec/android/app/sbrowser/search_window/SearchWindowPopup;

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->getSearchWindowViewModel()Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isReaderPage()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->updateReaderMode(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->getSearchWindowViewModel()Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isIncognitoMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->updateSecretMode(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->getSearchWindowViewModel()Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isNewQuickAccessPage()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->updateIsNewQuickAccessPage(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->getSearchWindowViewModel()Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->getSearchWindowVisibility()Landroidx/lifecycle/S;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->getLifecycleOwner()Landroidx/lifecycle/J;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->mSearchWindowVisibilityObserver:Landroidx/lifecycle/Y;

    invoke-virtual {v0, v1, p0}, Landroidx/lifecycle/S;->observe(Landroidx/lifecycle/J;Landroidx/lifecycle/Y;)V

    return-void
.end method

.method public updateHandwritingBoundsOffsets()V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mUrlBar:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    invoke-static {v0}, LA2/q;->b(Lcom/sec/android/app/sbrowser/omnibox/UrlBar;)F

    move-result v1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isTabBarEnabled(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mUrlBar:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    invoke-static {v2}, LA2/q;->A(Lcom/sec/android/app/sbrowser/omnibox/UrlBar;)F

    move-result v2

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mUrlBar:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    invoke-static {p0}, LA2/q;->D(Lcom/sec/android/app/sbrowser/omnibox/UrlBar;)F

    move-result p0

    invoke-static {v0, v1, v2, p0}, LA2/q;->y(Lcom/sec/android/app/sbrowser/omnibox/UrlBar;FFF)V

    return-void
.end method

.method public updateReaderProgressStatus(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->switchReaderIconAndProgressVisibility(Z)V

    return-void
.end method

.method public updateSearchEngine(Ljava/lang/String;)V
    .locals 2

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mIsPopupUiDisabled:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mUrlBar:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->isDirectWritingWorking()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->showSearchWindow()V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/omnibox/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/omnibox/d;-><init>(Lcom/sec/android/app/sbrowser/omnibox/LocationBar;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public updateSearchEnginesFavicon()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mSearchEngineButton:Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;->updateSearchEnginesFavicon()V

    return-void
.end method

.method public updateSearchWindowPosition()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->isSearchWindowShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->mSearchWindowPopup:Lcom/sec/android/app/sbrowser/search_window/SearchWindowPopup;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/search_window/SearchWindowPopup;->updatePopupPosition()V

    return-void
.end method
