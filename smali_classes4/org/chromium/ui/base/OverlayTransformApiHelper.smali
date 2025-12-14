.class final Lorg/chromium/ui/base/OverlayTransformApiHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/AttachedSurfaceControl$OnBufferTransformHintChangedListener;
.implements Landroid/view/Window$OnFrameMetricsAvailableListener;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private mBufferTransformListenerAdded:Z

.field private mFrameMetricsListenerAdded:Z

.field private final mWindow:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/Window;",
            ">;"
        }
    .end annotation
.end field

.field private final mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;


# direct methods
.method private constructor <init>(Lorg/chromium/ui/base/WindowAndroid;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/ui/base/OverlayTransformApiHelper;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Lorg/chromium/ui/base/WindowAndroid;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/chromium/ui/base/OverlayTransformApiHelper;->mWindow:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Lorg/chromium/ui/base/OverlayTransformApiHelper;->addOnBufferTransformHintChangedListener()V

    return-void
.end method

.method private addOnBufferTransformHintChangedListener()V
    .locals 1

    iget-object v0, p0, Lorg/chromium/ui/base/OverlayTransformApiHelper;->mWindow:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Window;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, LB4/b;->h(Landroid/view/Window;)Landroid/view/AttachedSurfaceControl;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lorg/chromium/ui/base/OverlayTransformApiHelper;->addOnFrameMetricsAvailableListener()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lorg/chromium/ui/base/OverlayTransformApiHelper;->doAddOnBufferTransformHintChangedListener()V

    :goto_0
    return-void
.end method

.method private addOnFrameMetricsAvailableListener()V
    .locals 3

    iget-boolean v0, p0, Lorg/chromium/ui/base/OverlayTransformApiHelper;->mFrameMetricsListenerAdded:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/chromium/ui/base/OverlayTransformApiHelper;->mWindow:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Window;

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Looper;

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, p0, v1}, Landroid/view/Window;->addOnFrameMetricsAvailableListener(Landroid/view/Window$OnFrameMetricsAvailableListener;Landroid/os/Handler;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/ui/base/OverlayTransformApiHelper;->mFrameMetricsListenerAdded:Z

    return-void
.end method

.method public static create(Lorg/chromium/ui/base/WindowAndroid;)Lorg/chromium/ui/base/OverlayTransformApiHelper;
    .locals 1

    invoke-virtual {p0}, Lorg/chromium/ui/base/WindowAndroid;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lorg/chromium/ui/base/OverlayTransformApiHelper;

    invoke-direct {v0, p0}, Lorg/chromium/ui/base/OverlayTransformApiHelper;-><init>(Lorg/chromium/ui/base/WindowAndroid;)V

    return-object v0
.end method

.method private doAddOnBufferTransformHintChangedListener()V
    .locals 1

    iget-boolean v0, p0, Lorg/chromium/ui/base/OverlayTransformApiHelper;->mBufferTransformListenerAdded:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/chromium/ui/base/OverlayTransformApiHelper;->mWindow:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Window;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {v0}, LB4/b;->h(Landroid/view/Window;)Landroid/view/AttachedSurfaceControl;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0, p0}, Lg1/c;->e(Landroid/view/AttachedSurfaceControl;Landroid/view/AttachedSurfaceControl$OnBufferTransformHintChangedListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/ui/base/OverlayTransformApiHelper;->mBufferTransformListenerAdded:Z

    :cond_2
    return-void
.end method

.method private removeOnBufferTransformHintChangedListener()V
    .locals 1

    iget-boolean v0, p0, Lorg/chromium/ui/base/OverlayTransformApiHelper;->mBufferTransformListenerAdded:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/chromium/ui/base/OverlayTransformApiHelper;->mWindow:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Window;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {v0}, LB4/b;->h(Landroid/view/Window;)Landroid/view/AttachedSurfaceControl;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0, p0}, Lg1/c;->c(Landroid/view/AttachedSurfaceControl;Landroid/view/AttachedSurfaceControl$OnBufferTransformHintChangedListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/ui/base/OverlayTransformApiHelper;->mBufferTransformListenerAdded:Z

    :cond_2
    return-void
.end method

.method private removeOnFrameMetricsAvailableListener()V
    .locals 3

    iget-boolean v0, p0, Lorg/chromium/ui/base/OverlayTransformApiHelper;->mFrameMetricsListenerAdded:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/chromium/ui/base/OverlayTransformApiHelper;->mWindow:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Window;

    if-nez v0, :cond_1

    return-void

    :cond_1
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/view/Window;->removeOnFrameMetricsAvailableListener(Landroid/view/Window$OnFrameMetricsAvailableListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "OverlayTransformAH"

    const-string v2, "Ignoring IllegalArgumentException from removeOnFrameMetricsAvailableListener"

    invoke-static {v1, v2, v0}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/ui/base/OverlayTransformApiHelper;->mFrameMetricsListenerAdded:Z

    return-void
.end method

.method private static toOverlayTransform(I)I
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_5

    const/4 v1, 0x2

    if-eq p0, v0, :cond_4

    const/4 v0, 0x3

    if-eq p0, v1, :cond_3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x6

    return p0

    :cond_1
    return v0

    :cond_2
    const/4 p0, 0x5

    return p0

    :cond_3
    return v0

    :cond_4
    return v1

    :cond_5
    return v0
.end method


# virtual methods
.method public destroy()V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/ui/base/OverlayTransformApiHelper;->removeOnFrameMetricsAvailableListener()V

    invoke-direct {p0}, Lorg/chromium/ui/base/OverlayTransformApiHelper;->removeOnBufferTransformHintChangedListener()V

    return-void
.end method

.method public getOverlayTransform()I
    .locals 1

    iget-object p0, p0, Lorg/chromium/ui/base/OverlayTransformApiHelper;->mWindow:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/Window;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-static {p0}, LB4/b;->h(Landroid/view/Window;)Landroid/view/AttachedSurfaceControl;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    :try_start_0
    invoke-static {p0}, Lg1/c;->a(Landroid/view/AttachedSurfaceControl;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p0}, Lorg/chromium/ui/base/OverlayTransformApiHelper;->toOverlayTransform(I)I

    move-result p0

    return p0

    :catch_0
    return v0
.end method

.method public onBufferTransformHintChanged(I)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/base/OverlayTransformApiHelper;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    invoke-virtual {p0}, Lorg/chromium/ui/base/WindowAndroid;->onOverlayTransformUpdated()V

    return-void
.end method

.method public onFrameMetricsAvailable(Landroid/view/Window;Landroid/view/FrameMetrics;I)V
    .locals 0

    invoke-static {p1}, LB4/b;->h(Landroid/view/Window;)Landroid/view/AttachedSurfaceControl;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lorg/chromium/ui/base/OverlayTransformApiHelper;->removeOnFrameMetricsAvailableListener()V

    invoke-direct {p0}, Lorg/chromium/ui/base/OverlayTransformApiHelper;->doAddOnBufferTransformHintChangedListener()V

    :cond_0
    return-void
.end method
