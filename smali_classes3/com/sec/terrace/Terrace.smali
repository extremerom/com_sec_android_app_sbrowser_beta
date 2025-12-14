.class public Lcom/sec/terrace/Terrace;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/Terrace$TerraceClient;,
        Lcom/sec/terrace/Terrace$BitmapRequestCallback;,
        Lcom/sec/terrace/Terrace$ReadbackPreference;,
        Lcom/sec/terrace/Terrace$Natives;,
        Lcom/sec/terrace/Terrace$InterceptNavigationDelegateImpl;,
        Lcom/sec/terrace/Terrace$TerraceObserver;,
        Lcom/sec/terrace/Terrace$InnerTextCallback;
    }
.end annotation


# instance fields
.field private mAddToHomescreenManager:Lcom/sec/terrace/browser/webapps/TinAddToHomescreenManager;

.field private mApplicationContext:Landroid/content/Context;

.field private mAutofillProvider:Lorg/chromium/components/autofill/AutofillProvider;

.field private mBitmapRequestHandler:Lcom/sec/terrace/content/browser/TinBitmapRequestHandler;

.field private mBoardingPassContextAwareEngineController:Lcom/sec/terrace/browser/context_aware_engine/TinBoardingPassContextAwareEngineController;

.field private mContextMenuPopulator:Lcom/sec/terrace/TerraceContextMenuPopulator;

.field private mCurrentInsetSupplier:Lorg/chromium/ui/base/ApplicationViewportInsetSupplier;

.field private mDragListener:Landroid/view/View$OnDragListener;

.field private mFavicon:Landroid/graphics/Bitmap;

.field private mFaviconHeight:I

.field private mFaviconUrl:Ljava/lang/String;

.field private mFaviconWidth:I

.field private mFindInPageBridge:Lorg/chromium/components/find_in_page/FindInPageBridge;

.field private mHasClosed:Z

.field private mInsetObserver:Lorg/chromium/base/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/Callback<",
            "Lorg/chromium/ui/base/ViewportInsets;",
            ">;"
        }
    .end annotation
.end field

.field private mInterceptNavigationDelegate:Lorg/chromium/components/navigation_interception/InterceptNavigationDelegate;

.field private mIsExtensionTerrace:Z

.field private mIsFullscreen:Z

.field private mIsHidden:Z

.field private mIsLoading:Z

.field private mIsSplitMode:Z

.field private mKnoxPolicySupported:Z

.field private mListenerCallback:Lcom/sec/terrace/TerraceListenerCallback;

.field private mLoadProgress:D

.field private mMediaSession:Lcom/sec/terrace/content/browser/media/TerraceMediaSession;

.field private mNativeTerrace:J

.field private mNavigationController:Lorg/chromium/content_public/browser/NavigationController;

.field private mNumPixel16DP:I

.field private final mObservers:Lorg/chromium/base/ObserverList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/ObserverList<",
            "Lcom/sec/terrace/Terrace$TerraceObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mTerraceClient:Lcom/sec/terrace/Terrace$TerraceClient;

.field private mTinAccountChooserDialogBridge:Lcom/sec/terrace/browser/password_manager/TinAccountChooserDialogBridge;

.field private mTinContentView:Lcom/sec/terrace/content/browser/TinContentView;

.field private mTinContentViewCore:Lcom/sec/terrace/content/browser/TinContentViewCore;

.field private mTinFaviconManager:Lcom/sec/terrace/browser/favicon/TinFaviconManager;

.field private final mUserDataHost:Lorg/chromium/base/UserDataHost;

.field private mViewAndroidDelegate:Lorg/chromium/ui/base/ViewAndroidDelegate;

.field private mVisualViewportInsetBottomPx:I

.field private mWasRenderProcessGone:Z

.field private mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

.field private mWebContentsObserver:Lorg/chromium/content_public/browser/WebContentsObserver;


