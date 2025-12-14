.class public Lcom/sec/terrace/browser/compositor/TinCompositorView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManager$SurfaceManagerCallbackTarget;
.implements Lorg/chromium/ui/base/WindowAndroid$SelectionHandlesObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/compositor/TinCompositorView$SurfaceListener;,
        Lcom/sec/terrace/browser/compositor/TinCompositorView$Natives;,
        Lcom/sec/terrace/browser/compositor/TinCompositorView$ScreenStateReceiverWorkaround;
    }
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# instance fields
.field private mAlwaysTranslucent:Z

.field private mBackgroundColor:I

.field private final mCacheAppRect:Landroid/graphics/Rect;

.field private mCompositorSurfaceManager:Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManager;

.field private mDrawingFinishedCallback:Ljava/lang/Runnable;

.field private mFramesUntilHideBackground:I

.field private mHasDrawnOnce:Z

.field private mHaveSwappedFramesSinceSurfaceCreated:Z

.field private mIsFirstSwapBuffer:Z

.field private mIsInXr:Z

.field private mIsSplitModeEnabled:Z

.field private mIsSurfaceControlEnabled:Z

.field private mNativeCompositorView:J

.field private mOverlayVideoEnabled:Z

.field private mPreviousWindowTop:I

.field private mResourceManager:Lorg/chromium/ui/resources/ResourceManager;

.field private mRootView:Landroid/view/View;

.field private mScreenStateReceiver:Lcom/sec/terrace/browser/compositor/TinCompositorView$ScreenStateReceiverWorkaround;

.field private mSelectionHandlesActive:Z

.field private mSurfaceListener:Lcom/sec/terrace/browser/compositor/TinCompositorView$SurfaceListener;

.field private mUpdatedTexture:Z

.field private mWebContents:Lorg/chromium/content_public/browser/WebContents;

.field private mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/terrace/browser/compositor/TinCompositorView$SurfaceListener;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mCacheAppRect:Landroid/graphics/Rect;

    const/4 p1, -0x1

    iput p1, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mPreviousWindowTop:I

    iput p1, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mBackgroundColor:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mIsFirstSwapBuffer:Z

    iput-boolean p1, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mHasDrawnOnce:Z

    iput-boolean p1, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mIsSplitModeEnabled:Z

    iput-boolean p1, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mUpdatedTexture:Z

    iput-object p2, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mSurfaceListener:Lcom/sec/terrace/browser/compositor/TinCompositorView$SurfaceListener;

    invoke-direct {p0}, Lcom/sec/terrace/browser/compositor/TinCompositorView;->initializeIfOnUiThread()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/terrace/browser/compositor/TinCompositorView;)Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mCompositorSurfaceManager:Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManager;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/terrace/browser/compositor/TinCompositorView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mIsInXr:Z

    return p0
.end method

