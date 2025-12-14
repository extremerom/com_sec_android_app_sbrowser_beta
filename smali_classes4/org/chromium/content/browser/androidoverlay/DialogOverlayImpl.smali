.class public Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/media/mojom/AndroidOverlay;
.implements Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore$Host;
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl$Natives;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mAsPanel:Z

.field private mClient:Lorg/chromium/media/mojom/AndroidOverlayClient;

.field private mClosed:Z

.field private final mConfig:Lorg/chromium/media/mojom/AndroidOverlayConfig;

.field private mContainerViewViewTreeObserver:Landroid/view/ViewTreeObserver;

.field private mDialogCore:Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore;

.field private mLastRect:Lorg/chromium/gfx/mojom/Rect;

.field private mNativeHandle:J

.field private mReleasedRunnable:Ljava/lang/Runnable;

.field private mSurfaceId:I

.field private final mTearDownDialogOverlaysHandler:Ljava/lang/Runnable;

.field private mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;


# direct methods
.method public constructor <init>(Lorg/chromium/media/mojom/AndroidOverlayClient;Lorg/chromium/media/mojom/AndroidOverlayConfig;Ljava/lang/Runnable;Z)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/tab_sync/o;

    const/16 v1, 0x13

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/tab_sync/o;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->mTearDownDialogOverlaysHandler:Ljava/lang/Runnable;

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    iput-object p1, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->mClient:Lorg/chromium/media/mojom/AndroidOverlayClient;

    iput-object p3, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->mReleasedRunnable:Ljava/lang/Runnable;

    iget-object p1, p2, Lorg/chromium/media/mojom/AndroidOverlayConfig;->rect:Lorg/chromium/gfx/mojom/Rect;

    invoke-static {p1}, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->copyRect(Lorg/chromium/gfx/mojom/Rect;)Lorg/chromium/gfx/mojom/Rect;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->mLastRect:Lorg/chromium/gfx/mojom/Rect;

    iput-object p2, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->mConfig:Lorg/chromium/media/mojom/AndroidOverlayConfig;

    iput-boolean p4, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->mAsPanel:Z

    invoke-static {}, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImplJni;->get()Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl$Natives;

    move-result-object v0

    iget-object p1, p2, Lorg/chromium/media/mojom/AndroidOverlayConfig;->routingToken:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    iget-wide v2, p1, Lorg/chromium/mojo_base/mojom/UnguessableToken;->high:J

    iget-wide v4, p1, Lorg/chromium/mojo_base/mojom/UnguessableToken;->low:J

    iget-boolean v6, p2, Lorg/chromium/media/mojom/AndroidOverlayConfig;->powerEfficient:Z

    move-object v1, p0

    invoke-interface/range {v0 .. v6}, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl$Natives;->init(Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;JJZ)J

    move-result-wide p3

    iput-wide p3, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->mNativeHandle:J

    const-wide/16 v0, 0x0

    cmp-long p1, p3, v0

    if-nez p1, :cond_0

    invoke-direct {p0}, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->notifyDestroyed()V

    invoke-direct {p0}, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->cleanup()V

    return-void

    :cond_0
    invoke-static {}, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImplJni;->get()Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl$Natives;

    move-result-object p1

    iget-wide p3, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->mNativeHandle:J

    iget-object p2, p2, Lorg/chromium/media/mojom/AndroidOverlayConfig;->rect:Lorg/chromium/gfx/mojom/Rect;

    invoke-interface {p1, p3, p4, p0, p2}, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl$Natives;->getCompositorOffset(JLorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;Lorg/chromium/gfx/mojom/Rect;)V

    invoke-static {}, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImplJni;->get()Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl$Natives;

    move-result-object p1

    iget-wide p2, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->mNativeHandle:J

    invoke-interface {p1, p2, p3, p0}, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl$Natives;->completeInit(JLorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;)V

    return-void
.end method

