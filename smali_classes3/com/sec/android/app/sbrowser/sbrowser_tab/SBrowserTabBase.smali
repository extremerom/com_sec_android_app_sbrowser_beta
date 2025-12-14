.class public abstract Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
.implements Lcom/sec/android/app/sbrowser/tab/TabObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase$SplitModeDirection;
    }
.end annotation


# instance fields
.field private mActiveTime:J

.field private mAppAssociatedWith:Ljava/lang/String;

.field protected mBottomControlsHeight:I

.field private final mCloseContentsRunnable:Ljava/lang/Runnable;

.field protected mContext:Landroid/content/Context;

.field protected mContextMenuPopulator:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;

.field protected mEventHandler:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;

.field protected mEventNotifier:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

.field private mFaviconDominantColor:I

.field private mGroupColorId:I

.field private mGroupName:Ljava/lang/String;

.field protected final mHandler:Landroid/os/Handler;

.field private mId:I

.field private mIsAnimating:Z

.field private mIsBitmapCaptureDelayed:Z

.field private mIsBookmarked:Z

.field private mIsClosed:Z

.field private mIsClosing:Z

.field private mIsCreatedWithTerrace:Z

.field private mIsHidden:Z

.field private mIsJavascriptEnabledBeforeClose:Z

.field protected mIsLoading:Z

.field private mIsLocked:Z

.field private mIsRenderViewReady:Z

.field private mIsSameDocument:Z

.field protected mIsTerraceStateDirty:Z

.field private mLastShowTimestampMillis:J

.field private mMainViewTabCallback:Lcom/sec/android/app/sbrowser/sbrowser_tab/MainViewTabCallback;

.field protected mNavigatingUrl:Ljava/lang/String;

.field private mParentTabId:I

.field protected mPendingLoadUrl:Ljava/lang/String;

.field private mReservedPageDelegate:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabReservedPageDelegate;

.field protected mShouldUseDesktopUserAgent:Ljava/lang/Boolean;

.field private mSmartTabDeleteDelegate:Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteDelegate;

.field private mSplitModeDirection:I

.field protected mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

.field public mTabActiveTimeManager:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabActiveTimeManager;

.field private mTabLaunchType:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

.field private mThinWebView:Lcom/sec/terrace/browser/thin_webview/TerraceThinWebView;

.field private mTitle:Ljava/lang/String;

.field protected mTopControlsHeight:I

.field protected mUserAgentOverrideManager:Lcom/sec/android/app/sbrowser/sbrowser_tab/UserAgentOverrideManager;

.field private mVisitCount:I