.method public static bridge synthetic c(Lcom/sec/terrace/browser/compositor/TinCompositorView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mIsSplitModeEnabled:Z

    return p0
.end method

.method private canUseSurfaceControl()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mIsInXr:Z

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mSelectionHandlesActive:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private createCompositorSurfaceManager()V
    .locals 3

    new-instance v0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;

    invoke-direct {v0, p0, p0}, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;-><init>(Landroid/view/ViewGroup;Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManager$SurfaceManagerCallbackTarget;)V

    iput-object v0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mCompositorSurfaceManager:Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManager;

    invoke-direct {p0}, Lcom/sec/terrace/browser/compositor/TinCompositorView;->getSurfacePixelFormat()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManager;->requestSurface(I)V

    invoke-static {}, Lcom/sec/terrace/browser/compositor/TinCompositorViewJni;->get()Lcom/sec/terrace/browser/compositor/TinCompositorView$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mNativeCompositorView:J

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/terrace/browser/compositor/TinCompositorView$Natives;->setNeedsComposite(JLcom/sec/terrace/browser/compositor/TinCompositorView;)V

    iget-object v0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mCompositorSurfaceManager:Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManager;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManager;->setVisibility(I)V

    return-void
.end method

.method public static bridge synthetic d(Lcom/sec/terrace/browser/compositor/TinCompositorView;)J
    .locals 2

    iget-wide v0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mNativeCompositorView:J

    return-wide v0
.end method

.method private didSwapBuffers(Z)V
    .locals 5
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-static {v0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lcom/sec/terrace/content/browser/TinContentViewCore;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/sec/terrace/content/browser/TinContentViewCore;->setReadyToShow(Z)V

    :cond_0
    iget v0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mFramesUntilHideBackground:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mFramesUntilHideBackground:I

    invoke-virtual {p0}, Lcom/sec/terrace/browser/compositor/TinCompositorView;->requestRender()V

    goto :goto_0

    :cond_1
    if-ne v0, v1, :cond_2

    iput v2, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mFramesUntilHideBackground:I

    invoke-static {}, Lcom/sec/terrace/browser/compositor/TinCompositorViewJni;->get()Lcom/sec/terrace/browser/compositor/TinCompositorView$Natives;

    move-result-object v0

    iget-wide v3, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mNativeCompositorView:J

    invoke-interface {v0, v3, v4, p0}, Lcom/sec/terrace/browser/compositor/TinCompositorView$Natives;->evictCachedBackBuffer(JLcom/sec/terrace/browser/compositor/TinCompositorView;)V

    iget-object v0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mCompositorSurfaceManager:Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManager;

    invoke-interface {v0}, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManager;->doneWithUnownedSurface()V

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/sec/terrace/browser/compositor/TinCompositorView;->runDrawFinishedCallback()V

    iput-boolean v2, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mIsFirstSwapBuffer:Z

    :cond_3
    iput-boolean v1, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mHaveSwappedFramesSinceSurfaceCreated:Z

    invoke-direct {p0}, Lcom/sec/terrace/browser/compositor/TinCompositorView;->updateNeedsDidSwapBuffersCallback()V

    return-void
.end method

.method private didSwapFrame(I)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-boolean p1, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mHasDrawnOnce:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/sec/terrace/browser/compositor/TinCompositorView$1;

    invoke-direct {p1, p0}, Lcom/sec/terrace/browser/compositor/TinCompositorView$1;-><init>(Lcom/sec/terrace/browser/compositor/TinCompositorView;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mHasDrawnOnce:Z

    return-void
.end method

.method public static bridge synthetic e(Lcom/sec/terrace/browser/compositor/TinCompositorView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/browser/compositor/TinCompositorView;->createCompositorSurfaceManager()V

    return-void
.end method

.method private getNavigationBarHeight()I
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "config_showNavigationBar"

    const-string v2, "bool"

    const-string v3, "android"

    invoke-virtual {p0, v0, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "navigation_bar_height"

    const-string v2, "dimen"

    invoke-virtual {p0, v0, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method private getSurfacePixelFormat()I
    .locals 3

    iget-boolean v0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mOverlayVideoEnabled:Z

    const/4 v1, -0x3

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mAlwaysTranslucent:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mIsSurfaceControlEnabled:Z

    const/4 v2, -0x1

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sec/terrace/browser/compositor/TinCompositorView;->canUseSurfaceControl()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1

    :cond_2
    return v2

    :cond_3
    :goto_1
    return v1
.end method

.method private initializeIfOnUiThread()V
    .locals 2

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->runningOnUiThread()Z

    new-instance v0, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;

    invoke-direct {v0, p0, p0}, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManagerImpl;-><init>(Landroid/view/ViewGroup;Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManager$SurfaceManagerCallbackTarget;)V

    iput-object v0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mCompositorSurfaceManager:Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManager;

    new-instance v0, Lcom/sec/terrace/browser/compositor/TinCompositorView$ScreenStateReceiverWorkaround;

    invoke-direct {v0, p0}, Lcom/sec/terrace/browser/compositor/TinCompositorView$ScreenStateReceiverWorkaround;-><init>(Lcom/sec/terrace/browser/compositor/TinCompositorView;)V

    iput-object v0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mScreenStateReceiver:Lcom/sec/terrace/browser/compositor/TinCompositorView$ScreenStateReceiverWorkaround;

    const-string v0, "TinCompositorView"

    const-string v1, "initializeIfOnUiThread"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/terrace/TinTerraceInternals;->getBackgroundColor(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mCompositorSurfaceManager:Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManager;

    const/4 v0, -0x3

    invoke-interface {p0, v0}, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManager;->requestSurface(I)V

    return-void
.end method

.method private notifyWillUseSurfaceControl(Z)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iput-boolean p1, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mIsSurfaceControlEnabled:Z

    iget-object p1, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mCompositorSurfaceManager:Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManager;

    invoke-direct {p0}, Lcom/sec/terrace/browser/compositor/TinCompositorView;->getSurfacePixelFormat()I

    move-result p0

    invoke-interface {p1, p0}, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManager;->requestSurface(I)V

    return-void
.end method

.method private onWindowVisibilityChangedInternal(I)V
    .locals 1

    iget-object p0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/chromium/ui/base/WindowAndroid;->onVisibilityChanged(Z)V

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/chromium/ui/base/WindowAndroid;->onVisibilityChanged(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private recreateSurface()V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mCompositorSurfaceManager:Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManager;

    invoke-interface {p0}, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManager;->recreateSurface()V

    return-void
.end method

.method private runDrawFinishedCallback()V
    .locals 3

    iget-object v0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mDrawingFinishedCallback:Ljava/lang/Runnable;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mDrawingFinishedCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    const-string v1, "TinCompositorView"

    const-string v2, "runDrawFinishedCallback"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    invoke-direct {p0}, Lcom/sec/terrace/browser/compositor/TinCompositorView;->updateNeedsDidSwapBuffersCallback()V

    return-void
.end method

.method private setWindowAndroid(Lorg/chromium/ui/base/WindowAndroid;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    invoke-virtual {v0, p0}, Lorg/chromium/ui/base/WindowAndroid;->removeSelectionHandlesObserver(Lorg/chromium/ui/base/WindowAndroid$SelectionHandlesObserver;)V

    iput-object p1, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    invoke-virtual {p1, p0}, Lorg/chromium/ui/base/WindowAndroid;->addSelectionHandlesObserver(Lorg/chromium/ui/base/WindowAndroid$SelectionHandlesObserver;)V

    invoke-virtual {p0}, Landroid/view/View;->getWindowVisibility()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/compositor/TinCompositorView;->onWindowVisibilityChangedInternal(I)V

    return-void
.end method

.method private updateNeedsDidSwapBuffersCallback()V
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mNativeCompositorView:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mFramesUntilHideBackground:I

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mDrawingFinishedCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {}, Lcom/sec/terrace/browser/compositor/TinCompositorViewJni;->get()Lcom/sec/terrace/browser/compositor/TinCompositorView$Natives;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mNativeCompositorView:J

    invoke-interface {v1, v2, v3, v0}, Lcom/sec/terrace/browser/compositor/TinCompositorView$Natives;->setDidSwapBuffersCallbackEnabled(JZ)V

    return-void
.end method


# virtual methods
.method public getActiveSurfaceView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mCompositorSurfaceManager:Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManager;

    invoke-interface {p0}, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManager;->getActiveSurfaceView()Landroid/view/SurfaceView;

    move-result-object p0

    return-object p0
.end method

.method public getResourceManager()Lorg/chromium/ui/resources/ResourceManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mResourceManager:Lorg/chromium/ui/resources/ResourceManager;

    return-object p0
.end method

.method public getSurfaceViewBackgroundColor()I
    .locals 0

    iget p0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mBackgroundColor:I

    return p0
.end method

.method public getUpdatedTexture()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mUpdatedTexture:Z

    return p0
.end method

.method public initNativeCompositor(ZLorg/chromium/ui/base/WindowAndroid;)V
    .locals 2

    iput-object p2, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    invoke-virtual {p2, p0}, Lorg/chromium/ui/base/WindowAndroid;->addSelectionHandlesObserver(Lorg/chromium/ui/base/WindowAndroid$SelectionHandlesObserver;)V

    invoke-static {}, Lcom/sec/terrace/browser/compositor/TinCompositorViewJni;->get()Lcom/sec/terrace/browser/compositor/TinCompositorView$Natives;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/sec/terrace/browser/compositor/TinCompositorView$Natives;->init(Lcom/sec/terrace/browser/compositor/TinCompositorView;ZLorg/chromium/ui/base/WindowAndroid;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mNativeCompositorView:J

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/sec/terrace/TinTerraceInternals;->getBackgroundColor(Landroid/content/Context;)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/sec/terrace/browser/compositor/TinCompositorView;->setSurfaceViewBackgroundColor(I)V

    iput-boolean p1, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mAlwaysTranslucent:Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/compositor/TinCompositorView;->setVisibility(I)V

    invoke-static {}, Lcom/sec/terrace/browser/compositor/TinCompositorViewJni;->get()Lcom/sec/terrace/browser/compositor/TinCompositorView$Natives;

    move-result-object p1

    iget-wide v0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mNativeCompositorView:J

    invoke-interface {p1, v0, v1, p0}, Lcom/sec/terrace/browser/compositor/TinCompositorView$Natives;->getResourceManager(JLcom/sec/terrace/browser/compositor/TinCompositorView;)Lorg/chromium/ui/resources/ResourceManager;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mResourceManager:Lorg/chromium/ui/resources/ResourceManager;

    invoke-static {}, Lcom/sec/terrace/browser/compositor/TinCompositorViewJni;->get()Lcom/sec/terrace/browser/compositor/TinCompositorView$Natives;

    move-result-object p1

    iget-wide v0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mNativeCompositorView:J

    invoke-interface {p1, v0, v1, p0}, Lcom/sec/terrace/browser/compositor/TinCompositorView$Natives;->setNeedsComposite(JLcom/sec/terrace/browser/compositor/TinCompositorView;)V

    return-void
.end method

.method public notifyVirtualKeyboardOverlayRect(Lorg/chromium/content_public/browser/WebContents;IIII)V
    .locals 9

    invoke-static {}, Lcom/sec/terrace/browser/compositor/TinCompositorViewJni;->get()Lcom/sec/terrace/browser/compositor/TinCompositorView$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mNativeCompositorView:J

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-interface/range {v0 .. v8}, Lcom/sec/terrace/browser/compositor/TinCompositorView$Natives;->notifyVirtualKeyboardOverlayRect(JLcom/sec/terrace/browser/compositor/TinCompositorView;Lorg/chromium/content_public/browser/WebContents;IIII)V

    return-void
.end method

.method public onBackgroundColorChanged(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/compositor/TinCompositorView;->setSurfaceViewBackgroundColor(I)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mPreviousWindowTop:I

    return-void
.end method

.method public onMeasure(II)V
    .locals 9

    iget-object v0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mCacheAppRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mCacheAppRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mPreviousWindowTop:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput v0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mPreviousWindowTop:I

    invoke-static {}, Lcom/sec/terrace/TinTerraceInternals;->isKeyboardTurnedOn()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/terrace/browser/TinClipboardUtils;->isSecClipboardShowing(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move v4, v2

    goto :goto_2

    :cond_2
    :goto_1
    move v4, v3

    :goto_2
    iget-object v5, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    :goto_3
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v2

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    sub-int v7, v5, v6

    if-lez v7, :cond_5

    if-eq v7, v0, :cond_6

    invoke-direct {p0}, Lcom/sec/terrace/browser/compositor/TinCompositorView;->getNavigationBarHeight()I

    move-result v8

    if-eq v7, v8, :cond_6

    invoke-direct {p0}, Lcom/sec/terrace/browser/compositor/TinCompositorView;->getNavigationBarHeight()I

    move-result v8

    add-int/2addr v0, v8

    if-ne v7, v0, :cond_5

    goto :goto_4

    :cond_5
    move v3, v1

    :cond_6
    :goto_4
    if-nez v3, :cond_7

    if-nez v2, :cond_7

    if-eqz v4, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    if-ne v0, v1, :cond_7

    if-le v5, v6, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :cond_7
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onPhysicalBackingSizeChanged(Lorg/chromium/content_public/browser/WebContents;II)V
    .locals 7

    invoke-static {}, Lcom/sec/terrace/browser/compositor/TinCompositorViewJni;->get()Lcom/sec/terrace/browser/compositor/TinCompositorView$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mNativeCompositorView:J

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-interface/range {v0 .. v6}, Lcom/sec/terrace/browser/compositor/TinCompositorView$Natives;->onPhysicalBackingSizeChanged(JLcom/sec/terrace/browser/compositor/TinCompositorView;Lorg/chromium/content_public/browser/WebContents;II)V

    return-void
.end method

.method public onSelectionHandlesStateChanged(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mIsSurfaceControlEnabled:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mIsInXr:Z

    if-nez v0, :cond_3

    invoke-static {}, Lorg/chromium/content_public/browser/SelectionPopupController;->needsSurfaceViewDuringSelection()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mSelectionHandlesActive:Z

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    iput-boolean p1, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mSelectionHandlesActive:Z

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/sec/terrace/browser/compositor/TinCompositorViewJni;->get()Lcom/sec/terrace/browser/compositor/TinCompositorView$Natives;

    move-result-object p1

    iget-wide v0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mNativeCompositorView:J

    invoke-interface {p1, v0, v1, p0}, Lcom/sec/terrace/browser/compositor/TinCompositorView$Natives;->cacheBackBufferForCurrentSurface(JLcom/sec/terrace/browser/compositor/TinCompositorView;)V

    :cond_2
    iget-object p1, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mCompositorSurfaceManager:Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManager;

    invoke-direct {p0}, Lcom/sec/terrace/browser/compositor/TinCompositorView;->getSurfacePixelFormat()I

    move-result p0

    invoke-interface {p1, p0}, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManager;->requestSurface(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 4

    iget-object v0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-static {v0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lcom/sec/terrace/content/browser/TinContentViewCore;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "onSizeChanged wPix : "

    const-string v2, " hPix : "

    const-string v3, " owPix : "

    invoke-static {p1, p2, v1, v2, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->l(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ohPix : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TinCompositorView"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mIsFirstSwapBuffer:Z

    if-eqz p0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sec/terrace/content/browser/TinContentViewCore;->onSizeChanged(IIII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/sec/terrace/content/browser/TinContentViewCore;->setViewportSize(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSplitModeChanged(Z)V
    .locals 3

    const-string v0, "onSplitModeChanged : "

    const-string v1, "TinCompositorView"

    invoke-static {v0, v1, p1}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    :cond_0
    iput-boolean p1, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mIsSplitModeEnabled:Z

    invoke-static {}, Lcom/sec/terrace/browser/compositor/TinCompositorViewJni;->get()Lcom/sec/terrace/browser/compositor/TinCompositorView$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mNativeCompositorView:J

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/sec/terrace/browser/compositor/TinCompositorView$Natives;->onSplitModeChanged(JLcom/sec/terrace/browser/compositor/TinCompositorView;Z)V

    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/compositor/TinCompositorView;->onWindowVisibilityChangedInternal(I)V

    return-void
.end method

.method public requestRender()V
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mNativeCompositorView:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/compositor/TinCompositorViewJni;->get()Lcom/sec/terrace/browser/compositor/TinCompositorView$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mNativeCompositorView:J

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/terrace/browser/compositor/TinCompositorView$Natives;->setNeedsComposite(JLcom/sec/terrace/browser/compositor/TinCompositorView;)V

    :cond_0
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mCompositorSurfaceManager:Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManager;

    invoke-interface {p0, p1}, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManager;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCurrentWebContents(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mNativeCompositorView:J

    const-wide/16 v5, 0x0

    cmp-long v0, v0, v5

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    iput-object p1, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-static {p1}, Lcom/sec/terrace/content/browser/TinContentViewCore;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lcom/sec/terrace/content/browser/TinContentViewCore;

    move-result-object v7

    iget-object v0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    if-eqz v0, :cond_2

    iget-object v5, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {v5}, Lorg/chromium/content_public/browser/WebContents;->getTopLevelNativeWindow()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v5

    if-eq v0, v5, :cond_2

    iget-object v0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    iget-object v1, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    invoke-interface {v0, v1}, Lorg/chromium/content_public/browser/WebContents;->setTopLevelNativeWindow(Lorg/chromium/ui/base/WindowAndroid;)V

    move v8, v2

    goto :goto_1

    :cond_2
    move v8, v1

    :goto_1
    if-eqz v7, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/terrace/browser/compositor/TinCompositorView;->onPhysicalBackingSizeChanged(Lorg/chromium/content_public/browser/WebContents;II)V

    invoke-static {}, Lcom/sec/terrace/browser/compositor/TinCompositorViewJni;->get()Lcom/sec/terrace/browser/compositor/TinCompositorView$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mNativeCompositorView:J

    invoke-virtual {v7}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getNativeContentViewCore()J

    move-result-wide v5

    move-object v3, p0

    move-object v4, p1

    invoke-interface/range {v0 .. v6}, Lcom/sec/terrace/browser/compositor/TinCompositorView$Natives;->setCurrentWebContents(JLcom/sec/terrace/browser/compositor/TinCompositorView;Lorg/chromium/content_public/browser/WebContents;J)V

    if-eqz v8, :cond_4

    invoke-virtual {v7}, Lcom/sec/terrace/content/browser/TinContentViewCore;->onResetStates()V

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/sec/terrace/browser/compositor/TinCompositorViewJni;->get()Lcom/sec/terrace/browser/compositor/TinCompositorView$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mNativeCompositorView:J

    const-wide/16 v5, 0x0

    move-object v3, p0

    move-object v4, p1

    invoke-interface/range {v0 .. v6}, Lcom/sec/terrace/browser/compositor/TinCompositorView$Natives;->setCurrentWebContents(JLcom/sec/terrace/browser/compositor/TinCompositorView;Lorg/chromium/content_public/browser/WebContents;J)V

    :cond_4
    :goto_2
    return-void
.end method

.method public setOverlayImmersiveArMode(ZZ)V
    .locals 2

    iput-boolean p1, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mIsInXr:Z

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/compositor/TinCompositorView;->setOverlayVideoMode(Z)V

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/compositor/TinCompositorViewJni;->get()Lcom/sec/terrace/browser/compositor/TinCompositorView$Natives;

    move-result-object p2

    iget-wide v0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mNativeCompositorView:J

    invoke-interface {p2, v0, v1, p0, p1}, Lcom/sec/terrace/browser/compositor/TinCompositorView$Natives;->setOverlayImmersiveArMode(JLcom/sec/terrace/browser/compositor/TinCompositorView;Z)V

    iget-object p1, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mCompositorSurfaceManager:Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManager;

    invoke-interface {p1}, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManager;->shutDown()V

    invoke-direct {p0}, Lcom/sec/terrace/browser/compositor/TinCompositorView;->createCompositorSurfaceManager()V

    return-void
.end method

.method public setOverlayVideoMode(Z)V
    .locals 3

    invoke-static {}, Lcom/sec/terrace/browser/compositor/TinCompositorViewJni;->get()Lcom/sec/terrace/browser/compositor/TinCompositorView$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mNativeCompositorView:J

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/sec/terrace/browser/compositor/TinCompositorView$Natives;->setOverlayVideoMode(JLcom/sec/terrace/browser/compositor/TinCompositorView;Z)V

    iput-boolean p1, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mOverlayVideoEnabled:Z

    iget-object p1, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mCompositorSurfaceManager:Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManager;

    invoke-direct {p0}, Lcom/sec/terrace/browser/compositor/TinCompositorView;->getSurfacePixelFormat()I

    move-result p0

    invoke-interface {p1, p0}, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManager;->requestSurface(I)V

    return-void
.end method

.method public setRootView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mCompositorSurfaceManager:Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManager;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    invoke-direct {p0}, Lcom/sec/terrace/browser/compositor/TinCompositorView;->initializeIfOnUiThread()V

    :cond_0
    iput-object p1, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mRootView:Landroid/view/View;

    return-void
.end method

.method public setSurfaceViewBackgroundColor(I)V
    .locals 3

    iget v0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mBackgroundColor:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mBackgroundColor:I

    invoke-static {}, Lcom/sec/terrace/browser/compositor/TinCompositorViewJni;->get()Lcom/sec/terrace/browser/compositor/TinCompositorView$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mNativeCompositorView:J

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/sec/terrace/browser/compositor/TinCompositorView$Natives;->resetRootLayerBackground(JLcom/sec/terrace/browser/compositor/TinCompositorView;I)V

    return-void
.end method

.method public setUpdatedTexture(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mUpdatedTexture:Z

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mCompositorSurfaceManager:Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManager;

    invoke-interface {v0, p1}, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManager;->setVisibility(I)V

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/sec/terrace/browser/compositor/TinCompositorView;->runDrawFinishedCallback()V

    :cond_0
    return-void
.end method

.method public setWillNotDraw(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mCompositorSurfaceManager:Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManager;

    invoke-interface {p0, p1}, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManager;->setWillNotDraw(Z)V

    return-void
.end method

.method public shutDown()V
    .locals 6

    iget-object v0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mCompositorSurfaceManager:Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManager;

    invoke-interface {v0}, Lcom/sec/terrace/browser/compositor/TinCompositorSurfaceManager;->shutDown()V

    iget-object v0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mScreenStateReceiver:Lcom/sec/terrace/browser/compositor/TinCompositorView$ScreenStateReceiverWorkaround;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/terrace/browser/compositor/TinCompositorView$ScreenStateReceiverWorkaround;->shutDown()V

    :cond_0
    iget-wide v0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mNativeCompositorView:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/terrace/browser/compositor/TinCompositorViewJni;->get()Lcom/sec/terrace/browser/compositor/TinCompositorView$Natives;

    move-result-object v0

    iget-wide v4, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mNativeCompositorView:J

    invoke-interface {v0, v4, v5, p0}, Lcom/sec/terrace/browser/compositor/TinCompositorView$Natives;->destroy(JLcom/sec/terrace/browser/compositor/TinCompositorView;)V

    :cond_1
    iput-wide v2, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mNativeCompositorView:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mRootView:Landroid/view/View;

    return-void
.end method

.method public surfaceChanged(Landroid/view/Surface;III)V
    .locals 11

    iget-wide v0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mNativeCompositorView:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "surfaceChanged width : "

    const-string v1, " height :"

    const-string v2, " format : "

    invoke-static {p3, p4, v0, v1, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->l(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TinCompositorView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lorg/chromium/components/input/InputUtils;->isTransferInputToVizSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/chromium/ui/base/WindowAndroid;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, LB4/b;->h(Landroid/view/Window;)Landroid/view/AttachedSurfaceControl;

    move-result-object v0

    invoke-static {v0}, LA2/e;->k(Landroid/view/AttachedSurfaceControl;)Landroid/window/InputTransferToken;

    move-result-object v0

    :goto_0
    move-object v10, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    invoke-static {}, Lcom/sec/terrace/browser/compositor/TinCompositorViewJni;->get()Lcom/sec/terrace/browser/compositor/TinCompositorView$Natives;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mNativeCompositorView:J

    invoke-direct {p0}, Lcom/sec/terrace/browser/compositor/TinCompositorView;->canUseSurfaceControl()Z

    move-result v8

    move-object v4, p0

    move v5, p2

    move v6, p3

    move v7, p4

    move-object v9, p1

    invoke-interface/range {v1 .. v10}, Lcom/sec/terrace/browser/compositor/TinCompositorView$Natives;->surfaceChanged(JLcom/sec/terrace/browser/compositor/TinCompositorView;IIIZLandroid/view/Surface;Landroid/window/InputTransferToken;)V

    iget-object p1, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lorg/chromium/content_public/browser/WebContents;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-virtual {p0, p1, p3, p4}, Lcom/sec/terrace/browser/compositor/TinCompositorView;->onPhysicalBackingSizeChanged(Lorg/chromium/content_public/browser/WebContents;II)V

    :cond_2
    return-void
.end method

.method public surfaceCreated(Landroid/view/Surface;)V
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mNativeCompositorView:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "TinCompositorView"

    const-string v0, "surfaceCreated"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mScreenStateReceiver:Lcom/sec/terrace/browser/compositor/TinCompositorView$ScreenStateReceiverWorkaround;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/sec/terrace/browser/compositor/TinCompositorView$ScreenStateReceiverWorkaround;->clearNeedsReset()V

    :cond_1
    const/4 p1, 0x2

    iput p1, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mFramesUntilHideBackground:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mHaveSwappedFramesSinceSurfaceCreated:Z

    invoke-direct {p0}, Lcom/sec/terrace/browser/compositor/TinCompositorView;->updateNeedsDidSwapBuffersCallback()V

    iget-object p1, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mSurfaceListener:Lcom/sec/terrace/browser/compositor/TinCompositorView$SurfaceListener;

    invoke-interface {p1}, Lcom/sec/terrace/browser/compositor/TinCompositorView$SurfaceListener;->surfaceCreated()V

    invoke-static {}, Lcom/sec/terrace/browser/compositor/TinCompositorViewJni;->get()Lcom/sec/terrace/browser/compositor/TinCompositorView$Natives;

    move-result-object p1

    iget-wide v0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mNativeCompositorView:J

    invoke-interface {p1, v0, v1, p0}, Lcom/sec/terrace/browser/compositor/TinCompositorView$Natives;->surfaceCreated(JLcom/sec/terrace/browser/compositor/TinCompositorView;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mIsFirstSwapBuffer:Z

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/Surface;Z)V
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mNativeCompositorView:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "TinCompositorView"

    const-string v0, "surfaceDestroyed"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/sec/terrace/browser/compositor/TinCompositorViewJni;->get()Lcom/sec/terrace/browser/compositor/TinCompositorView$Natives;

    move-result-object p1

    iget-wide v0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mNativeCompositorView:J

    invoke-interface {p1, v0, v1, p0}, Lcom/sec/terrace/browser/compositor/TinCompositorView$Natives;->preserveChildSurfaceControls(JLcom/sec/terrace/browser/compositor/TinCompositorView;)V

    :cond_1
    invoke-static {}, Lcom/sec/terrace/browser/compositor/TinCompositorViewJni;->get()Lcom/sec/terrace/browser/compositor/TinCompositorView$Natives;

    move-result-object p1

    iget-wide v0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mNativeCompositorView:J

    invoke-interface {p1, v0, v1, p0}, Lcom/sec/terrace/browser/compositor/TinCompositorView$Natives;->surfaceDestroyed(JLcom/sec/terrace/browser/compositor/TinCompositorView;)V

    iget-object p1, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mScreenStateReceiver:Lcom/sec/terrace/browser/compositor/TinCompositorView$ScreenStateReceiverWorkaround;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/sec/terrace/browser/compositor/TinCompositorView$ScreenStateReceiverWorkaround;->maybeResetCompositorSurfaceManager()V

    :cond_2
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mIsFirstSwapBuffer:Z

    return-void
.end method

.method public surfaceRedrawNeededAsync(Ljava/lang/Runnable;)V
    .locals 4

    invoke-direct {p0}, Lcom/sec/terrace/browser/compositor/TinCompositorView;->runDrawFinishedCallback()V

    iput-object p1, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mDrawingFinishedCallback:Ljava/lang/Runnable;

    iget-boolean p1, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mHaveSwappedFramesSinceSurfaceCreated:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sec/terrace/browser/compositor/TinCompositorView;->runDrawFinishedCallback()V

    :cond_0
    invoke-direct {p0}, Lcom/sec/terrace/browser/compositor/TinCompositorView;->updateNeedsDidSwapBuffersCallback()V

    iget-wide v0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mNativeCompositorView:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/sec/terrace/browser/compositor/TinCompositorViewJni;->get()Lcom/sec/terrace/browser/compositor/TinCompositorView$Natives;

    move-result-object p1

    iget-wide v0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mNativeCompositorView:J

    invoke-interface {p1, v0, v1, p0}, Lcom/sec/terrace/browser/compositor/TinCompositorView$Natives;->setNeedsComposite(JLcom/sec/terrace/browser/compositor/TinCompositorView;)V

    :cond_1
    return-void
.end method

.method public unownedSurfaceDestroyed()V
    .locals 3

    invoke-static {}, Lcom/sec/terrace/browser/compositor/TinCompositorViewJni;->get()Lcom/sec/terrace/browser/compositor/TinCompositorView$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView;->mNativeCompositorView:J

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/terrace/browser/compositor/TinCompositorView$Natives;->evictCachedBackBuffer(JLcom/sec/terrace/browser/compositor/TinCompositorView;)V

    return-void
.end method