# direct methods
.method public constructor <init>(JLorg/chromium/content_public/browser/WebContents;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/sec/terrace/TerraceListenerCallback;->EMPTY:Lcom/sec/terrace/TerraceListenerCallback;

    iput-object v0, p0, Lcom/sec/terrace/Terrace;->mListenerCallback:Lcom/sec/terrace/TerraceListenerCallback;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/terrace/Terrace;->mIsSplitMode:Z

    iput-boolean v0, p0, Lcom/sec/terrace/Terrace;->mHasClosed:Z

    new-instance v1, Lcom/sec/terrace/a;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/sec/terrace/a;-><init>(ILjava/lang/Object;)V

    iput-object v1, p0, Lcom/sec/terrace/Terrace;->mInsetObserver:Lorg/chromium/base/Callback;

    iput-boolean v0, p0, Lcom/sec/terrace/Terrace;->mIsExtensionTerrace:Z

    new-instance v0, Lorg/chromium/base/UserDataHost;

    invoke-direct {v0}, Lorg/chromium/base/UserDataHost;-><init>()V

    iput-object v0, p0, Lcom/sec/terrace/Terrace;->mUserDataHost:Lorg/chromium/base/UserDataHost;

    new-instance v0, Lorg/chromium/base/ObserverList;

    invoke-direct {v0}, Lorg/chromium/base/ObserverList;-><init>()V

    iput-object v0, p0, Lcom/sec/terrace/Terrace;->mObservers:Lorg/chromium/base/ObserverList;

    iput-wide p1, p0, Lcom/sec/terrace/Terrace;->mNativeTerrace:J

    check-cast p3, Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    iput-object p3, p0, Lcom/sec/terrace/Terrace;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-virtual {p3}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getNavigationController()Lorg/chromium/content_public/browser/NavigationController;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/terrace/Terrace;->mNavigationController:Lorg/chromium/content_public/browser/NavigationController;

    new-instance p1, Lcom/sec/terrace/content/browser/TinBitmapRequestHandler;

    invoke-direct {p1}, Lcom/sec/terrace/content/browser/TinBitmapRequestHandler;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/Terrace;->mBitmapRequestHandler:Lcom/sec/terrace/content/browser/TinBitmapRequestHandler;

    new-instance p1, Lcom/sec/terrace/browser/favicon/TinFaviconManager;

    invoke-direct {p1}, Lcom/sec/terrace/browser/favicon/TinFaviconManager;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/Terrace;->mTinFaviconManager:Lcom/sec/terrace/browser/favicon/TinFaviconManager;

    iget-object p2, p0, Lcom/sec/terrace/Terrace;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-virtual {p1, p2}, Lcom/sec/terrace/browser/favicon/TinFaviconManager;->initFaviconDriver(Lorg/chromium/content_public/browser/WebContents;)V

    new-instance p1, Lorg/chromium/components/find_in_page/FindInPageBridge;

    iget-object p2, p0, Lcom/sec/terrace/Terrace;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-direct {p1, p2}, Lorg/chromium/components/find_in_page/FindInPageBridge;-><init>(Lorg/chromium/content_public/browser/WebContents;)V

    iput-object p1, p0, Lcom/sec/terrace/Terrace;->mFindInPageBridge:Lorg/chromium/components/find_in_page/FindInPageBridge;

    iget-object p1, p0, Lcom/sec/terrace/Terrace;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-static {p1}, Lcom/sec/terrace/content/browser/media/TerraceMediaSession;->createTerraceMediaSession(Lorg/chromium/content_public/browser/WebContents;)Lcom/sec/terrace/content/browser/media/TerraceMediaSession;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/terrace/Terrace;->mMediaSession:Lcom/sec/terrace/content/browser/media/TerraceMediaSession;

    new-instance p1, Lcom/sec/terrace/browser/context_aware_engine/TinBoardingPassContextAwareEngineController;

    iget-object p2, p0, Lcom/sec/terrace/Terrace;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-direct {p1, p2}, Lcom/sec/terrace/browser/context_aware_engine/TinBoardingPassContextAwareEngineController;-><init>(Lorg/chromium/content_public/browser/WebContents;)V

    iput-object p1, p0, Lcom/sec/terrace/Terrace;->mBoardingPassContextAwareEngineController:Lcom/sec/terrace/browser/context_aware_engine/TinBoardingPassContextAwareEngineController;

    return-void
.end method

.method private constructor <init>(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/sec/terrace/TerraceListenerCallback;->EMPTY:Lcom/sec/terrace/TerraceListenerCallback;

    iput-object v0, p0, Lcom/sec/terrace/Terrace;->mListenerCallback:Lcom/sec/terrace/TerraceListenerCallback;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/terrace/Terrace;->mIsSplitMode:Z

    iput-boolean v0, p0, Lcom/sec/terrace/Terrace;->mHasClosed:Z

    new-instance v1, Lcom/sec/terrace/a;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/sec/terrace/a;-><init>(ILjava/lang/Object;)V

    iput-object v1, p0, Lcom/sec/terrace/Terrace;->mInsetObserver:Lorg/chromium/base/Callback;

    iput-boolean v0, p0, Lcom/sec/terrace/Terrace;->mIsExtensionTerrace:Z

    new-instance v0, Lorg/chromium/base/UserDataHost;

    invoke-direct {v0}, Lorg/chromium/base/UserDataHost;-><init>()V

    iput-object v0, p0, Lcom/sec/terrace/Terrace;->mUserDataHost:Lorg/chromium/base/UserDataHost;

    new-instance v0, Lorg/chromium/base/ObserverList;

    invoke-direct {v0}, Lorg/chromium/base/ObserverList;-><init>()V

    iput-object v0, p0, Lcom/sec/terrace/Terrace;->mObservers:Lorg/chromium/base/ObserverList;

    check-cast p1, Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    iput-object p1, p0, Lcom/sec/terrace/Terrace;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    return-void
.end method

.method public static synthetic a(Lcom/sec/terrace/Terrace;Lorg/chromium/ui/base/ViewportInsets;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/terrace/Terrace;->lambda$new$0(Lorg/chromium/ui/base/ViewportInsets;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/terrace/Terrace$InnerTextCallback;Ljava/util/Optional;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/terrace/Terrace;->lambda$getInnerText$2(Lcom/sec/terrace/Terrace$InnerTextCallback;Ljava/util/Optional;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/terrace/Terrace;JLjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/sec/terrace/Terrace;->lambda$processImageTranslation$1(JLjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private static createFindNotificationDetails(ILandroid/graphics/Rect;IZ)Lcom/sec/terrace/browser/findinpage/TerraceFindNotificationDetails;
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lcom/sec/terrace/browser/findinpage/TerraceFindNotificationDetails;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sec/terrace/browser/findinpage/TerraceFindNotificationDetails;-><init>(ILandroid/graphics/Rect;IZ)V

    return-object v0
.end method

.method public static createForTesting(JLorg/chromium/content_public/browser/WebContents;)Lcom/sec/terrace/Terrace;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    new-instance v0, Lcom/sec/terrace/Terrace;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/terrace/Terrace;-><init>(JLorg/chromium/content_public/browser/WebContents;)V

    return-object v0
.end method

.method public static createForTesting(Lorg/chromium/content_public/browser/WebContents;)Lcom/sec/terrace/Terrace;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    new-instance v0, Lcom/sec/terrace/Terrace;

    invoke-direct {v0, p0}, Lcom/sec/terrace/Terrace;-><init>(Lorg/chromium/content_public/browser/WebContents;)V

    return-object v0
.end method

.method private static createRect(IIII)Landroid/graphics/Rect;
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method private createViewAndroidDelegate()Lorg/chromium/ui/base/ViewAndroidDelegate;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/sec/terrace/Terrace$12;

    iget-object v1, p0, Lcom/sec/terrace/Terrace;->mTinContentView:Lcom/sec/terrace/content/browser/TinContentView;

    invoke-direct {v0, p0, v1}, Lcom/sec/terrace/Terrace$12;-><init>(Lcom/sec/terrace/Terrace;Landroid/view/ViewGroup;)V

    return-object v0
.end method

.method public static bridge synthetic d(Lcom/sec/terrace/Terrace;)Lcom/sec/terrace/TerraceContextMenuPopulator;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mContextMenuPopulator:Lcom/sec/terrace/TerraceContextMenuPopulator;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/sec/terrace/Terrace;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mFaviconUrl:Ljava/lang/String;

    return-object p0
.end method

.method private enableUiControl(IZ)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mListenerCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0, p1, p2}, Lcom/sec/terrace/TerraceListenerCallback;->enableUiControl(IZ)V

    return-void
.end method

.method public static bridge synthetic f(Lcom/sec/terrace/Terrace;)Lcom/sec/terrace/TerraceListenerCallback;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mListenerCallback:Lcom/sec/terrace/TerraceListenerCallback;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/sec/terrace/Terrace;)Lorg/chromium/content_public/browser/NavigationController;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mNavigationController:Lorg/chromium/content_public/browser/NavigationController;

    return-object p0
.end method

.method private getBottomShownPix()F
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mTinContentViewCore:Lcom/sec/terrace/content/browser/TinContentViewCore;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getBottomShownPix()I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method private getContentOffsetYPix()F
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mTinContentViewCore:Lcom/sec/terrace/content/browser/TinContentViewCore;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getTopShownPix()I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method public static bridge synthetic h(Lcom/sec/terrace/Terrace;)I
    .locals 0

    iget p0, p0, Lcom/sec/terrace/Terrace;->mNumPixel16DP:I

    return p0
.end method

.method private handleDWIGestureEventSALogging(Z)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->isIncognito()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "202"

    goto :goto_0

    :cond_0
    const-string p0, "201"

    :goto_0
    if-eqz p1, :cond_1

    const-string p1, "1260"

    goto :goto_1

    :cond_1
    const-string p1, "1261"

    :goto_1
    invoke-static {p0, p1}, Lcom/sec/terrace/browser/TinSALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private handleMediaKey(Landroid/view/KeyEvent;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p0

    const/16 v0, 0x4f

    if-eq p0, v0, :cond_0

    const/16 v0, 0xde

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    goto :goto_0

    :cond_0
    :pswitch_0
    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x55
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private handleSelectionNotAllowed(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getWebContainerView()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getWebContainerView()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/sec/terrace/TerraceHelper;->showSelectionNotAllowedMessage(Landroid/view/View;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static bridge synthetic i(Lcom/sec/terrace/Terrace;)Lcom/sec/terrace/Terrace$TerraceClient;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mTerraceClient:Lcom/sec/terrace/Terrace$TerraceClient;

    return-object p0
.end method

.method private initializeAutofillProviderIfNecessary(Lcom/sec/terrace/content/browser/TinSelectionActionMenuDelegate;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/terrace/Terrace;->mAutofillProvider:Lorg/chromium/components/autofill/AutofillProvider;

    if-nez v0, :cond_0

    new-instance p1, Lorg/chromium/components/autofill/AutofillProvider;

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/terrace/Terrace;->mTinContentView:Lcom/sec/terrace/content/browser/TinContentView;

    iget-object v2, p0, Lcom/sec/terrace/Terrace;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    const-string v3, "TerraceView"

    invoke-direct {p1, v0, v1, v2, v3}, Lorg/chromium/components/autofill/AutofillProvider;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lorg/chromium/content_public/browser/WebContents;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/terrace/Terrace;->mAutofillProvider:Lorg/chromium/components/autofill/AutofillProvider;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/terrace/Terrace;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-virtual {v0, v1}, Lorg/chromium/components/autofill/AutofillProvider;->setWebContents(Lorg/chromium/content_public/browser/WebContents;)V

    new-instance v0, Lorg/chromium/components/autofill/AutofillSelectionMenuItemHelper;

    iget-object v1, p0, Lcom/sec/terrace/Terrace;->mApplicationContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/terrace/Terrace;->mAutofillProvider:Lorg/chromium/components/autofill/AutofillProvider;

    invoke-direct {v0, v1, v2}, Lorg/chromium/components/autofill/AutofillSelectionMenuItemHelper;-><init>(Landroid/content/Context;Lorg/chromium/components/autofill/AutofillProvider;)V

    invoke-virtual {p1, v0}, Lcom/sec/terrace/content/browser/TinSelectionActionMenuDelegate;->setAutofillSelectionMenuItemHelper(Lorg/chromium/components/autofill/AutofillSelectionMenuItemHelper;)V

    :goto_0
    invoke-static {}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->getPersonalDataSyncSetFlag()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/terrace/Terrace;->setImportantForAutofillForVirtualView(Z)V

    return-void
.end method

.method private isIdealFaviconSize(II)Z
    .locals 0

    iget p0, p0, Lcom/sec/terrace/Terrace;->mNumPixel16DP:I

    if-ne p1, p0, :cond_0

    if-ne p2, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isPictureInPictureEnabled()Z
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mApplicationContext:Landroid/content/Context;

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/terrace/content/browser/pip/TinPictureInPicture;->isEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static bridge synthetic j(Lcom/sec/terrace/Terrace;)Lcom/sec/terrace/content/browser/TinContentViewCore;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mTinContentViewCore:Lcom/sec/terrace/content/browser/TinContentViewCore;

    return-object p0
.end method

.method public static bridge synthetic k(Lcom/sec/terrace/Terrace;)I
    .locals 0

    iget p0, p0, Lcom/sec/terrace/Terrace;->mVisualViewportInsetBottomPx:I

    return p0
.end method

.method public static bridge synthetic l(Lcom/sec/terrace/Terrace;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/terrace/Terrace;->mWasRenderProcessGone:Z

    return p0
.end method

.method private static synthetic lambda$getInnerText$2(Lcom/sec/terrace/Terrace$InnerTextCallback;Ljava/util/Optional;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/terrace/Terrace$InnerTextCallback;->onResult(Ljava/util/Optional;)V

    return-void
.end method

.method private synthetic lambda$new$0(Lorg/chromium/ui/base/ViewportInsets;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/Terrace;->updateVisualViewportBottomInset()V

    return-void
.end method

.method private synthetic lambda$processImageTranslation$1(JLjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 9

    invoke-static {}, Lcom/sec/terrace/TerraceJni;->get()Lcom/sec/terrace/Terrace$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/Terrace;->mNativeTerrace:J

    move-object v3, p0

    move-wide v4, p1

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-interface/range {v0 .. v8}, Lcom/sec/terrace/Terrace$Natives;->onProcessImageTranslation(JLcom/sec/terrace/Terrace;JLjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static bridge synthetic m(Lcom/sec/terrace/Terrace;)Lcom/sec/terrace/content/browser/TinWebContentsImpl;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    return-object p0
.end method

.method public static bridge synthetic n(Lcom/sec/terrace/Terrace;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/Terrace;->mFavicon:Landroid/graphics/Bitmap;

    return-void
.end method

.method private navigationStateChanged(I)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/terrace/Terrace;->mListenerCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {v0}, Lcom/sec/terrace/TerraceListenerCallback;->onNavigationStateChangedUpdateTitle()V

    :cond_0
    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mListenerCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0}, Lcom/sec/terrace/TerraceListenerCallback;->onNavigationStateChangedUpdateUrl()V

    :cond_1
    return-void
.end method

.method private notifyDidStartNavigation(Lorg/chromium/content_public/browser/NavigationHandle;)V
    .locals 1

    iget-object p1, p0, Lcom/sec/terrace/Terrace;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {p1}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/terrace/Terrace$TerraceObserver;

    invoke-interface {v0, p0}, Lcom/sec/terrace/Terrace$TerraceObserver;->onDidStartNavigation(Lcom/sec/terrace/Terrace;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyExitFullScreenMode()V
    .locals 2

    iget-object v0, p0, Lcom/sec/terrace/Terrace;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/terrace/Terrace$TerraceObserver;

    invoke-interface {v1, p0}, Lcom/sec/terrace/Terrace$TerraceObserver;->onExitFullscreenMode(Lcom/sec/terrace/Terrace;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static bridge synthetic o(Lcom/sec/terrace/Terrace;I)V
    .locals 0

    iput p1, p0, Lcom/sec/terrace/Terrace;->mFaviconHeight:I

    return-void
.end method

.method private onAddNewContents(JLorg/chromium/content_public/browser/WebContents;)Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lcom/sec/terrace/Terrace;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/terrace/Terrace;-><init>(JLorg/chromium/content_public/browser/WebContents;)V

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/sec/terrace/TerraceHelper;->initWebContentsHelpers(Lcom/sec/terrace/Terrace;)V

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mTerraceClient:Lcom/sec/terrace/Terrace$TerraceClient;

    invoke-interface {p0, v0}, Lcom/sec/terrace/Terrace$TerraceClient;->onCreateTerraceForNewContents(Lcom/sec/terrace/Terrace;)V

    return-object v0
.end method

.method private onContentsZoomChange(Z)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mListenerCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0, p1}, Lcom/sec/terrace/TerraceListenerCallback;->onContentsZoomChange(Z)V

    return-void
.end method

.method private onDidRetrieveWebState(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lcom/sec/terrace/Terrace;->mListenerCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mListenerCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0, p1}, Lcom/sec/terrace/TerraceListenerCallback;->onDidRetrieveWebState(Ljava/lang/String;)V

    return-void
.end method

.method private static onEvaluateJavaScriptResult(Ljava/lang/String;Lcom/sec/terrace/TerraceJavaScriptCallback;)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-interface {p1, p0}, Lcom/sec/terrace/TerraceJavaScriptCallback;->handleJavaScriptResult(Ljava/lang/String;)V

    return-void
.end method

.method private onImageResourceLoadComplete(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lcom/sec/terrace/Terrace;->mListenerCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mListenerCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0, p1}, Lcom/sec/terrace/TerraceListenerCallback;->onImageResourceLoadComplete(Ljava/lang/String;)V

    return-void
.end method

.method private onLoadProgressChanged(D)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lcom/sec/terrace/Terrace;->mListenerCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {v0, p1, p2}, Lcom/sec/terrace/TerraceListenerCallback;->onLoadProgressChanged(D)V

    iput-wide p1, p0, Lcom/sec/terrace/Terrace;->mLoadProgress:D

    return-void
.end method

.method private onUpdateUrl(Ljava/lang/String;)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mListenerCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0, p1}, Lcom/sec/terrace/TerraceListenerCallback;->onUpdateUrl(Ljava/lang/String;)V

    return-void
.end method

.method private onWebApkFinishedInstalled(I)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lcom/sec/terrace/Terrace;->mListenerCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mListenerCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0, p1}, Lcom/sec/terrace/TerraceListenerCallback;->onWebApkFinishedInstalled(I)V

    return-void
.end method

.method private openURLFromTerrace(Ljava/lang/String;Ljava/lang/String;Lorg/chromium/content_public/common/ResourceRequestBody;IZLorg/chromium/url/Origin;Z)V
    .locals 7
    .param p6    # Lorg/chromium/url/Origin;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const/4 p3, 0x3

    if-ne p4, p3, :cond_0

    iget-object p3, p0, Lcom/sec/terrace/Terrace;->mTerraceClient:Lcom/sec/terrace/Terrace$TerraceClient;

    if-eqz p3, :cond_0

    invoke-interface {p3}, Lcom/sec/terrace/Terrace$TerraceClient;->closeExtensionPopup()V

    :cond_0
    iget-object v0, p0, Lcom/sec/terrace/Terrace;->mListenerCallback:Lcom/sec/terrace/TerraceListenerCallback;

    new-instance v5, Lcom/sec/terrace/TerraceOrigin;

    invoke-direct {v5, p6}, Lcom/sec/terrace/TerraceOrigin;-><init>(Lorg/chromium/url/Origin;)V

    move-object v1, p1

    move-object v2, p2

    move v3, p4

    move v4, p5

    move v6, p7

    invoke-interface/range {v0 .. v6}, Lcom/sec/terrace/TerraceListenerCallback;->onOpenNewTab(Ljava/lang/String;Ljava/lang/String;IZLcom/sec/terrace/TerraceOrigin;Z)V

    return-void
.end method

.method public static bridge synthetic p(Lcom/sec/terrace/Terrace;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/Terrace;->mFaviconUrl:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic q(Lcom/sec/terrace/Terrace;I)V
    .locals 0

    iput p1, p0, Lcom/sec/terrace/Terrace;->mFaviconWidth:I

    return-void
.end method

.method public static bridge synthetic r(Lcom/sec/terrace/Terrace;Lcom/sec/terrace/content/browser/media/TerraceMediaSession;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/Terrace;->mMediaSession:Lcom/sec/terrace/content/browser/media/TerraceMediaSession;

    return-void
.end method

.method private resetHoverCursor()V
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/Terrace;->mNativeTerrace:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/TerraceJni;->get()Lcom/sec/terrace/Terrace$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/Terrace;->mNativeTerrace:J

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/terrace/Terrace$Natives;->resetHoverCursor(JLcom/sec/terrace/Terrace;)V

    :cond_0
    return-void
.end method

.method private restoreIfNeeded()V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mNavigationController:Lorg/chromium/content_public/browser/NavigationController;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/chromium/content_public/browser/NavigationController;->loadIfNecessary()V

    :cond_0
    return-void
.end method

.method public static bridge synthetic s(Lcom/sec/terrace/Terrace;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/terrace/Terrace;->mWasRenderProcessGone:Z

    return-void
.end method

.method private setNeedsReload()V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mNavigationController:Lorg/chromium/content_public/browser/NavigationController;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/chromium/content_public/browser/NavigationController;->setNeedsReload()V

    :cond_0
    return-void
.end method

.method private startContentIntent(Ljava/lang/String;Z)V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lcom/sec/terrace/Terrace;->mListenerCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    const/4 v0, 0x1

    :try_start_0
    invoke-static {p1, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "geo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "tel"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "mailto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "Invalid URI scheme "

    const-string p1, "Terrace"

    invoke-static {p0, v0, p1}, LV0/c;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/terrace/Terrace;->mListenerCallback:Lcom/sec/terrace/TerraceListenerCallback;

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mApplicationContext:Landroid/content/Context;

    invoke-interface {v0, p0, p1, p2}, Lcom/sec/terrace/TerraceListenerCallback;->onStartContentIntent(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private stopSwipeRefreshHandler()V
    .locals 0

    invoke-static {p0}, Lcom/sec/terrace/browser/TinSwipeRefreshHandler;->get(Lcom/sec/terrace/Terrace;)Lcom/sec/terrace/browser/TinSwipeRefreshHandler;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/TinSwipeRefreshHandler;->didStopRefreshing()V

    :cond_0
    return-void
.end method

.method public static bridge synthetic t(Lcom/sec/terrace/Terrace;)F
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/Terrace;->getBottomShownPix()F

    move-result p0

    return p0
.end method

.method private takeFocus(Z)Z
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mListenerCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0, p1}, Lcom/sec/terrace/TerraceListenerCallback;->onTakeFocus(Z)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic u(Lcom/sec/terrace/Terrace;Lorg/chromium/content_public/browser/NavigationHandle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/terrace/Terrace;->notifyDidStartNavigation(Lorg/chromium/content_public/browser/NavigationHandle;)V

    return-void
.end method

.method private updateVirtualKeyboardMode(I)V
    .locals 0
    .param p1    # I
        .annotation build Lorg/chromium/ui/mojom/VirtualKeyboardMode$EnumType;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mTinContentViewCore:Lcom/sec/terrace/content/browser/TinContentViewCore;

    invoke-virtual {p0, p1}, Lcom/sec/terrace/content/browser/TinContentViewCore;->updateVirtualKeyboardMode(I)V

    return-void
.end method

.method private updateVisualViewportBottomInset()V
    .locals 2

    iget-object v0, p0, Lcom/sec/terrace/Terrace;->mCurrentInsetSupplier:Lorg/chromium/ui/base/ApplicationViewportInsetSupplier;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/chromium/base/supplier/ObservableSupplierImpl;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/ui/base/ViewportInsets;

    iget v0, v0, Lorg/chromium/ui/base/ViewportInsets;->visualViewportBottomInset:I

    :goto_0
    iget v1, p0, Lcom/sec/terrace/Terrace;->mVisualViewportInsetBottomPx:I

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    iput v0, p0, Lcom/sec/terrace/Terrace;->mVisualViewportInsetBottomPx:I

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getWebContents()Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getWebContents()Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getRenderWidgetHostView()Lorg/chromium/content/browser/RenderWidgetHostViewImpl;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getWebContents()Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getRenderWidgetHostView()Lorg/chromium/content/browser/RenderWidgetHostViewImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/content/browser/RenderWidgetHostViewImpl;->onViewportInsetBottomChanged()V

    :cond_3
    :goto_1
    return-void
.end method

.method public static bridge synthetic v(Lcom/sec/terrace/Terrace;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/Terrace;->resetHoverCursor()V

    return-void
.end method

.method public static bridge synthetic w(Lcom/sec/terrace/Terrace;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/Terrace;->stopSwipeRefreshHandler()V

    return-void
.end method

.method public static bridge synthetic x(Lcom/sec/terrace/Terrace;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/terrace/Terrace;->updateVirtualKeyboardMode(I)V

    return-void
.end method


# virtual methods
.method public activateContents()V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lcom/sec/terrace/Terrace;->mListenerCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mListenerCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0}, Lcom/sec/terrace/TerraceListenerCallback;->activateContents()V

    return-void
.end method

.method public addJavaScriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getWebContents()Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getWebContents()Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/content_public/browser/JavascriptInjector;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content_public/browser/JavascriptInjector;

    move-result-object p0

    const-class v0, Lcom/sec/terrace/browser/JavascriptInterface;

    invoke-interface {p0, p1, p2, v0}, Lorg/chromium/content_public/browser/JavascriptInjector;->addPossiblyUnsafeInterface(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public addObserver(Lcom/sec/terrace/Terrace$TerraceObserver;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {p0, p1}, Lorg/chromium/base/ObserverList;->addObserver(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnDragListener(Landroid/view/View$OnDragListener;)V
    .locals 2
    .param p1    # Landroid/view/View$OnDragListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/terrace/Terrace;->mTinContentView:Lcom/sec/terrace/content/browser/TinContentView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/terrace/Terrace;->mDragListener:Landroid/view/View$OnDragListener;

    if-ne v1, p1, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/sec/terrace/Terrace;->mDragListener:Landroid/view/View$OnDragListener;

    invoke-virtual {v0, p1}, Lorg/chromium/components/embedder_support/view/ContentView;->addOnDragListener(Landroid/view/View$OnDragListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public addToHomescreen()V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/terrace/Terrace;->addToHomescreen(II)V

    return-void
.end method

.method public addToHomescreen(II)V
    .locals 2

    iget-object v0, p0, Lcom/sec/terrace/Terrace;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    const-string v0, "Terrace"

    const-string v1, "addShortcut"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/terrace/Terrace;->mAddToHomescreenManager:Lcom/sec/terrace/browser/webapps/TinAddToHomescreenManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/terrace/browser/webapps/TinAddToHomescreenManager;

    iget-object v1, p0, Lcom/sec/terrace/Terrace;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-direct {v0, v1}, Lcom/sec/terrace/browser/webapps/TinAddToHomescreenManager;-><init>(Lorg/chromium/content_public/browser/WebContents;)V

    iput-object v0, p0, Lcom/sec/terrace/Terrace;->mAddToHomescreenManager:Lcom/sec/terrace/browser/webapps/TinAddToHomescreenManager;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/terrace/Terrace;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".webapp.WebappManager.ACTION_START_WEBAPP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper;->setFullScreenAction(Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mAddToHomescreenManager:Lcom/sec/terrace/browser/webapps/TinAddToHomescreenManager;

    invoke-virtual {p0, p1, p2}, Lcom/sec/terrace/browser/webapps/TinAddToHomescreenManager;->start(II)V

    return-void
.end method

.method public applySettings()V
    .locals 4

    iget-object v0, p0, Lcom/sec/terrace/Terrace;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/sec/terrace/Terrace;->mNativeTerrace:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/TerraceJni;->get()Lcom/sec/terrace/Terrace$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/Terrace;->mNativeTerrace:J

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/terrace/Terrace$Natives;->applySettings(JLcom/sec/terrace/Terrace;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public applyVirtualCard(Z)V
    .locals 3

    invoke-static {}, Lcom/sec/terrace/TerraceJni;->get()Lcom/sec/terrace/Terrace$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/Terrace;->mNativeTerrace:J

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/sec/terrace/Terrace$Natives;->applyVirtualCard(JLcom/sec/terrace/Terrace;Z)V

    return-void
.end method

.method public autofill(Landroid/util/SparseArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/view/autofill/AutofillValue;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Terrace"

    const-string v1, "Android autofill service requests to autofill values"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mAutofillProvider:Lorg/chromium/components/autofill/AutofillProvider;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lorg/chromium/components/autofill/AutofillProvider;->autofill(Landroid/util/SparseArray;)V

    :cond_0
    return-void
.end method

.method public canGoBack()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mNavigationController:Lorg/chromium/content_public/browser/NavigationController;

    invoke-interface {p0}, Lorg/chromium/content_public/browser/NavigationController;->canGoBack()Z

    move-result p0

    return p0
.end method

.method public canGoForward()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mNavigationController:Lorg/chromium/content_public/browser/NavigationController;

    invoke-interface {p0}, Lorg/chromium/content_public/browser/NavigationController;->canGoForward()Z

    move-result p0

    return p0
.end method

.method public cancelImageOrLinkDrag()V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getDragDropHandler()Lcom/sec/terrace/content/browser/TinDragDropHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getDragDropHandler()Lcom/sec/terrace/content/browser/TinDragDropHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinDragDropHandler;->cancelImageOrLinkDrag()V

    :cond_0
    return-void
.end method

.method public cancelPendingReload()V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mNavigationController:Lorg/chromium/content_public/browser/NavigationController;

    invoke-interface {p0}, Lorg/chromium/content_public/browser/NavigationController;->cancelPendingReload()V

    return-void
.end method

.method public cancelVirtualView()V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mAutofillProvider:Lorg/chromium/components/autofill/AutofillProvider;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/components/autofill/AutofillProvider;->forceCancelVirtualView()V

    :cond_0
    return-void
.end method

.method public checkAutofillServiceIsSPass()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mAutofillProvider:Lorg/chromium/components/autofill/AutofillProvider;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/components/autofill/AutofillProvider;->checkAutofillServiceIsSPass()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public clearTopLevelNativeWindow()V
    .locals 1

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->setTopLevelNativeWindow(Lorg/chromium/ui/base/WindowAndroid;)V

    return-void
.end method

.method public close()V
    .locals 5
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-boolean v0, p0, Lcom/sec/terrace/Terrace;->mHasClosed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/terrace/Terrace;->mHasClosed:Z

    iget-object v1, p0, Lcom/sec/terrace/Terrace;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Terrace close() has been received for WebContents:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/terrace/Terrace;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Terrace"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->hide()V

    sget-object v1, Lcom/sec/terrace/TerraceListenerCallback;->EMPTY:Lcom/sec/terrace/TerraceListenerCallback;

    iput-object v1, p0, Lcom/sec/terrace/Terrace;->mListenerCallback:Lcom/sec/terrace/TerraceListenerCallback;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/terrace/Terrace;->mContextMenuPopulator:Lcom/sec/terrace/TerraceContextMenuPopulator;

    iget-object v2, p0, Lcom/sec/terrace/Terrace;->mAutofillProvider:Lorg/chromium/components/autofill/AutofillProvider;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/chromium/components/autofill/AutofillProvider;->destroy()V

    iput-object v1, p0, Lcom/sec/terrace/Terrace;->mAutofillProvider:Lorg/chromium/components/autofill/AutofillProvider;

    :cond_2
    iget-object v2, p0, Lcom/sec/terrace/Terrace;->mTinFaviconManager:Lcom/sec/terrace/browser/favicon/TinFaviconManager;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/sec/terrace/browser/favicon/TinFaviconManager;->destroyFaviconDriver()V

    iget-object v2, p0, Lcom/sec/terrace/Terrace;->mTinFaviconManager:Lcom/sec/terrace/browser/favicon/TinFaviconManager;

    invoke-virtual {v2}, Lcom/sec/terrace/browser/favicon/TinFaviconManager;->destroy()V

    iput-object v1, p0, Lcom/sec/terrace/Terrace;->mTinFaviconManager:Lcom/sec/terrace/browser/favicon/TinFaviconManager;

    :cond_3
    iget-object v2, p0, Lcom/sec/terrace/Terrace;->mFindInPageBridge:Lorg/chromium/components/find_in_page/FindInPageBridge;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lorg/chromium/components/find_in_page/FindInPageBridge;->destroy()V

    iput-object v1, p0, Lcom/sec/terrace/Terrace;->mFindInPageBridge:Lorg/chromium/components/find_in_page/FindInPageBridge;

    :cond_4
    iget-object v2, p0, Lcom/sec/terrace/Terrace;->mBitmapRequestHandler:Lcom/sec/terrace/content/browser/TinBitmapRequestHandler;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/sec/terrace/content/browser/TinBitmapRequestHandler;->destroy()V

    iput-object v1, p0, Lcom/sec/terrace/Terrace;->mBitmapRequestHandler:Lcom/sec/terrace/content/browser/TinBitmapRequestHandler;

    :cond_5
    iget-object v2, p0, Lcom/sec/terrace/Terrace;->mWebContentsObserver:Lorg/chromium/content_public/browser/WebContentsObserver;

    if-eqz v2, :cond_6

    invoke-virtual {v2, v1}, Lorg/chromium/content_public/browser/WebContentsObserver;->observe(Lorg/chromium/content_public/browser/WebContents;)V

    iput-object v1, p0, Lcom/sec/terrace/Terrace;->mWebContentsObserver:Lorg/chromium/content_public/browser/WebContentsObserver;

    :cond_6
    invoke-static {p0}, Lcom/sec/terrace/browser/TinSwipeRefreshHandler;->get(Lcom/sec/terrace/Terrace;)Lcom/sec/terrace/browser/TinSwipeRefreshHandler;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/sec/terrace/browser/TinSwipeRefreshHandler;->resetAndRemoveLayout()V

    :cond_7
    iget-object v2, p0, Lcom/sec/terrace/Terrace;->mAddToHomescreenManager:Lcom/sec/terrace/browser/webapps/TinAddToHomescreenManager;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/sec/terrace/browser/webapps/TinAddToHomescreenManager;->destroy()V

    iput-object v1, p0, Lcom/sec/terrace/Terrace;->mAddToHomescreenManager:Lcom/sec/terrace/browser/webapps/TinAddToHomescreenManager;

    :cond_8
    iget-object v2, p0, Lcom/sec/terrace/Terrace;->mTinContentViewCore:Lcom/sec/terrace/content/browser/TinContentViewCore;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lcom/sec/terrace/content/browser/TinContentViewCore;->destroy()V

    iput-object v1, p0, Lcom/sec/terrace/Terrace;->mTinContentViewCore:Lcom/sec/terrace/content/browser/TinContentViewCore;

    :cond_9
    iget-object v2, p0, Lcom/sec/terrace/Terrace;->mViewAndroidDelegate:Lorg/chromium/ui/base/ViewAndroidDelegate;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lorg/chromium/ui/base/ViewAndroidDelegate;->destroy()V

    iput-object v1, p0, Lcom/sec/terrace/Terrace;->mViewAndroidDelegate:Lorg/chromium/ui/base/ViewAndroidDelegate;

    :cond_a
    iget-object v2, p0, Lcom/sec/terrace/Terrace;->mTinContentView:Lcom/sec/terrace/content/browser/TinContentView;

    if-eqz v2, :cond_b

    iput-object v1, p0, Lcom/sec/terrace/Terrace;->mTinContentView:Lcom/sec/terrace/content/browser/TinContentView;

    :cond_b
    iget-object v2, p0, Lcom/sec/terrace/Terrace;->mBoardingPassContextAwareEngineController:Lcom/sec/terrace/browser/context_aware_engine/TinBoardingPassContextAwareEngineController;

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Lcom/sec/terrace/browser/context_aware_engine/TinBoardingPassContextAwareEngineController;->destroy()V

    iput-object v1, p0, Lcom/sec/terrace/Terrace;->mBoardingPassContextAwareEngineController:Lcom/sec/terrace/browser/context_aware_engine/TinBoardingPassContextAwareEngineController;

    :cond_c
    iput-object v1, p0, Lcom/sec/terrace/Terrace;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    iget-object v2, p0, Lcom/sec/terrace/Terrace;->mUserDataHost:Lorg/chromium/base/UserDataHost;

    invoke-virtual {v2}, Lorg/chromium/base/UserDataHost;->destroy()V

    iget-object v2, p0, Lcom/sec/terrace/Terrace;->mCurrentInsetSupplier:Lorg/chromium/ui/base/ApplicationViewportInsetSupplier;

    if-eqz v2, :cond_d

    iget-object v3, p0, Lcom/sec/terrace/Terrace;->mInsetObserver:Lorg/chromium/base/Callback;

    invoke-virtual {v2, v3}, Lorg/chromium/base/supplier/ObservableSupplierImpl;->removeObserver(Lorg/chromium/base/Callback;)V

    iput-object v1, p0, Lcom/sec/terrace/Terrace;->mCurrentInsetSupplier:Lorg/chromium/ui/base/ApplicationViewportInsetSupplier;

    :cond_d
    iget-object v2, p0, Lcom/sec/terrace/Terrace;->mTerraceClient:Lcom/sec/terrace/Terrace$TerraceClient;

    if-eqz v2, :cond_e

    invoke-interface {v2, p0}, Lcom/sec/terrace/Terrace$TerraceClient;->onCloseTerrace(Lcom/sec/terrace/Terrace;)V

    iput-object v1, p0, Lcom/sec/terrace/Terrace;->mTerraceClient:Lcom/sec/terrace/Terrace$TerraceClient;

    :cond_e
    iget-wide v1, p0, Lcom/sec/terrace/Terrace;->mNativeTerrace:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_f

    goto :goto_0

    :cond_f
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    invoke-static {}, Lcom/sec/terrace/TerraceJni;->get()Lcom/sec/terrace/Terrace$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/Terrace;->mNativeTerrace:J

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/terrace/Terrace$Natives;->destroy(JLcom/sec/terrace/Terrace;)V

    iput-wide v3, p0, Lcom/sec/terrace/Terrace;->mNativeTerrace:J

    return-void
.end method

.method public continuePendingReload()V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mNavigationController:Lorg/chromium/content_public/browser/NavigationController;

    invoke-interface {p0}, Lorg/chromium/content_public/browser/NavigationController;->continuePendingReload()V

    return-void
.end method

.method public copy()V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mTinContentViewCore:Lcom/sec/terrace/content/browser/TinContentViewCore;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->copySelectedTexts()V

    return-void
.end method

.method public cut()V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->cut()V

    return-void
.end method

.method public destroySelectActionMode()V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mTinContentViewCore:Lcom/sec/terrace/content/browser/TinContentViewCore;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->destroySelectActionMode()V

    return-void
.end method

.method public didAccessInitialDocument()V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lcom/sec/terrace/Terrace;->mListenerCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mListenerCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0}, Lcom/sec/terrace/TerraceListenerCallback;->didAccessInitialDocument()V

    return-void
.end method

.method public didFinishLoad(ILjava/lang/String;Z)V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    if-eqz p3, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/terrace/Terrace;->mWasRenderProcessGone:Z

    :cond_0
    iget-object v0, p0, Lcom/sec/terrace/Terrace;->mListenerCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mListenerCallback:Lcom/sec/terrace/TerraceListenerCallback;

    int-to-long v0, p1

    invoke-interface {p0, v0, v1, p2, p3}, Lcom/sec/terrace/TerraceListenerCallback;->didFinishLoad(JLjava/lang/String;Z)V

    return-void
.end method

.method public disableDefaultFontSize()V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/terrace/TerraceJni;->get()Lcom/sec/terrace/Terrace$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/Terrace;->mNativeTerrace:J

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/terrace/Terrace$Natives;->disableDefaultFontSize(JLcom/sec/terrace/Terrace;)V

    return-void
.end method

.method public doBrowserControlsShrinkBlinkSize()Z
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mTinContentViewCore:Lcom/sec/terrace/content/browser/TinContentViewCore;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->doBrowserControlsShrinkBlinkSize()Z

    move-result p0

    return p0
.end method

.method public downloadImage(Ljava/lang/String;ZIZLcom/sec/terrace/content/browser/TerraceImageDownloadCallback;)I
    .locals 7

    iget-object v0, p0, Lcom/sec/terrace/Terrace;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/sec/terrace/Terrace;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    new-instance v2, Lorg/chromium/url/GURL;

    invoke-direct {v2, p1}, Lorg/chromium/url/GURL;-><init>(Ljava/lang/String;)V

    new-instance v6, Lcom/sec/terrace/Terrace$2;

    invoke-direct {v6, p0, p5}, Lcom/sec/terrace/Terrace$2;-><init>(Lcom/sec/terrace/Terrace;Lcom/sec/terrace/content/browser/TerraceImageDownloadCallback;)V

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->downloadImage(Lorg/chromium/url/GURL;ZIZLorg/chromium/content_public/browser/ImageDownloadCallback;)I

    move-result p0

    return p0
.end method

.method public enableBitmapCompositionForLayer(Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;ZLandroid/graphics/Bitmap;)V
    .locals 1

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mTinContentViewCore:Lcom/sec/terrace/content/browser/TinContentViewCore;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->enableBitmapCompositionForLayer(Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;ZLandroid/graphics/Bitmap;Z)V

    return-void
.end method

.method public enableBlurEffectOnToolbar(Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;IIIIIF)V
    .locals 8

    iget-object v0, p0, Lcom/sec/terrace/Terrace;->mTinContentViewCore:Lcom/sec/terrace/content/browser/TinContentViewCore;

    if-nez v0, :cond_0

    return-void

    :cond_0
    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/sec/terrace/content/browser/TinContentViewCore;->enableBlurEffectOnToolbar(Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;IIIIIF)V

    return-void
.end method

.method public evaluateJavaScript(Ljava/lang/String;Lcom/sec/terrace/TerraceJavaScriptCallback;)V
    .locals 7

    iget-wide v0, p0, Lcom/sec/terrace/Terrace;->mNativeTerrace:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    iget-object v0, p0, Lcom/sec/terrace/Terrace;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    invoke-static {}, Lcom/sec/terrace/base/TerraceThreadUtils;->assertOnUiThread()V

    invoke-static {}, Lcom/sec/terrace/TerraceJni;->get()Lcom/sec/terrace/Terrace$Natives;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/terrace/Terrace;->mNativeTerrace:J

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-interface/range {v1 .. v6}, Lcom/sec/terrace/Terrace$Natives;->evaluateJavaScript(JLcom/sec/terrace/Terrace;Ljava/lang/String;Lcom/sec/terrace/TerraceJavaScriptCallback;)V

    return-void
.end method

.method public evaluateJavaScriptForTests(Ljava/lang/String;Lcom/sec/terrace/TerraceJavaScriptCallback;)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/sec/terrace/Terrace;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sec/terrace/Terrace$13;

    invoke-direct {v0, p0, p2}, Lcom/sec/terrace/Terrace$13;-><init>(Lcom/sec/terrace/Terrace;Lcom/sec/terrace/TerraceJavaScriptCallback;)V

    move-object p2, v0

    :goto_0
    new-instance v0, Lcom/sec/terrace/Terrace$14;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/terrace/Terrace$14;-><init>(Lcom/sec/terrace/Terrace;Ljava/lang/String;Lorg/chromium/content_public/browser/JavaScriptCallback;)V

    invoke-static {v0}, Lcom/sec/terrace/base/TerraceThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public exitFullscreen()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->isFullscreenForTabOrPending()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getWebContents()Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/terrace/Terrace;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-virtual {v0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->exitFullscreen()V

    invoke-direct {p0}, Lcom/sec/terrace/Terrace;->notifyExitFullScreenMode()V

    :cond_0
    return-void
.end method

.method public getAccountChooserDialogBridge()Lcom/sec/terrace/browser/password_manager/TinAccountChooserDialogBridge;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mTinAccountChooserDialogBridge:Lcom/sec/terrace/browser/password_manager/TinAccountChooserDialogBridge;

    return-object p0
.end method

.method public getAddedEntryCount()I
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/Terrace;->mNativeTerrace:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    invoke-static {}, Lcom/sec/terrace/TerraceJni;->get()Lcom/sec/terrace/Terrace$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/Terrace;->mNativeTerrace:J

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/terrace/Terrace$Natives;->getAddedEntryCount(JLcom/sec/terrace/Terrace;)I

    move-result p0

    return p0
.end method

.method public getBitmapAsync(IIIILandroid/graphics/Bitmap$Config;Lcom/sec/terrace/Terrace$BitmapRequestCallback;)V
    .locals 8

    const/4 v7, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/sec/terrace/Terrace;->getBitmapAsync(IIIILandroid/graphics/Bitmap$Config;Lcom/sec/terrace/Terrace$BitmapRequestCallback;I)V

    return-void
.end method

.method public getBitmapAsync(IIIILandroid/graphics/Bitmap$Config;Lcom/sec/terrace/Terrace$BitmapRequestCallback;I)V
    .locals 14

    move-object v3, p0

    move v0, p1

    move/from16 v1, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v2, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-ltz v0, :cond_0

    if-ltz v1, :cond_0

    if-lez v4, :cond_0

    if-lez v5, :cond_0

    move v10, v8

    goto :goto_0

    :cond_0
    move v10, v9

    :goto_0
    invoke-static {v10}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    sget-object v10, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-eq v2, v10, :cond_2

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v2, v10, :cond_1

    goto :goto_1

    :cond_1
    move v2, v9

    goto :goto_2

    :cond_2
    :goto_1
    move v2, v8

    :goto_2
    invoke-static {v2}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    invoke-static/range {p6 .. p6}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getWebContainerView()Landroid/view/ViewGroup;

    move-result-object v2

    const/4 v10, 0x0

    if-nez v2, :cond_3

    invoke-interface {v6, v10}, Lcom/sec/terrace/Terrace$BitmapRequestCallback;->onReceivedBitmap(Landroid/graphics/Bitmap;)V

    return-void

    :cond_3
    add-int v2, v0, v4

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getWebContainerView()Landroid/view/ViewGroup;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v11

    const-string v12, "getBitmapAsync"

    if-le v2, v11, :cond_4

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getWebContainerView()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    const-string v11, "Adjusting width within the View port"

    invoke-static {v12, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    add-int v11, v1, v5

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getWebContainerView()Landroid/view/ViewGroup;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v13

    if-le v11, v13, :cond_5

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getWebContainerView()Landroid/view/ViewGroup;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v11

    const-string v13, "Adjusting height within the View port"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    if-ge v0, v2, :cond_6

    if-ge v1, v11, :cond_6

    move v2, v8

    goto :goto_3

    :cond_6
    move v2, v9

    :goto_3
    invoke-static {v2}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    iget-object v2, v3, Lcom/sec/terrace/Terrace;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-static {v2}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    if-ne v7, v8, :cond_8

    iget-object v0, v3, Lcom/sec/terrace/Terrace;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-virtual {v0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getVisibility()I

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "Failed h/w capturing because WebContents was hidden"

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v6, v10}, Lcom/sec/terrace/Terrace$BitmapRequestCallback;->onReceivedBitmap(Landroid/graphics/Bitmap;)V

    return-void

    :cond_7
    const-string v0, "Capturing in visible mode getContentBitmapAsync called!"

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/terrace/TerraceJni;->get()Lcom/sec/terrace/Terrace$Natives;

    move-result-object v0

    iget-wide v1, v3, Lcom/sec/terrace/Terrace;->mNativeTerrace:J

    new-instance v7, Lcom/sec/terrace/Terrace$1;

    invoke-direct {v7, p0, v6}, Lcom/sec/terrace/Terrace$1;-><init>(Lcom/sec/terrace/Terrace;Lcom/sec/terrace/Terrace$BitmapRequestCallback;)V

    move-object v3, p0

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v7

    invoke-interface/range {v0 .. v6}, Lcom/sec/terrace/Terrace$Natives;->getContentBitmapAsync(JLcom/sec/terrace/Terrace;IILorg/chromium/base/Callback;)V

    goto :goto_6

    :cond_8
    if-nez v7, :cond_c

    iget-object v2, v3, Lcom/sec/terrace/Terrace;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-virtual {v2}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getVisibility()I

    move-result v2

    const/4 v7, 0x2

    if-ne v2, v7, :cond_9

    const-string v0, "Failed s/w capturing because WebContents was visible"

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v6, v10}, Lcom/sec/terrace/Terrace$BitmapRequestCallback;->onReceivedBitmap(Landroid/graphics/Bitmap;)V

    return-void

    :cond_9
    const-string v2, "Capturing in hidden mode handleAsyncBitmapRequest called!"

    invoke-static {v12, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/sec/terrace/browser/paintpreview/BoundsManager;

    new-instance v7, Landroid/graphics/Rect;

    if-eqz v0, :cond_a

    goto :goto_4

    :cond_a
    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getScrollOffsetX()F

    move-result v0

    float-to-int v0, v0

    :goto_4
    if-eqz v1, :cond_b

    goto :goto_5

    :cond_b
    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getScrollOffsetY()F

    move-result v1

    float-to-int v1, v1

    :goto_5
    invoke-direct {v7, v0, v1, v9, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v0, v3, Lcom/sec/terrace/Terrace;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-static {v0}, Lorg/chromium/content_public/browser/RenderCoordinates;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content_public/browser/RenderCoordinates;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/content_public/browser/RenderCoordinates;->getPageScaleFactor()F

    move-result v0

    invoke-direct {v2, v4, v5, v7, v0}, Lcom/sec/terrace/browser/paintpreview/BoundsManager;-><init>(IILandroid/graphics/Rect;F)V

    new-instance v0, Lcom/sec/terrace/browser/paintpreview/TinBitmapGenerator;

    invoke-direct {v0, v6, v2}, Lcom/sec/terrace/browser/paintpreview/TinBitmapGenerator;-><init>(Lcom/sec/terrace/Terrace$BitmapRequestCallback;Lcom/sec/terrace/browser/paintpreview/BoundsManager;)V

    iget-object v1, v3, Lcom/sec/terrace/Terrace;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/terrace/browser/paintpreview/TinBitmapGenerator;->captureTab(Lorg/chromium/content_public/browser/WebContents;Ljava/lang/String;)V

    :cond_c
    :goto_6
    return-void
.end method

.method public getBitmapFromCache(Ljava/lang/String;Lcom/sec/terrace/Terrace$BitmapRequestCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/Terrace;->mBitmapRequestHandler:Lcom/sec/terrace/content/browser/TinBitmapRequestHandler;

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-virtual {v0, p0, p1, p2}, Lcom/sec/terrace/content/browser/TinBitmapRequestHandler;->handleCachedBitmapRequest(Lorg/chromium/content_public/browser/WebContents;Ljava/lang/String;Lcom/sec/terrace/Terrace$BitmapRequestCallback;)V

    return-void
.end method

.method public getBoardingPasContextAwareEngineController()Lcom/sec/terrace/browser/barcode_detect/TerraceBoardingPassContextAwareEngineController;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mBoardingPassContextAwareEngineController:Lcom/sec/terrace/browser/context_aware_engine/TinBoardingPassContextAwareEngineController;

    return-object p0
.end method

.method public getBottomControlsHeight()I
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lcom/sec/terrace/Terrace;->mTerraceClient:Lcom/sec/terrace/Terrace$TerraceClient;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/sec/terrace/Terrace$TerraceClient;->getWindowAndroid(Lcom/sec/terrace/Terrace;)Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/terrace/Terrace;->mTerraceClient:Lcom/sec/terrace/Terrace$TerraceClient;

    invoke-interface {v0, p0}, Lcom/sec/terrace/Terrace$TerraceClient;->getWindowAndroid(Lcom/sec/terrace/Terrace;)Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/ui/base/WindowAndroid;->getDisplay()Lorg/chromium/ui/display/DisplayAndroid;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mTinContentViewCore:Lcom/sec/terrace/content/browser/TinContentViewCore;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getBottomControlsHeightPix()I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public getBrowserTopControlsState()I
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mTinContentViewCore:Lcom/sec/terrace/content/browser/TinContentViewCore;

    if-nez p0, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getBrowserTopControlsState()I

    move-result p0

    return p0
.end method

.method public getChildProcessUniqueId()I
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mTinContentViewCore:Lcom/sec/terrace/content/browser/TinContentViewCore;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getChildProcessUniqueId()I

    move-result p0

    return p0
.end method

.method public getContentViewCore()Lcom/sec/terrace/content/browser/TinContentViewCore;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mTinContentViewCore:Lcom/sec/terrace/content/browser/TinContentViewCore;

    return-object p0
.end method

.method public getContentsMimeType()Ljava/lang/String;
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/Terrace;->mNativeTerrace:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    invoke-static {}, Lcom/sec/terrace/TerraceJni;->get()Lcom/sec/terrace/Terrace$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/Terrace;->mNativeTerrace:J

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/terrace/Terrace$Natives;->getContentsMimeType(JLcom/sec/terrace/Terrace;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 2

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getWindowAndroid()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mApplicationContext:Landroid/content/Context;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getWindowAndroid()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/ui/base/WindowAndroid;->getContext()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/terrace/Terrace;->mApplicationContext:Landroid/content/Context;

    :cond_1
    return-object v0
.end method

.method public getContextMenuImage(Ljava/lang/String;Lcom/sec/terrace/Terrace$BitmapRequestCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/Terrace;->mBitmapRequestHandler:Lcom/sec/terrace/content/browser/TinBitmapRequestHandler;

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-virtual {v0, p0, p1, p2}, Lcom/sec/terrace/content/browser/TinBitmapRequestHandler;->handleContextMenuImageRequest(Lorg/chromium/content_public/browser/WebContents;Ljava/lang/String;Lcom/sec/terrace/Terrace$BitmapRequestCallback;)V

    return-void
.end method

.method public getContextMenuImageElementBounds()V
    .locals 4

    invoke-static {}, Lcom/sec/terrace/TerraceJni;->get()Lcom/sec/terrace/Terrace$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/Terrace;->mNativeTerrace:J

    new-instance v3, Lcom/sec/terrace/Terrace$5;

    invoke-direct {v3, p0}, Lcom/sec/terrace/Terrace$5;-><init>(Lcom/sec/terrace/Terrace;)V

    invoke-interface {v0, v1, v2, p0, v3}, Lcom/sec/terrace/Terrace$Natives;->getContextMenuImageElementBounds(JLcom/sec/terrace/Terrace;Lorg/chromium/base/Callback;)V

    return-void
.end method

.method public getCurrentViewRect()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mTinContentViewCore:Lcom/sec/terrace/content/browser/TinContentViewCore;

    if-nez p0, :cond_0

    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getCurrentVisibleRect()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultFontSize()I
    .locals 3

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/TerraceJni;->get()Lcom/sec/terrace/Terrace$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/Terrace;->mNativeTerrace:J

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/terrace/Terrace$Natives;->getDefaultFontSize(JLcom/sec/terrace/Terrace;)I

    move-result p0

    return p0
.end method

.method public getDirectedNavigationHistory(ZI)Lcom/sec/terrace/navigation_interception/TerraceNavigationHistory;
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/Terrace;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    new-instance v0, Lcom/sec/terrace/navigation_interception/TerraceNavigationHistory;

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getNavigationController()Lorg/chromium/content_public/browser/NavigationController;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lorg/chromium/content_public/browser/NavigationController;->getDirectedNavigationHistory(ZI)Lorg/chromium/content_public/browser/NavigationHistory;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sec/terrace/navigation_interception/TerraceNavigationHistory;-><init>(Lorg/chromium/content_public/browser/NavigationHistory;)V

    return-object v0
.end method

.method public getDisplayMode()I
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->isFullscreenForTabOrPending()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mListenerCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0}, Lcom/sec/terrace/TerraceListenerCallback;->getDisplayMode()I

    move-result p0

    return p0
.end method

.method public getDragDropHandler()Lcom/sec/terrace/content/browser/TinDragDropHandler;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/sec/terrace/Terrace;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-static {p0}, Lcom/sec/terrace/content/browser/TinDragDropHandler;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lcom/sec/terrace/content/browser/TinDragDropHandler;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getEntryAtIndex(I)Lcom/sec/terrace/navigation_interception/TerraceNavigationEntry;
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/Terrace;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/terrace/Terrace;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-virtual {v0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getNavigationController()Lorg/chromium/content_public/browser/NavigationController;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/chromium/content_public/browser/NavigationController;->getEntryAtIndex(I)Lorg/chromium/content_public/browser/NavigationEntry;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/sec/terrace/navigation_interception/TerraceNavigationEntry;

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getNavigationController()Lorg/chromium/content_public/browser/NavigationController;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/chromium/content_public/browser/NavigationController;->getEntryAtIndex(I)Lorg/chromium/content_public/browser/NavigationEntry;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sec/terrace/navigation_interception/TerraceNavigationEntry;-><init>(Lorg/chromium/content_public/browser/NavigationEntry;)V

    return-object v0
.end method

.method public getFavicon()Landroid/graphics/Bitmap;
    .locals 2

    iget-object v0, p0, Lcom/sec/terrace/Terrace;->mFavicon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/terrace/Terrace;->mFaviconUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mFavicon:Landroid/graphics/Bitmap;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getFullscreenVideoSize()Landroid/graphics/Rect;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getWebContents()Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getFullscreenVideoSize()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getImageBytes(Ljava/lang/String;Lcom/sec/terrace/Terrace$BitmapRequestCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/Terrace;->mBitmapRequestHandler:Lcom/sec/terrace/content/browser/TinBitmapRequestHandler;

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-virtual {v0, p0, p1, p2}, Lcom/sec/terrace/content/browser/TinBitmapRequestHandler;->handleImageBytesRequest(Lorg/chromium/content_public/browser/WebContents;Ljava/lang/String;Lcom/sec/terrace/Terrace$BitmapRequestCallback;)V

    return-void
.end method

.method public getInnerText(Lcom/sec/terrace/Terrace$InnerTextCallback;)V
    .locals 2
    .param p1    # Lcom/sec/terrace/Terrace$InnerTextCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0}, Lcom/sec/terrace/TinWebContentsHelper;->getWebContents(Lcom/sec/terrace/Terrace;)Lorg/chromium/content_public/browser/WebContents;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/terrace/Terrace$InnerTextCallback;->onResult(Ljava/util/Optional;)V

    return-void

    :cond_0
    invoke-interface {p0}, Lorg/chromium/content_public/browser/WebContents;->getMainFrame()Lorg/chromium/content_public/browser/RenderFrameHost;

    move-result-object p0

    new-instance v0, Lcom/sec/terrace/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lcom/sec/terrace/a;-><init>(ILjava/lang/Object;)V

    invoke-static {p0, v0}, Lcom/sec/terrace/browser/content_extraction/InnerTextBridge;->getInnerText(Lorg/chromium/content_public/browser/RenderFrameHost;Lorg/chromium/base/Callback;)V

    return-void
.end method

.method public getLastCommittedEntryIndex()I
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/Terrace;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getNavigationController()Lorg/chromium/content_public/browser/NavigationController;

    move-result-object p0

    invoke-interface {p0}, Lorg/chromium/content_public/browser/NavigationController;->getLastCommittedEntryIndex()I

    move-result p0

    return p0
.end method

.method public getLastSentThemeColor()I
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-wide v0, p0, Lcom/sec/terrace/Terrace;->mNativeTerrace:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/TerraceJni;->get()Lcom/sec/terrace/Terrace$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/Terrace;->mNativeTerrace:J

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/terrace/Terrace$Natives;->getLastSentThemeColor(JLcom/sec/terrace/Terrace;)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljunit/framework/AssertionFailedError;

    invoke-direct {p0}, Ljunit/framework/AssertionFailedError;-><init>()V

    throw p0
.end method

.method public getListenerCallback()Lcom/sec/terrace/TerraceListenerCallback;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mListenerCallback:Lcom/sec/terrace/TerraceListenerCallback;

    return-object p0
.end method

.method public getMediaSession()Lcom/sec/terrace/content/browser/media/TerraceMediaSession;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mMediaSession:Lcom/sec/terrace/content/browser/media/TerraceMediaSession;

    return-object p0
.end method

.method public getNativeWebContents()J
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/Terrace;->mNativeTerrace:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    invoke-static {}, Lcom/sec/terrace/TerraceJni;->get()Lcom/sec/terrace/Terrace$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/Terrace;->mNativeTerrace:J

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/terrace/Terrace$Natives;->getNativeWebContents(JLcom/sec/terrace/Terrace;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNavigationControllerForTest()Lorg/chromium/content_public/browser/NavigationController;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mNavigationController:Lorg/chromium/content_public/browser/NavigationController;

    return-object p0
.end method

.method public getProgress()D
    .locals 2

    iget-wide v0, p0, Lcom/sec/terrace/Terrace;->mLoadProgress:D

    return-wide v0
.end method

.method public getSanitizedUrlString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Lorg/chromium/url/GURL;

    invoke-direct {v0, p1}, Lorg/chromium/url/GURL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/chromium/url/GURL;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lorg/chromium/url/GURL;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/TerraceJni;->get()Lcom/sec/terrace/Terrace$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/Terrace;->mNativeTerrace:J

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/sec/terrace/Terrace$Natives;->getSanitizedUrlString(JLcom/sec/terrace/Terrace;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    return-object p1
.end method

.method public getScrollOffsetX()F
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mTinContentViewCore:Lcom/sec/terrace/content/browser/TinContentViewCore;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getScrollOffsetX()F

    move-result p0

    return p0
.end method

.method public getScrollOffsetY()F
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mTinContentViewCore:Lcom/sec/terrace/content/browser/TinContentViewCore;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getScrollOffsetY()F

    move-result p0

    return p0
.end method

.method public getSelectedText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mTinContentViewCore:Lcom/sec/terrace/content/browser/TinContentViewCore;

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getSelectedText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTerraceInfoBarService()Lcom/sec/terrace/browser/infobars/TerraceInfoBarService;
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/Terrace;->mNativeTerrace:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/TerraceJni;->get()Lcom/sec/terrace/Terrace$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/Terrace;->mNativeTerrace:J

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/terrace/Terrace$Natives;->getTerraceInfoBarService(JLcom/sec/terrace/Terrace;)Lcom/sec/terrace/browser/infobars/TerraceInfoBarService;

    move-result-object p0

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getWebContents()Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getTitle()Ljava/lang/String;

    move-result-object p0

    const-string v0, "chrome://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "chrome"

    const-string v1, "internet"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public getTopControlsHeight()I
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lcom/sec/terrace/Terrace;->mTerraceClient:Lcom/sec/terrace/Terrace$TerraceClient;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/sec/terrace/Terrace$TerraceClient;->getWindowAndroid(Lcom/sec/terrace/Terrace;)Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/terrace/Terrace;->mTerraceClient:Lcom/sec/terrace/Terrace$TerraceClient;

    invoke-interface {v0, p0}, Lcom/sec/terrace/Terrace$TerraceClient;->getWindowAndroid(Lcom/sec/terrace/Terrace;)Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/ui/base/WindowAndroid;->getDisplay()Lorg/chromium/ui/display/DisplayAndroid;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mTinContentViewCore:Lcom/sec/terrace/content/browser/TinContentViewCore;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getTopControlsHeightPix()I

    move-result v1

    :cond_1
    :goto_0
    return v1
.end method

.method public getTotalBlockedTrackerRequestCount()I
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/Terrace;->mNativeTerrace:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    invoke-static {}, Lcom/sec/terrace/TerraceJni;->get()Lcom/sec/terrace/Terrace$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/Terrace;->mNativeTerrace:J

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/terrace/Terrace$Natives;->getTotalBlockedTrackerRequestCount(JLcom/sec/terrace/Terrace;)I

    move-result p0

    return p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getWebContents()Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getVisibleUrl()Lorg/chromium/url/GURL;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/url/GURL;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "chrome"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/chromium/url/GURL;->getSpec()Ljava/lang/String;

    move-result-object p0

    const-string v0, "internet"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/chromium/url/GURL;->getSpec()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getUseDesktopUserAgent()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mNavigationController:Lorg/chromium/content_public/browser/NavigationController;

    invoke-interface {p0}, Lorg/chromium/content_public/browser/NavigationController;->getUseDesktopUserAgent()Z

    move-result p0

    return p0
.end method

.method public getUserAgentOverride()Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-wide v0, p0, Lcom/sec/terrace/Terrace;->mNativeTerrace:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    iget-wide v0, p0, Lcom/sec/terrace/Terrace;->mNativeTerrace:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const-string p0, ""

    return-object p0

    :cond_1
    invoke-static {}, Lcom/sec/terrace/TerraceJni;->get()Lcom/sec/terrace/Terrace$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/Terrace;->mNativeTerrace:J

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/terrace/Terrace$Natives;->getUserAgentOverride(JLcom/sec/terrace/Terrace;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUserDataHost()Lorg/chromium/base/UserDataHost;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mUserDataHost:Lorg/chromium/base/UserDataHost;

    return-object p0
.end method

.method public getViewPortBitmapAsync(Lcom/sec/terrace/Terrace$BitmapRequestCallback;)V
    .locals 8

    invoke-static {p1}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/terrace/Terrace;->mTinContentViewCore:Lcom/sec/terrace/content/browser/TinContentViewCore;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getViewportWidthPix()I

    move-result v4

    iget-object v0, p0, Lcom/sec/terrace/Terrace;->mTinContentViewCore:Lcom/sec/terrace/content/browser/TinContentViewCore;

    invoke-virtual {v0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getViewportHeightPix()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v7, p1

    invoke-virtual/range {v1 .. v7}, Lcom/sec/terrace/Terrace;->getBitmapAsync(IIIILandroid/graphics/Bitmap$Config;Lcom/sec/terrace/Terrace$BitmapRequestCallback;)V

    return-void
.end method

.method public getVirtualCardPreview()Lcom/sec/terrace/browser/autofill/TerraceAutofillVirtualCardShowTips;
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/Terrace;->mNativeTerrace:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/TerraceJni;->get()Lcom/sec/terrace/Terrace$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/Terrace;->mNativeTerrace:J

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/terrace/Terrace$Natives;->getVirtualCardPreview(JLcom/sec/terrace/Terrace;)Lcom/sec/terrace/browser/autofill/TerraceAutofillVirtualCardShowTips;

    move-result-object p0

    return-object p0
.end method

.method public getWasRenderProcessGone()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/terrace/Terrace;->mWasRenderProcessGone:Z

    return p0
.end method

.method public getWebContainerView()Landroid/view/ViewGroup;
    .locals 2

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getWebContents()Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getViewAndroidDelegate()Lorg/chromium/ui/base/ViewAndroidDelegate;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/chromium/ui/base/ViewAndroidDelegate;->getContainerViewGroup()Landroid/view/ViewGroup;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public getWebContents()Lcom/sec/terrace/content/browser/TinWebContentsImpl;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/sec/terrace/Terrace;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getWindowAndroid()Lorg/chromium/ui/base/WindowAndroid;
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/Terrace;->mTerraceClient:Lcom/sec/terrace/Terrace$TerraceClient;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {v0, p0}, Lcom/sec/terrace/Terrace$TerraceClient;->getWindowAndroid(Lcom/sec/terrace/Terrace;)Lorg/chromium/ui/base/WindowAndroid;

    move-result-object p0

    return-object p0
.end method

.method public getZoomPercent()I
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/Terrace;->mNativeTerrace:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    invoke-static {}, Lcom/sec/terrace/TerraceJni;->get()Lcom/sec/terrace/Terrace$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/Terrace;->mNativeTerrace:J

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/terrace/Terrace$Natives;->getZoomPercent(JLcom/sec/terrace/Terrace;)I

    move-result p0

    return p0
.end method

.method public goBack()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/Terrace;->mNavigationController:Lorg/chromium/content_public/browser/NavigationController;

    invoke-interface {v0}, Lorg/chromium/content_public/browser/NavigationController;->canGoBack()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/sec/terrace/Terrace;->mTinContentViewCore:Lcom/sec/terrace/content/browser/TinContentViewCore;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/terrace/Terrace;->mTinContentViewCore:Lcom/sec/terrace/content/browser/TinContentViewCore;

    invoke-virtual {v0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->clearSelection()V

    :cond_1
    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mNavigationController:Lorg/chromium/content_public/browser/NavigationController;

    invoke-interface {p0}, Lorg/chromium/content_public/browser/NavigationController;->goBack()V

    const/4 p0, 0x1

    return p0
.end method

.method public goForward()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/Terrace;->mNavigationController:Lorg/chromium/content_public/browser/NavigationController;

    invoke-interface {v0}, Lorg/chromium/content_public/browser/NavigationController;->canGoForward()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/sec/terrace/Terrace;->mTinContentViewCore:Lcom/sec/terrace/content/browser/TinContentViewCore;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/terrace/Terrace;->mTinContentViewCore:Lcom/sec/terrace/content/browser/TinContentViewCore;

    invoke-virtual {v0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->clearSelection()V

    :cond_1
    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mNavigationController:Lorg/chromium/content_public/browser/NavigationController;

    invoke-interface {p0}, Lorg/chromium/content_public/browser/NavigationController;->goForward()V

    const/4 p0, 0x1

    return p0
.end method

.method public goToNavigationIndex(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/Terrace;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getNavigationController()Lorg/chromium/content_public/browser/NavigationController;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/chromium/content_public/browser/NavigationController;->goToNavigationIndex(I)V

    return-void
.end method

.method public handleCursorChanged(I)Z
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/sec/terrace/Terrace;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-virtual {v0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getEventForwarder()Lorg/chromium/ui/base/EventForwarder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/ui/base/EventForwarder;->getLastToolType()I

    move-result v0

    invoke-static {}, Lcom/sec/terrace/TinTerraceInternals;->isDexDualMode()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/sec/terrace/Terrace;->updateMousePointerIcon(I)V

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-static {p0}, Lcom/sec/terrace/content/browser/spen/TinSPenIntuitiveHoverController;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lcom/sec/terrace/content/browser/spen/TinSPenIntuitiveHoverController;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/terrace/content/browser/spen/TinSPenIntuitiveHoverController;->updateSPenHoverCursor(I)Z

    move-result p0

    return p0

    :cond_0
    return v2
.end method

.method public handleDirectPaste(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/Terrace;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    invoke-static {p2}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->replace(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-virtual {p0, p1, p2}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->handleDirectpaste(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public handleKeyboardEvent(Landroid/view/KeyEvent;)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/terrace/Terrace;->mApplicationContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/terrace/Terrace;->mTerraceClient:Lcom/sec/terrace/Terrace$TerraceClient;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/sec/terrace/Terrace$TerraceClient;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x6f

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getWebContents()Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lorg/chromium/content_public/browser/WebContents;->stop()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/terrace/Terrace;->handleMediaKey(Landroid/view/KeyEvent;)V

    return-void
.end method

.method public hasActiveEffectivelyFullscreenVideo()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getWebContents()Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->hasActiveEffectivelyFullscreenVideo()Z

    move-result p0

    return p0
.end method

.method public hide()V
    .locals 3

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/TerraceHelper;->isArBrowser()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getWebContents()Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->isFullscreenForTabOrPending()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/terrace/Terrace;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-virtual {v0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->exitFullscreen()V

    invoke-direct {p0}, Lcom/sec/terrace/Terrace;->notifyExitFullScreenMode()V

    :cond_0
    iget-object v0, p0, Lcom/sec/terrace/Terrace;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-static {v0}, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->stopHoverScroll()V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getDragDropHandler()Lcom/sec/terrace/content/browser/TinDragDropHandler;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getWebContainerView()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getDragDropHandler()Lcom/sec/terrace/content/browser/TinDragDropHandler;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getWebContainerView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/terrace/content/browser/TinDragDropHandler;->resetDragIfNeeded(Landroid/view/ViewGroup;)V

    :cond_2
    iget-object v0, p0, Lcom/sec/terrace/Terrace;->mTerraceClient:Lcom/sec/terrace/Terrace$TerraceClient;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/terrace/Terrace;->mTinContentViewCore:Lcom/sec/terrace/content/browser/TinContentViewCore;

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/terrace/Terrace;->mIsHidden:Z

    const-string v0, "hide start"

    const-string v1, "TAB-STATUS"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/terrace/Terrace;->mTerraceClient:Lcom/sec/terrace/Terrace$TerraceClient;

    invoke-interface {v0, p0}, Lcom/sec/terrace/Terrace$TerraceClient;->onHideTerrace(Lcom/sec/terrace/Terrace;)V

    iget-object v0, p0, Lcom/sec/terrace/Terrace;->mTinContentViewCore:Lcom/sec/terrace/content/browser/TinContentViewCore;

    invoke-virtual {v0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->onHide()V

    iget-object v0, p0, Lcom/sec/terrace/Terrace;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/terrace/Terrace$TerraceObserver;

    invoke-interface {v2, p0}, Lcom/sec/terrace/Terrace$TerraceObserver;->onTabHidden(Lcom/sec/terrace/Terrace;)V

    goto :goto_0

    :cond_4
    const-string p0, "hide done"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    return-void
.end method

.method public initializeWithContext(Landroid/content/Context;)Z
    .locals 1

    instance-of v0, p1, Lcom/sec/terrace/TerraceActivity;

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    if-nez v0, :cond_0

    const-string p0, "Terrace"

    const-string p1, "Context is not an instance of TerraceActivity"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, Lcom/sec/terrace/TerraceActivity;

    invoke-virtual {p1}, Lcom/sec/terrace/TerraceActivity;->getTerraceClient()Lcom/sec/terrace/Terrace$TerraceClient;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/terrace/Terrace;->initializeWithContext(Lcom/sec/terrace/Terrace$TerraceClient;)Z

    move-result p0

    return p0
.end method

.method public initializeWithContext(Lcom/sec/terrace/Terrace$TerraceClient;)Z
    .locals 8

    iput-object p1, p0, Lcom/sec/terrace/Terrace;->mTerraceClient:Lcom/sec/terrace/Terrace$TerraceClient;

    const/4 v0, 0x0

    const-string v1, "Terrace"

    if-nez p1, :cond_0

    const-string p0, "TerraceClient is not initialized"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    invoke-interface {p1}, Lcom/sec/terrace/Terrace$TerraceClient;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/terrace/Terrace;->mApplicationContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/terrace/Terrace;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-static {p1, v2, p0}, Lcom/sec/terrace/content/browser/TinContentViewWithAutofill;->createContentView(Landroid/content/Context;Lorg/chromium/content_public/browser/WebContents;Lcom/sec/terrace/Terrace;)Lcom/sec/terrace/content/browser/TinContentView;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/terrace/Terrace;->mTinContentView:Lcom/sec/terrace/content/browser/TinContentView;

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getWindowAndroid()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/ui/base/WindowAndroid;->getApplicationBottomInsetSupplier()Lorg/chromium/ui/base/ApplicationViewportInsetSupplier;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/terrace/Terrace;->mCurrentInsetSupplier:Lorg/chromium/ui/base/ApplicationViewportInsetSupplier;

    iget-object v2, p0, Lcom/sec/terrace/Terrace;->mInsetObserver:Lorg/chromium/base/Callback;

    invoke-interface {p1, v2}, Lorg/chromium/base/supplier/ObservableSupplier;->addObserver(Lorg/chromium/base/Callback;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/sec/terrace/Terrace;->createViewAndroidDelegate()Lorg/chromium/ui/base/ViewAndroidDelegate;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/terrace/Terrace;->mViewAndroidDelegate:Lorg/chromium/ui/base/ViewAndroidDelegate;

    iget-object v2, p0, Lcom/sec/terrace/Terrace;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-static {}, Lcom/sec/terrace/browser/TinVersionInfo;->getVersionNumber()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/terrace/Terrace;->mViewAndroidDelegate:Lorg/chromium/ui/base/ViewAndroidDelegate;

    iget-object v5, p0, Lcom/sec/terrace/Terrace;->mTinContentView:Lcom/sec/terrace/content/browser/TinContentView;

    iget-object p1, p0, Lcom/sec/terrace/Terrace;->mTerraceClient:Lcom/sec/terrace/Terrace$TerraceClient;

    invoke-interface {p1, p0}, Lcom/sec/terrace/Terrace$TerraceClient;->getWindowAndroid(Lcom/sec/terrace/Terrace;)Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v6

    invoke-static {}, Lorg/chromium/content_public/browser/WebContents;->createDefaultInternalsHolder()Lorg/chromium/content_public/browser/WebContents$InternalsHolder;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->setDelegates(Ljava/lang/String;Lorg/chromium/ui/base/ViewAndroidDelegate;Lorg/chromium/content_public/browser/ViewEventSink$InternalAccessDelegate;Lorg/chromium/ui/base/WindowAndroid;Lorg/chromium/content_public/browser/WebContents$InternalsHolder;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Initialized WebContents:"

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/terrace/Terrace;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/terrace/Terrace;->mApplicationContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/terrace/Terrace;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-static {p1, v1}, Lcom/sec/terrace/content/browser/TinContentViewCore;->create(Landroid/content/Context;Lorg/chromium/content_public/browser/WebContents;)Lcom/sec/terrace/content/browser/TinContentViewCore;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/terrace/Terrace;->mTinContentViewCore:Lcom/sec/terrace/content/browser/TinContentViewCore;

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/sec/terrace/Terrace;->mCurrentInsetSupplier:Lorg/chromium/ui/base/ApplicationViewportInsetSupplier;

    invoke-virtual {p1, v1}, Lcom/sec/terrace/content/browser/TinContentViewCore;->setApplicationViewportInsetSupplier(Lorg/chromium/ui/base/ApplicationViewportInsetSupplier;)V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getDragDropHandler()Lcom/sec/terrace/content/browser/TinDragDropHandler;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getDragDropHandler()Lcom/sec/terrace/content/browser/TinDragDropHandler;

    move-result-object p1

    new-instance v1, Lcom/sec/terrace/Terrace$6;

    invoke-direct {v1, p0}, Lcom/sec/terrace/Terrace$6;-><init>(Lcom/sec/terrace/Terrace;)V

    invoke-virtual {p1, v1}, Lcom/sec/terrace/content/browser/TinDragDropHandler;->setDelegate(Lcom/sec/terrace/content/browser/TinDragDropHandler$Delegate;)V

    :cond_2
    iget-object p1, p0, Lcom/sec/terrace/Terrace;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-static {p1}, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/terrace/Terrace;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-static {p1}, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;

    move-result-object p1

    new-instance v1, Lcom/sec/terrace/Terrace$7;

    invoke-direct {v1, p0}, Lcom/sec/terrace/Terrace$7;-><init>(Lcom/sec/terrace/Terrace;)V

    invoke-virtual {p1, v1}, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->setDelegate(Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller$Delegate;)V

    :cond_3
    iget-object p1, p0, Lcom/sec/terrace/Terrace;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-static {p1}, Lcom/sec/terrace/content/browser/spen/TinSPenIntuitiveHoverController;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lcom/sec/terrace/content/browser/spen/TinSPenIntuitiveHoverController;

    move-result-object p1

    new-instance v1, Lcom/sec/terrace/Terrace$8;

    invoke-direct {v1, p0}, Lcom/sec/terrace/Terrace$8;-><init>(Lcom/sec/terrace/Terrace;)V

    invoke-virtual {p1, v1}, Lcom/sec/terrace/content/browser/spen/TinSPenIntuitiveHoverController;->setDelegate(Lcom/sec/terrace/content/browser/spen/TinSPenIntuitiveHoverController$Delegate;)V

    iget-object p1, p0, Lcom/sec/terrace/Terrace;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-static {p1}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;

    move-result-object p1

    new-instance v1, Lcom/sec/terrace/content/browser/TinActionModeCallback;

    iget-object v2, p0, Lcom/sec/terrace/Terrace;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-direct {v1, v2}, Lcom/sec/terrace/content/browser/TinActionModeCallback;-><init>(Lorg/chromium/content_public/browser/WebContents;)V

    invoke-virtual {p1, v1}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->setActionModeCallback(Lorg/chromium/content_public/browser/ActionModeCallback;)V

    iget-object v1, p0, Lcom/sec/terrace/Terrace;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-static {v1}, Lorg/chromium/content_public/browser/SelectionClient;->createSmartSelectionClient(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content_public/browser/SelectionClient;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->setSelectionClient(Lorg/chromium/content_public/browser/SelectionClient;)V

    iget-boolean v1, p0, Lcom/sec/terrace/Terrace;->mIsExtensionTerrace:Z

    invoke-virtual {p1, v1}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->setIsInExtension(Z)V

    iget-object p1, p0, Lcom/sec/terrace/Terrace;->mTinContentView:Lcom/sec/terrace/content/browser/TinContentView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setDefaultFocusHighlightEnabled(Z)V

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getWebContents()Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sec/terrace/Terrace;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-static {p1}, Lorg/chromium/content_public/browser/WebContentsAccessibility;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content_public/browser/WebContentsAccessibility;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-interface {p1, v0}, Lorg/chromium/content_public/browser/WebContentsAccessibility;->setShouldFocusOnPageLoad(Z)V

    :cond_4
    invoke-static {p0}, Lcom/sec/terrace/browser/TinSwipeRefreshHandler;->get(Lcom/sec/terrace/Terrace;)Lcom/sec/terrace/browser/TinSwipeRefreshHandler;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getWebContents()Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getWebContents()Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sec/terrace/browser/TinSwipeRefreshHandler;->initWebContents(Lcom/sec/terrace/content/browser/TinWebContentsImpl;)V

    :cond_5
    new-instance p1, Lcom/sec/terrace/Terrace$9;

    invoke-direct {p1, p0}, Lcom/sec/terrace/Terrace$9;-><init>(Lcom/sec/terrace/Terrace;)V

    iput-object p1, p0, Lcom/sec/terrace/Terrace;->mTinAccountChooserDialogBridge:Lcom/sec/terrace/browser/password_manager/TinAccountChooserDialogBridge;

    invoke-static {}, Lcom/sec/terrace/TerraceJni;->get()Lcom/sec/terrace/Terrace$Natives;

    move-result-object p1

    iget-wide v1, p0, Lcom/sec/terrace/Terrace;->mNativeTerrace:J

    invoke-interface {p1, v1, v2, p0}, Lcom/sec/terrace/Terrace$Natives;->setWindowAndroid(JLcom/sec/terrace/Terrace;)V

    iget-object p1, p0, Lcom/sec/terrace/Terrace;->mTerraceClient:Lcom/sec/terrace/Terrace$TerraceClient;

    if-eqz p1, :cond_6

    invoke-interface {p1, p0}, Lcom/sec/terrace/Terrace$TerraceClient;->getWindowAndroid(Lcom/sec/terrace/Terrace;)Lorg/chromium/ui/base/WindowAndroid;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/sec/terrace/Terrace;->mTerraceClient:Lcom/sec/terrace/Terrace$TerraceClient;

    invoke-interface {p1, p0}, Lcom/sec/terrace/Terrace$TerraceClient;->getWindowAndroid(Lcom/sec/terrace/Terrace;)Lorg/chromium/ui/base/WindowAndroid;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/ui/base/WindowAndroid;->getDisplay()Lorg/chromium/ui/display/DisplayAndroid;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-static {}, Lcom/sec/terrace/TerraceJni;->get()Lcom/sec/terrace/Terrace$Natives;

    move-result-object p1

    iget-wide v1, p0, Lcom/sec/terrace/Terrace;->mNativeTerrace:J

    iget-object v3, p0, Lcom/sec/terrace/Terrace;->mTerraceClient:Lcom/sec/terrace/Terrace$TerraceClient;

    invoke-interface {v3, p0}, Lcom/sec/terrace/Terrace$TerraceClient;->getWindowAndroid(Lcom/sec/terrace/Terrace;)Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/ui/base/WindowAndroid;->getDisplay()Lorg/chromium/ui/display/DisplayAndroid;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/ui/display/DisplayAndroid;->getDisplayId()I

    move-result v3

    invoke-interface {p1, v1, v2, p0, v3}, Lcom/sec/terrace/Terrace$Natives;->setDisplayID(JLcom/sec/terrace/Terrace;I)V

    :cond_6
    new-instance p1, Lcom/sec/terrace/Terrace$10;

    iget-object v1, p0, Lcom/sec/terrace/Terrace;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-direct {p1, p0, v1}, Lcom/sec/terrace/Terrace$10;-><init>(Lcom/sec/terrace/Terrace;Lorg/chromium/content_public/browser/WebContents;)V

    iput-object p1, p0, Lcom/sec/terrace/Terrace;->mWebContentsObserver:Lorg/chromium/content_public/browser/WebContentsObserver;

    new-instance p1, Lcom/sec/terrace/content/browser/TinSelectionActionMenuDelegate;

    invoke-direct {p1}, Lcom/sec/terrace/content/browser/TinSelectionActionMenuDelegate;-><init>()V

    invoke-direct {p0, p1}, Lcom/sec/terrace/Terrace;->initializeAutofillProviderIfNecessary(Lcom/sec/terrace/content/browser/TinSelectionActionMenuDelegate;)V

    iget-object p1, p0, Lcom/sec/terrace/Terrace;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v0, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/sec/terrace/Terrace;->mNumPixel16DP:I

    iget-object p1, p0, Lcom/sec/terrace/Terrace;->mTinFaviconManager:Lcom/sec/terrace/browser/favicon/TinFaviconManager;

    new-instance v0, Lcom/sec/terrace/Terrace$11;

    invoke-direct {v0, p0}, Lcom/sec/terrace/Terrace$11;-><init>(Lcom/sec/terrace/Terrace;)V

    invoke-virtual {p1, v0}, Lcom/sec/terrace/browser/favicon/TinFaviconManager;->setFaviconListener(Lcom/sec/terrace/browser/favicon/TinFaviconManager$FaviconListener;)V

    iget-object p1, p0, Lcom/sec/terrace/Terrace;->mTinContentViewCore:Lcom/sec/terrace/content/browser/TinContentViewCore;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/sec/terrace/content/browser/TinContentViewCore;->initializeActivityStateListener()V

    :cond_7
    iget-object p1, p0, Lcom/sec/terrace/Terrace;->mTerraceClient:Lcom/sec/terrace/Terrace$TerraceClient;

    invoke-interface {p1, p0}, Lcom/sec/terrace/Terrace$TerraceClient;->onInitializeTerrace(Lcom/sec/terrace/Terrace;)Z

    move-result p0

    return p0
.end method

.method public isActionModeShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/Terrace;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-static {p0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->isSelectActionBarShowing()Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public isBetterFavicon(IIZ)Z
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/sec/terrace/Terrace;->isIdealFaviconSize(II)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/sec/terrace/Terrace;->mFaviconWidth:I

    iget v2, p0, Lcom/sec/terrace/Terrace;->mFaviconHeight:I

    if-eq v0, v2, :cond_1

    if-ne p1, p2, :cond_1

    return v1

    :cond_1
    const/4 v3, 0x0

    if-ne v0, v2, :cond_2

    if-eq p1, p2, :cond_2

    return v3

    :cond_2
    if-eqz p3, :cond_3

    return v1

    :cond_3
    iget p0, p0, Lcom/sec/terrace/Terrace;->mNumPixel16DP:I

    if-lt v0, p0, :cond_4

    if-lt v2, p0, :cond_4

    return v3

    :cond_4
    if-le p1, v0, :cond_5

    if-ge p2, v2, :cond_7

    :cond_5
    if-lt p1, v0, :cond_6

    if-le p2, v2, :cond_6

    goto :goto_0

    :cond_6
    move v1, v3

    :cond_7
    :goto_0
    return v1
.end method

.method public isDestroyed()Z
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-wide v0, p0, Lcom/sec/terrace/Terrace;->mNativeTerrace:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDraggingOverInputField()Z
    .locals 6

    iget-object v0, p0, Lcom/sec/terrace/Terrace;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lcom/sec/terrace/Terrace;->mNativeTerrace:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-static {v1}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    invoke-static {}, Lcom/sec/terrace/TerraceJni;->get()Lcom/sec/terrace/Terrace$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/Terrace;->mNativeTerrace:J

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/terrace/Terrace$Natives;->isDraggingOverInputField(JLcom/sec/terrace/Terrace;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public isExtensionTerrace()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/terrace/Terrace;->mIsExtensionTerrace:Z

    return p0
.end method

.method public isFocusedNodeEditable()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/terrace/Terrace;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-static {p0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->isFocusedNodeEditable()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public isFullscreenForTabOrPending()Z
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-boolean p0, p0, Lcom/sec/terrace/Terrace;->mIsFullscreen:Z

    return p0
.end method

.method public isHidden()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/terrace/Terrace;->mIsHidden:Z

    return p0
.end method

.method public isHoverScrolling()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-static {p0}, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->isHoverScrolling()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInImageOrLinkDraggingMode()Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getDragDropHandler()Lcom/sec/terrace/content/browser/TinDragDropHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getDragDropHandler()Lcom/sec/terrace/content/browser/TinDragDropHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinDragDropHandler;->canDoImageOrLinkLongPressDrag()Z

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

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getWebContents()Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->isIncognito()Z

    move-result p0

    return p0
.end method

.method public isInitialNavigation()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getWebContents()Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getNavigationController()Lorg/chromium/content_public/browser/NavigationController;

    move-result-object p0

    invoke-interface {p0}, Lorg/chromium/content_public/browser/NavigationController;->isInitialNavigation()Z

    move-result p0

    return p0
.end method

.method public isInstalledWebappDelegateGeolocation()Z
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mListenerCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0}, Lcom/sec/terrace/TerraceListenerCallback;->isInstalledWebappDelegateGeolocation()Z

    move-result p0

    return p0
.end method

.method public isJavaScriptEnabled()Z
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-wide v0, p0, Lcom/sec/terrace/Terrace;->mNativeTerrace:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/TerraceJni;->get()Lcom/sec/terrace/Terrace$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/Terrace;->mNativeTerrace:J

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/terrace/Terrace$Natives;->isJavaScriptEnabled(JLcom/sec/terrace/Terrace;)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljunit/framework/AssertionFailedError;

    invoke-direct {p0}, Ljunit/framework/AssertionFailedError;-><init>()V

    throw p0
.end method

.method public isKnoxPolicySupported()Z
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-boolean p0, p0, Lcom/sec/terrace/Terrace;->mKnoxPolicySupported:Z

    return p0
.end method

.method public isLoading()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/terrace/Terrace;->mIsLoading:Z

    return p0
.end method

.method public isPictureInPictureAllowedForFullscreenVideo()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getWebContents()Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->isPictureInPictureAllowedForFullscreenVideo()Z

    move-result p0

    return p0
.end method

.method public isReadyToShow()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/terrace/Terrace;->mTinContentViewCore:Lcom/sec/terrace/content/browser/TinContentViewCore;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->isReadyToShow()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->isLoading()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public isSelectionPassword()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/Terrace;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-static {p0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->isSelectionPassword()Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public isSplitMode()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/terrace/Terrace;->mIsSplitMode:Z

    return p0
.end method

.method public isSslCertificateValid()Z
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/Terrace;->mNativeTerrace:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    invoke-static {}, Lcom/sec/terrace/TerraceJni;->get()Lcom/sec/terrace/Terrace$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/Terrace;->mNativeTerrace:J

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/terrace/Terrace$Natives;->isSslCertificateValid(JLcom/sec/terrace/Terrace;)Z

    move-result p0

    return p0
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    invoke-static {}, Lcom/sec/terrace/TerraceJni;->get()Lcom/sec/terrace/Terrace$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/Terrace;->mNativeTerrace:J

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-interface/range {v0 .. v6}, Lcom/sec/terrace/Terrace$Natives;->loadDataWithBaseURL(JLcom/sec/terrace/Terrace;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public loadUrl(Lcom/sec/terrace/browser/TerraceLoadUrlParams;)V
    .locals 13

    invoke-virtual {p1}, Lcom/sec/terrace/browser/TerraceLoadUrlParams;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-wide v1, p0, Lcom/sec/terrace/Terrace;->mNativeTerrace:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-static {v1}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    new-instance v1, Lorg/chromium/url/GURL;

    invoke-direct {v1, v0}, Lorg/chromium/url/GURL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/chromium/url/GURL;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v3, "chrome"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v1, "http"

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v4, "internet"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "internet-native"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_3
    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/terrace/browser/TerraceUrlUtilities;->getWebUIName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "dino"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "allow-dinosaur-easter-egg"

    invoke-static {v1}, Lcom/sec/terrace/TerraceCommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "flags"

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_4
    sget-object v1, Lcom/sec/terrace/TerraceConstants;->WEB_UI_URLS:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/sec/terrace/browser/TerraceUrlUtilities;->getWebUIName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v0, "chrome://urls"

    :cond_5
    :goto_1
    iput-boolean v2, p0, Lcom/sec/terrace/Terrace;->mWasRenderProcessGone:Z

    invoke-static {}, Lcom/sec/terrace/TerraceJni;->get()Lcom/sec/terrace/Terrace$Natives;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/terrace/Terrace;->mNativeTerrace:J

    invoke-static {v0}, Lcom/sec/terrace/browser/TerraceUrlUtilities;->fixupUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sec/terrace/browser/TerraceLoadUrlParams;->getVerbatimHeaders()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sec/terrace/browser/TerraceLoadUrlParams;->getTransitionType()I

    move-result v6

    invoke-virtual {p1}, Lcom/sec/terrace/browser/TerraceLoadUrlParams;->getReferrer()Lcom/sec/terrace/browser/TerraceReferrer;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/sec/terrace/browser/TerraceLoadUrlParams;->getReferrer()Lcom/sec/terrace/browser/TerraceReferrer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content_public/common/Referrer;->getUrl()Ljava/lang/String;

    move-result-object v0

    :goto_2
    move-object v7, v0

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    goto :goto_2

    :goto_3
    invoke-virtual {p1}, Lcom/sec/terrace/browser/TerraceLoadUrlParams;->getUserAgentOverrideOption()I

    move-result v8

    invoke-virtual {p1}, Lcom/sec/terrace/browser/TerraceLoadUrlParams;->getHasUserGesture()Z

    move-result v10

    invoke-virtual {p1}, Lcom/sec/terrace/browser/TerraceLoadUrlParams;->getIsRendererInitiated()Z

    move-result v11

    invoke-virtual {p1}, Lcom/sec/terrace/browser/TerraceLoadUrlParams;->getInitiatorOrigin()Lcom/sec/terrace/TerraceOrigin;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/terrace/TinTerraceInternals;->getOrigin(Lcom/sec/terrace/TerraceOrigin;)Lorg/chromium/url/Origin;

    move-result-object v12

    const/4 v9, 0x0

    move-object v0, v1

    move-wide v1, v2

    move-object v3, p0

    invoke-interface/range {v0 .. v12}, Lcom/sec/terrace/Terrace$Natives;->loadURL(JLcom/sec/terrace/Terrace;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZZZLorg/chromium/url/Origin;)V

    iget-object v0, p0, Lcom/sec/terrace/Terrace;->mListenerCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/terrace/Terrace;->mListenerCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {v0}, Lcom/sec/terrace/TerraceListenerCallback;->onLoadUrl()V

    return-void
.end method

.method public notifyFixedContainerEdgesChanged([I)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mTinContentViewCore:Lcom/sec/terrace/content/browser/TinContentViewCore;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/terrace/content/browser/TinContentViewCore;->notifyFixedContainerEdgesChanged([I)V

    :cond_0
    return-void
.end method

.method public onCloseContents()V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lcom/sec/terrace/Terrace;->mListenerCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mListenerCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0}, Lcom/sec/terrace/TerraceListenerCallback;->onCloseContents()V

    return-void
.end method

.method public onFindResultAvailable(Lcom/sec/terrace/browser/findinpage/TerraceFindNotificationDetails;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mListenerCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0, p1}, Lcom/sec/terrace/TerraceListenerCallback;->onFindResult(Lcom/sec/terrace/browser/findinpage/TerraceFindNotificationDetails;)V

    return-void
.end method

.method public onFinishRestoringWebState(Z)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mListenerCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0, p1}, Lcom/sec/terrace/TerraceListenerCallback;->onFinishRestoringWebState(Z)V

    return-void
.end method

.method public onNumberOfBlockedElements(I)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mListenerCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0, p1}, Lcom/sec/terrace/TerraceListenerCallback;->onNumberOfBlockedElements(I)V

    return-void
.end method

.method public onProvideAutoFillVirtualStructure(Landroid/view/ViewStructure;I)V
    .locals 2

    const-string v0, "Terrace"

    const-string v1, "Android autofill service requests for Virtual view structure"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mAutofillProvider:Lorg/chromium/components/autofill/AutofillProvider;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/chromium/components/autofill/AutofillProvider;->onProvideAutoFillVirtualStructure(Landroid/view/ViewStructure;I)V

    :cond_0
    return-void
.end method

.method public onRenderFrameHostChanged()V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mListenerCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0}, Lcom/sec/terrace/TerraceListenerCallback;->onRenderFrameHostChanged()V

    return-void
.end method

.method public onSubframeAsyncActionTaken(Ljava/lang/String;)V
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/Terrace;->mNativeTerrace:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    invoke-static {}, Lcom/sec/terrace/TerraceJni;->get()Lcom/sec/terrace/Terrace$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/Terrace;->mNativeTerrace:J

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/sec/terrace/Terrace$Natives;->onSubframeAsyncActionTaken(JLcom/sec/terrace/Terrace;Ljava/lang/String;)V

    return-void
.end method

.method public onUpdateTargetUrl(Ljava/lang/String;)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->isLoading()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mListenerCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0, p1}, Lcom/sec/terrace/TerraceListenerCallback;->onUpdateTargetUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onWebContentsCreated(Ljava/lang/String;)Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lcom/sec/terrace/Terrace;->mListenerCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mListenerCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0, p1}, Lcom/sec/terrace/TerraceListenerCallback;->onWebContentsCreated(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public pageSavedAs(Ljava/lang/String;)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lcom/sec/terrace/Terrace;->mListenerCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mListenerCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0, p1}, Lcom/sec/terrace/TerraceListenerCallback;->onPageSavedAs(Ljava/lang/String;)V

    return-void
.end method

.method public paste()V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->paste()V

    return-void
.end method

.method public prepareForExtractTextOnImage(Landroid/graphics/Bitmap;IIII)V
    .locals 6
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const-string v0, "Exception caused by createScaledBitmap"

    const-string v1, "Terrace"

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_4

    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    int-to-float p3, p3

    invoke-direct {p0}, Lcom/sec/terrace/Terrace;->getContentOffsetYPix()F

    move-result v3

    add-float/2addr v3, p3

    float-to-int v3, v3

    add-int v4, p2, p4

    invoke-direct {p0}, Lcom/sec/terrace/Terrace;->getContentOffsetYPix()F

    move-result v5

    add-float/2addr p3, v5

    float-to-int p3, p3

    add-int/2addr p3, p5

    invoke-direct {v2, p2, v3, v4, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    if-ne p2, p5, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    if-eq p2, p4, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mListenerCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0, p1, v2}, Lcom/sec/terrace/TerraceListenerCallback;->prepareForExtractTextOnImage(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    return-void

    :cond_2
    :goto_0
    :try_start_0
    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mListenerCallback:Lcom/sec/terrace/TerraceListenerCallback;

    const/4 p2, 0x1

    invoke-static {p1, p4, p5, p2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-interface {p0, p2, v2}, Lcom/sec/terrace/TerraceListenerCallback;->prepareForExtractTextOnImage(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    return-void

    :goto_3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    throw p0

    :cond_3
    :goto_4
    const-string p0, "LiveText Image bitmap is empty or null"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public prepareForImageOrLinkDrag(IIII)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getDragDropHandler()Lcom/sec/terrace/content/browser/TinDragDropHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getDragDropHandler()Lcom/sec/terrace/content/browser/TinDragDropHandler;

    move-result-object v0

    int-to-float p2, p2

    invoke-direct {p0}, Lcom/sec/terrace/Terrace;->getContentOffsetYPix()F

    move-result v1

    add-float/2addr p2, v1

    float-to-int p2, p2

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sec/terrace/content/browser/TinDragDropHandler;->prepareForImageOrLinkDrag(IIII)V

    :cond_0
    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mTinContentViewCore:Lcom/sec/terrace/content/browser/TinContentViewCore;

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->performLongPressHapticFeedbackIfNeeded()V

    return-void
.end method

.method public processImageTranslation(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Ljava/lang/String;IZJ)V
    .locals 10
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    move-object v0, p0

    iget-object v1, v0, Lcom/sec/terrace/Terrace;->mListenerCallback:Lcom/sec/terrace/TerraceListenerCallback;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/terrace/Terrace;->getContentOffsetYPix()F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x0

    move-object v5, p2

    invoke-virtual {p2, v2, v1}, Landroid/graphics/Rect;->offset(II)V

    new-instance v9, LO4/e;

    const/4 v1, 0x3

    move-wide/from16 v2, p6

    invoke-direct {v9, p0, v2, v3, v1}, LO4/e;-><init>(Ljava/lang/Object;JI)V

    iget-object v3, v0, Lcom/sec/terrace/Terrace;->mListenerCallback:Lcom/sec/terrace/TerraceListenerCallback;

    new-instance v7, Lcom/sec/terrace/content/common/TerraceImageTranslationRequestType;

    move v0, p4

    invoke-direct {v7, p4}, Lcom/sec/terrace/content/common/TerraceImageTranslationRequestType;-><init>(I)V

    move-object v4, p1

    move-object v6, p3

    move v8, p5

    invoke-interface/range {v3 .. v9}, Lcom/sec/terrace/TerraceListenerCallback;->processTranslation(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Ljava/lang/String;Lcom/sec/terrace/content/common/TerraceImageTranslationRequestType;ZLcom/sec/terrace/browser/image_text_translation/TerraceImageTextTranslationCallback;)V

    return-void
.end method

.method public pruneForwardEntries()V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getNavigationController()Lorg/chromium/content_public/browser/NavigationController;

    move-result-object p0

    invoke-interface {p0}, Lorg/chromium/content_public/browser/NavigationController;->pruneForwardEntries()V

    return-void
.end method

.method public recognizeArticleResult(Z)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mListenerCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0, p1}, Lcom/sec/terrace/TerraceListenerCallback;->onRecognizeArticleResult(Z)V

    return-void
.end method

.method public reload()V
    .locals 1

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mNavigationController:Lorg/chromium/content_public/browser/NavigationController;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lorg/chromium/content_public/browser/NavigationController;->reload(Z)V

    return-void
.end method

.method public reloadNonWebUIPage(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getUrl()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/chromium/url/GURL;

    invoke-direct {v1, v0}, Lorg/chromium/url/GURL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/chromium/url/GURL;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "chrome"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "chrome-native"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "internet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "internet-native"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "internet-extension"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getWasRenderProcessGone()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->reload()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/terrace/Terrace;->setNeedsReload()V

    :cond_2
    :goto_0
    return-void
.end method

.method public reloadOriginalRequestUrl()V
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/Terrace;->mNativeTerrace:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    invoke-static {}, Lcom/sec/terrace/TerraceJni;->get()Lcom/sec/terrace/Terrace$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/Terrace;->mNativeTerrace:J

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/terrace/Terrace$Natives;->reloadOriginalRequestUrl(JLcom/sec/terrace/Terrace;)V

    return-void
.end method

.method public removeEntryAtIndex(I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getWebContents()Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getNavigationController()Lorg/chromium/content_public/browser/NavigationController;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/chromium/content_public/browser/NavigationController;->removeEntryAtIndex(I)Z

    move-result p0

    return p0
.end method

.method public removeJavaScriptInterface(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getWebContents()Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getWebContents()Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/content_public/browser/JavascriptInjector;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content_public/browser/JavascriptInjector;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/chromium/content_public/browser/JavascriptInjector;->removeInterface(Ljava/lang/String;)V

    return-void
.end method

.method public removeObserver(Lcom/sec/terrace/Terrace$TerraceObserver;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {p0, p1}, Lorg/chromium/base/ObserverList;->removeObserver(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeOnDragListener()V
    .locals 2

    iget-object v0, p0, Lcom/sec/terrace/Terrace;->mTinContentView:Lcom/sec/terrace/content/browser/TinContentView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/terrace/Terrace;->mDragListener:Landroid/view/View$OnDragListener;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Lorg/chromium/components/embedder_support/view/ContentView;->removeOnDragListener(Landroid/view/View$OnDragListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/terrace/Terrace;->mDragListener:Landroid/view/View$OnDragListener;

    :cond_1
    :goto_0
    return-void
.end method

.method public requestContext(Landroid/os/Bundle;Lorg/chromium/content/browser/webcontents/WebContentsImpl$RequestContextCallback;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/chromium/content/browser/webcontents/WebContentsImpl$RequestContextCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/terrace/Terrace;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mListenerCallback:Lcom/sec/terrace/TerraceListenerCallback;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sec/terrace/TerraceRequestPageContextCallback;

    invoke-direct {v0, p2}, Lcom/sec/terrace/TerraceRequestPageContextCallback;-><init>(Lorg/chromium/content/browser/webcontents/WebContentsImpl$RequestContextCallback;)V

    invoke-interface {p0, p1, v0}, Lcom/sec/terrace/TerraceListenerCallback;->requestContext(Landroid/os/Bundle;Lcom/sec/terrace/TerraceRequestPageContextCallback;)V

    return-void

    :cond_1
    :goto_0
    const-string p0, ""

    invoke-interface {p2, p0, p1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl$RequestContextCallback;->run(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public requestDocumentDump()V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mTinContentViewCore:Lcom/sec/terrace/content/browser/TinContentViewCore;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->requestDocumentDump()V

    return-void
.end method

.method public requestDocumentDumpResult(Ljava/lang/String;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mListenerCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0, p1}, Lcom/sec/terrace/TerraceListenerCallback;->onRequestDocumentDumpResult(Ljava/lang/String;)V

    return-void
.end method

.method public requestFocus()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getWebContainerView()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getWebContainerView()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method public requestNumberOfBlockedElements()V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mTinContentViewCore:Lcom/sec/terrace/content/browser/TinContentViewCore;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->requestNumberOfBlockedElements()V

    return-void
.end method

.method public resetTopLevelNativeWindow(Landroid/content/Context;)V
    .locals 7

    instance-of v0, p1, Lcom/sec/terrace/TerraceActivity;

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    const-string v1, "Terrace"

    if-nez v0, :cond_0

    const-string p0, "Context is not an instance of TerraceActivity"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    check-cast p1, Lcom/sec/terrace/TerraceActivity;

    invoke-virtual {p1}, Lcom/sec/terrace/TerraceActivity;->getTerraceClient()Lcom/sec/terrace/Terrace$TerraceClient;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/terrace/Terrace;->mTerraceClient:Lcom/sec/terrace/Terrace$TerraceClient;

    if-nez p1, :cond_1

    const-string p0, "TerraceClient is not initialized"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-interface {p1}, Lcom/sec/terrace/Terrace$TerraceClient;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/terrace/Terrace;->mApplicationContext:Landroid/content/Context;

    iget-object p1, p0, Lcom/sec/terrace/Terrace;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sec/terrace/Terrace;->mViewAndroidDelegate:Lorg/chromium/ui/base/ViewAndroidDelegate;

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/sec/terrace/Terrace;->mTerraceClient:Lcom/sec/terrace/Terrace$TerraceClient;

    invoke-interface {p1}, Lcom/sec/terrace/Terrace$TerraceClient;->onInitializeCompositorView()V

    iget-object p1, p0, Lcom/sec/terrace/Terrace;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getWindowAndroid()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->setTopLevelNativeWindow(Lorg/chromium/ui/base/WindowAndroid;)V

    iget-object v1, p0, Lcom/sec/terrace/Terrace;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-static {}, Lcom/sec/terrace/browser/TinVersionInfo;->getVersionNumber()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/terrace/Terrace;->mViewAndroidDelegate:Lorg/chromium/ui/base/ViewAndroidDelegate;

    iget-object v4, p0, Lcom/sec/terrace/Terrace;->mTinContentView:Lcom/sec/terrace/content/browser/TinContentView;

    iget-object p1, p0, Lcom/sec/terrace/Terrace;->mTerraceClient:Lcom/sec/terrace/Terrace$TerraceClient;

    invoke-interface {p1, p0}, Lcom/sec/terrace/Terrace$TerraceClient;->getWindowAndroid(Lcom/sec/terrace/Terrace;)Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v5

    invoke-static {}, Lorg/chromium/content_public/browser/WebContents;->createDefaultInternalsHolder()Lorg/chromium/content_public/browser/WebContents$InternalsHolder;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->setDelegates(Ljava/lang/String;Lorg/chromium/ui/base/ViewAndroidDelegate;Lorg/chromium/content_public/browser/ViewEventSink$InternalAccessDelegate;Lorg/chromium/ui/base/WindowAndroid;Lorg/chromium/content_public/browser/WebContents$InternalsHolder;)V

    iget-object p1, p0, Lcom/sec/terrace/Terrace;->mAutofillProvider:Lorg/chromium/components/autofill/AutofillProvider;

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/chromium/components/autofill/AutofillProvider;->onContextChanged(Landroid/content/Context;)V

    :cond_3
    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->notifyRendererPreferenceUpdate()V

    :cond_4
    :goto_0
    return-void
.end method

.method public restoreWebState(Ljava/lang/String;)V
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/Terrace;->mNativeTerrace:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    invoke-static {}, Lcom/sec/terrace/TerraceJni;->get()Lcom/sec/terrace/Terrace$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/Terrace;->mNativeTerrace:J

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/sec/terrace/Terrace$Natives;->restoreWebState(JLcom/sec/terrace/Terrace;Ljava/lang/String;)V

    return-void
.end method

.method public retrieveWebState()V
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/Terrace;->mNativeTerrace:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    invoke-static {}, Lcom/sec/terrace/TerraceJni;->get()Lcom/sec/terrace/Terrace$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/Terrace;->mNativeTerrace:J

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/terrace/Terrace$Natives;->retrieveWebState(JLcom/sec/terrace/Terrace;)V

    return-void
.end method

.method public retrieveWebStateSynchronous()Ljava/lang/String;
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/Terrace;->mNativeTerrace:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    invoke-static {}, Lcom/sec/terrace/TerraceJni;->get()Lcom/sec/terrace/Terrace$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/Terrace;->mNativeTerrace:J

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/terrace/Terrace$Natives;->retrieveWebStateSynchronous(JLcom/sec/terrace/Terrace;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public savePage()V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mTinContentViewCore:Lcom/sec/terrace/content/browser/TinContentViewCore;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->savePage()V

    return-void
.end method

.method public scrollBy(II)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getEventForwarder()Lorg/chromium/ui/base/EventForwarder;

    move-result-object p0

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-virtual {p0, p1, p2}, Lorg/chromium/ui/base/EventForwarder;->scrollBy(FF)V

    return-void
.end method

.method public selectAll()V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/Terrace;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/terrace/Terrace;->mTinContentViewCore:Lcom/sec/terrace/content/browser/TinContentViewCore;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->clearMultiSelection()V

    :cond_1
    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->selectAll()V

    return-void
.end method

.method public selectLongPressedLink()V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mTinContentViewCore:Lcom/sec/terrace/content/browser/TinContentViewCore;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->selectLinkText()V

    return-void
.end method

.method public setAddToHomescreenManagerForTest(Lcom/sec/terrace/browser/webapps/TinAddToHomescreenManager;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/sec/terrace/Terrace;->mAddToHomescreenManager:Lcom/sec/terrace/browser/webapps/TinAddToHomescreenManager;

    return-void
.end method

.method public setBackgroundPlayAllowed(Z)V
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/Terrace;->mNativeTerrace:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    invoke-static {}, Lcom/sec/terrace/TerraceJni;->get()Lcom/sec/terrace/Terrace$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/Terrace;->mNativeTerrace:J

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/sec/terrace/Terrace$Natives;->setBackgroundPlayAllowed(JLcom/sec/terrace/Terrace;Z)V

    return-void
.end method

.method public setBitmapRequestHandlerForTest(Lcom/sec/terrace/content/browser/TinBitmapRequestHandler;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/sec/terrace/Terrace;->mBitmapRequestHandler:Lcom/sec/terrace/content/browser/TinBitmapRequestHandler;

    return-void
.end method

.method public setContentViewBackgroundColor(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mTerraceClient:Lcom/sec/terrace/Terrace$TerraceClient;

    invoke-interface {p0, p1}, Lcom/sec/terrace/Terrace$TerraceClient;->onSetContentViewBackgroundColor(I)V

    return-void
.end method

.method public setContentViewCoreForTest(Lcom/sec/terrace/content/browser/TinContentViewCore;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/sec/terrace/Terrace;->mTinContentViewCore:Lcom/sec/terrace/content/browser/TinContentViewCore;

    return-void
.end method

.method public setContextForTest(Landroid/content/Context;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/sec/terrace/Terrace;->mApplicationContext:Landroid/content/Context;

    return-void
.end method

.method public setContextMenuPopulator(Lcom/sec/terrace/TerraceContextMenuPopulator;)V
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/Terrace;->mNativeTerrace:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    invoke-static {p1}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    invoke-static {}, Lcom/sec/terrace/TerraceJni;->get()Lcom/sec/terrace/Terrace$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/Terrace;->mNativeTerrace:J

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/sec/terrace/Terrace$Natives;->setContextMenuPopulator(JLcom/sec/terrace/Terrace;Lcom/sec/terrace/TerraceContextMenuPopulator;)V

    iput-object p1, p0, Lcom/sec/terrace/Terrace;->mContextMenuPopulator:Lcom/sec/terrace/TerraceContextMenuPopulator;

    return-void
.end method

.method public setCustomUserAgent(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "si-custom-user-agent"

    if-nez v0, :cond_0

    invoke-static {v1, p1}, Lcom/sec/terrace/TerraceCommandLine;->appendSwitchWithValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/sec/terrace/TerraceCommandLine;->removeSwitch(Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Lcom/sec/terrace/TerraceJni;->get()Lcom/sec/terrace/Terrace$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/Terrace;->mNativeTerrace:J

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/sec/terrace/Terrace$Natives;->setCustomUserAgent(JLcom/sec/terrace/Terrace;Ljava/lang/String;)V

    return-void
.end method

.method public setDefaultFontSize(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/terrace/TerraceJni;->get()Lcom/sec/terrace/Terrace$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/Terrace;->mNativeTerrace:J

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/sec/terrace/Terrace$Natives;->setDefaultFontSize(JLcom/sec/terrace/Terrace;I)V

    return-void
.end method

.method public setFaviconForTest(Landroid/graphics/Bitmap;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/sec/terrace/Terrace;->mFavicon:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setFaviconManagerForTest(Lcom/sec/terrace/browser/favicon/TinFaviconManager;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/sec/terrace/Terrace;->mTinFaviconManager:Lcom/sec/terrace/browser/favicon/TinFaviconManager;

    return-void
.end method

.method public setFaviconUrlForTest(Ljava/lang/String;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/sec/terrace/Terrace;->mFaviconUrl:Ljava/lang/String;

    return-void
.end method

.method public setFindEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/Terrace;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-static {p0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->setFindEnabled(Z)V

    return-void
.end method

.method public setFindInPageBridgeForTest(Lorg/chromium/components/find_in_page/FindInPageBridge;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/sec/terrace/Terrace;->mFindInPageBridge:Lorg/chromium/components/find_in_page/FindInPageBridge;

    return-void
.end method

.method public setHasPersistentVideo(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getWebContents()Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->setHasPersistentVideo(Z)V

    return-void
.end method

.method public setImportance(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getWebContents()Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->setImportance(I)V

    return-void
.end method

.method public setImportantForAutofillForVirtualView(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/Terrace;->mTinContentView:Lcom/sec/terrace/content/browser/TinContentView;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->checkAutofillServiceIsSPass()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mTinContentView:Lcom/sec/terrace/content/browser/TinContentView;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sec/terrace/content/browser/TinContentView;->setImportantForAutofillForVirtualView(Z)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mTinContentView:Lcom/sec/terrace/content/browser/TinContentView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/terrace/content/browser/TinContentView;->setImportantForAutofillForVirtualView(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setInsetSupplierForTest(Lorg/chromium/ui/base/ApplicationViewportInsetSupplier;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/sec/terrace/Terrace;->mCurrentInsetSupplier:Lorg/chromium/ui/base/ApplicationViewportInsetSupplier;

    return-void
.end method

.method public setInterceptNavigationDelegate(Lcom/sec/terrace/navigation_interception/TerraceInterceptNavigationDelegate;)V
    .locals 6

    new-instance v0, Lcom/sec/terrace/Terrace$InterceptNavigationDelegateImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/sec/terrace/Terrace$InterceptNavigationDelegateImpl;-><init>(Lcom/sec/terrace/navigation_interception/TerraceInterceptNavigationDelegate;I)V

    iput-object v0, p0, Lcom/sec/terrace/Terrace;->mInterceptNavigationDelegate:Lorg/chromium/components/navigation_interception/InterceptNavigationDelegate;

    iget-wide v2, p0, Lcom/sec/terrace/Terrace;->mNativeTerrace:J

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v1}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    invoke-static {}, Lcom/sec/terrace/TerraceJni;->get()Lcom/sec/terrace/Terrace$Natives;

    move-result-object p1

    iget-wide v0, p0, Lcom/sec/terrace/Terrace;->mNativeTerrace:J

    iget-object v2, p0, Lcom/sec/terrace/Terrace;->mInterceptNavigationDelegate:Lorg/chromium/components/navigation_interception/InterceptNavigationDelegate;

    invoke-interface {p1, v0, v1, p0, v2}, Lcom/sec/terrace/Terrace$Natives;->setInterceptNavigationDelegate(JLcom/sec/terrace/Terrace;Lorg/chromium/components/navigation_interception/InterceptNavigationDelegate;)V

    return-void
.end method

.method public setIsExtensionTerrace(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/terrace/Terrace;->mIsExtensionTerrace:Z

    return-void
.end method

.method public setIsLoading(Z)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iput-boolean p1, p0, Lcom/sec/terrace/Terrace;->mIsLoading:Z

    iget-object v0, p0, Lcom/sec/terrace/Terrace;->mListenerCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {v0, p1}, Lcom/sec/terrace/TerraceListenerCallback;->setIsLoading(Z)V

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mTinContentViewCore:Lcom/sec/terrace/content/browser/TinContentViewCore;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/terrace/content/browser/TinContentViewCore;->setIsLoading(Z)V

    :cond_0
    return-void
.end method

.method public setJavaScriptEnabled(Z)V
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/Terrace;->mNativeTerrace:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    invoke-static {}, Lcom/sec/terrace/TerraceJni;->get()Lcom/sec/terrace/Terrace$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/Terrace;->mNativeTerrace:J

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/sec/terrace/Terrace$Natives;->setJavaScriptEnabled(JLcom/sec/terrace/Terrace;Z)V

    return-void
.end method

.method public setKnoxPolicySupported(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/terrace/Terrace;->mKnoxPolicySupported:Z

    return-void
.end method

.method public setLastSentThemeColor(I)V
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/Terrace;->mNativeTerrace:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    invoke-static {}, Lcom/sec/terrace/TerraceJni;->get()Lcom/sec/terrace/Terrace$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/Terrace;->mNativeTerrace:J

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/sec/terrace/Terrace$Natives;->setLastSentThemeColor(JLcom/sec/terrace/Terrace;I)V

    return-void
.end method

.method public setListenerCallback(Lcom/sec/terrace/TerraceListenerCallback;)V
    .locals 1

    invoke-static {p1}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/sec/terrace/Terrace;->mListenerCallback:Lcom/sec/terrace/TerraceListenerCallback;

    iget-object p1, p0, Lcom/sec/terrace/Terrace;->mTinContentViewCore:Lcom/sec/terrace/content/browser/TinContentViewCore;

    invoke-static {p1}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/sec/terrace/Terrace;->mTinContentViewCore:Lcom/sec/terrace/content/browser/TinContentViewCore;

    iget-object v0, p0, Lcom/sec/terrace/Terrace;->mListenerCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-virtual {p1, v0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->setContentViewCallback(Lcom/sec/terrace/TerraceContentViewCallback;)V

    iget-object p1, p0, Lcom/sec/terrace/Terrace;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-static {p1}, Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/sec/terrace/Terrace$4;

    invoke-direct {v0, p0}, Lcom/sec/terrace/Terrace$4;-><init>(Lcom/sec/terrace/Terrace;)V

    invoke-virtual {p1, v0}, Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl;->setDelegate(Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl$TerraceDelegate;)V

    :cond_0
    return-void
.end method

.method public setListenerCallbackForTest(Lcom/sec/terrace/TerraceListenerCallback;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/sec/terrace/Terrace;->mListenerCallback:Lcom/sec/terrace/TerraceListenerCallback;

    return-void
.end method

.method public setMediaClient(Lcom/sec/terrace/content/browser/media/TerraceMediaClient;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mTinContentViewCore:Lcom/sec/terrace/content/browser/TinContentViewCore;

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/terrace/content/browser/TinContentViewCore;->setMediaClient(Lcom/sec/terrace/content/browser/media/TerraceMediaClient;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setNativeTerraceForTest(J)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-wide p1, p0, Lcom/sec/terrace/Terrace;->mNativeTerrace:J

    return-void
.end method

.method public setNavigationControllerForTest(Lorg/chromium/content_public/browser/NavigationController;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/sec/terrace/Terrace;->mNavigationController:Lorg/chromium/content_public/browser/NavigationController;

    return-void
.end method

.method public setOverlayMode(Z)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mTerraceClient:Lcom/sec/terrace/Terrace$TerraceClient;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1}, Lcom/sec/terrace/Terrace$TerraceClient;->setOverlayVideoMode(Z)V

    return-void
.end method

.method public setOverlayVideoMode(Z)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mTerraceClient:Lcom/sec/terrace/Terrace$TerraceClient;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1}, Lcom/sec/terrace/Terrace$TerraceClient;->setOverlayVideoMode(Z)V

    return-void
.end method

.method public setSavePageDirectory(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mTinContentViewCore:Lcom/sec/terrace/content/browser/TinContentViewCore;

    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/terrace/content/browser/TinContentViewCore;->setSavePageDirectory(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setSplitMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/terrace/Terrace;->mIsSplitMode:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sec/terrace/Terrace;->setFindEnabled(Z)V

    return-void
.end method

.method public setSplitViewSize(II)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mTinContentViewCore:Lcom/sec/terrace/content/browser/TinContentViewCore;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sec/terrace/content/browser/TinContentViewCore;->setSplitViewSize(II)V

    return-void
.end method

.method public setTabID(I)V
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/Terrace;->mNativeTerrace:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    invoke-static {}, Lcom/sec/terrace/TerraceJni;->get()Lcom/sec/terrace/Terrace$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/Terrace;->mNativeTerrace:J

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/sec/terrace/Terrace$Natives;->setTabID(JLcom/sec/terrace/Terrace;I)V

    return-void
.end method

.method public setTerraceClientForTest(Lcom/sec/terrace/Terrace$TerraceClient;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/sec/terrace/Terrace;->mTerraceClient:Lcom/sec/terrace/Terrace$TerraceClient;

    return-void
.end method

.method public setTinWebContentsImplForTest(Lcom/sec/terrace/content/browser/TinWebContentsImpl;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/sec/terrace/Terrace;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    return-void
.end method

.method public setTopControlsHeight(II)V
    .locals 2

    iget-object v0, p0, Lcom/sec/terrace/Terrace;->mTinContentViewCore:Lcom/sec/terrace/content/browser/TinContentViewCore;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/terrace/Terrace;->getContentOffsetYPix()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_2

    invoke-direct {p0}, Lcom/sec/terrace/Terrace;->getBottomShownPix()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/terrace/Terrace;->setTopControlsHeight(IIZ)V

    return-void
.end method

.method public setTopControlsHeight(IIZ)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mTinContentViewCore:Lcom/sec/terrace/content/browser/TinContentViewCore;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/terrace/content/browser/TinContentViewCore;->setTopControlsHeight(IIZ)V

    return-void
.end method

.method public setUseDesktopUserAgent(ZZ)V
    .locals 1

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mNavigationController:Lorg/chromium/content_public/browser/NavigationController;

    const/4 v0, 0x4

    invoke-interface {p0, p1, p2, v0}, Lorg/chromium/content_public/browser/NavigationController;->setUseDesktopUserAgent(ZZI)V

    return-void
.end method

.method public setWasRenderProcessGoneForTest(Z)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-boolean p1, p0, Lcom/sec/terrace/Terrace;->mWasRenderProcessGone:Z

    return-void
.end method

.method public setWebContentsObserverForTest(Lorg/chromium/content_public/browser/WebContentsObserver;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/sec/terrace/Terrace;->mWebContentsObserver:Lorg/chromium/content_public/browser/WebContentsObserver;

    return-void
.end method

.method public setWebContentsXOffset(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/Terrace;->mTinContentViewCore:Lcom/sec/terrace/content/browser/TinContentViewCore;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/sec/terrace/content/browser/TinContentViewCore;->setWebContentsXOffset(I)V

    iget-object v0, p0, Lcom/sec/terrace/Terrace;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-static {v0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-static {p0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->setWebContentsXOffsetPx(I)V

    :cond_1
    return-void
.end method

.method public setZoomControllerForTest()V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {}, Lcom/sec/terrace/TerraceJni;->get()Lcom/sec/terrace/Terrace$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/Terrace;->mNativeTerrace:J

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/terrace/Terrace$Natives;->setZoomControllerForTest(JLcom/sec/terrace/Terrace;)V

    return-void
.end method

.method public setZoomValue(D)V
    .locals 7

    iget-wide v0, p0, Lcom/sec/terrace/Terrace;->mNativeTerrace:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    invoke-static {}, Lcom/sec/terrace/TerraceJni;->get()Lcom/sec/terrace/Terrace$Natives;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/terrace/Terrace;->mNativeTerrace:J

    move-object v4, p0

    move-wide v5, p1

    invoke-interface/range {v1 .. v6}, Lcom/sec/terrace/Terrace$Natives;->setZoomValue(JLcom/sec/terrace/Terrace;D)V

    return-void
.end method

.method public shouldExemptFromTrackingProtection()Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lcom/sec/terrace/Terrace;->mListenerCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mListenerCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0}, Lcom/sec/terrace/TerraceListenerCallback;->shouldExemptFromTrackingProtection()Z

    move-result p0

    return p0
.end method

.method public show()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/terrace/Terrace;->show(Z)V

    return-void
.end method

.method public show(Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/terrace/Terrace;->mTerraceClient:Lcom/sec/terrace/Terrace$TerraceClient;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/sec/terrace/Terrace;->mTinContentViewCore:Lcom/sec/terrace/content/browser/TinContentViewCore;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Lcom/sec/terrace/Terrace$TerraceClient;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/terrace/TerraceApplicationStatus;->getStateForActivity(Landroid/app/Activity;)I

    move-result v0

    if-eqz p1, :cond_1

    const/4 p1, 0x5

    if-lt v0, p1, :cond_1

    new-instance p0, Ljava/lang/Exception;

    const-string p1, "Terrace::show was called while Activity State is in background."

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Terrace"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string p1, "show start"

    const-string v0, "TAB-STATUS"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/terrace/Terrace;->mIsHidden:Z

    iget-object v1, p0, Lcom/sec/terrace/Terrace;->mTerraceClient:Lcom/sec/terrace/Terrace$TerraceClient;

    invoke-interface {v1, p0}, Lcom/sec/terrace/Terrace$TerraceClient;->onShowTerrace(Lcom/sec/terrace/Terrace;)V

    iget-object v1, p0, Lcom/sec/terrace/Terrace;->mApplicationContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/terrace/TinTerraceInternals;->getBackgroundColor(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/terrace/Terrace;->setContentViewBackgroundColor(I)V

    iget-object v1, p0, Lcom/sec/terrace/Terrace;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/sec/terrace/content/browser/TinWebContentsImpl;->updateWebContentsVisibility(I)V

    iget-object v1, p0, Lcom/sec/terrace/Terrace;->mTinContentViewCore:Lcom/sec/terrace/content/browser/TinContentViewCore;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v2}, Lcom/sec/terrace/content/browser/TinContentViewCore;->notifyFastScrollerEnabled(ZZ)V

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getWebContents()Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getWebContents()Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getVirtualKeyboardMode()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/terrace/Terrace;->updateVirtualKeyboardMode(I)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/terrace/Terrace;->updateVirtualKeyboardMode(I)V

    :goto_0
    iget-boolean v1, p0, Lcom/sec/terrace/Terrace;->mWasRenderProcessGone:Z

    if-eqz v1, :cond_3

    iput-boolean p1, p0, Lcom/sec/terrace/Terrace;->mWasRenderProcessGone:Z

    invoke-direct {p0}, Lcom/sec/terrace/Terrace;->restoreIfNeeded()V

    :cond_3
    const-string p0, "show done"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    return-void
.end method

.method public showAutoSigninPrompt(Ljava/lang/String;)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lcom/sec/terrace/Terrace;->mListenerCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mListenerCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0, p1}, Lcom/sec/terrace/TerraceListenerCallback;->showAutoSigninPrompt(Ljava/lang/String;)V

    return-void
.end method

.method public showRepostFormWarningDialog()V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {p0}, Lcom/sec/terrace/browser/TinSwipeRefreshHandler;->get(Lcom/sec/terrace/Terrace;)Lcom/sec/terrace/browser/TinSwipeRefreshHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/terrace/browser/TinSwipeRefreshHandler;->reset()V

    :cond_0
    iget-object v0, p0, Lcom/sec/terrace/Terrace;->mListenerCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mListenerCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0}, Lcom/sec/terrace/TerraceListenerCallback;->showRepostFormWarningDialog()V

    return-void
.end method

.method public startContextMenuDownload(Ljava/lang/String;Z)V
    .locals 7

    iget-wide v0, p0, Lcom/sec/terrace/Terrace;->mNativeTerrace:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    invoke-static {}, Lcom/sec/terrace/TerraceJni;->get()Lcom/sec/terrace/Terrace$Natives;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/terrace/Terrace;->mNativeTerrace:J

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    invoke-interface/range {v1 .. v6}, Lcom/sec/terrace/Terrace$Natives;->onContextMenuDownload(JLcom/sec/terrace/Terrace;Ljava/lang/String;Z)V

    return-void
.end method

.method public startFinding(Ljava/lang/String;ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/Terrace;->mTinContentViewCore:Lcom/sec/terrace/content/browser/TinContentViewCore;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->clearSelection()V

    :cond_0
    iget-object v0, p0, Lcom/sec/terrace/Terrace;->mFindInPageBridge:Lorg/chromium/components/find_in_page/FindInPageBridge;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2, p3}, Lorg/chromium/components/find_in_page/FindInPageBridge;->startFinding(Ljava/lang/String;ZZ)V

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mFindInPageBridge:Lorg/chromium/components/find_in_page/FindInPageBridge;

    invoke-virtual {p0}, Lorg/chromium/components/find_in_page/FindInPageBridge;->activateFindInPageResultForAccessibility()V

    :cond_1
    return-void
.end method

.method public stopFinding()V
    .locals 1

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mFindInPageBridge:Lorg/chromium/components/find_in_page/FindInPageBridge;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/chromium/components/find_in_page/FindInPageBridge;->stopFinding(Z)V

    :cond_0
    return-void
.end method

.method public stopLoading()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getWebContents()Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/terrace/Terrace;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-virtual {v0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->stop()V

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mListenerCallback:Lcom/sec/terrace/TerraceListenerCallback;

    const-wide/16 v0, 0x0

    invoke-interface {p0, v0, v1}, Lcom/sec/terrace/TerraceListenerCallback;->onLoadProgressChanged(D)V

    :cond_1
    :goto_0
    return-void
.end method

.method public surfaceCreated()V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mListenerCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {p0}, Lcom/sec/terrace/TerraceListenerCallback;->surfaceCreated()V

    return-void
.end method

.method public suspendMediaSession()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getWebContents()Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->suspendMediaSession()V

    :cond_0
    return-void
.end method

.method public toggleFullscreenModeForTab(ZZ)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iput-boolean p1, p0, Lcom/sec/terrace/Terrace;->mIsFullscreen:Z

    iget-object v0, p0, Lcom/sec/terrace/Terrace;->mListenerCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/terrace/Terrace;->mListenerCallback:Lcom/sec/terrace/TerraceListenerCallback;

    invoke-interface {v0, p1, p2}, Lcom/sec/terrace/TerraceListenerCallback;->toggleFullscreenModeForTab(ZZ)V

    iget-object p2, p0, Lcom/sec/terrace/Terrace;->mTinContentViewCore:Lcom/sec/terrace/content/browser/TinContentViewCore;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/sec/terrace/content/browser/TinContentViewCore;->hideFastScroller()V

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mTinContentViewCore:Lcom/sec/terrace/content/browser/TinContentViewCore;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1, p1}, Lcom/sec/terrace/content/browser/TinContentViewCore;->setTopControlsHeight(IIZ)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/terrace/Terrace;->notifyExitFullScreenMode()V

    :cond_1
    :goto_0
    return-void
.end method

.method public translate()V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->translate()V

    :cond_1
    return-void
.end method

.method public updateBrowserControlsState(IZ)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mTinContentViewCore:Lcom/sec/terrace/content/browser/TinContentViewCore;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sec/terrace/content/browser/TinContentViewCore;->updateBrowserControlsState(IZ)V

    return-void
.end method

.method public updateMousePointerIcon(I)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getWebContainerView()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/terrace/Terrace;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getWebContainerView()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setPointerIcon(Landroid/view/PointerIcon;)V

    return-void
.end method

.method public wasHidden()V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mTinContentViewCore:Lcom/sec/terrace/content/browser/TinContentViewCore;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->wasHidden()V

    :cond_0
    return-void
.end method

.method public wasShown()V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/Terrace;->mTinContentViewCore:Lcom/sec/terrace/content/browser/TinContentViewCore;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->wasShown()V

    :cond_0
    return-void
.end method
