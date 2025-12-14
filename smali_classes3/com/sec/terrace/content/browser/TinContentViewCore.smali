.class public Lcom/sec/terrace/content/browser/TinContentViewCore;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/UserData;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/content/browser/TinContentViewCore$UserDataFactoryLazyHolder;,
        Lcom/sec/terrace/content/browser/TinContentViewCore$Natives;
    }
.end annotation


# static fields
.field private static final BITMAP_COMPOSITION_ENABLED:Z

.field private static sEnableFastScroll:Z

.field public static sTopControlsShown:Z

.field private static sTraceBegin:Ljava/lang/reflect/Method;

.field private static sTraceEnd:Ljava/lang/reflect/Method;


# instance fields
.field private mActivityStateListener:Lorg/chromium/base/ApplicationStatus$ActivityStateListener;

.field private mApplicationBottomInsetSupplier:Lorg/chromium/ui/base/ApplicationViewportInsetSupplier;

.field private mBottomControlsHeightPix:I

.field private mBottomControlsOffsetPix:I

.field private mBottomShownPix:I

.field private final mCachePoint:Landroid/graphics/Point;

.field private final mCacheRect:Landroid/graphics/Rect;

.field private mContentHeight:F

.field private mContentViewCallback:Lcom/sec/terrace/TerraceContentViewCallback;

.field private mContentViewHidden:Z

.field private mContext:Landroid/content/Context;

.field private mControlsResizeView:Z

.field private mDidReceiveResizeAckForTest:Z

.field private mFastScrollManager:Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;

.field private mFirstFrameUpdateAfterTerraceShows:Z

.field private mFirstFrameUpdateAfterTerraceShowsForDex:Z

.field private mGestureStateListener:Lcom/sec/terrace/content/browser/TinGestureStateListener;

.field private mHandler:Landroid/os/Handler;

.field private mHapticFeedbackDoneOnLongPress:Z

.field private mHasKeyboardGeometryChangeFired:Z

.field private mHoverHitTestLayer:Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;

.field private mInitialized:Z

.field private mIsFrameUpdatedAfterNavigation:Z

.field private mIsReadyToShow:Z

.field private mIsSpenSelection:Z

.field private mMediaClient:Lcom/sec/terrace/content/browser/media/TerraceMediaClient;

.field private mMultiSelectionHandler:Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;

.field private mNativeContentViewCore:J

.field private mNativeScrollbarHidden:Z

.field private mOnSystemUiVisibilityChangeListener:Landroid/view/View$OnSystemUiVisibilityChangeListener;

.field private mOnViewportInsetsChanged:Lorg/chromium/base/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/Callback<",
            "Lorg/chromium/ui/base/ViewportInsets;",
            ">;"
        }
    .end annotation
.end field

.field private mResizeInProgress:Z

.field private mResizeViewportHeightPixForTest:I

.field private mScrollOffsetX:F

.field private mScrollOffsetY:F

.field private mShowingFullscreen:Z

.field private mSplitViewHeight:I

.field private mSplitViewWidth:I

.field private mSystemUiFullscreenResizeRunnable:Ljava/lang/Runnable;

.field private mTopControlsFrozen:Z

.field private mTopControlsHeightPix:I

.field private mTopControlsInTranslation:Z

.field private mTopControlsOffsetPix:I

.field private mTopControlsState:I

.field private mTopShownPix:I

.field private mTouchHitTestLayer:Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;

.field private mUpdatedFrameInfo:Z

.field private mUpdatedViewportWidth:I

.field private mViewportHeightPix:I

.field private mViewportWidthPix:I

.field private mVirtualKeyboardMode:I
    .annotation build Lorg/chromium/ui/mojom/VirtualKeyboardMode$EnumType;
    .end annotation
.end field

.field private mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

.field private mWebContentsXOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "enable-top-controls-ui-composition"

    invoke-static {v0}, Lcom/sec/terrace/TerraceCommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/terrace/content/browser/TinContentViewCore;->BITMAP_COMPOSITION_ENABLED:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/terrace/content/browser/TinContentViewCore;->sEnableFastScroll:Z

    return-void
.end method

