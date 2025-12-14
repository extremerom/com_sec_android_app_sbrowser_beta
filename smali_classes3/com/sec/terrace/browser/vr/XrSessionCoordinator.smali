.class public Lcom/sec/terrace/browser/vr/XrSessionCoordinator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/vr/XrSessionCoordinator$SessionType;,
        Lcom/sec/terrace/browser/vr/XrSessionCoordinator$Natives;
    }
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field private static sActiveSessionAvailableSupplier:Lcom/sec/terrace/browser/vr/XrSessionTypeSupplier;

.field private static sActiveSessionInstance:Lcom/sec/terrace/browser/vr/XrSessionCoordinator;


# instance fields
.field private mActiveSessionType:I

.field private mImmersiveOverlay:Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;

.field private mNativeXrSessionCoordinator:J

.field private mWebContents:Lorg/chromium/content_public/browser/WebContents;

.field private mXrHostActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/terrace/browser/vr/XrSessionTypeSupplier;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/terrace/browser/vr/XrSessionTypeSupplier;-><init>(I)V

    sput-object v0, Lcom/sec/terrace/browser/vr/XrSessionCoordinator;->sActiveSessionAvailableSupplier:Lcom/sec/terrace/browser/vr/XrSessionTypeSupplier;

    return-void
.end method

.method private constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/terrace/browser/vr/XrSessionCoordinator;->mActiveSessionType:I

    iput-wide p1, p0, Lcom/sec/terrace/browser/vr/XrSessionCoordinator;->mNativeXrSessionCoordinator:J

    return-void
.end method

.method private static create(J)Lcom/sec/terrace/browser/vr/XrSessionCoordinator;
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    new-instance v0, Lcom/sec/terrace/browser/vr/XrSessionCoordinator;

    invoke-direct {v0, p0, p1}, Lcom/sec/terrace/browser/vr/XrSessionCoordinator;-><init>(J)V

    return-object v0
.end method

.method public static endActiveSession()Z
    .locals 1

    sget-object v0, Lcom/sec/terrace/browser/vr/XrSessionCoordinator;->sActiveSessionInstance:Lcom/sec/terrace/browser/vr/XrSessionCoordinator;

    if-eqz v0, :cond_0

    invoke-direct {v0}, Lcom/sec/terrace/browser/vr/XrSessionCoordinator;->endSession()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static endActiveSessionFromXrHost()Z
    .locals 1

    sget-object v0, Lcom/sec/terrace/browser/vr/XrSessionCoordinator;->sActiveSessionInstance:Lcom/sec/terrace/browser/vr/XrSessionCoordinator;

    if-eqz v0, :cond_0

    invoke-direct {v0}, Lcom/sec/terrace/browser/vr/XrSessionCoordinator;->endSessionFromXrHost()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private endSession()V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    sget-object v0, Lcom/sec/terrace/browser/vr/XrSessionCoordinator;->sActiveSessionInstance:Lcom/sec/terrace/browser/vr/XrSessionCoordinator;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/terrace/browser/vr/XrSessionCoordinator;->mXrHostActivity:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/terrace/browser/vr/XrSessionCoordinator;->mXrHostActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    iput-object v1, p0, Lcom/sec/terrace/browser/vr/XrSessionCoordinator;->mXrHostActivity:Ljava/lang/ref/WeakReference;

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/terrace/browser/vr/XrSessionCoordinator;->mImmersiveOverlay:Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;->cleanupAndExit()V

    iput-object v1, p0, Lcom/sec/terrace/browser/vr/XrSessionCoordinator;->mImmersiveOverlay:Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/sec/terrace/browser/vr/XrSessionCoordinator;->onJavaShutdown()V

    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/terrace/browser/vr/XrSessionCoordinator;->mActiveSessionType:I

    iput-object v1, p0, Lcom/sec/terrace/browser/vr/XrSessionCoordinator;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    sput-object v1, Lcom/sec/terrace/browser/vr/XrSessionCoordinator;->sActiveSessionInstance:Lcom/sec/terrace/browser/vr/XrSessionCoordinator;

    sget-object p0, Lcom/sec/terrace/browser/vr/XrSessionCoordinator;->sActiveSessionAvailableSupplier:Lcom/sec/terrace/browser/vr/XrSessionTypeSupplier;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/terrace/browser/vr/XrSessionTypeSupplier;->set(Ljava/lang/Integer;)V

    return-void