.method private cleanup()V
    .locals 6

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    iget v0, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->mSurfaceId:I

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImplJni;->get()Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl$Natives;

    move-result-object v0

    iget v1, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->mSurfaceId:I

    invoke-interface {v0, v1}, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl$Natives;->unregisterSurface(I)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->mSurfaceId:I

    :cond_0
    iget-wide v0, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImplJni;->get()Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl$Natives;

    move-result-object v0

    iget-wide v4, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->mNativeHandle:J

    invoke-interface {v0, v4, v5, p0}, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl$Natives;->destroy(JLorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;)V

    iput-wide v2, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->mNativeHandle:J

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->mDialogCore:Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore;

    iget-object v1, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->mClient:Lorg/chromium/media/mojom/AndroidOverlayClient;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lorg/chromium/mojo/bindings/Interface;->close()V

    :cond_2
    iput-object v0, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->mClient:Lorg/chromium/media/mojom/AndroidOverlayClient;

    iget-object v1, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->mTearDownDialogOverlaysHandler:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->removeTearDownDialogOverlaysHandler(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    :cond_3
    return-void
.end method

.method private static copyRect(Lorg/chromium/gfx/mojom/Rect;)Lorg/chromium/gfx/mojom/Rect;
    .locals 2

    new-instance v0, Lorg/chromium/gfx/mojom/Rect;

    invoke-direct {v0}, Lorg/chromium/gfx/mojom/Rect;-><init>()V

    iget v1, p0, Lorg/chromium/gfx/mojom/Rect;->x:I

    iput v1, v0, Lorg/chromium/gfx/mojom/Rect;->x:I

    iget v1, p0, Lorg/chromium/gfx/mojom/Rect;->y:I

    iput v1, v0, Lorg/chromium/gfx/mojom/Rect;->y:I

    iget v1, p0, Lorg/chromium/gfx/mojom/Rect;->width:I

    iput v1, v0, Lorg/chromium/gfx/mojom/Rect;->width:I

    iget p0, p0, Lorg/chromium/gfx/mojom/Rect;->height:I

    iput p0, v0, Lorg/chromium/gfx/mojom/Rect;->height:I

    return-object v0
.end method

.method private initializeDialogCore(Lorg/chromium/ui/base/WindowAndroid;)V
    .locals 4

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/chromium/ui/base/WindowAndroid;->getContext()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/base/ContextUtils;->activityFromContext(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    new-instance v1, Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore;

    invoke-direct {v1}, Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore;-><init>()V

    iput-object v1, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->mDialogCore:Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore;

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v2, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->mConfig:Lorg/chromium/media/mojom/AndroidOverlayConfig;

    iget-boolean v3, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->mAsPanel:Z

    invoke-virtual {v1, v0, v2, p0, v3}, Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore;->initialize(Landroid/content/Context;Lorg/chromium/media/mojom/AndroidOverlayConfig;Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore$Host;Z)V

    iget-object p0, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->mDialogCore:Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore;

    invoke-virtual {p1}, Lorg/chromium/ui/base/WindowAndroid;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore;->onWindowToken(Landroid/os/IBinder;)V

    return-void
.end method

.method private notifyDestroyed()V
    .locals 2

    iget-object v0, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->mClient:Lorg/chromium/media/mojom/AndroidOverlayClient;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->mClient:Lorg/chromium/media/mojom/AndroidOverlayClient;

    iget p0, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->mSurfaceId:I

    if-nez p0, :cond_1

    invoke-interface {v0}, Lorg/chromium/media/mojom/AndroidOverlayClient;->onDestroyed()V

    return-void

    :cond_1
    check-cast v0, Lorg/chromium/media/mojom/AndroidOverlayClient$Proxy;

    invoke-interface {v0}, Lorg/chromium/mojo/bindings/Interface$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$Proxy$Handler;

    move-result-object p0

    invoke-interface {p0}, Lorg/chromium/mojo/bindings/Interface$Proxy$Handler;->passHandle()Lorg/chromium/mojo/system/MessagePipeHandle;

    move-result-object p0

    invoke-interface {p0}, Lorg/chromium/mojo/system/Handle;->releaseNativeHandle()J

    move-result-wide v0

    invoke-static {}, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImplJni;->get()Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl$Natives;

    move-result-object p0

    invoke-interface {p0, v0, v1}, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl$Natives;->notifyDestroyedSynchronously(J)V

    return-void
.end method

.method private observeContainerView(Landroid/view/View;)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->mContainerViewViewTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->mContainerViewViewTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->mContainerViewViewTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->mContainerViewViewTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_1
    return-void
.end method

.method private onPowerEfficientState(Z)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    iget-object v0, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->mDialogCore:Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->mClient:Lorg/chromium/media/mojom/AndroidOverlayClient;

    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-interface {p0, p1}, Lorg/chromium/media/mojom/AndroidOverlayClient;->onPowerEfficientState(Z)V

    return-void
.end method

.method private onWebContents(Lorg/chromium/content/browser/webcontents/WebContentsImpl;)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iput-object p1, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    iget-object p0, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->mTearDownDialogOverlaysHandler:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->addTearDownDialogOverlaysHandler(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static receiveCompositorOffset(Lorg/chromium/gfx/mojom/Rect;II)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget v0, p0, Lorg/chromium/gfx/mojom/Rect;->x:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/chromium/gfx/mojom/Rect;->x:I

    iget p1, p0, Lorg/chromium/gfx/mojom/Rect;->y:I

    add-int/2addr p1, p2

    iput p1, p0, Lorg/chromium/gfx/mojom/Rect;->y:I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    iget-boolean v0, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->mClosed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->mClosed:Z

    iget-object v0, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->mDialogCore:Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore;->release()V

    invoke-direct {p0}, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->cleanup()V

    :cond_1
    iget-object p0, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->mReleasedRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public onConnectionError(Lorg/chromium/mojo/system/MojoException;)V
    .locals 0

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    invoke-virtual {p0}, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->close()V

    return-void
.end method

.method public onDismissed()V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    invoke-direct {p0}, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->notifyDestroyed()V

    iget-object v0, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->mDialogCore:Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore;->onWindowToken(Landroid/os/IBinder;)V

    :cond_0
    invoke-direct {p0}, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->cleanup()V

    return-void
.end method

.method public onOverlayDestroyed()V
    .locals 1

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    iget-object v0, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->mDialogCore:Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->notifyDestroyed()V

    invoke-direct {p0}, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->cleanup()V

    return-void
.end method

.method public onPreDraw()Z
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->mLastRect:Lorg/chromium/gfx/mojom/Rect;

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->scheduleLayout(Lorg/chromium/gfx/mojom/Rect;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onSurfaceReady(Landroid/view/Surface;)V
    .locals 2

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    iget-object v0, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->mDialogCore:Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->mClient:Lorg/chromium/media/mojom/AndroidOverlayClient;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImplJni;->get()Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl$Natives;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl$Natives;->registerSurface(Landroid/view/Surface;)I

    move-result p1

    iput p1, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->mSurfaceId:I

    iget-object p0, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->mClient:Lorg/chromium/media/mojom/AndroidOverlayClient;

    int-to-long v0, p1

    invoke-interface {p0, v0, v1}, Lorg/chromium/media/mojom/AndroidOverlayClient;->onSurfaceReady(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onWindowAndroid(Lorg/chromium/ui/base/WindowAndroid;)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    iget-object v0, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->mDialogCore:Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore;

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->initializeDialogCore(Lorg/chromium/ui/base/WindowAndroid;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/chromium/ui/base/WindowAndroid;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-object p0, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->mDialogCore:Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore;

    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore;->onWindowToken(Landroid/os/IBinder;)V

    return-void
.end method

.method public scheduleLayout(Lorg/chromium/gfx/mojom/Rect;)V
    .locals 3

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    invoke-static {p1}, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->copyRect(Lorg/chromium/gfx/mojom/Rect;)Lorg/chromium/gfx/mojom/Rect;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->mLastRect:Lorg/chromium/gfx/mojom/Rect;

    iget-object v0, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->mDialogCore:Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImplJni;->get()Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->mNativeHandle:J

    invoke-interface {v0, v1, v2, p0, p1}, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl$Natives;->getCompositorOffset(JLorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;Lorg/chromium/gfx/mojom/Rect;)V

    iget-object p0, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;->mDialogCore:Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore;

    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore;->layoutSurface(Lorg/chromium/gfx/mojom/Rect;)V

    return-void
.end method