.method public constructor <init>(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mWebContentsXOffset:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mVirtualKeyboardMode:I

    iput-boolean v0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mTopControlsFrozen:Z

    iput-boolean v0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mDidReceiveResizeAckForTest:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mActivityStateListener:Lorg/chromium/base/ApplicationStatus$ActivityStateListener;

    sget-object v2, Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;->BITMAP_LAYER_NONE:Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;

    iput-object v2, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mTouchHitTestLayer:Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;

    iput-object v2, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mHoverHitTestLayer:Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;

    iput-object v1, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mFastScrollManager:Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;

    iput-boolean v0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mNativeScrollbarHidden:Z

    iput-boolean v0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mFirstFrameUpdateAfterTerraceShows:Z

    iput-boolean v0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mUpdatedFrameInfo:Z

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mCacheRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mCachePoint:Landroid/graphics/Point;

    iput-boolean v0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mFirstFrameUpdateAfterTerraceShowsForDex:Z

    iput v0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mUpdatedViewportWidth:I

    iput-boolean v0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mIsFrameUpdatedAfterNavigation:Z

    check-cast p1, Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    iput-object p1, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    return-void
.end method

.method public static synthetic a(Lcom/sec/terrace/content/browser/TinContentViewCore;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/terrace/content/browser/TinContentViewCore;->lambda$initialize$0(I)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/terrace/content/browser/TinContentViewCore;Lorg/chromium/ui/base/ViewportInsets;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/terrace/content/browser/TinContentViewCore;->lambda$setApplicationViewportInsetSupplier$1(Lorg/chromium/ui/base/ViewportInsets;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/terrace/content/browser/TinContentViewCore;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->handleWindowInsetChanged()V

    return-void
.end method

.method private clearMotionEventOffset(Landroid/view/MotionEvent;)V
    .locals 1

    sget-boolean v0, Lcom/sec/terrace/content/browser/TinContentViewCore;->BITMAP_COMPOSITION_ENABLED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    invoke-static {p1}, Lorg/chromium/ui/base/SPenSupport;->convertSPenEventAction(I)I

    move-result v0

    if-eq v0, p1, :cond_1

    move p1, v0

    :cond_1
    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/16 v0, 0xa

    if-ne p1, v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getEventForwarder()Lcom/sec/terrace/ui/base/TinEventForwarder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lorg/chromium/ui/base/EventForwarder;->setCurrentTouchEventOffsets(FF)V

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->setTopControlsHeight()V

    :cond_3
    return-void
.end method

.method public static create(Landroid/content/Context;Lorg/chromium/content_public/browser/WebContents;)Lcom/sec/terrace/content/browser/TinContentViewCore;
    .locals 2

    check-cast p1, Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    const-class v0, Lcom/sec/terrace/content/browser/TinContentViewCore;

    sget-object v1, Lcom/sec/terrace/content/browser/TinContentViewCore$UserDataFactoryLazyHolder;->INSTANCE:Lorg/chromium/content_public/browser/WebContents$UserDataFactory;

    invoke-virtual {p1, v0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getOrSetUserData(Ljava/lang/Class;Lorg/chromium/content_public/browser/WebContents$UserDataFactory;)Lorg/chromium/base/UserData;

    move-result-object p1

    check-cast p1, Lcom/sec/terrace/content/browser/TinContentViewCore;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/terrace/content/browser/TinContentViewCore;->initialized()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1, p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->initialize(Landroid/content/Context;)V

    :cond_1
    return-object p1
.end method

.method public static bridge synthetic d(Lcom/sec/terrace/content/browser/TinContentViewCore;)Lcom/sec/terrace/TerraceContentViewCallback;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mContentViewCallback:Lcom/sec/terrace/TerraceContentViewCallback;

    return-object p0
.end method

.method private defaultVirtualKeyboardMode()I
    .locals 0
    .annotation build Lorg/chromium/ui/mojom/VirtualKeyboardMode$EnumType;
    .end annotation

    const/4 p0, 0x1

    return p0
.end method

.method private disableBitmapCompositionForLayers()V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getNativeContentViewCore()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/terrace/content/browser/TinContentViewCoreJni;->get()Lcom/sec/terrace/content/browser/TinContentViewCore$Natives;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getNativeContentViewCore()J

    move-result-wide v1

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/terrace/content/browser/TinContentViewCore$Natives;->disableBitmapCompositionForLayers(JLcom/sec/terrace/content/browser/TinContentViewCore;)V

    return-void
.end method

.method public static bridge synthetic e(Lcom/sec/terrace/content/browser/TinContentViewCore;)Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mFastScrollManager:Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/sec/terrace/content/browser/TinContentViewCore;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mIsSpenSelection:Z

    return p0
.end method

.method public static fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lcom/sec/terrace/content/browser/TinContentViewCore;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    check-cast p0, Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    const-class v1, Lcom/sec/terrace/content/browser/TinContentViewCore;

    invoke-virtual {p0, v1, v0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getOrSetUserData(Ljava/lang/Class;Lorg/chromium/content_public/browser/WebContents$UserDataFactory;)Lorg/chromium/base/UserData;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/content/browser/TinContentViewCore;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/sec/terrace/content/browser/TinContentViewCore;)I
    .locals 0

    iget p0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mViewportHeightPix:I

    return p0
.end method

.method private getContentView()Lorg/chromium/components/embedder_support/view/ContentView;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object p0

    check-cast p0, Lorg/chromium/components/embedder_support/view/ContentView;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private getMultiSelectionListSize()I
    .locals 0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getTinMultiSelectionHandler()Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;->getMultiSelectionListSize()I

    move-result p0

    return p0
.end method

.method private getMultiSelectionMarkup()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getTinMultiSelectionHandler()Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;->getHTMLSelections()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getResourceLayerHitByPoint(IFF)Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;
    .locals 7

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getNativeContentViewCore()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    sget-object p0, Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;->BITMAP_LAYER_NONE:Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;

    return-object p0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/content/browser/TinContentViewCoreJni;->get()Lcom/sec/terrace/content/browser/TinContentViewCore$Natives;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getNativeContentViewCore()J

    move-result-wide v1

    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-interface/range {v0 .. v6}, Lcom/sec/terrace/content/browser/TinContentViewCore$Natives;->findResourceLayerHitByPoint(JLcom/sec/terrace/content/browser/TinContentViewCore;IFF)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-static {}, Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;->values()[Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;

    move-result-object p1

    aget-object p0, p1, p0

    return-object p0
.end method

.method private getViewportSize()Landroid/graphics/Point;
    .locals 4

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mShowingFullscreen:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/chromium/ui/KeyboardVisibilityDelegate;->getInstance()Lorg/chromium/ui/KeyboardVisibilityDelegate;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/chromium/ui/KeyboardVisibilityDelegate;->isKeyboardShowing(Landroid/content/Context;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mCacheRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mCachePoint:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mCacheRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getViewportWidthPix()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mCacheRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getViewportHeightPix()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mCachePoint:Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getViewportWidthPix()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getViewportHeightPix()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    :goto_0
    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mCachePoint:Landroid/graphics/Point;

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/sec/terrace/content/browser/TinContentViewCore;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mIsSpenSelection:Z

    return-void
.end method

.method private handleSystemUiVisibilityChange()V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/View;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_1
    :goto_1
    invoke-direct {p0, v1}, Lcom/sec/terrace/content/browser/TinContentViewCore;->isInFullscreenMode(I)Z

    move-result v0

    invoke-direct {p0, v1}, Lcom/sec/terrace/content/browser/TinContentViewCore;->isLayoutFullscreen(I)Z

    move-result v1

    iget-boolean v2, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mShowingFullscreen:Z

    if-ne v2, v0, :cond_2

    return-void

    :cond_2
    iput-boolean v0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mShowingFullscreen:Z

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mSystemUiFullscreenResizeRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_3

    new-instance v0, Lcom/sec/terrace/content/browser/c;

    const/4 v2, 0x0

    invoke-direct {v0, v2, p0}, Lcom/sec/terrace/content/browser/c;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mSystemUiFullscreenResizeRunnable:Ljava/lang/Runnable;

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_2
    if-eqz v1, :cond_4

    const-wide/16 v0, 0x1f4

    goto :goto_3

    :cond_4
    const-wide/16 v0, 0x0

    :goto_3
    iget-object v2, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mSystemUiFullscreenResizeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private handleWindowInsetChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mApplicationBottomInsetSupplier:Lorg/chromium/ui/base/ApplicationViewportInsetSupplier;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/ui/base/ApplicationViewportInsetSupplier;->insetsAffectWebContentsSize()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->updateWebContentsSize()V

    :cond_0
    return-void
.end method

.method public static bridge synthetic i(Lcom/sec/terrace/content/browser/TinContentViewCore;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/terrace/content/browser/TinContentViewCore;->clearMotionEventOffset(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private initializeFastScrollManager()V
    .locals 6

    sget-boolean v0, Lcom/sec/terrace/content/browser/TinContentViewCore;->sEnableFastScroll:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sput-boolean v1, Lcom/sec/terrace/content/browser/TinContentViewCore;->sEnableFastScroll:Z

    return-void

    :cond_1
    new-instance v0, Lcom/sec/terrace/content/browser/TinContentViewCore$4;

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinatesImpl;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3}, Lcom/sec/terrace/content/browser/TinContentViewCore$4;-><init>(Lcom/sec/terrace/content/browser/TinContentViewCore;Landroid/content/Context;Lorg/chromium/content_public/browser/RenderCoordinates;)V

    iput-object v0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mFastScrollManager:Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {}, Lcom/sec/terrace/content/browser/TinContentViewCoreJni;->get()Lcom/sec/terrace/content/browser/TinContentViewCore$Natives;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getNativeContentViewCore()J

    move-result-wide v3

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_2

    move v1, v5

    :cond_2
    invoke-interface {v2, v3, v4, p0, v1}, Lcom/sec/terrace/content/browser/TinContentViewCore$Natives;->setLayoutRtl(JLcom/sec/terrace/content/browser/TinContentViewCore;Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method private initializeMultiSelection()V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getNativeContentViewCore()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-direct {v0, v1, v2}, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;-><init>(Landroid/content/Context;Lcom/sec/terrace/content/browser/TinWebContentsImpl;)V

    iput-object v0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mMultiSelectionHandler:Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;

    invoke-virtual {v0}, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;->initializeAndAddMultiSelectionJSHandler()V

    :cond_0
    return-void
.end method

.method private isInFullscreenMode(I)Z
    .locals 2

    invoke-static {}, Lcom/sec/terrace/TinTerraceInternals;->isHideStatusBarEnabled()Z

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    const/16 p0, 0x1004

    and-int/2addr p1, p0

    if-ne p1, p0, :cond_0

    move v0, v1

    :cond_0
    return v0

    :cond_1
    and-int/lit8 p0, p1, 0x4

    if-nez p0, :cond_2

    and-int/lit16 p0, p1, 0x800

    if-nez p0, :cond_2

    and-int/lit16 p0, p1, 0x1000

    if-eqz p0, :cond_3

    :cond_2
    move v0, v1

    :cond_3
    return v0
.end method

.method private isLayoutFullscreen(I)Z
    .locals 0

    and-int/lit16 p0, p1, 0x400

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static bridge synthetic j(Lcom/sec/terrace/content/browser/TinContentViewCore;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->disableBitmapCompositionForLayers()V

    return-void
.end method

.method public static bridge synthetic k(Lcom/sec/terrace/content/browser/TinContentViewCore;)I
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getMultiSelectionListSize()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic l(Lcom/sec/terrace/content/browser/TinContentViewCore;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/terrace/content/browser/TinContentViewCore;->updateMotionEventOffset(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private synthetic lambda$initialize$0(I)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->handleSystemUiVisibilityChange()V

    return-void
.end method

.method private synthetic lambda$setApplicationViewportInsetSupplier$1(Lorg/chromium/ui/base/ViewportInsets;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->handleWindowInsetChanged()V

    return-void
.end method

.method private notifyVirtualKeyboardOverlayGeometryChangeEvent(II)V
    .locals 4

    const/4 v0, 0x0

    if-lez p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v2

    if-eqz v2, :cond_3

    if-nez v1, :cond_1

    iget-boolean v2, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mHasKeyboardGeometryChangeFired:Z

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iput-boolean v1, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mHasKeyboardGeometryChangeFired:Z

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    if-eqz v1, :cond_2

    iget v0, v2, Landroid/graphics/Rect;->left:I

    iget v1, v2, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/sec/terrace/content/browser/TinContentViewCore;->notifyVirtualKeyboardOverlayRect(IIII)V

    goto :goto_1

    :cond_2
    invoke-direct {p0, v0, v0, v0, v0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->notifyVirtualKeyboardOverlayRect(IIII)V

    :cond_3
    :goto_1
    return-void
.end method

.method private notifyVirtualKeyboardOverlayRect(IIII)V
    .locals 7

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/TerraceHelper;->getCurrentTerraceActivity()Lcom/sec/terrace/TerraceActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/sec/terrace/TinTerraceInternals;->getCompositorView(Lcom/sec/terrace/TerraceActivity;)Lcom/sec/terrace/browser/compositor/TinCompositorView;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/sec/terrace/browser/compositor/TinCompositorView;->notifyVirtualKeyboardOverlayRect(Lorg/chromium/content_public/browser/WebContents;IIII)V

    :cond_1
    return-void
.end method

.method private onNativeTinContentViewCoreDestroyed(J)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mNativeContentViewCore:J

    return-void
.end method

.method private resetBackgroundColor()V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getNativeContentViewCore()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/terrace/content/browser/TinContentViewCoreJni;->get()Lcom/sec/terrace/content/browser/TinContentViewCore$Natives;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getNativeContentViewCore()J

    move-result-wide v1

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/terrace/content/browser/TinContentViewCore$Natives;->resetBackgroundColor(JLcom/sec/terrace/content/browser/TinContentViewCore;)V

    return-void
.end method

.method private resetResourceLayerManagerClient()V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getNativeContentViewCore()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/terrace/content/browser/TinContentViewCoreJni;->get()Lcom/sec/terrace/content/browser/TinContentViewCore$Natives;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getNativeContentViewCore()J

    move-result-wide v1

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/terrace/content/browser/TinContentViewCore$Natives;->resetResourceLayerManagerClient(JLcom/sec/terrace/content/browser/TinContentViewCore;)V

    return-void
.end method

.method private static setTopControlShown(Z)V
    .locals 0

    sput-boolean p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->sTopControlsShown:Z

    return-void
.end method

.method private shouldBitmapCompositedLayersConsumeTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-static {v0}, Lorg/chromium/ui/base/SPenSupport;->convertSPenEventAction(I)I

    move-result v1

    if-eq v1, v0, :cond_0

    move v0, v1

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const/4 v3, 0x5

    if-ne v0, v3, :cond_1

    goto :goto_0

    :cond_1
    move v3, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v3, v1

    :goto_1
    if-eq v0, v1, :cond_4

    const/4 v4, 0x6

    if-eq v0, v4, :cond_4

    const/4 v4, 0x3

    if-ne v0, v4, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :cond_4
    :goto_2
    iget-object v4, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mTouchHitTestLayer:Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;

    sget-object v5, Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;->BITMAP_LAYER_NONE:Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;

    if-ne v4, v5, :cond_5

    if-nez v3, :cond_5

    return v2

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-direct {p0, v0, v4, v6}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getResourceLayerHitByPoint(IFF)Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;

    move-result-object v0

    if-eqz v3, :cond_6

    iput-object v0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mTouchHitTestLayer:Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;

    if-ne v0, v5, :cond_6

    return v2

    :cond_6
    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mContentViewCallback:Lcom/sec/terrace/TerraceContentViewCallback;

    iget-object v2, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mTouchHitTestLayer:Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;

    invoke-interface {v0, p1, v2}, Lcom/sec/terrace/TerraceContentViewCallback;->shouldBitmapCompositedLayersConsumeEvent(Landroid/view/MotionEvent;Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;)Z

    move-result p1

    if-eqz v1, :cond_7

    iput-object v5, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mTouchHitTestLayer:Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;

    :cond_7
    return p1
.end method

.method private updateMotionEventOffset(Landroid/view/MotionEvent;)V
    .locals 1

    sget-boolean v0, Lcom/sec/terrace/content/browser/TinContentViewCore;->BITMAP_COMPOSITION_ENABLED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    invoke-static {p1}, Lorg/chromium/ui/base/SPenSupport;->convertSPenEventAction(I)I

    move-result v0

    if-eq v0, p1, :cond_1

    move p1, v0

    :cond_1
    if-eqz p1, :cond_2

    const/16 v0, 0x9

    if-eq p1, v0, :cond_2

    const/4 v0, 0x7

    if-ne p1, v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getEventForwarder()Lcom/sec/terrace/ui/base/TinEventForwarder;

    move-result-object p1

    iget v0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mWebContentsXOffset:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinatesImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/content/browser/RenderCoordinatesImpl;->getContentOffsetYPix()F

    move-result p0

    neg-float p0, p0

    invoke-virtual {p1, v0, p0}, Lorg/chromium/ui/base/EventForwarder;->setCurrentTouchEventOffsets(FF)V

    :cond_3
    return-void
.end method

.method private updateWebContentsSize()V
    .locals 6

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getViewportSize()Landroid/graphics/Point;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-boolean v2, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mControlsResizeView:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getTopControlsHeightPix()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getBottomControlsHeightPix()I

    move-result v4

    add-int/2addr v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    iget-object v2, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mApplicationBottomInsetSupplier:Lorg/chromium/ui/base/ApplicationViewportInsetSupplier;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/chromium/base/supplier/ObservableSupplierImpl;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/chromium/ui/base/ViewportInsets;

    iget v2, v2, Lorg/chromium/ui/base/ViewportInsets;->webContentsHeightInset:I

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    add-int/2addr v4, v2

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/terrace/content/browser/TinContentViewCore;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v2, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    iget v3, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mSplitViewWidth:I

    sub-int v3, v1, v3

    sub-int/2addr v0, v4

    iget v4, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mSplitViewHeight:I

    sub-int/2addr v0, v4

    invoke-virtual {v2, v3, v0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->setSize(II)V

    iget v0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mVirtualKeyboardMode:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    invoke-static {}, Lcom/sec/terrace/TinTerraceInternals;->calculateKeyboardHeight()I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->notifyVirtualKeyboardOverlayGeometryChangeEvent(II)V

    goto :goto_2

    :cond_2
    if-eqz v2, :cond_3

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/view/View;->measure(II)V

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/view/View;->layout(IIII)V

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v1

    iget v3, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mSplitViewWidth:I

    sub-int/2addr v1, v3

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v2, v4

    iget p0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mSplitViewHeight:I

    sub-int/2addr v2, p0

    invoke-virtual {v0, v1, v2}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->setSize(II)V

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public clearDisplayedGraphics()V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mContentViewCallback:Lcom/sec/terrace/TerraceContentViewCallback;

    invoke-interface {p0}, Lcom/sec/terrace/TerraceContentViewCallback;->clearDisplayedGraphics()V

    return-void
.end method

.method public clearMultiSelection()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getTinMultiSelectionHandler()Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getTinMultiSelectionHandler()Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;->clearMultiSelection(Z)V

    return-void
.end method

.method public clearSelection()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getSelectionPopupController()Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->shouldUnselectAllOnDismiss()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getSelectionPopupController()Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->clearSelection()V

    :cond_0
    return-void
.end method

.method public copySelectedTexts()V
    .locals 4

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getMultiSelectionListSize()I

    move-result v0

    if-lez v0, :cond_0

    const-string v1, "2236"

    int-to-long v2, v0

    const-string v0, "201"

    invoke-static {v0, v1, v2, v3}, Lcom/sec/terrace/browser/TinSALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getTinMultiSelectionHandler()Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;->getSelectedText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getMultiSelectionMarkup()Ljava/lang/String;

    move-result-object p0

    const-string v2, "html"

    invoke-static {v2, v1, p0}, Landroid/content/ClipData;->newHtmlText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/content/ClipData;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/terrace/browser/TinClipboardUtils;->copyToSecClipboard(Landroid/content/Context;Landroid/content/ClipData;)Z

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->copy()V

    return-void
.end method

.method public destroy()V
    .locals 6

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->disableBitmapCompositionForLayers()V

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->resetResourceLayerManagerClient()V

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mActivityStateListener:Lorg/chromium/base/ApplicationStatus$ActivityStateListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/chromium/base/ApplicationStatus;->unregisterActivityStateListener(Lorg/chromium/base/ApplicationStatus$ActivityStateListener;)V

    iput-object v1, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mActivityStateListener:Lorg/chromium/base/ApplicationStatus$ActivityStateListener;

    :cond_0
    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->resetAndHideKeyboard()V

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getTinTapDisambiguator()Lcom/sec/terrace/content/browser/TinTapDisambiguator;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl;->removeEventObserver(Lorg/chromium/content_public/browser/ImeEventObserver;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mGestureStateListener:Lcom/sec/terrace/content/browser/TinGestureStateListener;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getGestureListenerManager()Lcom/sec/terrace/content/browser/TinGestureListenerManagerImpl;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mGestureStateListener:Lcom/sec/terrace/content/browser/TinGestureStateListener;

    invoke-virtual {v0, v2}, Lorg/chromium/content/browser/GestureListenerManagerImpl;->removeListener(Lorg/chromium/content_public/browser/GestureStateListener;)V

    :cond_2
    invoke-direct {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getContentView()Lorg/chromium/components/embedder_support/view/ContentView;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getContentView()Lorg/chromium/components/embedder_support/view/ContentView;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mOnSystemUiVisibilityChangeListener:Landroid/view/View$OnSystemUiVisibilityChangeListener;

    invoke-virtual {v0, v2}, Lorg/chromium/components/embedder_support/view/ContentView;->removeOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    :cond_3
    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mApplicationBottomInsetSupplier:Lorg/chromium/ui/base/ApplicationViewportInsetSupplier;

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mOnViewportInsetsChanged:Lorg/chromium/base/Callback;

    invoke-virtual {v0, v2}, Lorg/chromium/base/supplier/ObservableSupplierImpl;->removeObserver(Lorg/chromium/base/Callback;)V

    :cond_4
    new-instance v0, Lcom/sec/terrace/content/browser/TinContentViewCore$3;

    invoke-direct {v0, p0}, Lcom/sec/terrace/content/browser/TinContentViewCore$3;-><init>(Lcom/sec/terrace/content/browser/TinContentViewCore;)V

    iput-object v0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mContentViewCallback:Lcom/sec/terrace/TerraceContentViewCallback;

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getEventForwarder()Lcom/sec/terrace/ui/base/TinEventForwarder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/terrace/ui/base/TinEventForwarder;->setEventDelegate(Lcom/sec/terrace/ui/base/TinEventForwarder$TinInternalAccessDelegate;)V

    :cond_5
    iget-wide v2, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/sec/terrace/content/browser/TinContentViewCoreJni;->get()Lcom/sec/terrace/content/browser/TinContentViewCore$Natives;

    move-result-object v0

    iget-wide v2, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mNativeContentViewCore:J

    invoke-interface {v0, v2, v3, p0}, Lcom/sec/terrace/content/browser/TinContentViewCore$Natives;->onJavaContentViewCoreDestroyed(JLcom/sec/terrace/content/browser/TinContentViewCore;)V

    :cond_6
    iput-object v1, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mGestureStateListener:Lcom/sec/terrace/content/browser/TinGestureStateListener;

    iput-object v1, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mOnSystemUiVisibilityChangeListener:Landroid/view/View$OnSystemUiVisibilityChangeListener;

    iput-object v1, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mFastScrollManager:Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;

    iput-object v1, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    iput-wide v4, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mNativeContentViewCore:J

    return-void
.end method

.method public destroySelectActionMode()V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->clearSelection()V

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getSelectionPopupController()Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->destroySelectActionMode()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getSelectionPopupController Failed with the following: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TinContentViewCore"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public didEnableBitmapCompositionForLayer(IZZ)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mContentViewCallback:Lcom/sec/terrace/TerraceContentViewCallback;

    sget-object p1, Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;->BITMAP_LAYER_TOPBAR:Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/terrace/TerraceContentViewCallback;->didEnableBitmapCompositionForLayer(Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;ZZ)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mContentViewCallback:Lcom/sec/terrace/TerraceContentViewCallback;

    sget-object p1, Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;->BITMAP_LAYER_BOTTOMBAR:Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/terrace/TerraceContentViewCallback;->didEnableBitmapCompositionForLayer(Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;ZZ)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mContentViewCallback:Lcom/sec/terrace/TerraceContentViewCallback;

    sget-object p1, Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;->BITMAP_LAYER_BOTH:Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/terrace/TerraceContentViewCallback;->didEnableBitmapCompositionForLayer(Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;ZZ)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mContentViewCallback:Lcom/sec/terrace/TerraceContentViewCallback;

    sget-object p1, Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;->BITMAP_LAYER_NONE:Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;

    const/4 p2, 0x0

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/terrace/TerraceContentViewCallback;->didEnableBitmapCompositionForLayer(Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;ZZ)V

    :goto_0
    return-void
.end method

.method public didNavigateMainFrame(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->hideFastScroller()V

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p1}, Lcom/sec/terrace/content/browser/TinContentViewCore;->notifyFastScrollerEnabled(ZZ)V

    :cond_0
    return-void
.end method

.method public didReceiveResizeAck(II)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinatesImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/content/browser/RenderCoordinatesImpl;->getDeviceScaleFactor()F

    move-result p1

    int-to-float p2, p2

    mul-float/2addr p1, p2

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    iput p1, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mResizeViewportHeightPixForTest:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mDidReceiveResizeAckForTest:Z

    return-void
.end method

.method public didReceiveUpdateFrameForTest()Z
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-boolean p0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mDidReceiveResizeAckForTest:Z

    return p0
.end method

.method public didStartNavigation()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->clearSelection()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mIsFrameUpdatedAfterNavigation:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mContentHeight:F

    return-void
.end method

.method public didUpdateLayerAppearance(IZ)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mFastScrollManager:Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "didUpdateLayerAppearance   visible="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->instant(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mFastScrollManager:Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;

    invoke-virtual {p0, p1, p2}, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->didUpdateLayerAppearance(IZ)V

    :cond_0
    return-void
.end method

.method public doBrowserControlsShrinkBlinkSize()Z
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-boolean p0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mControlsResizeView:Z

    return p0
.end method

.method public enableBitmapCompositionForLayer(Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;ZLandroid/graphics/Bitmap;Z)V
    .locals 9

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getNativeContentViewCore()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    invoke-static {}, Lcom/sec/terrace/content/browser/TinContentViewCoreJni;->get()Lcom/sec/terrace/content/browser/TinContentViewCore$Natives;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getNativeContentViewCore()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;->getEnumValue()I

    move-result v5

    move-object v4, p0

    move v6, p2

    move-object v7, p3

    move v8, p4

    invoke-interface/range {v1 .. v8}, Lcom/sec/terrace/content/browser/TinContentViewCore$Natives;->enableBitmapCompositionForLayer(JLcom/sec/terrace/content/browser/TinContentViewCore;IZLandroid/graphics/Bitmap;Z)V

    return-void
.end method

.method public enableBlurEffectOnToolbar(Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;IIIIIF)V
    .locals 12

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getNativeContentViewCore()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    invoke-static {}, Lcom/sec/terrace/content/browser/TinContentViewCoreJni;->get()Lcom/sec/terrace/content/browser/TinContentViewCore$Natives;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getNativeContentViewCore()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;->getEnumValue()I

    move-result v5

    move-object v4, p0

    move v6, p2

    move v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-interface/range {v1 .. v11}, Lcom/sec/terrace/content/browser/TinContentViewCore$Natives;->enableBlurEffectOnToolbar(JLcom/sec/terrace/content/browser/TinContentViewCore;IIIIIIF)V

    return-void
.end method

.method public forceUnFreezeAndShowTopControls(Z)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mTopControlsFrozen:Z

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Lcom/sec/terrace/content/browser/TinContentViewCore;->updateBrowserControlsState(ZZZ)V

    invoke-virtual {p0, v1, v1, v0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->updateBrowserControlsState(ZZZ)V

    return-void
.end method

.method public freezeTopControls(Ljava/lang/String;)V
    .locals 4
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget v0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mTopControlsState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mTopControlsFrozen:Z

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinatesImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinatesImpl;->getContentOffsetYPix()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gtz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinatesImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinatesImpl;->getBottomShownPix()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2, v3, v3}, Lcom/sec/terrace/content/browser/TinContentViewCore;->updateBrowserControlsState(ZZZ)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0, v3, v2, v3}, Lcom/sec/terrace/content/browser/TinContentViewCore;->updateBrowserControlsState(ZZZ)V

    :goto_1
    const-string v0, "freezeTopControls() - Top Controls is frozen by "

    const-string v1, "TinContentViewCore"

    invoke-static {v0, p1, v1}, LV0/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mTopControlsFrozen:Z

    :cond_3
    :goto_2
    return-void
.end method

.method public getBottomControlsHeightPix()I
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget p0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mBottomControlsHeightPix:I

    return p0
.end method

.method public getBottomShownPix()I
    .locals 0

    iget p0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mBottomShownPix:I

    return p0
.end method

.method public getBrowserTopControlsState()I
    .locals 0

    iget p0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mTopControlsState:I

    return p0
.end method

.method public getChildProcessUniqueId()I
    .locals 4

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getNativeContentViewCore()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/content/browser/TinContentViewCoreJni;->get()Lcom/sec/terrace/content/browser/TinContentViewCore$Natives;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getNativeContentViewCore()J

    move-result-wide v1

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/terrace/content/browser/TinContentViewCore$Natives;->getChildProcessUniqueId(JLcom/sec/terrace/content/browser/TinContentViewCore;)I

    move-result p0

    return p0
.end method

.method public getContainerView()Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getViewAndroidDelegate()Lorg/chromium/ui/base/ViewAndroidDelegate;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/ui/base/ViewAndroidDelegate;->getContainerViewGroup()Landroid/view/ViewGroup;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getContentViewCallback()Lcom/sec/terrace/TerraceContentViewCallback;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mContentViewCallback:Lcom/sec/terrace/TerraceContentViewCallback;

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getCurrentVisibleRect()Landroid/graphics/Rect;
    .locals 2

    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinatesImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/RenderCoordinatesImpl;->getContentOffsetYPix()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinatesImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/RenderCoordinatesImpl;->getLastFrameViewportWidthPixInt()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget v1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinatesImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/content/browser/RenderCoordinatesImpl;->getLastFrameViewportHeightPixInt()I

    move-result p0

    add-int/2addr p0, v1

    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    return-object v0
.end method

.method public getEventForwarder()Lcom/sec/terrace/ui/base/TinEventForwarder;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getEventForwarder()Lorg/chromium/ui/base/EventForwarder;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/ui/base/TinEventForwarder;

    return-object p0
.end method

.method public getFastScrollManager()Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mFastScrollManager:Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;

    return-object p0
.end method

.method public getFirstFrameUpdateAfterTerraceShows()Z
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-boolean p0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mFirstFrameUpdateAfterTerraceShows:Z

    return p0
.end method

.method public getFirstFrameUpdateAfterTerraceShowsForDex()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mFirstFrameUpdateAfterTerraceShowsForDex:Z

    return p0
.end method

.method public getGestureListenerManager()Lcom/sec/terrace/content/browser/TinGestureListenerManagerImpl;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-static {p0}, Lcom/sec/terrace/content/browser/TinGestureListenerManagerImpl;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lcom/sec/terrace/content/browser/TinGestureListenerManagerImpl;

    move-result-object p0

    return-object p0
.end method

.method public getHeight()I
    .locals 2

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mViewportHeightPix:I

    :goto_0
    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinatesImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/RenderCoordinatesImpl;->getContentOffsetYPix()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mContentViewCallback:Lcom/sec/terrace/TerraceContentViewCallback;

    invoke-interface {p0}, Lcom/sec/terrace/TerraceContentViewCallback;->getBottomControlsHeightYPix()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public getLastSelectedText()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getSelectionPopupController()Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->getSelectedText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLastViewportHeightPixForTest()I
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget p0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mResizeViewportHeightPixForTest:I

    return p0
.end method

.method public getMediaClient()Lcom/sec/terrace/content/browser/media/TerraceMediaClient;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mMediaClient:Lcom/sec/terrace/content/browser/media/TerraceMediaClient;

    return-object p0
.end method

.method public getNativeContentViewCore()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mNativeContentViewCore:J

    return-wide v0
.end method

.method public getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinatesImpl;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinatesImpl;

    move-result-object p0

    return-object p0
.end method

.method public getScrollOffsetX()F
    .locals 0

    iget p0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mScrollOffsetX:F

    return p0
.end method

.method public getScrollOffsetY()F
    .locals 0

    iget p0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mScrollOffsetY:F

    return p0
.end method

.method public getSelectedText()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getMultiSelectionListSize()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getTinMultiSelectionHandler()Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;->getSelectedText()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getSelectionPopupController()Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->getSelectedText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSelectionPopupController()Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-static {p0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;

    move-result-object p0

    return-object p0
.end method

.method public getTinMultiSelectionHandler()Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mMultiSelectionHandler:Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;

    return-object p0
.end method

.method public getTinSPenHoverScroller()Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-static {p0}, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;

    move-result-object p0

    return-object p0
.end method

.method public getTinTapDisambiguator()Lcom/sec/terrace/content/browser/TinTapDisambiguator;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-static {p0}, Lcom/sec/terrace/content/browser/TinTapDisambiguator;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lcom/sec/terrace/content/browser/TinTapDisambiguator;

    move-result-object p0

    return-object p0
.end method

.method public getTopControlsHeightPix()I
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget p0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mTopControlsHeightPix:I

    return p0
.end method

.method public getTopControlsInTranslation()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mTopControlsInTranslation:Z

    return p0
.end method

.method public getTopShownPix()I
    .locals 0

    iget p0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mTopShownPix:I

    return p0
.end method

.method public getViewportHeightPix()I
    .locals 0

    iget p0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mViewportHeightPix:I

    return p0
.end method

.method public getViewportWidthPix()I
    .locals 0

    iget p0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mViewportWidthPix:I

    return p0
.end method

.method public getWebContentsImpl()Lcom/sec/terrace/content/browser/TinWebContentsImpl;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    return-object p0
.end method

.method public getWebContentsXOffset()I
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget p0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mWebContentsXOffset:I

    return p0
.end method

.method public getWidth()I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    iget p0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mViewportWidthPix:I

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    return p0
.end method

.method public hasSelection()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getSelectionPopupController()Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->hasSelection()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getSelectedText()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

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

.method public hideFastScroller()V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mFastScrollManager:Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->isScrollInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mFastScrollManager:Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->hideFastScrollerImmediately()V

    :cond_0
    return-void
.end method

.method public initEventDelegate()V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getEventForwarder()Lcom/sec/terrace/ui/base/TinEventForwarder;

    move-result-object v0

    new-instance v1, Lcom/sec/terrace/content/browser/TinContentViewCore$2;

    invoke-direct {v1, p0}, Lcom/sec/terrace/content/browser/TinContentViewCore$2;-><init>(Lcom/sec/terrace/content/browser/TinContentViewCore;)V

    invoke-virtual {v0, v1}, Lcom/sec/terrace/ui/base/TinEventForwarder;->setEventDelegate(Lcom/sec/terrace/ui/base/TinEventForwarder$TinInternalAccessDelegate;)V

    return-void
.end method

.method public initSelectionDelegate()V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getSelectionPopupController()Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;

    move-result-object v0

    new-instance v1, Lcom/sec/terrace/content/browser/TinContentViewCore$1;

    invoke-direct {v1, p0}, Lcom/sec/terrace/content/browser/TinContentViewCore$1;-><init>(Lcom/sec/terrace/content/browser/TinContentViewCore;)V

    invoke-virtual {v0, v1}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->setSelectionDelegate(Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl$TinSelectionDelegate;)V

    return-void
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/sec/terrace/content/browser/TinContentViewCoreJni;->get()Lcom/sec/terrace/content/browser/TinContentViewCore$Natives;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-interface {p1, p0, v0}, Lcom/sec/terrace/content/browser/TinContentViewCore$Natives;->init(Lcom/sec/terrace/content/browser/TinContentViewCore;Lorg/chromium/content_public/browser/WebContents;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mNativeContentViewCore:J

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->initEventDelegate()V

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->initSelectionDelegate()V

    iget-object p1, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lorg/chromium/ui/base/SPenSupport;->isSPenSupported(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->initializeMultiSelection()V

    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->initializeFastScrollManager()V

    :try_start_0
    sget-object p1, Lcom/sec/terrace/content/browser/TinContentViewCore;->sTraceBegin:Ljava/lang/reflect/Method;

    if-eqz p1, :cond_1

    sget-object p1, Lcom/sec/terrace/content/browser/TinContentViewCore;->sTraceEnd:Ljava/lang/reflect/Method;

    if-nez p1, :cond_2

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, "android.os.Trace"

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string v0, "traceBegin"

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    filled-new-array {v1, v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/sec/terrace/content/browser/TinContentViewCore;->sTraceBegin:Ljava/lang/reflect/Method;

    const-string v0, "traceEnd"

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    sput-object p1, Lcom/sec/terrace/content/browser/TinContentViewCore;->sTraceEnd:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "traceEvent is not supported. e = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TinContentViewCore"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    new-instance p1, Lcom/sec/terrace/content/browser/TinGestureStateListener;

    invoke-direct {p1, p0}, Lcom/sec/terrace/content/browser/TinGestureStateListener;-><init>(Lcom/sec/terrace/content/browser/TinContentViewCore;)V

    iput-object p1, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mGestureStateListener:Lcom/sec/terrace/content/browser/TinGestureStateListener;

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getGestureListenerManager()Lcom/sec/terrace/content/browser/TinGestureListenerManagerImpl;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mGestureStateListener:Lcom/sec/terrace/content/browser/TinGestureStateListener;

    invoke-virtual {p1, v0}, Lorg/chromium/content/browser/GestureListenerManagerImpl;->addListener(Lorg/chromium/content_public/browser/GestureStateListener;)V

    iget-object p1, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-static {p1}, Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getTinTapDisambiguator()Lcom/sec/terrace/content/browser/TinTapDisambiguator;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->addEventObserver(Lorg/chromium/content_public/browser/ImeEventObserver;)V

    :cond_3
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mInitialized:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mHasKeyboardGeometryChangeFired:Z

    new-instance p1, Lcom/sec/terrace/content/browser/a;

    invoke-direct {p1, p0}, Lcom/sec/terrace/content/browser/a;-><init>(Lcom/sec/terrace/content/browser/TinContentViewCore;)V

    iput-object p1, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mOnSystemUiVisibilityChangeListener:Landroid/view/View$OnSystemUiVisibilityChangeListener;

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getContentView()Lorg/chromium/components/embedder_support/view/ContentView;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getContentView()Lorg/chromium/components/embedder_support/view/ContentView;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mOnSystemUiVisibilityChangeListener:Landroid/view/View$OnSystemUiVisibilityChangeListener;

    invoke-virtual {p1, v0}, Lorg/chromium/components/embedder_support/view/ContentView;->addOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    :cond_4
    invoke-direct {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->handleSystemUiVisibilityChange()V

    return-void
.end method

.method public initializeActivityStateListener()V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/base/ContextUtils;->activityFromContext(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/sec/terrace/content/browser/TinContentViewCore$5;

    invoke-direct {v0, p0}, Lcom/sec/terrace/content/browser/TinContentViewCore$5;-><init>(Lcom/sec/terrace/content/browser/TinContentViewCore;)V

    iput-object v0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mActivityStateListener:Lorg/chromium/base/ApplicationStatus$ActivityStateListener;

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lorg/chromium/base/ContextUtils;->activityFromContext(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/chromium/base/ApplicationStatus;->registerStateListenerForActivity(Lorg/chromium/base/ApplicationStatus$ActivityStateListener;Landroid/app/Activity;)V

    return-void
.end method

.method public initialized()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mInitialized:Z

    return p0
.end method

.method public isAlive()Z
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mNativeContentViewCore:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isAttachedToWindow(Landroid/view/View;)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFastScrollOff()Z
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mFastScrollManager:Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->isFastScrollOff()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFlingActive()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getGestureListenerManager()Lcom/sec/terrace/content/browser/TinGestureListenerManagerImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getGestureListenerManager()Lcom/sec/terrace/content/browser/TinGestureListenerManagerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/content/browser/GestureListenerManagerImpl;->hasActiveFlingScroll()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isReadyToShow()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mIsReadyToShow:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mContentViewHidden:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isScrollInProgress()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getGestureListenerManager()Lcom/sec/terrace/content/browser/TinGestureListenerManagerImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getGestureListenerManager()Lcom/sec/terrace/content/browser/TinGestureListenerManagerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/content/browser/GestureListenerManagerImpl;->isScrollInProgress()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isShowing()Z
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-boolean p0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mContentViewHidden:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isSpenSelectionForTest()Z
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-boolean p0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mIsSpenSelection:Z

    return p0
.end method

.method public notifyFastScrollLayerState(IZ)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mFastScrollManager:Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->notifyFastScrollLayerState(IZ)V

    :cond_0
    return-void
.end method

.method public notifyFastScrollerEnabled(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->notifyFastScrollerEnabled(ZZ)V

    return-void
.end method

.method public notifyFastScrollerEnabled(ZZ)V
    .locals 4

    sget-boolean v0, Lcom/sec/terrace/content/browser/TinContentViewCore;->sEnableFastScroll:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/sec/terrace/TinTerraceInternals;->isDexEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getNativeContentViewCore()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mNativeScrollbarHidden:Z

    if-ne v0, p1, :cond_2

    if-nez p2, :cond_2

    return-void

    :cond_2
    iget-object p2, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mFastScrollManager:Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->isScrollbarScrollerEnabled()Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "notifyFastScrollerEnabled enable="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/chromium/base/TraceEvent;->instant(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/terrace/content/browser/TinContentViewCoreJni;->get()Lcom/sec/terrace/content/browser/TinContentViewCore$Natives;

    move-result-object p2

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getNativeContentViewCore()J

    move-result-wide v0

    invoke-interface {p2, v0, v1, p0, p1}, Lcom/sec/terrace/content/browser/TinContentViewCore$Natives;->fastScrollerEnabled(JLcom/sec/terrace/content/browser/TinContentViewCore;Z)V

    iput-boolean p1, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mNativeScrollbarHidden:Z

    :cond_4
    :goto_0
    return-void
.end method

.method public notifyFixedContainerEdgesChanged([I)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getNativeContentViewCore()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    invoke-static {}, Lcom/sec/terrace/content/browser/TinContentViewCoreJni;->get()Lcom/sec/terrace/content/browser/TinContentViewCore$Natives;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getNativeContentViewCore()J

    move-result-wide v1

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/sec/terrace/content/browser/TinContentViewCore$Natives;->notifyFixedContainerEdgesChanged(JLcom/sec/terrace/content/browser/TinContentViewCore;[I)V

    return-void
.end method

.method public onBottomControlsChanged(II)V
    .locals 1

    iput p1, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mBottomControlsOffsetPix:I

    iget p2, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mBottomControlsHeightPix:I

    sub-int v0, p2, p1

    iput v0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mBottomShownPix:I

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->setTopControlsHeight()V

    :cond_1
    return-void
.end method

.method public onHide()V
    .locals 2

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/terrace/content/browser/TinWebContentsImpl;->updateWebContentsVisibility(I)V

    :cond_0
    invoke-direct {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->resetBackgroundColor()V

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->resetFastScrollLayerState()V

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->disableBitmapCompositionForLayers()V

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-static {}, Lcom/sec/terrace/TinTerraceInternals;->isDexDualMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-static {p0}, Lcom/sec/terrace/content/browser/spen/TinSPenIntuitiveHoverController;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lcom/sec/terrace/content/browser/spen/TinSPenIntuitiveHoverController;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/terrace/content/browser/spen/TinSPenIntuitiveHoverController;->handleHoverEvent(Landroid/view/MotionEvent;)V

    :cond_0
    return v1
.end method

.method public onMouseWheelScrollStarted()V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lcom/sec/terrace/TinTerraceInternals;->isDexEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mContentViewCallback:Lcom/sec/terrace/TerraceContentViewCallback;

    invoke-interface {p0}, Lcom/sec/terrace/TerraceContentViewCallback;->onMouseWheelScrollStarted()V

    :cond_0
    return-void
.end method

.method public onResetStates()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->resetFastScrollLayerState()V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 1

    const-string p3, "onSizeChanged wPix"

    const-string p4, " hPix : "

    const-string v0, "TinContentViewCore"

    invoke-static {p1, p2, p3, p4, v0}, Lt/b;->w(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mResizeInProgress:Z

    invoke-virtual {p0, p1, p2}, Lcom/sec/terrace/content/browser/TinContentViewCore;->setViewportSize(II)V

    iget-object p1, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mContentViewCallback:Lcom/sec/terrace/TerraceContentViewCallback;

    invoke-interface {p1}, Lcom/sec/terrace/TerraceContentViewCallback;->onContentViewSizeChanged()V

    iget-object p1, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->updateWebContentsSize()V

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getSelectionPopupController()Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->onSizeChanged()V

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getTinTapDisambiguator()Lcom/sec/terrace/content/browser/TinTapDisambiguator;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/sec/terrace/content/browser/TinTapDisambiguator;->hidePopup(Z)V

    :cond_0
    iput-boolean p2, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mResizeInProgress:Z

    return-void
.end method

.method public onTopControlsChanged(III)V
    .locals 0

    iput p1, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mTopControlsOffsetPix:I

    iput p2, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mTopShownPix:I

    iget p3, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mTopControlsHeightPix:I

    if-eqz p3, :cond_1

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->setTopControlsHeight()V

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-direct {p0, p1}, Lcom/sec/terrace/content/browser/TinContentViewCore;->shouldBitmapCompositedLayersConsumeTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v0

    const-string v3, "TinContentViewCore"

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "onTouchEvent: Calling requestFocus on ContainerView"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_2
    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mContentViewCallback:Lcom/sec/terrace/TerraceContentViewCallback;

    invoke-interface {v0, p1}, Lcom/sec/terrace/TerraceContentViewCallback;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "onTouchEvent: Consumed"

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mFastScrollManager:Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;

    const/4 v4, 0x2

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->checkFastScroll(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v4, :cond_5

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mFastScrollManager:Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;

    invoke-virtual {v0}, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->shouldIgnoreGoToTop()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mFastScrollManager:Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;

    invoke-virtual {v0}, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->shouldIgnoreGoToBottom()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, " GoToTop Selected:"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mFastScrollManager:Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;

    invoke-virtual {v5}, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->shouldIgnoreGoToTop()Z

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " and GoToBottom Selected:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mFastScrollManager:Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;

    invoke-virtual {v5}, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->shouldIgnoreGoToBottom()Z

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " ,but shouldIgnore"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mFastScrollManager:Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;

    invoke-virtual {v0}, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->shouldSendSingleTapEvent()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0, p1}, Lcom/sec/terrace/content/browser/TinContentViewCore;->singleTap(Landroid/view/MotionEvent;)V

    :cond_6
    return v1

    :cond_7
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_8

    iput-boolean v2, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mIsSpenSelection:Z

    iput-boolean v2, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mHapticFeedbackDoneOnLongPress:Z

    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    const/4 v5, 0x3

    if-ne v0, v5, :cond_a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v0

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_a

    const-string v0, "onTouchEvent logging BT_Ctrl+MouseClick"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-virtual {v0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->isIncognito()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "202"

    goto :goto_1

    :cond_9
    const-string v0, "201"

    :goto_1
    const-string v3, "9103"

    invoke-static {v0, v3}, Lcom/sec/terrace/browser/TinSALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    if-ne v0, v1, :cond_c

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    if-ne v0, v4, :cond_c

    invoke-static {}, Lcom/sec/terrace/TinTerraceInternals;->isDexEnabled()Z

    move-result v0

    if-nez v0, :cond_b

    return v1

    :cond_b
    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getEventForwarder()Lcom/sec/terrace/ui/base/TinEventForwarder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/chromium/ui/base/EventForwarder;->onMouseEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    const/16 v3, 0x3002

    if-ne v0, v3, :cond_d

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    if-ne v0, v1, :cond_d

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    if-ne v0, v1, :cond_d

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getEventForwarder()Lcom/sec/terrace/ui/base/TinEventForwarder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/chromium/ui/base/EventForwarder;->onMouseEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_d
    iget-boolean v0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mIsSpenSelection:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/ui/base/SPenSupport;->isSPenSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-static {v0}, Lorg/chromium/ui/base/SPenSupport;->convertSPenEventAction(I)I

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    if-ne v0, v4, :cond_e

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    move-result p1

    if-eqz p1, :cond_e

    iput-boolean v1, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mIsSpenSelection:Z

    :cond_e
    return v2
.end method

.method public performLongPressHapticFeedbackIfNeeded()V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mHapticFeedbackDoneOnLongPress:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mHapticFeedbackDoneOnLongPress:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public requestDocumentDump()V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getNativeContentViewCore()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    invoke-static {}, Lcom/sec/terrace/content/browser/TinContentViewCoreJni;->get()Lcom/sec/terrace/content/browser/TinContentViewCore$Natives;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getNativeContentViewCore()J

    move-result-wide v1

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/terrace/content/browser/TinContentViewCore$Natives;->requestDocumentDump(JLcom/sec/terrace/content/browser/TinContentViewCore;)V

    return-void
.end method

.method public requestNumberOfBlockedElements()V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getNativeContentViewCore()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    invoke-static {}, Lcom/sec/terrace/content/browser/TinContentViewCoreJni;->get()Lcom/sec/terrace/content/browser/TinContentViewCore$Natives;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getNativeContentViewCore()J

    move-result-wide v1

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/terrace/content/browser/TinContentViewCore$Natives;->requestNumberOfBlockedElements(JLcom/sec/terrace/content/browser/TinContentViewCore;)V

    return-void
.end method

.method public resetAndEndDragDrop()V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getNativeContentViewCore()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/terrace/content/browser/TinContentViewCoreJni;->get()Lcom/sec/terrace/content/browser/TinContentViewCore$Natives;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getNativeContentViewCore()J

    move-result-wide v1

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/terrace/content/browser/TinContentViewCore$Natives;->endDragDrop(JLcom/sec/terrace/content/browser/TinContentViewCore;)V

    return-void
.end method

.method public resetFastScrollLayerState()V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getNativeContentViewCore()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/terrace/content/browser/TinContentViewCoreJni;->get()Lcom/sec/terrace/content/browser/TinContentViewCore$Natives;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getNativeContentViewCore()J

    move-result-wide v1

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/terrace/content/browser/TinContentViewCore$Natives;->resetFastScrollLayerState(JLcom/sec/terrace/content/browser/TinContentViewCore;)V

    return-void
.end method

.method public runScrollbarVibrate()V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mContentViewCallback:Lcom/sec/terrace/TerraceContentViewCallback;

    invoke-interface {p0}, Lcom/sec/terrace/TerraceContentViewCallback;->runScrollbarVibrate()V

    return-void
.end method

.method public savePage()V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getNativeContentViewCore()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    invoke-static {}, Lcom/sec/terrace/content/browser/TinContentViewCoreJni;->get()Lcom/sec/terrace/content/browser/TinContentViewCore$Natives;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getNativeContentViewCore()J

    move-result-wide v1

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/terrace/content/browser/TinContentViewCore$Natives;->savePage(JLcom/sec/terrace/content/browser/TinContentViewCore;)V

    return-void
.end method

.method public scrollBegin(FF)V
    .locals 8
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->isScrollInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getEventForwarder()Lcom/sec/terrace/ui/base/TinEventForwarder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v1 .. v7}, Lcom/sec/terrace/ui/base/TinEventForwarder;->scrollBegin(JFFFF)V

    return-void
.end method

.method public scrollBy(IIII)V
    .locals 10

    invoke-static {}, Lcom/sec/terrace/content/browser/TinContentViewCoreJni;->get()Lcom/sec/terrace/content/browser/TinContentViewCore$Natives;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getNativeContentViewCore()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    int-to-float v6, p1

    int-to-float v7, p2

    int-to-float v8, p3

    int-to-float v9, p4

    move-object v3, p0

    invoke-interface/range {v0 .. v9}, Lcom/sec/terrace/content/browser/TinContentViewCore$Natives;->tinScrollBy(JLcom/sec/terrace/content/browser/TinContentViewCore;JFFFF)V

    return-void
.end method

.method public scrollEnd()V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->isScrollInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getEventForwarder()Lcom/sec/terrace/ui/base/TinEventForwarder;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/sec/terrace/ui/base/TinEventForwarder;->scrollEnd(J)V

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->setTopControlsHeight()V

    return-void
.end method

.method public selectLinkText()V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getNativeContentViewCore()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/terrace/content/browser/TinContentViewCoreJni;->get()Lcom/sec/terrace/content/browser/TinContentViewCore$Natives;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getNativeContentViewCore()J

    move-result-wide v1

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/terrace/content/browser/TinContentViewCore$Natives;->selectLinkText(JLcom/sec/terrace/content/browser/TinContentViewCore;)V

    return-void
.end method

.method public setApplicationViewportInsetSupplier(Lorg/chromium/ui/base/ApplicationViewportInsetSupplier;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mApplicationBottomInsetSupplier:Lorg/chromium/ui/base/ApplicationViewportInsetSupplier;

    iget v0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mVirtualKeyboardMode:I

    invoke-virtual {p1, v0}, Lorg/chromium/ui/base/ApplicationViewportInsetSupplier;->setVirtualKeyboardMode(I)V

    new-instance p1, Lcom/sec/terrace/content/browser/b;

    invoke-direct {p1, p0}, Lcom/sec/terrace/content/browser/b;-><init>(Lcom/sec/terrace/content/browser/TinContentViewCore;)V

    iput-object p1, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mOnViewportInsetsChanged:Lorg/chromium/base/Callback;

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mApplicationBottomInsetSupplier:Lorg/chromium/ui/base/ApplicationViewportInsetSupplier;

    invoke-interface {p0, p1}, Lorg/chromium/base/supplier/ObservableSupplier;->addObserver(Lorg/chromium/base/Callback;)Ljava/lang/Object;

    return-void
.end method

.method public setContentViewCallback(Lcom/sec/terrace/TerraceContentViewCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mContentViewCallback:Lcom/sec/terrace/TerraceContentViewCallback;

    return-void
.end method

.method public setContextForTest(Landroid/content/Context;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mContext:Landroid/content/Context;

    return-void
.end method

.method public setEnableFastScrollForTest(Z)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    sput-boolean p1, Lcom/sec/terrace/content/browser/TinContentViewCore;->sEnableFastScroll:Z

    return-void
.end method

.method public setFastScrollManagerForTest(Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mFastScrollManager:Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;

    return-void
.end method

.method public setFirstFrameUpdateAfterTerraceShows(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mFirstFrameUpdateAfterTerraceShows:Z

    return-void
.end method

.method public setGestureStateListenerForTest()V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    new-instance v0, Lcom/sec/terrace/content/browser/TinGestureStateListener;

    invoke-direct {v0, p0}, Lcom/sec/terrace/content/browser/TinGestureStateListener;-><init>(Lcom/sec/terrace/content/browser/TinContentViewCore;)V

    iput-object v0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mGestureStateListener:Lcom/sec/terrace/content/browser/TinGestureStateListener;

    return-void
.end method

.method public setHapticFeedbackDoneOnLongPressForTest(Z)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-boolean p1, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mHapticFeedbackDoneOnLongPress:Z

    return-void
.end method

.method public setHoverHitTestLayerForTest(Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mHoverHitTestLayer:Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;

    return-void
.end method

.method public setIsFrameUpdatedAfterNavigationForTest(Z)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-boolean p1, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mIsFrameUpdatedAfterNavigation:Z

    return-void
.end method

.method public setIsLoading(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setIsLoading  isLoading = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TinContentViewCore"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mFastScrollManager:Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->setIsLoading(Z)V

    :cond_0
    return-void
.end method

.method public setMediaClient(Lcom/sec/terrace/content/browser/media/TerraceMediaClient;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mMediaClient:Lcom/sec/terrace/content/browser/media/TerraceMediaClient;

    return-void
.end method

.method public setNativeContentViewCoreForTest(J)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-wide p1, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mNativeContentViewCore:J

    return-void
.end method

.method public setReadyToShow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mIsReadyToShow:Z

    return-void
.end method

.method public setSavePageDirectory(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getNativeContentViewCore()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    invoke-static {}, Lcom/sec/terrace/content/browser/TinContentViewCoreJni;->get()Lcom/sec/terrace/content/browser/TinContentViewCore$Natives;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getNativeContentViewCore()J

    move-result-wide v1

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/sec/terrace/content/browser/TinContentViewCore$Natives;->setSavePageDirectory(JLcom/sec/terrace/content/browser/TinContentViewCore;Ljava/lang/String;)V

    return-void
.end method

.method public setSpenSelectionForTest(Z)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-boolean p1, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mIsSpenSelection:Z

    return-void
.end method

.method public setSplitViewSize(II)V
    .locals 0

    iput p1, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mSplitViewWidth:I

    iput p2, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mSplitViewHeight:I

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->updateWebContentsSize()V

    return-void
.end method

.method public setTopControlsFrozenForTest(Z)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-boolean p1, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mTopControlsFrozen:Z

    return-void
.end method

.method public setTopControlsHeight()V
    .locals 3

    iget v0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mTopControlsHeightPix:I

    iget v1, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mBottomControlsHeightPix:I

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getTopShownPix()I

    move-result v2

    if-gtz v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getBottomShownPix()I

    move-result v2

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/terrace/content/browser/TinContentViewCore;->setTopControlsHeight(IIZ)V

    return-void
.end method

.method public setTopControlsHeight(IIZ)V
    .locals 7

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mTopControlsHeightPix:I

    if-ne p1, v0, :cond_2

    iget v0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mBottomControlsHeightPix:I

    if-ne p2, v0, :cond_2

    iget-boolean v0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mControlsResizeView:Z

    if-eq p3, v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->isScrollInProgress()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return-void

    :cond_2
    iput p1, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mTopControlsHeightPix:I

    iput p2, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mBottomControlsHeightPix:I

    iput-boolean p3, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mControlsResizeView:Z

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getFirstFrameUpdateAfterTerraceShowsForDex()Z

    move-result p3

    if-nez p3, :cond_3

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mControlsResizeView:Z

    :cond_3
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "setTopControlsHeight controlsResizeView "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mControlsResizeView:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " topControlsHeightPix : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mTopControlsHeightPix:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bottomControlsHeightPix : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mBottomControlsHeightPix:I

    const-string v1, "TinContentViewCore"

    invoke-static {p3, v0, v1}, Landroidx/recyclerview/widget/P;->x(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->updateWebContentsSize()V

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getNativeContentViewCore()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-eqz p3, :cond_4

    invoke-static {}, Lcom/sec/terrace/content/browser/TinContentViewCoreJni;->get()Lcom/sec/terrace/content/browser/TinContentViewCore$Natives;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getNativeContentViewCore()J

    move-result-wide v1

    iget-boolean v6, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mResizeInProgress:Z

    move-object v3, p0

    move v4, p1

    move v5, p2

    invoke-interface/range {v0 .. v6}, Lcom/sec/terrace/content/browser/TinContentViewCore$Natives;->setTopControlsHeight(JLcom/sec/terrace/content/browser/TinContentViewCore;IIZ)V

    :cond_4
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mDidReceiveResizeAckForTest:Z

    :cond_5
    :goto_0
    return-void
.end method

.method public setTopControlsInTranslationForTest(Z)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-boolean p1, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mTopControlsInTranslation:Z

    return-void
.end method

.method public setTopControlsStateForTest(I)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput p1, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mTopControlsState:I

    return-void
.end method

.method public setTouchHitTestLayerForTest(Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mTouchHitTestLayer:Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;

    return-void
.end method

.method public setUpdatedViewportWidthForTest(I)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput p1, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mUpdatedViewportWidth:I

    return-void
.end method

.method public setViewportSize(II)V
    .locals 3

    const-string v0, "setViewportSize wPix"

    const-string v1, " hPix : "

    const-string v2, "TinContentViewCore"

    invoke-static {p1, p2, v0, v1, v2}, Lt/b;->w(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mViewportWidthPix:I

    iput p2, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mViewportHeightPix:I

    return-void
.end method

.method public setWebContentsXOffset(I)V
    .locals 0

    iput p1, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mWebContentsXOffset:I

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mFastScrollManager:Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->setWebContentsXOffset(I)V

    :cond_0
    return-void
.end method

.method public shouldBitmapCompositedLayersConsumeHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v1, 0x9

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const/16 v4, 0xa

    if-ne v0, v4, :cond_1

    move v5, v2

    goto :goto_1

    :cond_1
    move v5, v3

    :goto_1
    const/4 v6, 0x7

    if-ne v0, v6, :cond_2

    iget-object v6, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mHoverHitTestLayer:Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;

    sget-object v7, Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;->BITMAP_LAYER_NONE:Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;

    if-ne v6, v7, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinatesImpl;

    move-result-object v7

    invoke-virtual {v7}, Lorg/chromium/content/browser/RenderCoordinatesImpl;->getContentOffsetYPix()F

    move-result v7

    cmpg-float v6, v6, v7

    if-ltz v6, :cond_3

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    iget v8, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mBottomControlsHeightPix:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2

    goto :goto_2

    :cond_2
    move v2, v1

    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mHoverHitTestLayer:Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;

    sget-object v6, Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;->BITMAP_LAYER_NONE:Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;

    if-ne v1, v6, :cond_4

    if-nez v2, :cond_4

    return v3

    :cond_4
    if-eq v1, v6, :cond_5

    if-ne v0, v4, :cond_5

    return v3

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {p0, v0, v1, v4}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getResourceLayerHitByPoint(IFF)Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;

    move-result-object v0

    if-nez v2, :cond_6

    if-ne v0, v6, :cond_7

    :cond_6
    iput-object v0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mHoverHitTestLayer:Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;

    if-ne v0, v6, :cond_7

    return v3

    :cond_7
    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mContentViewCallback:Lcom/sec/terrace/TerraceContentViewCallback;

    iget-object v1, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mHoverHitTestLayer:Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;

    invoke-interface {v0, p1, v1}, Lcom/sec/terrace/TerraceContentViewCallback;->shouldBitmapCompositedLayersConsumeEvent(Landroid/view/MotionEvent;Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;)Z

    move-result p1

    if-eqz v5, :cond_8

    iput-object v6, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mHoverHitTestLayer:Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;

    :cond_8
    return p1
.end method

.method public singleTap(Landroid/view/MotionEvent;)V
    .locals 10
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getNativeContentViewCore()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinatesImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinatesImpl;->getContentOffsetYPix()F

    move-result v0

    neg-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    invoke-static {}, Lcom/sec/terrace/content/browser/TinContentViewCoreJni;->get()Lcom/sec/terrace/content/browser/TinContentViewCore$Natives;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getNativeContentViewCore()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    move-object v5, p0

    invoke-interface/range {v2 .. v9}, Lcom/sec/terrace/content/browser/TinContentViewCore$Natives;->singleTap(JLcom/sec/terrace/content/browser/TinContentViewCore;JFF)V

    return-void
.end method

.method public unFreezeTopControls()V
    .locals 3
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-boolean v0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mTopControlsFrozen:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v0, v1}, Lcom/sec/terrace/content/browser/TinContentViewCore;->updateBrowserControlsState(ZZZ)V

    const-string v0, "TinContentViewCore"

    const-string v2, "unFreezeTopControls() - Top Control is unfrozen"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mTopControlsFrozen:Z

    return-void
.end method

.method public updateBrowserControlsState(IZ)V
    .locals 4

    iget-boolean v0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mTopControlsFrozen:Z

    if-eqz v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "updateBrowserControlsState: Ignoring top control state: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " change request. In frozen state."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HideUrlbar"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    move v3, v1

    move v1, v0

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    iput p1, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mTopControlsState:I

    invoke-virtual {p0, v0, v1, p2}, Lcom/sec/terrace/content/browser/TinContentViewCore;->updateBrowserControlsState(ZZZ)V

    return-void
.end method

.method public updateBrowserControlsState(ZZZ)V
    .locals 7

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getNativeContentViewCore()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    const/4 p2, 0x2

    goto :goto_0

    :cond_1
    const/4 p2, 0x3

    :goto_0
    if-nez p1, :cond_2

    const/4 p2, 0x1

    :cond_2
    move v4, p2

    invoke-static {}, Lcom/sec/terrace/content/browser/TinContentViewCoreJni;->get()Lcom/sec/terrace/content/browser/TinContentViewCore$Natives;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getNativeContentViewCore()J

    move-result-wide v1

    const/4 v5, 0x3

    move-object v3, p0

    move v6, p3

    invoke-interface/range {v0 .. v6}, Lcom/sec/terrace/content/browser/TinContentViewCore$Natives;->updateBrowserControlsState(JLcom/sec/terrace/content/browser/TinContentViewCore;IIZ)V

    return-void
.end method

.method public updateFrameInfo(FFFFFFFFFFFZ)V
    .locals 14
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    move-object v0, p0

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p11

    const-string v1, "updateFrameInfo scrollOffsetY="

    sget-object v2, Lcom/sec/terrace/content/browser/TinContentViewCore;->sTraceBegin:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/sec/terrace/content/browser/TinContentViewCore;->sTraceEnd:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " contentOffsetY="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " pageScaleFactor = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/sec/terrace/content/browser/TinContentViewCore;->sTraceBegin:Ljava/lang/reflect/Method;

    const-wide/16 v3, 0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array {v5, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/sec/terrace/content/browser/TinContentViewCore;->sTraceEnd:Ljava/lang/reflect/Method;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 v13, 0x1

    iput-boolean v13, v0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mUpdatedFrameInfo:Z

    iget-object v1, v0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mGestureStateListener:Lcom/sec/terrace/content/browser/TinGestureStateListener;

    move v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    move/from16 v8, p10

    move/from16 v9, p11

    invoke-virtual/range {v1 .. v9}, Lcom/sec/terrace/content/browser/TinGestureStateListener;->printLog(FFFFFFFF)V

    iget-boolean v1, v0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mFirstFrameUpdateAfterTerraceShows:Z

    if-nez v1, :cond_1

    invoke-virtual {p0, v13}, Lcom/sec/terrace/content/browser/TinContentViewCore;->setFirstFrameUpdateAfterTerraceShows(Z)V

    :cond_1
    iput-boolean v13, v0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mFirstFrameUpdateAfterTerraceShowsForDex:Z

    const/4 v1, 0x0

    cmpl-float v1, v12, v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    float-to-int v1, v12

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getTopControlsHeightPix()I

    move-result v3

    if-eq v1, v3, :cond_2

    move v1, v13

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    iput-boolean v1, v0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mTopControlsInTranslation:Z

    float-to-int v1, v12

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getTopControlsHeightPix()I

    move-result v3

    if-ne v1, v3, :cond_3

    move v2, v13

    :cond_3
    invoke-static {v2}, Lcom/sec/terrace/content/browser/TinContentViewCore;->setTopControlShown(Z)V

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getTopControlsHeightPix()I

    move-result v1

    int-to-float v1, v1

    sub-float v4, v12, v1

    iget-object v1, v0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mFastScrollManager:Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;

    if-eqz v1, :cond_4

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v5, p10

    move/from16 v6, p8

    move/from16 v7, p9

    invoke-virtual/range {v1 .. v7}, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->updateFrameInfo(FFFFFF)V

    :cond_4
    iget v1, v0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mContentHeight:F

    move v2, p1

    iput v2, v0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mScrollOffsetX:F

    iput v10, v0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mScrollOffsetY:F

    move/from16 v2, p8

    iput v2, v0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mContentHeight:F

    mul-float v2, p9, v11

    mul-float v2, v2, p4

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, v0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mUpdatedViewportWidth:I

    iput-boolean v13, v0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mIsFrameUpdatedAfterNavigation:Z

    iget-object v2, v0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mContentViewCallback:Lcom/sec/terrace/TerraceContentViewCallback;

    invoke-interface {v2}, Lcom/sec/terrace/TerraceContentViewCallback;->updateFrameInfo()V

    iget v2, v0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mContentHeight:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_5

    iget-object v0, v0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mContentViewCallback:Lcom/sec/terrace/TerraceContentViewCallback;

    invoke-interface {v0}, Lcom/sec/terrace/TerraceContentViewCallback;->onContentHeightChanged()V

    :cond_5
    return-void
.end method

.method public updateVirtualKeyboardMode(I)V
    .locals 1
    .param p1    # I
        .annotation build Lorg/chromium/ui/mojom/VirtualKeyboardMode$EnumType;
        .end annotation
    .end param

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->defaultVirtualKeyboardMode()I

    move-result p1

    :cond_0
    iget v0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mVirtualKeyboardMode:I

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    iput p1, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mVirtualKeyboardMode:I

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mApplicationBottomInsetSupplier:Lorg/chromium/ui/base/ApplicationViewportInsetSupplier;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Lorg/chromium/ui/base/ApplicationViewportInsetSupplier;->setVirtualKeyboardMode(I)V

    :cond_2
    return-void
.end method

.method public wasHidden()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mContentViewHidden:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->setReadyToShow(Z)V

    return-void
.end method

.method public wasShown()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore;->mContentViewHidden:Z

    invoke-virtual {p0, v0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->setReadyToShow(Z)V

    return-void
.end method