.field private mZoomFactor:Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mId:I

    iput p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mParentTabId:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mLastShowTimestampMillis:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mIsTerraceStateDirty:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mIsLoading:Z

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mIsClosed:Z

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mIsClosing:Z

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mIsRenderViewReady:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mIsHidden:Z

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mIsLocked:Z

    const-string v2, ""

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mGroupName:Ljava/lang/String;

    iput v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mGroupColorId:I

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mIsSameDocument:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mIsJavascriptEnabledBeforeClose:Z

    iput p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mFaviconDominantColor:I

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mIsBookmarked:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mShouldUseDesktopUserAgent:Ljava/lang/Boolean;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase$1;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase$1;-><init>(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mCloseContentsRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->lambda$updateIsBookmarked$2()V

    return-void
.end method

.method private attachTabView()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->getView()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->lambda$print$1()V

    return-void
.end method

.method public static synthetic c(Landroid/view/ViewGroup;II)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->lambda$scrollBy$0(Landroid/view/ViewGroup;II)V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->lambda$updateIsBookmarked$3(Ljava/lang/String;)V

    return-void
.end method

.method private getWebContentsState()Lcom/sec/terrace/TerraceState$WebContentsState;
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/terrace/TerraceState;->getContentsStateAsByteBuffer(Lcom/sec/terrace/Terrace;)Ljava/nio/ByteBuffer;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v1

    :cond_1
    new-instance v0, Lcom/sec/terrace/TerraceState$WebContentsStateNative;

    invoke-direct {v0, p0}, Lcom/sec/terrace/TerraceState$WebContentsStateNative;-><init>(Ljava/nio/ByteBuffer;)V

    const/4 p0, 0x2

    invoke-virtual {v0, p0}, Lcom/sec/terrace/TerraceState$WebContentsState;->setVersion(I)V

    return-object v0
.end method

.method private synthetic lambda$print$1()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->startPrint()V

    return-void
.end method

.method private static synthetic lambda$scrollBy$0(Landroid/view/ViewGroup;II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->scrollBy(II)V

    return-void
.end method

.method private synthetic lambda$updateIsBookmarked$2()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mEventNotifier:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyBookmarkStatusChanged()V

    return-void
.end method

.method private synthetic lambda$updateIsBookmarked$3(Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mIsBookmarked:Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/Bookmarks;->isUrlBookmarked(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p1

    if-eq v0, p1, :cond_0

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mIsBookmarked:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mIsBookmarked:Z

    new-instance p1, Lcom/sec/android/app/sbrowser/sbrowser_tab/i;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/i;-><init>(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;I)V

    invoke-static {p1}, Lcom/sec/terrace/base/TerraceThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addEventListener(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mEventNotifier:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->addEventListener(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;)V

    return-void
.end method

.method public attachThinWebView(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "attachThinWebView(): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getTabId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SBrowserTabBase"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->setSplitMode(ZZ)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->detachTabView()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/sec/terrace/browser/thin_webview/TerraceThinWebViewFactory;->create(Landroid/content/Context;)Lcom/sec/terrace/browser/thin_webview/TerraceThinWebView;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mThinWebView:Lcom/sec/terrace/browser/thin_webview/TerraceThinWebView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/terrace/browser/thin_webview/TerraceThinWebView;->attachTerrace(Lcom/sec/terrace/Terrace;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->show()V

    return-void
.end method

.method public canGoBack()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->canGoBack()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public canGoForward()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->canGoForward()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public changeUserAgentIfNeeded(Ljava/lang/String;)Z
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isFoldableDeviceTypeMulti()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->shouldUseDesktopUserAgent()Z

    move-result p1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mShouldUseDesktopUserAgent:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v1, p1, :cond_1

    return v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "changeUserAgentIfNeeded, DesktopUserAgent: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SBrowserTabBase"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mShouldUseDesktopUserAgent:Ljava/lang/Boolean;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->setUseDesktopUserAgent(ZZ)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getTab()Lcom/sec/android/app/sbrowser/tab/Tab;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->reloadOriginalRequestUrl()V

    return v0
.end method

.method public changeZoomValue(ZLandroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mZoomFactor:Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->isDesktopMode()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p2, 0x0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mZoomFactor:Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;->changeZoomValue(ZLandroid/view/View;Z)V

    return-void
.end method

.method public close()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mIsClosed:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mThinWebView:Lcom/sec/terrace/browser/thin_webview/TerraceThinWebView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/terrace/browser/thin_webview/TerraceThinWebView;->destroy()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mThinWebView:Lcom/sec/terrace/browser/thin_webview/TerraceThinWebView;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->close()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mEventHandler:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->revokeObjectCaptureDragImageUriPermissions()V

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public closeContents()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mIsClosing:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mCloseContentsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mCloseContentsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public createLoadUrlParams(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)Lcom/sec/android/app/sbrowser/tab/LoadUrlParams;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/tab/LoadUrlParams;

    invoke-direct {v0, p1, p2, p3, p5}, Lcom/sec/android/app/sbrowser/tab/LoadUrlParams;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lcom/sec/terrace/browser/TerraceLoadUrlParams;->setHasUserGesture(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mUserAgentOverrideManager:Lcom/sec/android/app/sbrowser/sbrowser_tab/UserAgentOverrideManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/UserAgentOverrideManager;->getOverrideUserAgentOption()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/sec/terrace/browser/TerraceLoadUrlParams;->setOverrideUserAgent(I)V

    return-object v0
.end method

.method public createLoadUrlParamsForIntent(Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/tab/LoadUrlParams;
    .locals 9

    invoke-static {}, Lcom/sec/android/app/sbrowser/externalnav/IntentWithRequestMetadataHandler;->getInstance()Lcom/sec/android/app/sbrowser/externalnav/IntentWithRequestMetadataHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/externalnav/IntentWithRequestMetadataHandler;->getRequestMetadataAndClear(Landroid/content/Intent;)Lcom/sec/android/app/sbrowser/externalnav/IntentWithRequestMetadataHandler$RequestMetadata;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v7, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/externalnav/IntentWithRequestMetadataHandler$RequestMetadata;->hasUserGesture()Z

    move-result v2

    move v7, v2

    :goto_0
    move-object v3, p0

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object v8, p5

    invoke-virtual/range {v3 .. v8}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->createLoadUrlParams(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)Lcom/sec/android/app/sbrowser/tab/LoadUrlParams;

    move-result-object p0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/externalnav/IntentWithRequestMetadataHandler$RequestMetadata;->isRendererInitiated()Z

    move-result v1

    :goto_1
    invoke-virtual {p0, v1}, Lcom/sec/terrace/browser/TerraceLoadUrlParams;->setIsRendererInitiated(Z)V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler;->wasIntentSenderSBrowser(Landroid/content/Intent;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lcom/sec/terrace/TerraceOrigin;->createOpaqueOrigin()Lcom/sec/terrace/TerraceOrigin;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/TerraceLoadUrlParams;->setInitiatorOrigin(Lcom/sec/terrace/TerraceOrigin;)V

    :cond_2
    return-object p0
.end method

.method public detachTabView()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->getView()Landroid/view/ViewGroup;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public detachThinWebView(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mThinWebView:Lcom/sec/terrace/browser/thin_webview/TerraceThinWebView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "detachThinWebView(): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getTabId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " -> needToShow: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SBrowserTabBase"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mThinWebView:Lcom/sec/terrace/browser/thin_webview/TerraceThinWebView;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/thin_webview/TerraceThinWebView;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mThinWebView:Lcom/sec/terrace/browser/thin_webview/TerraceThinWebView;

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->isSplitModeOnLeft()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->setSplitMode(ZZ)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->attachTabView()V

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->show()V

    :cond_1
    return-void
.end method

.method public didRemoveObjectCaptureView()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mEventHandler:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->didRemoveObjectCaptureView()Z

    move-result p0

    return p0
.end method

.method public didRemoveVisionTextView()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mEventHandler:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->didRemoveVisionTextView()Z

    move-result p0

    return p0
.end method

.method public disableDefaultFontSize()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->disableDefaultFontSize()V

    :cond_0
    return-void
.end method

.method public dismissDialogForNavigation()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mEventHandler:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->dismissDialogForNavigation()V

    return-void
.end method

.method public dismissZoomInfoBar()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mZoomFactor:Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;->dismissZoomInfoBar()V

    :cond_0
    return-void
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isDraggingOverInputField()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isJavascriptSchemeOrInvalidUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string p1, "SBrowserTabBase"

    const-string v0, "dispatchDragEvent - invalid url"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mContext:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const p1, 0x7f140649

    invoke-static {p1, v1, p0}, LH6/o;->h(IILandroid/view/View;)LH6/o;

    move-result-object p0

    invoke-virtual {p0}, LH6/o;->l()V

    return v1

    :cond_3
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isEditMode()Z

    move-result v2

    if-eqz v2, :cond_4

    return v1

    :cond_4
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isValidUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->loadUrl(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_5
    :goto_0
    return v1

    :cond_6
    :goto_1
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result p0

    return p0

    :cond_7
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result p0

    return p0
.end method

.method public enableBitmapCompositionForLayer(Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;ZLandroid/graphics/Bitmap;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->isDesktopMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->isFullScreenMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->isSplitMode()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 p2, 0x0

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/tab/Tab;->enableBitmapCompositionForLayer(Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;ZLandroid/graphics/Bitmap;)V

    return-void
.end method

.method public enableBlurEffectOnToolbar(Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;IIIIIF)V
    .locals 8

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/sbrowser/tab/Tab;->enableBlurEffectOnToolbar(Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;IIIIIF)V

    return-void
.end method

.method public evaluateJavaScript(Ljava/lang/String;Lcom/sec/terrace/TerraceJavaScriptCallback;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab/Tab;->evaluateJavaScript(Ljava/lang/String;Lcom/sec/terrace/TerraceJavaScriptCallback;)V

    :cond_0
    return-void
.end method

.method public extractArticle(Ljava/util/Map;Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityExtractionCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityExtractionCallback;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab/Tab;->extractArticle(Ljava/util/Map;Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityExtractionCallback;)V

    :cond_0
    return-void
.end method

.method public getActiveTime()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mActiveTime:J

    return-wide v0
.end method

.method public getAppAssociatedWith()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mAppAssociatedWith:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic getArticleImageUrl()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getArticleImageUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBarcodeDetectionHandler()Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mEventHandler:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->getBarcodeDetectionHandler()Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getBaseContext()Landroid/content/Context;
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public getBitmapAsync(IIIILandroid/graphics/Bitmap$Config;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Landroid/graphics/Bitmap$Config;",
            "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
            "Landroid/graphics/Bitmap;",
            ">;I)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p6, :cond_0

    const/4 p0, 0x0

    invoke-interface {p6, p0}, Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;->onCallback(Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    new-instance v6, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase$2;

    invoke-direct {v6, p0, p6}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase$2;-><init>(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/sbrowser/tab/Tab;->getBitmapAsync(IIIILandroid/graphics/Bitmap$Config;Lcom/sec/terrace/Terrace$BitmapRequestCallback;I)V

    return-void
.end method

.method public getBitmapFromCache(Ljava/lang/String;Lcom/sec/terrace/Terrace$BitmapRequestCallback;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab/Tab;->getBitmapFromCache(Ljava/lang/String;Lcom/sec/terrace/Terrace$BitmapRequestCallback;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic getBoardingPassProcessor()Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor;
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getBoardingPassProcessor()Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassProcessor;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getBottomMargin()I
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getBottomMargin()I

    move-result p0

    return p0
.end method

.method public getContentMimeType()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->getContentsMimeType()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getCurrentRenderProcessId()I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->getChildProcessUniqueId()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getCurrentVisibleContentRect()Landroid/graphics/Rect;
    .locals 2

    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getTabLayout()Lcom/sec/android/app/sbrowser/tab/TabLayout;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/tab/TabLayout;->getVisibleTopMargin()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getTabLayout()Lcom/sec/android/app/sbrowser/tab/TabLayout;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab/TabLayout;->getVisibleBottomMargin()I

    move-result p0

    sub-int/2addr v1, p0

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    return-object v0
.end method

.method public getDefaultFontSize()I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->getDefaultFontSize()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getDirectedNavigationHistory(ZI)Lcom/sec/terrace/navigation_interception/TerraceNavigationHistory;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab/Tab;->getDirectedNavigationHistory(ZI)Lcom/sec/terrace/navigation_interception/TerraceNavigationHistory;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getExternalNavigationHandler()Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mEventHandler:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->getExternalNavigationHandler()Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;

    move-result-object p0

    return-object p0
.end method

.method public getFavicon()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mReservedPageDelegate:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabReservedPageDelegate;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabReservedPageDelegate;->getFavicon(Lcom/sec/terrace/Terrace;)Landroid/graphics/Bitmap;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getFaviconDominantColor()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mFaviconDominantColor:I

    return p0
.end method

.method public getGroupColorId()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mGroupColorId:I

    return p0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mGroupName:Ljava/lang/String;

    return-object p0
.end method

.method public getImageTextTranslator()Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mEventHandler:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->getImageTextTranslator()Lcom/sec/android/app/sbrowser/image_text_translation/ImageTextTranslator;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getInfoBarService()Lcom/sec/android/app/sbrowser/infobars/InfoBarService;
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getInfoBarService()Lcom/sec/android/app/sbrowser/infobars/InfoBarService;

    move-result-object p0

    return-object p0
.end method

.method public getInnerText(Lcom/sec/terrace/Terrace$InnerTextCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab/Tab;->getInnerText(Lcom/sec/terrace/Terrace$InnerTextCallback;)V

    return-void
.end method

.method public getIsSameDocument()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mIsSameDocument:Z

    return p0
.end method

.method public getJavaScriptBeforeClose()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mIsJavascriptEnabledBeforeClose:Z

    return p0
.end method

.method public getLiveTextController()Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mEventHandler:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->getLiveTextController()Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getNativePage()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getNativePage()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;

    move-result-object p0

    return-object p0
.end method

.method public getObjectCaptureController()Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mEventHandler:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->getObjectCaptureController()Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;

    move-result-object p0

    return-object p0
.end method

.method public getOriginalRequestedUrl()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getLastCommittedEntryIndex()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/sec/terrace/Terrace;->getEntryAtIndex(I)Lcom/sec/terrace/navigation_interception/TerraceNavigationEntry;

    move-result-object p0

    if-nez p0, :cond_2

    return-object v0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/terrace/navigation_interception/TerraceNavigationEntry;->getOriginalUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getOriginalTabOfReaderTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getOriginalTabOfReaderTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getOriginalUrl()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getOriginalUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getPWAStatus()Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getPWAStatus()Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;

    move-result-object p0

    return-object p0
.end method

.method public getParentTabId()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mParentTabId:I

    return p0
.end method

.method public bridge synthetic getParentalControlBlockedUrl()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getParentalControlBlockedUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getPreviousUpdatedUrl()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getPreviousUpdatedUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getProgress()D
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->getProgress()D

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public bridge synthetic getReader()Lcom/sec/android/app/sbrowser/common/model/reader/IReader;
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getReader()Lcom/sec/android/app/sbrowser/common/model/reader/IReader;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getReaderTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getReaderTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getReaderTabWhenSplitView()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getReaderTabWhenSplitView()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getReaderTheme()I
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getReaderTheme()I

    move-result p0

    return p0
.end method

.method public getRedirectHandler()Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mEventHandler:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->getRedirectHandler()Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSelectedText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getSelectedText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getState()Lcom/sec/terrace/TerraceState;
    .locals 3

    new-instance v0, Lcom/sec/terrace/TerraceState;

    invoke-direct {v0}, Lcom/sec/terrace/TerraceState;-><init>()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getWebContentsState()Lcom/sec/terrace/TerraceState$WebContentsState;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/terrace/TerraceState;->contentsState:Lcom/sec/terrace/TerraceState$WebContentsState;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mAppAssociatedWith:Ljava/lang/String;

    iput-object v1, v0, Lcom/sec/terrace/TerraceState;->openerAppId:Ljava/lang/String;

    iget v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mParentTabId:I

    iput v1, v0, Lcom/sec/terrace/TerraceState;->parentId:I

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/terrace/TerraceState;->shouldPreserve:Z

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/sec/terrace/TerraceState;->syncId:J

    iget-wide v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mLastShowTimestampMillis:J

    iput-wide v1, v0, Lcom/sec/terrace/TerraceState;->timestampMillis:J

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getZoomValue()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/sec/terrace/TerraceState;->zoomValue:D

    return-object v0
.end method

.method public getTab()Lcom/sec/android/app/sbrowser/tab/Tab;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    return-object p0
.end method

.method public getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mEventNotifier:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    return-object p0
.end method

.method public getTabId()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mId:I

    return p0
.end method

.method public getTabLaunchType()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTabLaunchType:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

    return-object p0
.end method

.method public getTabLayout()Lcom/sec/android/app/sbrowser/tab/TabLayout;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/sec/android/app/sbrowser/tab/TabLayout;->EMPTY:Lcom/sec/android/app/sbrowser/tab/TabLayout;

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->getTabLayout()Lcom/sec/android/app/sbrowser/tab/TabLayout;

    move-result-object p0

    return-object p0
.end method

.method public getTerrace()Lcom/sec/terrace/Terrace;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getThemeColor()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->getThemeColor()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getThinWebView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mThinWebView:Lcom/sec/terrace/browser/thin_webview/TerraceThinWebView;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/browser/thin_webview/TerraceThinWebView;->getView()Landroid/view/View;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getTimestampMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mLastShowTimestampMillis:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTitle:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->updateTitle()V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic getTopMargin()I
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTopMargin()I

    move-result p0

    return p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mPendingLoadUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mPendingLoadUrl:Ljava/lang/String;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mReservedPageDelegate:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabReservedPageDelegate;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabReservedPageDelegate;->getUrl(Lcom/sec/terrace/Terrace;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUrlForSearchQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService;->getInstance()Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService;->getInstance()Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService;->getUrlForSearchQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUseDesktopUserAgent()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mUserAgentOverrideManager:Lcom/sec/android/app/sbrowser/sbrowser_tab/UserAgentOverrideManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/UserAgentOverrideManager;->getUseDesktopUserAgent()Z

    move-result p0

    return p0
.end method

.method public getUserAgentOption(Z)I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mUserAgentOverrideManager:Lcom/sec/android/app/sbrowser/sbrowser_tab/UserAgentOverrideManager;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/UserAgentOverrideManager;->getUserAgentOption(Z)I

    move-result p0

    return p0
.end method

.method public getView()Landroid/view/ViewGroup;
    .locals 0

    return-object p0
.end method

.method public getViewPortBitmapAsync(Lcom/sec/terrace/Terrace$BitmapRequestCallback;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab/Tab;->getViewPortBitmapAsync(Lcom/sec/terrace/Terrace$BitmapRequestCallback;)V

    :cond_0
    return-void
.end method

.method public getVisibleContentHeight()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getBottomMargin()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getTopMargin()I

    move-result v1

    sub-int/2addr v0, v1

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getCurrentViewRect()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    if-lez p0, :cond_0

    move v0, p0

    :cond_0
    return v0
.end method

.method public abstract getVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
.end method

.method public getVisitCount()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mVisitCount:I

    return p0
.end method

.method public getWasRenderProcessGone()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->getWasRenderProcessGone()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getZoomPercent()Ljava/lang/Integer;
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getZoomPercent()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public getZoomValue()D
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mZoomFactor:Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;

    if-nez p0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;->getZoomValue()D

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getZoomValueDex()D
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mZoomFactor:Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;

    if-nez p0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;->getZoomValueDex()D

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getZoomValueMobile()D
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mZoomFactor:Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;

    if-nez p0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;->getZoomValueMobile()D

    move-result-wide v0

    return-wide v0
.end method

.method public goForward()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "SBrowserTabBase"

    const-string v1, "goForward"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->goForward()Z

    return-void
.end method

.method public goToNavigationIndex(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab/Tab;->goToNavigationIndex(I)V

    :cond_0
    return-void
.end method

.method public hide()V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mIsHidden:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTabActiveTimeManager:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabActiveTimeManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabActiveTimeManager;->recordTabInactive(J)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTabActiveTimeManager:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabActiveTimeManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabActiveTimeManager;->getActiveTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mActiveTime:J

    return-void
.end method

.method public hideVideoAssistant()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->hideVideoAssistant()V

    :cond_0
    return-void
.end method

.method public increaseVisitCount()V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mVisitCount:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mVisitCount:I

    :cond_0
    return-void
.end method

.method public initFaviconDominantColor()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mFaviconDominantColor:I

    return-void
.end method

.method public initialize()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mUserAgentOverrideManager:Lcom/sec/android/app/sbrowser/sbrowser_tab/UserAgentOverrideManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/UserAgentOverrideManager;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/UserAgentOverrideManager;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/tab/Tab;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mUserAgentOverrideManager:Lcom/sec/android/app/sbrowser/sbrowser_tab/UserAgentOverrideManager;

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabReservedPageDelegate;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase$3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase$3;-><init>(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;)V

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabReservedPageDelegate;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/sbrowser_tab/TabReservedPageDelegate$State;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mReservedPageDelegate:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabReservedPageDelegate;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mZoomFactor:Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;

    if-nez v0, :cond_1

    new-instance v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase$4;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase$4;-><init>(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;)V

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor$Delegate;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mZoomFactor:Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;

    :cond_1
    return-void
.end method

.method public initializeTab(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;ILandroid/content/Context;Lcom/sec/terrace/Terrace;ZZLjava/lang/String;I)V
    .locals 0
    .param p4    # Lcom/sec/terrace/Terrace;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTabLaunchType:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

    iput p2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mId:I

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mContext:Landroid/content/Context;

    iput-boolean p5, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mIsCreatedWithTerrace:Z

    iput-boolean p6, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mIsLocked:Z

    iput p8, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mGroupColorId:I

    iput-object p7, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mGroupName:Ljava/lang/String;

    new-instance p2, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;

    invoke-direct {p2, p0, p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;-><init>(Lcom/sec/android/app/sbrowser/tab/TabObserver;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mEventHandler:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;

    new-instance p3, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    invoke-direct {p3, p2, p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;-><init>(Lcom/sec/android/app/sbrowser/tab/TabObserver;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mEventNotifier:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    new-instance p2, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteDelegate;

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mContext:Landroid/content/Context;

    invoke-direct {p2, p3}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteDelegate;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mSmartTabDeleteDelegate:Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteDelegate;

    if-eqz p4, :cond_2

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    if-nez p2, :cond_0

    new-instance p2, Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-direct {p2, p4}, Lcom/sec/android/app/sbrowser/tab/Tab;-><init>(Lcom/sec/terrace/Terrace;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/tab/Tab;->initializeTabEventNotifier()V

    :goto_0
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mContext:Landroid/content/Context;

    check-cast p3, Landroid/app/Activity;

    iget p4, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mId:I

    invoke-virtual {p2, p3, p5, p4}, Lcom/sec/android/app/sbrowser/tab/Tab;->initialize(Landroid/app/Activity;ZI)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mEventNotifier:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    invoke-virtual {p2, p3}, Lcom/sec/android/app/sbrowser/tab/Tab;->addObserver(Lcom/sec/android/app/sbrowser/tab/TabObserver;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mEventHandler:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;

    invoke-virtual {p2, p3}, Lcom/sec/android/app/sbrowser/tab/Tab;->setDelegate(Lcom/sec/android/app/sbrowser/tab/Tab$Delegate;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/tab/Tab;->isIncognito()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mSmartTabDeleteDelegate:Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteDelegate;

    invoke-virtual {p2, p3}, Lcom/sec/android/app/sbrowser/tab/Tab;->addObserver(Lcom/sec/android/app/sbrowser/tab/TabObserver;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mSmartTabDeleteDelegate:Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteDelegate;

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->addEventListener(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;)V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->initializeTerrace()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->attachTabView()V

    :cond_2
    sget-object p2, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;->FROM_RESTORE_BACKGROUND:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

    if-eq p1, p2, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->recordLastShowTimestampMillis()V

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->initialize()V

    return-void
.end method

.method public initializeTerrace()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->setKnoxPolicySupported(Z)V

    return-void
.end method

.method public isAboutBlankUrl()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getUrl()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "about:blank"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isAnimating()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mIsAnimating:Z

    return p0
.end method

.method public isBitmapCaptureDelayed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mIsBitmapCaptureDelayed:Z

    return p0
.end method

.method public isBookmarked()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mIsBookmarked:Z

    return p0
.end method

.method public isClosed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mIsClosed:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isClosed()Z

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

.method public isClosing()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mIsClosing:Z

    return p0
.end method

.method public isCrashTabViewShown()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isCrashed()Z

    move-result p0

    return p0
.end method

.method public isCreatedWithTerrace()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mIsCreatedWithTerrace:Z

    return p0
.end method

.method public isDesktopMode()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mContext:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method public isFocusedNodeEditable()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isSelectionEditable()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFullScreenMode()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isFullscreenForTabOrPending()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFullscreenVideoMode()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isFullscreenVideoMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isHidden()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mIsHidden:Z

    return p0
.end method

.method public isHoverScrolling()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isHoverScrolling()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isIncognito()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isIncognito()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInitialNavigation()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isInitialNavigation()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isLoading()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mIsLoading:Z

    return p0
.end method

.method public isLocked()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->isIncognito()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mIsLocked:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPdfWritingInProgress()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isPdfWritingInProgress()Z

    move-result p0

    return p0
.end method

.method public isReadyToShow()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->isReadyToShow()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRenderViewReady()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mIsRenderViewReady:Z

    return p0
.end method

.method public isSelectActionModeShowing()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->isActionModeShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSharable()Z
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->isClosed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isOfflineModePage()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->isUnifiedHomepageUrl()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isInternalUrl(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public isSplitMode()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->isSplitMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSplitModeOnLeft()Z
    .locals 1

    iget p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mSplitModeDirection:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTerraceStateDirty()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mIsTerraceStateDirty:Z

    return p0
.end method

.method public isUnifiedHomepageUrl()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->isUnifiedHomepageUrl(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isUnifiedHomepageUrl(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/homepage/UnifiedHomePageConfig;->isUnifiedHomePageUrl(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isZoomApplyToThisTabOnly()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mZoomFactor:Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;->isZoomApplyToThisTabOnly()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isZoomApplyToThisTabOnlyDex()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mZoomFactor:Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;->isZoomApplyToThisTabOnlyDex()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isZoomApplyToThisTabOnlyMobile()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mZoomFactor:Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;->isZoomApplyToThisTabOnlyMobile()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public loadDataWithBaseUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/tab/Tab;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public loadUrl(Lcom/sec/android/app/sbrowser/tab/LoadUrlParams;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab/Tab;->loadUrl(Lcom/sec/android/app/sbrowser/tab/LoadUrlParams;)V

    :cond_0
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->loadUrl(Ljava/lang/String;I)V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;I)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->loadUrl(Ljava/lang/String;ILjava/lang/String;ZI)V

    return-void
.end method

.method public notifyBitmapReceived()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mEventNotifier:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyBitmapReceived()V

    return-void
.end method

.method public notifyDidStartProvisionalLoadForFrame()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mEventNotifier:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyDidStartProvisionalLoadForFrame()V

    return-void
.end method

.method public notifyFaviconUpdated()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mEventNotifier:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyFaviconUpdated()V

    return-void
.end method

.method public notifyThumbnailCreated(ILandroid/graphics/Bitmap;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mEventNotifier:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyTabThumbnailCreated(ILandroid/graphics/Bitmap;)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->onBackPressed()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onCloseContents()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->closeContents()V

    return-void
.end method

.method public onDeviceStateChanged()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->onDeviceStateChanged()V

    :cond_0
    return-void
.end method

.method public onDidNavigateMainFrame(Ljava/lang/String;Ljava/lang/String;ZZI)V
    .locals 0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->setIsRenderViewReady(Z)V

    return-void
.end method

.method public onDidStartProvisionalLoadForFrame(ZLjava/lang/String;ZZ)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->isClosed()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iput-boolean p4, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mIsSameDocument:Z

    if-eqz p4, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mIsLoading:Z

    return-void
.end method

.method public onExtractTextEnded()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mMainViewTabCallback:Lcom/sec/android/app/sbrowser/sbrowser_tab/MainViewTabCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/MainViewTabCallback;->onExtractTextEnded()V

    :cond_0
    return-void
.end method

.method public onExtractTextStarted()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mMainViewTabCallback:Lcom/sec/android/app/sbrowser/sbrowser_tab/MainViewTabCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/MainViewTabCallback;->onExtractTextStarted()V

    :cond_0
    return-void
.end method

.method public onFaviconUpdated()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/ColorUtils;->getDominantColor(Landroid/graphics/Bitmap;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mFaviconDominantColor:I

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->notifyFaviconUpdated()V

    return-void
.end method

.method public onMainActivityRecreated(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/content/MutableContextWrapper;

    invoke-virtual {v0, p1}, Landroid/content/MutableContextWrapper;->setBaseContext(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mSmartTabDeleteDelegate:Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteDelegate;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->removeEventListener(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mSmartTabDeleteDelegate:Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteDelegate;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/tab/Tab;->removeObserver(Lcom/sec/android/app/sbrowser/tab/TabObserver;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mEventNotifier:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/tab/Tab;->removeObserver(Lcom/sec/android/app/sbrowser/tab/TabObserver;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/terrace/Terrace;->resetTopLevelNativeWindow(Landroid/content/Context;)V

    return-void
.end method

.method public onObjectCaptureEnded()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mMainViewTabCallback:Lcom/sec/android/app/sbrowser/sbrowser_tab/MainViewTabCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/MainViewTabCallback;->onObjectCaptureEnded()V

    :cond_0
    return-void
.end method

.method public onObjectCaptureStarted()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mMainViewTabCallback:Lcom/sec/android/app/sbrowser/sbrowser_tab/MainViewTabCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/MainViewTabCallback;->onObjectCaptureStarted()V

    :cond_0
    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab/Tab;->onPictureInPictureModeChanged(Z)V

    :cond_0
    return-void
.end method

.method public onReadyToShowTabAfterRecreate(Landroid/content/Context;)V
    .locals 9

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTabLaunchType:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

    iget v2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mId:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v4

    iget-boolean v6, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mIsLocked:Z

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mGroupName:Ljava/lang/String;

    iget v8, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mGroupColorId:I

    const/4 v5, 0x1

    move-object v0, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v8}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->initializeTab(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;ILandroid/content/Context;Lcom/sec/terrace/Terrace;ZZLjava/lang/String;I)V

    return-void
.end method

.method public onSetToCurrentTab(Z)V
    .locals 0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->showInfoBar()V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->show()V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->increaseVisitCount()V

    return-void
.end method

.method public onSetToNotCurrentTab(Z)V
    .locals 1

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->hideInfoBar()V

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isNativePage()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->hide()V

    :cond_1
    return-void
.end method

.method public onVideoAssistantEnabledChanged()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->onVideoAssistantEnabledChanged()V

    :cond_0
    return-void
.end method

.method public print()V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->resetPrint()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/sbrowser_tab/i;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/i;-><init>(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->startPrint()V

    :goto_0
    return-void
.end method

.method public recordLastShowTimestampMillis()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TimestampManager;->getInstance()Lcom/sec/android/app/sbrowser/sbrowser_tab/TimestampManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TimestampManager;->getTimestamp()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mLastShowTimestampMillis:J

    return-void
.end method

.method public reload()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->changeUserAgentIfNeeded(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->reload()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mEventNotifier:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyPageReload(Ljava/lang/String;)V

    return-void
.end method

.method public removeEventListener(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mEventNotifier:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->removeEventListener(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;)V

    return-void
.end method

.method public resetPrint()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->resetPrint()V

    return-void
.end method

.method public restoreFieldsFromState(Lcom/sec/terrace/TerraceState;)V
    .locals 4

    iget-object v0, p1, Lcom/sec/terrace/TerraceState;->openerAppId:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mAppAssociatedWith:Ljava/lang/String;

    iget v0, p1, Lcom/sec/terrace/TerraceState;->parentId:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mParentTabId:I

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mLastShowTimestampMillis:J

    iget-wide v2, p1, Lcom/sec/terrace/TerraceState;->timestampMillis:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iput-wide v2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mLastShowTimestampMillis:J

    :cond_0
    iget-object v0, p1, Lcom/sec/terrace/TerraceState;->contentsState:Lcom/sec/terrace/TerraceState$WebContentsState;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/sec/terrace/TerraceState;->getDisplayTitleFromState()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTitle:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public savePage()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/StatusUtil;->isSavedPageRunning()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/StatusUtil;->setIsSavedPageRunning(Z)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;->getSaveWebPageDirectoryPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->setSavePageDirectory(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->savePage()V

    :cond_3
    :goto_0
    return-void
.end method

.method public scrollBy(II)V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->getView()Landroid/view/ViewGroup;

    move-result-object p0

    if-eqz p0, :cond_1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/sbrowser_tab/j;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/j;-><init>(Ljava/lang/Object;III)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public selectLongPressedLink()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->selectText()V

    :cond_0
    return-void
.end method

.method public setAccessibilityEnabled(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->getView()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setAccessibilityEnabled(Landroid/view/ViewGroup;Z)V

    :cond_0
    return-void
.end method

.method public setActiveTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mActiveTime:J

    return-void
.end method

.method public setAppAssociatedWith(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mAppAssociatedWith:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setApplySettings()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->applySettings()V

    :cond_0
    return-void
.end method

.method public setConfirmedZoomValue(D)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mZoomFactor:Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;->setConfirmedZoomValue(D)V

    :cond_0
    return-void
.end method

.method public setContextMenuEnabled(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mContextMenuPopulator:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->setEnabled(Z)V

    return-void
.end method

.method public setContextMenuPopulator(Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mContextMenuPopulator:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab/Tab;->setContextMenuPopulator(Lcom/sec/terrace/TerraceContextMenuPopulator;)V

    return-void
.end method

.method public setCustomUserAgentIfNeeded(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab/Tab;->setCustomUserAgentIfNeeded(Z)V

    :cond_0
    return-void
.end method

.method public setDefaultFontSize(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/tab/Tab;->setDefaultFontSize(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->applySettings()V

    return-void
.end method

.method public setFaviconDominantColor(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mFaviconDominantColor:I

    return-void
.end method

.method public setGroupColorId(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mGroupColorId:I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mEventNotifier:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getTabId()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyTabGroupChanged(I)V

    return-void
.end method

.method public setGroupName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mGroupName:Ljava/lang/String;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mEventNotifier:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getTabId()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyTabGroupChanged(I)V

    return-void
.end method

.method public setImportance(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setImportance = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChildProcessConn"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab/Tab;->setImportance(Z)V

    :cond_0
    return-void
.end method

.method public setIsAnimating(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mIsAnimating:Z

    return-void
.end method

.method public setIsBitmapCaptureDelayed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mIsBitmapCaptureDelayed:Z

    return-void
.end method

.method public setIsLoading(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mIsLoading:Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mMainViewTabCallback:Lcom/sec/android/app/sbrowser/sbrowser_tab/MainViewTabCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/MainViewTabCallback;->onAIOptionItemsStatusChanged()V

    :cond_0
    return-void
.end method

.method public setIsLocked(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->isIncognito()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mIsLocked:Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mEventNotifier:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyTabIsLocked(Z)V

    return-void
.end method

.method public setIsRenderViewReady(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mIsRenderViewReady:Z

    return-void
.end method

.method public bridge synthetic setIsSavedReaderPage(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->setIsSavedReaderPage(Z)V

    return-void
.end method

.method public setIsTerraceStateDirty(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mIsTerraceStateDirty:Z

    return-void
.end method

.method public setJavaScriptBeforeClose(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mIsJavascriptEnabledBeforeClose:Z

    return-void
.end method

.method public setJavaScriptEnabled(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab/Tab;->setJavaScriptEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setMainViewPhoneCallback(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mEventHandler:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->setMainViewPhoneCallback(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V

    return-void
.end method

.method public setMainViewTabCallback(Lcom/sec/android/app/sbrowser/sbrowser_tab/MainViewTabCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mMainViewTabCallback:Lcom/sec/android/app/sbrowser/sbrowser_tab/MainViewTabCallback;

    return-void
.end method

.method public bridge synthetic setNativePageDelegate(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageDelegate;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->setNativePageDelegate(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageDelegate;)V

    return-void
.end method

.method public bridge synthetic setNativePageEarly(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->setNativePageEarly(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;)V

    return-void
.end method

.method public bridge synthetic setOriginalUrlForSavedPage(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->setOriginalUrlForSavedPage(Ljava/lang/String;)V

    return-void
.end method

.method public setParentTabId(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mParentTabId:I

    return-void
.end method

.method public bridge synthetic setParentalControlBlockedUrl(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->setParentalControlBlockedUrl(Ljava/lang/String;)V

    return-void
.end method

.method public setPendingLoadUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mPendingLoadUrl:Ljava/lang/String;

    return-void
.end method

.method public setRestoredZoomValue(DZDZ)V
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mZoomFactor:Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;

    if-nez v0, :cond_0

    return-void

    :cond_0
    move-wide v1, p1

    move v3, p3

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;->setRestoredZoomValue(DZDZ)V

    return-void
.end method

.method public setSplitMode(ZZ)V
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    iput p2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mSplitModeDirection:I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/terrace/Terrace;->setSplitMode(Z)V

    :cond_2
    return-void
.end method

.method public setSplitViewSize(II)V
    .locals 1

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isReaderView()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getReaderTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getReaderTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->setSplitViewSize(II)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab/Tab;->setSplitViewSize(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setTab(Lcom/sec/android/app/sbrowser/tab/Tab;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    return-void
.end method

.method public setTabLaunchType(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTabLaunchType:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

    return-void
.end method

.method public setTabLayout(Lcom/sec/android/app/sbrowser/tab/TabLayout;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab/Tab;->setTabLayout(Lcom/sec/android/app/sbrowser/tab/TabLayout;)V

    return-void
.end method

.method public setThemeColor(IZ)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab/Tab;->setThemeColor(IZ)V

    :cond_0
    return-void
.end method

.method public setTimestamp(J)V
    .locals 0

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mLastShowTimestampMillis:J

    return-void
.end method

.method public setTopControlsHeight(II)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTopControlsHeight:I

    iput p2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mBottomControlsHeight:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab/Tab;->setTopControlsHeight(II)V

    return-void
.end method

.method public setTopControlsHeight(IIZ)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTopControlsHeight:I

    iput p2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mBottomControlsHeight:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/tab/Tab;->setTopControlsHeight(IIZ)V

    return-void
.end method

.method public setUseDesktopUserAgent(ZZ)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setUseDesktopUserAgent, useDesktop: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isCurrentTab: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SBrowserTabBase"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isEditMode()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->exitEditMode(ZZ)V

    :cond_1
    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mIsTerraceStateDirty:Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mUserAgentOverrideManager:Lcom/sec/android/app/sbrowser/sbrowser_tab/UserAgentOverrideManager;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/UserAgentOverrideManager;->setUseDesktopUserAgent(ZZ)V

    return-void
.end method

.method public setUserAgentOption(ZII)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/UserAgentUtils;->isAutoSwitchUserAgentForMultiFold(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isFrontScreen()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mUserAgentOverrideManager:Lcom/sec/android/app/sbrowser/sbrowser_tab/UserAgentOverrideManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/sbrowser_tab/UserAgentOverrideManager;->setUserAgentOption(ZII)V

    return-void
.end method

.method public setVideoAssistantActivated(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab/Tab;->setVideoAssistantActivated(Z)V

    :cond_0
    return-void
.end method

.method public setVisitCount(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mVisitCount:I

    return-void
.end method

.method public setWebContentsXOffset(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab/Tab;->setWebContentsXOffset(I)V

    :cond_0
    return-void
.end method

.method public setZoomApplyToThisTabOnly(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mZoomFactor:Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;->setZoomApplyToThisTabOnly(Z)V

    :cond_0
    return-void
.end method

.method public bridge synthetic setZoomInfoBarAnchorView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->setZoomInfoBarAnchorView(Landroid/view/View;)V

    return-void
.end method

.method public setZoomValue(D)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mZoomFactor:Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;->setZoomValue(D)V

    :cond_0
    return-void
.end method

.method public shouldUseDesktopUserAgent()Z
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getUserAgentOption(Z)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    return v2

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getDesktopWebsiteEnabledForMultiFold()I

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isFrontScreen()Z

    move-result v0

    if-eqz v0, :cond_2

    return v3

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletLayout(Landroid/content/Context;)Z

    move-result p0

    return p0

    :cond_3
    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getUserAgentOption(Z)I

    move-result p0

    if-ne p0, v1, :cond_4

    goto :goto_1

    :cond_4
    move v2, v3

    :goto_1
    return v2
.end method

.method public show()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mIsHidden:Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTabActiveTimeManager:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabActiveTimeManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabActiveTimeManager;->recordTabActive(J)V

    return-void
.end method

.method public showZoomInfoBar(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mZoomFactor:Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;->showZoomInfoBar(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public startFinding(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab/Tab;->startFinding(Ljava/lang/String;Z)V

    return-void
.end method

.method public stopFinding()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->stopFinding(Z)V

    :cond_0
    return-void
.end method

.method public stopLoading()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->stopLoading()V

    :cond_0
    return-void
.end method

.method public stopMediaSession()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->stopMediaSession()V

    :cond_0
    return-void
.end method

.method public updateBrowserControlsState(IZ)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab/Tab;->updateBrowserControlsState(IZ)V

    :cond_0
    return-void
.end method

.method public updateIntent(Landroid/content/Intent;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mEventHandler:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventHandler;->updateIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public updateIsBookmarked(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/m;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, v1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/m;-><init>(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;Ljava/lang/String;I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkThread;->getBookmarkThread()Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkThread;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkThread;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateTitle()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mReservedPageDelegate:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabReservedPageDelegate;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabReservedPageDelegate;->getTitle(Lcom/sec/terrace/Terrace;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->updateTitle(Ljava/lang/String;)V

    return-void
.end method

.method public updateTitle(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTitle:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mIsTerraceStateDirty:Z

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mTitle:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mEventNotifier:Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyTitleUpdated(Ljava/lang/String;)V

    return-void
.end method

.method public updateZoomValue()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->mZoomFactor:Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;->updateZoomValue()V

    :cond_0
    return-void
.end method