.end method

.method private endSessionFromXrHost()V
    .locals 1

    sget-object v0, Lcom/sec/terrace/browser/vr/XrSessionCoordinator;->sActiveSessionInstance:Lcom/sec/terrace/browser/vr/XrSessionCoordinator;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/terrace/browser/vr/XrSessionCoordinator;->mXrHostActivity:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Lcom/sec/terrace/browser/vr/XrSessionCoordinator;->endSession()V

    return-void
.end method

.method public static getActivity(Lorg/chromium/content_public/browser/WebContents;)Landroid/app/Activity;
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p0}, Lorg/chromium/content_public/browser/WebContents;->getTopLevelNativeWindow()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    return-object p0
.end method

.method private static getApplicationContext()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private static getCurrentActivityContext()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    sget-object v0, Lcom/sec/terrace/browser/vr/XrSessionCoordinator;->sActiveSessionInstance:Lcom/sec/terrace/browser/vr/XrSessionCoordinator;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/sec/terrace/browser/vr/XrSessionCoordinator;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/sec/terrace/browser/vr/XrSessionCoordinator;->getActivity(Lorg/chromium/content_public/browser/WebContents;)Landroid/app/Activity;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private handleXrHostActivityReady(Landroid/app/Activity;)V
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/browser/vr/XrSessionCoordinator;->mNativeXrSessionCoordinator:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/terrace/browser/vr/XrSessionCoordinator;->mXrHostActivity:Ljava/lang/ref/WeakReference;

    invoke-static {}, Lcom/sec/terrace/browser/vr/XrSessionCoordinatorJni;->get()Lcom/sec/terrace/browser/vr/XrSessionCoordinator$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/vr/XrSessionCoordinator;->mNativeXrSessionCoordinator:J

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/sec/terrace/browser/vr/XrSessionCoordinator$Natives;->onXrHostActivityReady(JLcom/sec/terrace/browser/vr/XrSessionCoordinator;Landroid/app/Activity;)V

    return-void
.end method

.method public static hasActiveSession()Z
    .locals 1

    sget-object v0, Lcom/sec/terrace/browser/vr/XrSessionCoordinator;->sActiveSessionInstance:Lcom/sec/terrace/browser/vr/XrSessionCoordinator;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static onActiveXrSessionButtonTouched()V
    .locals 1

    sget-object v0, Lcom/sec/terrace/browser/vr/XrSessionCoordinator;->sActiveSessionInstance:Lcom/sec/terrace/browser/vr/XrSessionCoordinator;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/vr/XrSessionCoordinator;->onXrSessionButtonTouched()V

    return-void
.end method

.method private onJavaShutdown()V
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/browser/vr/XrSessionCoordinator;->mNativeXrSessionCoordinator:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/vr/XrSessionCoordinatorJni;->get()Lcom/sec/terrace/browser/vr/XrSessionCoordinator$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/vr/XrSessionCoordinator;->mNativeXrSessionCoordinator:J

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/terrace/browser/vr/XrSessionCoordinator$Natives;->onJavaShutdown(JLcom/sec/terrace/browser/vr/XrSessionCoordinator;)V

    return-void
.end method

.method private onNativeDestroy()V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/terrace/browser/vr/XrSessionCoordinator;->mNativeXrSessionCoordinator:J

    sget-object v0, Lcom/sec/terrace/browser/vr/XrSessionCoordinator;->sActiveSessionInstance:Lcom/sec/terrace/browser/vr/XrSessionCoordinator;

    if-ne v0, p0, :cond_0

    invoke-direct {p0}, Lcom/sec/terrace/browser/vr/XrSessionCoordinator;->endSession()V

    :cond_0
    return-void
.end method

