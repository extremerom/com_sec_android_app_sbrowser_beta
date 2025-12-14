.class public Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mAppMenuMore:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;

.field private mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mMenuInterface:Lcom/sec/android/app/sbrowser/main_view/menu/MenuInterface;

.field private mMenuItemView:Landroid/view/View;

.field private mMsg:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

.field private mTesting:Z


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/main_view/menu/MenuInterface;Landroid/app/Activity;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;Lcom/sec/android/app/sbrowser/common/model/main/MainActivityListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mMsg:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mMenuInterface:Lcom/sec/android/app/sbrowser/main_view/menu/MenuInterface;

    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;-><init>(Lcom/sec/android/app/sbrowser/main_view/menu/MenuInterface;Landroid/app/Activity;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;Lcom/sec/android/app/sbrowser/common/model/main/MainActivityListener;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mAppMenuMore:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->makeRunnable()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->makeMessage()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->lambda$onBrowsingAssistClicked$0()V

    return-void
.end method

.method private synthetic lambda$onBrowsingAssistClicked$0()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->onBrowsingAssistClicked()V

    return-void
.end method

.method private loggingForPerformMenuItem(Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;I)V
    .locals 0

    if-eqz p2, :cond_1

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isClosed()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->getCurrentUrl()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->isMoreMenuItem(I)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/sec/android/app/sbrowser/common/constants/logging/SALoggingConstantsMap;->EVENT_MAP_MAIN_BROWSER_MORE:Landroid/util/SparseArray;

    invoke-virtual {p1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/sec/android/app/sbrowser/common/constants/logging/SALoggingConstantsMap;->EVENT_MAP_BOTTOM_BAR_CLICK:Landroid/util/SparseArray;

    invoke-virtual {p1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mMenuInterface:Lcom/sec/android/app/sbrowser/main_view/menu/MenuInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/MenuInterface;->getSaLoggingDelegate()Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;->getScreenID()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private makeMessage()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mMsg:Ljava/util/HashMap;

    const v1, 0x7f0b005b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "onDownload"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mMsg:Ljava/util/HashMap;

    const v1, 0x7f0b005f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "onHistory"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mMsg:Ljava/util/HashMap;

    const v1, 0x7f0b0070

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "onSavedPage"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mMsg:Ljava/util/HashMap;

    const v1, 0x7f0b0046

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "onAddTo"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mMsg:Ljava/util/HashMap;

    const v1, 0x7f0b0074

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "onShare"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mMsg:Ljava/util/HashMap;

    const v1, 0x7f0b0072

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "onSecretMode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mMsg:Ljava/util/HashMap;

    const v1, 0x7f0b006b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "onNightMode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mMsg:Ljava/util/HashMap;

    const v1, 0x7f0b0057

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "onContentBlocker"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mMsg:Ljava/util/HashMap;

    const v1, 0x7f0b050d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "onFindOnPage"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mMsg:Ljava/util/HashMap;

    const v1, 0x7f0b09f8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "onRequestPcVersion"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mMsg:Ljava/util/HashMap;

    const v1, 0x7f0b007b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "onTextSize"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mMsg:Ljava/util/HashMap;

    const v1, 0x7f0b0e86

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "onZoomInOut"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mMsg:Ljava/util/HashMap;

    const v1, 0x7f0b005d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "onExtension"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mMsg:Ljava/util/HashMap;

    const v1, 0x7f0b067b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "onNotification"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mMsg:Ljava/util/HashMap;

    const v1, 0x7f0b08fe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "onPrint"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mMsg:Ljava/util/HashMap;

    const v1, 0x7f0b006c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "onPrivacy"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mMsg:Ljava/util/HashMap;

    const v1, 0x7f0b0073

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "onSetting"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mMsg:Ljava/util/HashMap;

    const v1, 0x7f0b07c3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "onMyanmar"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mMsg:Ljava/util/HashMap;

    const v1, 0x7f0b005c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "onExit"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mMsg:Ljava/util/HashMap;

    const v1, 0x7f0b0047

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "onBackward"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mMsg:Ljava/util/HashMap;

    const v1, 0x7f0b005e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "onForward"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mMsg:Ljava/util/HashMap;

    const v1, 0x7f0b0060

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "onHome"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mMsg:Ljava/util/HashMap;

    const v1, 0x7f0b004f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "onBookmark"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mMsg:Ljava/util/HashMap;

    const v1, 0x7f0b0078

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "onTab"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mMsg:Ljava/util/HashMap;

    const v1, 0x7f0b0069

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "onMore"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mMsg:Ljava/util/HashMap;

    const v1, 0x7f0b0055

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "onCloseInternet"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mMsg:Ljava/util/HashMap;

    const v1, 0x7f0b0079

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "onTemporarilyAllowAds"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mMsg:Ljava/util/HashMap;

    const v1, 0x7f0b0071

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "onSearch"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mMsg:Ljava/util/HashMap;

    const v1, 0x7f0b006a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "onNewTab"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mMsg:Ljava/util/HashMap;

    const v1, 0x7f0b006f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "onRefresh"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mMsg:Ljava/util/HashMap;

    const v1, 0x7f0b0054

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "onCloseCurrentTab"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mMsg:Ljava/util/HashMap;

    const v1, 0x7f0b0077

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "onSummary"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mMsg:Ljava/util/HashMap;

    const v1, 0x7f0b006d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "onReadAloud"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mMsg:Ljava/util/HashMap;

    const v1, 0x7f0b006e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "onReadHighlightsAloud"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mMsg:Ljava/util/HashMap;

    const v0, 0x7f0b0050

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "onBrowsingAssist"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private makeRunnable()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mMap:Ljava/util/HashMap;

    const v1, 0x7f0b005b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/main_view/menu/a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/main_view/menu/a;-><init>(Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mMap:Ljava/util/HashMap;

    const v1, 0x7f0b005f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/main_view/menu/a;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/main_view/menu/a;-><init>(Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mMap:Ljava/util/HashMap;

    const v1, 0x7f0b0070

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/main_view/menu/a;

    const/16 v3, 0xe

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/main_view/menu/a;-><init>(Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mMap:Ljava/util/HashMap;

    const v1, 0x7f0b0046

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/main_view/menu/a;

    const/16 v3, 0x14

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/main_view/menu/a;-><init>(Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mMap:Ljava/util/HashMap;

    const v1, 0x7f0b0074

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/main_view/menu/a;

    const/16 v3, 0x15

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/main_view/menu/a;-><init>(Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mMap:Ljava/util/HashMap;

    const v1, 0x7f0b0072

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/main_view/menu/a;

    const/16 v3, 0x17

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/main_view/menu/a;-><init>(Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mMap:Ljava/util/HashMap;

    const v1, 0x7f0b006b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/main_view/menu/a;

    const/16 v3, 0x18

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/main_view/menu/a;-><init>(Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mMap:Ljava/util/HashMap;

    const v1, 0x7f0b0057

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/main_view/menu/a;

    const/16 v3, 0x19

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/main_view/menu/a;-><init>(Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mMap:Ljava/util/HashMap;

    const v1, 0x7f0b050d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/main_view/menu/a;

    const/16 v3, 0x1a

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/main_view/menu/a;-><init>(Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mMap:Ljava/util/HashMap;

    const v1, 0x7f0b09f8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/main_view/menu/a;

    const/16 v3, 0x1b

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/main_view/menu/a;-><init>(Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mMap:Ljava/util/HashMap;

    const v1, 0x7f0b007b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/main_view/menu/a;

    const/16 v3, 0xb

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/main_view/menu/a;-><init>(Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mMap:Ljava/util/HashMap;

    const v1, 0x7f0b0e86

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/main_view/menu/a;

    const/16 v3, 0x16

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/main_view/menu/a;-><init>(Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mMap:Ljava/util/HashMap;

    const v1, 0x7f0b005d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/main_view/menu/a;

    const/16 v3, 0x1c

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/main_view/menu/a;-><init>(Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mMap:Ljava/util/HashMap;

    const v1, 0x7f0b067b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/main_view/menu/a;

    const/16 v3, 0x1d

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/main_view/menu/a;-><init>(Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mMap:Ljava/util/HashMap;

    const v1, 0x7f0b08fe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/main_view/menu/c;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/main_view/menu/c;-><init>(Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mMap:Ljava/util/HashMap;

    const v1, 0x7f0b006c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/main_view/menu/c;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/main_view/menu/c;-><init>(Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mMap:Ljava/util/HashMap;

    const v1, 0x7f0b0073

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/main_view/menu/c;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/main_view/menu/c;-><init>(Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mMap:Ljava/util/HashMap;

    const v1, 0x7f0b07c3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/main_view/menu/c;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/main_view/menu/c;-><init>(Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mMap:Ljava/util/HashMap;

    const v1, 0x7f0b005c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/main_view/menu/c;

    const/4 v3, 0x4

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/main_view/menu/c;-><init>(Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mMap:Ljava/util/HashMap;

    const v1, 0x7f0b0047

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/main_view/menu/a;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/main_view/menu/a;-><init>(Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mMap:Ljava/util/HashMap;

    const v1, 0x7f0b005e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/main_view/menu/a;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/main_view/menu/a;-><init>(Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mMap:Ljava/util/HashMap;

    const v1, 0x7f0b0060

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/main_view/menu/a;

    const/4 v3, 0x4

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/main_view/menu/a;-><init>(Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mMap:Ljava/util/HashMap;

    const v1, 0x7f0b004f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/main_view/menu/a;

    const/4 v3, 0x5

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/main_view/menu/a;-><init>(Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mMap:Ljava/util/HashMap;

    const v1, 0x7f0b0078

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/main_view/menu/a;

    const/4 v3, 0x6

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/main_view/menu/a;-><init>(Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mMap:Ljava/util/HashMap;

    const v1, 0x7f0b0069

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/main_view/menu/a;

    const/4 v3, 0x7

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/main_view/menu/a;-><init>(Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mMap:Ljava/util/HashMap;

    const v1, 0x7f0b0055

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/main_view/menu/a;

    const/16 v3, 0x8

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/main_view/menu/a;-><init>(Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mMap:Ljava/util/HashMap;

    const v1, 0x7f0b0079

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/main_view/menu/a;

    const/16 v3, 0x9

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/main_view/menu/a;-><init>(Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mMap:Ljava/util/HashMap;

    const v1, 0x7f0b0071

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/main_view/menu/a;

    const/16 v3, 0xa

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/main_view/menu/a;-><init>(Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mMap:Ljava/util/HashMap;

    const v1, 0x7f0b006a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/main_view/menu/a;

    const/16 v3, 0xc

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/main_view/menu/a;-><init>(Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mMap:Ljava/util/HashMap;

    const v1, 0x7f0b006f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/main_view/menu/a;

    const/16 v3, 0xd

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/main_view/menu/a;-><init>(Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mMap:Ljava/util/HashMap;

    const v1, 0x7f0b0054

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/main_view/menu/a;

    const/16 v3, 0xf

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/main_view/menu/a;-><init>(Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mMap:Ljava/util/HashMap;

    const v1, 0x7f0b0077

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/main_view/menu/a;

    const/16 v3, 0x10

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/main_view/menu/a;-><init>(Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mMap:Ljava/util/HashMap;

    const v1, 0x7f0b006d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/main_view/menu/a;

    const/16 v3, 0x11

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/main_view/menu/a;-><init>(Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mMap:Ljava/util/HashMap;

    const v1, 0x7f0b006e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/main_view/menu/a;

    const/16 v3, 0x12

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/main_view/menu/a;-><init>(Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mMap:Ljava/util/HashMap;

    const v1, 0x7f0b0050

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/main_view/menu/a;

    const/16 v3, 0x13

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/main_view/menu/a;-><init>(Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public askExit()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mAppMenuMore:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;->askExit()V

    return-void
.end method

.method public changeZoomValue(ZLandroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mAppMenuMore:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;->changeZoomValue(ZLandroid/view/View;)V

    return-void
.end method

.method public dismissAiOptionPopup()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mAppMenuMore:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;->dismissAiOptionPopup()V

    return-void
.end method

.method public dismissMenuDialog()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mAppMenuMore:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;->dismissCloseAllDialog()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mAppMenuMore:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;->dismissCloseTabDialog()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mAppMenuMore:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;->dismissAiOptionPopup()V

    return-void
.end method

.method public dismissTextSizeDialog()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mAppMenuMore:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;->dismissTextSizeDialog()V

    return-void
.end method

.method public dismissToolsDialog()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mAppMenuMore:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->dismissToolsDialog()V

    return-void
.end method

.method public dismissZoomDialog(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mAppMenuMore:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;->dismissZoomDialog(Z)V

    return-void
.end method

.method public dismissZoomInfoBar()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mAppMenuMore:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;->dismissZoomInfoBar()V

    return-void
.end method

.method public finishOrMoveTaskToBack()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mAppMenuMore:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->finishOrMoveTaskToBack()V

    return-void
.end method

.method public getMoreMenuRect()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mAppMenuMore:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->getMoreMenuRect()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public launchExtensionsActivity()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mAppMenuMore:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;->launchExtensionsActivity()V

    return-void
.end method

.method public launchSettingsActivity(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mAppMenuMore:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;->launchSettingsActivity(Ljava/lang/String;)V

    return-void
.end method

.method public notifyAiOptionStatusChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mAppMenuMore:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;->notifyAiOptionStatusChanged(I)V

    return-void
.end method

.method public onAddTo()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mAppMenuMore:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;->onAddTo()V

    return-void
.end method

.method public onAppMenuLongClick()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mAppMenuMore:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;->onAppMenuLongClick()V

    return-void
.end method

.method public onBackward()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mAppMenuMore:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->onBackClicked()V

    return-void
.end method

.method public onBookmark()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mAppMenuMore:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->onBookmarksClicked()V

    return-void
.end method

.method public onBrowsingAssistClicked()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mAppMenuMore:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mMenuItemView:Landroid/view/View;

    new-instance v2, Lcom/sec/android/app/sbrowser/main_view/menu/b;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/main_view/menu/b;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;->onBrowsingAssistClicked(Landroid/view/View;Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionMenuCallback;)V

    return-void
.end method

.method public onCloseCurrentTab()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mAppMenuMore:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;->onCloseCurrentTab()V

    return-void
.end method

.method public onCloseInternet()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mAppMenuMore:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;->onCloseInternetClicked()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mAppMenuMore:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onContentBlocker()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mAppMenuMore:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;->openContentBlocker()V

    return-void
.end method

.method public onDownload()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mAppMenuMore:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;->onDownload()V

    return-void
.end method

.method public onExit()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mAppMenuMore:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;->doExit()V

    return-void
.end method

.method public onExtension()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mAppMenuMore:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;->onExtension()V

    return-void
.end method

.method public onFindOnPage()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mAppMenuMore:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;->dismissAiOptionPopup()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mAppMenuMore:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;->findOnPage()V

    return-void
.end method

.method public onForward()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mAppMenuMore:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->onForwardClicked()V

    return-void
.end method

.method public onForwardClicked()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mAppMenuMore:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->onForwardClicked()V

    return-void
.end method

.method public onHistory()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mAppMenuMore:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;->onHistory()V

    return-void
.end method

.method public onHome()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mAppMenuMore:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->onHomeClicked()V

    return-void
.end method

.method public onHomeClicked()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mAppMenuMore:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->onHomeClicked()V

    return-void
.end method

.method public onMore()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mAppMenuMore:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->onMore()V

    return-void
.end method

.method public onMyanmar()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mAppMenuMore:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;->onMyanmar()V

    return-void
.end method

.method public onNewGuiStateChanged()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mAppMenuMore:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;->onNewGuiStateChanged()V

    return-void
.end method

.method public onNewTab()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mAppMenuMore:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;->onNewTabClicked()V

    return-void
.end method

.method public onNightMode()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mAppMenuMore:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;->handleNightMode()V

    return-void
.end method

.method public onNotification()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mAppMenuMore:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;->onLaunchNotificationsClicked()V

    return-void
.end method

.method public onPrint()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mAppMenuMore:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;->print()V

    return-void
.end method

.method public onPrivacy()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mAppMenuMore:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;->onPrivacy()V

    return-void
.end method

.method public onReadAloudClicked()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mAppMenuMore:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;->onReadAloudClicked()V

    return-void
.end method

.method public onReadHighlightsAloudClicked()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mAppMenuMore:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;->onReadHighlightsAloudClicked()V

    return-void
.end method

.method public onRefresh()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mAppMenuMore:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mMenuItemView:Landroid/view/View;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;->onRefreshClick(Landroid/view/View;)V

    return-void
.end method

.method public onRequestPcVersion()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mAppMenuMore:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;->desktopView()V

    return-void
.end method

.method public onSavedPage()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mAppMenuMore:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;->onSavedPage()V

    return-void
.end method

.method public onSearch()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mAppMenuMore:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;->onSearchClicked()V

    return-void
.end method

.method public onSecretMode()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mAppMenuMore:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;->onSecretMode()V

    return-void
.end method

.method public onSetting()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mAppMenuMore:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;->onSetting()V

    return-void
.end method

.method public onShare()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mAppMenuMore:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;->onShare()V

    return-void
.end method

.method public onSummaryClicked()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mAppMenuMore:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;->onSummaryClicked()V

    return-void
.end method

.method public onTab()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mAppMenuMore:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->onTabsClicked()V

    return-void
.end method

.method public onTemporarilyAllowAds()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mAppMenuMore:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;->onTemporarilyAllowAds()V

    return-void
.end method

.method public onTextSize()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mAppMenuMore:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;->onTextSize()V

    return-void
.end method

.method public onZoomInOut()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mAppMenuMore:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;->showZoomInOutPopup()V

    return-void
.end method

.method public openSites(IZI)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mAppMenuMore:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->openSites(IZI)V

    return-void
.end method

.method public performMenuItem(ILandroid/view/View;)Ljava/lang/String;
    .locals 3

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mMenuItemView:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mMsg:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mMsg:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "onExtensionsItemClicked"

    :goto_0
    const-string v1, "AppMenuHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mTesting:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mMenuInterface:Lcom/sec/android/app/sbrowser/main_view/menu/MenuInterface;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/main_view/menu/MenuInterface;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v2

    invoke-direct {p0, v1, v2, p1}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->loggingForPerformMenuItem(Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mAppMenuMore:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;->onExtensionsItemClicked(ILandroid/view/View;)V

    :cond_2
    :goto_1
    return-object v0
.end method

.method public print()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mAppMenuMore:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;->print()V

    return-void
.end method

.method public restoreZoomValueIfNeeded(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mAppMenuMore:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;->restoreZoomValueIfNeeded(Z)V

    return-void
.end method

.method public setTabDelegate(Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mAppMenuMore:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->setTabDelegate(Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;)V

    return-void
.end method

.method public setTesting(Z)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mTesting:Z

    return-void
.end method

.method public setZoomValue(D)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mAppMenuMore:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;->setZoomValue(D)V

    return-void
.end method

.method public shareVia(Landroid/content/Intent;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mAppMenuMore:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;->shareVia(Landroid/content/Intent;)V

    return-void
.end method

.method public showZoomInOutPopup()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mAppMenuMore:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;->showZoomInOutPopup()V

    return-void
.end method

.method public startSitesActivity(IZI)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHandler;->mAppMenuMore:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->startSitesActivity(IZI)V

    return-void
.end method