.method public static onXrHostActivityReady(Landroid/app/Activity;)Z
    .locals 1

    sget-object v0, Lcom/sec/terrace/browser/vr/XrSessionCoordinator;->sActiveSessionInstance:Lcom/sec/terrace/browser/vr/XrSessionCoordinator;

    if-eqz v0, :cond_0

    invoke-direct {v0, p0}, Lcom/sec/terrace/browser/vr/XrSessionCoordinator;->handleXrHostActivityReady(Landroid/app/Activity;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private startArSession(Lcom/sec/terrace/browser/vr/ArCompositorDelegateProvider;Lorg/chromium/content_public/browser/WebContents;ZZ)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iput-object p2, p0, Lcom/sec/terrace/browser/vr/XrSessionCoordinator;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {p1, p2}, Lcom/sec/terrace/browser/vr/ArCompositorDelegateProvider;->create(Lorg/chromium/content_public/browser/WebContents;)Lcom/sec/terrace/browser/vr/ArCompositorDelegate;

    move-result-object p1

    invoke-static {p1, p2, p3, p4}, Lcom/sec/terrace/browser/vr/ArClassProvider;->getOverlayDelegate(Lcom/sec/terrace/browser/vr/ArCompositorDelegate;Lorg/chromium/content_public/browser/WebContents;ZZ)Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$Delegate;

    move-result-object p1

    const/4 p3, 0x1

    invoke-direct {p0, p3, p1, p2}, Lcom/sec/terrace/browser/vr/XrSessionCoordinator;->startSession(ILcom/sec/terrace/browser/vr/XrImmersiveOverlay$Delegate;Lorg/chromium/content_public/browser/WebContents;)V

    return-void
.end method

.method private startSession(ILcom/sec/terrace/browser/vr/XrImmersiveOverlay$Delegate;Lorg/chromium/content_public/browser/WebContents;)V
    .locals 1

    new-instance v0, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;

    invoke-direct {v0}, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;-><init>()V

    iput-object v0, p0, Lcom/sec/terrace/browser/vr/XrSessionCoordinator;->mImmersiveOverlay:Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;

    invoke-virtual {v0, p2, p3, p0}, Lcom/sec/terrace/browser/vr/XrImmersiveOverlay;->show(Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$Delegate;Lorg/chromium/content_public/browser/WebContents;Lcom/sec/terrace/browser/vr/XrSessionCoordinator;)V

    iput-object p3, p0, Lcom/sec/terrace/browser/vr/XrSessionCoordinator;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    iput p1, p0, Lcom/sec/terrace/browser/vr/XrSessionCoordinator;->mActiveSessionType:I

    sput-object p0, Lcom/sec/terrace/browser/vr/XrSessionCoordinator;->sActiveSessionInstance:Lcom/sec/terrace/browser/vr/XrSessionCoordinator;

    sget-object p0, Lcom/sec/terrace/browser/vr/XrSessionCoordinator;->sActiveSessionAvailableSupplier:Lcom/sec/terrace/browser/vr/XrSessionTypeSupplier;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/vr/XrSessionTypeSupplier;->set(Ljava/lang/Integer;)V

    return-void
.end method

.method private startVrSession(Lcom/sec/terrace/browser/vr/VrCompositorDelegateProvider;Lorg/chromium/content_public/browser/WebContents;)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-interface {p1, p2}, Lcom/sec/terrace/browser/vr/VrCompositorDelegateProvider;->create(Lorg/chromium/content_public/browser/WebContents;)Lcom/sec/terrace/browser/vr/VrCompositorDelegate;

    move-result-object p1

    invoke-static {p2}, Lcom/sec/terrace/browser/vr/XrSessionCoordinator;->getActivity(Lorg/chromium/content_public/browser/WebContents;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/terrace/browser/vr/CardboardClassProvider;->getOverlayDelegate(Lcom/sec/terrace/browser/vr/VrCompositorDelegate;Landroid/app/Activity;)Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$Delegate;

    move-result-object p1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2}, Lcom/sec/terrace/browser/vr/XrSessionCoordinator;->startSession(ILcom/sec/terrace/browser/vr/XrImmersiveOverlay$Delegate;Lorg/chromium/content_public/browser/WebContents;)V

    return-void
.end method

.method private startXrSession(Lorg/chromium/content_public/browser/WebContents;Z)V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    sput-object p0, Lcom/sec/terrace/browser/vr/XrSessionCoordinator;->sActiveSessionInstance:Lcom/sec/terrace/browser/vr/XrSessionCoordinator;

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/terrace/browser/vr/XrSessionCoordinator;->mActiveSessionType:I

    sget-object v1, Lcom/sec/terrace/browser/vr/XrSessionCoordinator;->sActiveSessionAvailableSupplier:Lcom/sec/terrace/browser/vr/XrSessionTypeSupplier;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sec/terrace/browser/vr/XrSessionTypeSupplier;->set(Ljava/lang/Integer;)V

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/vr/XrSessionCoordinator;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/terrace/browser/vr/XrHostActivity;->createIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    invoke-static {}, Lcom/sec/terrace/browser/vr/XrSessionCoordinator;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/vr/XrSessionCoordinatorJni;->get()Lcom/sec/terrace/browser/vr/XrSessionCoordinator$Natives;

    move-result-object p2

    iget-wide v0, p0, Lcom/sec/terrace/browser/vr/XrSessionCoordinator;->mNativeXrSessionCoordinator:J

    invoke-static {p1}, Lcom/sec/terrace/browser/vr/XrSessionCoordinator;->getActivity(Lorg/chromium/content_public/browser/WebContents;)Landroid/app/Activity;

    move-result-object p1

    invoke-interface {p2, v0, v1, p0, p1}, Lcom/sec/terrace/browser/vr/XrSessionCoordinator$Natives;->onXrHostActivityReady(JLcom/sec/terrace/browser/vr/XrSessionCoordinator;Landroid/app/Activity;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onDrawingSurfaceDestroyed()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/browser/vr/XrSessionCoordinator;->onJavaShutdown()V

    return-void
.end method

.method public onDrawingSurfaceReady(Landroid/view/Surface;Lorg/chromium/ui/base/WindowAndroid;III)V
    .locals 10

    iget-wide v0, p0, Lcom/sec/terrace/browser/vr/XrSessionCoordinator;->mNativeXrSessionCoordinator:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/vr/XrSessionCoordinatorJni;->get()Lcom/sec/terrace/browser/vr/XrSessionCoordinator$Natives;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/terrace/browser/vr/XrSessionCoordinator;->mNativeXrSessionCoordinator:J

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    move v8, p4

    move v9, p5

    invoke-interface/range {v1 .. v9}, Lcom/sec/terrace/browser/vr/XrSessionCoordinator$Natives;->onDrawingSurfaceReady(JLcom/sec/terrace/browser/vr/XrSessionCoordinator;Landroid/view/Surface;Lorg/chromium/ui/base/WindowAndroid;III)V

    return-void
.end method

.method public onDrawingSurfaceTouch(ZZIFF)V
    .locals 10

    iget-wide v0, p0, Lcom/sec/terrace/browser/vr/XrSessionCoordinator;->mNativeXrSessionCoordinator:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/vr/XrSessionCoordinatorJni;->get()Lcom/sec/terrace/browser/vr/XrSessionCoordinator$Natives;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/terrace/browser/vr/XrSessionCoordinator;->mNativeXrSessionCoordinator:J

    move-object v4, p0

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    move v9, p5

    invoke-interface/range {v1 .. v9}, Lcom/sec/terrace/browser/vr/XrSessionCoordinator$Natives;->onDrawingSurfaceTouch(JLcom/sec/terrace/browser/vr/XrSessionCoordinator;ZZIFF)V

    return-void
.end method

.method public onXrSessionButtonTouched()V
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/browser/vr/XrSessionCoordinator;->mNativeXrSessionCoordinator:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/vr/XrSessionCoordinatorJni;->get()Lcom/sec/terrace/browser/vr/XrSessionCoordinator$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/vr/XrSessionCoordinator;->mNativeXrSessionCoordinator:J

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/terrace/browser/vr/XrSessionCoordinator$Natives;->onXrSessionButtonTouched(JLcom/sec/terrace/browser/vr/XrSessionCoordinator;)V

    return-void
.end method
