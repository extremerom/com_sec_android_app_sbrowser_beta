.class public Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarCaptureHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mCallback:Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mCaptureBitmapHandler:Landroid/os/Handler;

.field private mCaptureBitmapRunnable:Ljava/lang/Runnable;

.field private final mHideToolbar:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbar;

.field private final mTargetView:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbar;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbar;",
            "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarCaptureHelper;->mHideToolbar:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbar;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarCaptureHelper;->mCallback:Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarCaptureHelper;->mTargetView:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarCaptureHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarCaptureHelper;->lambda$forceCapture$0()V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarCaptureHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarCaptureHelper;->lambda$postCapture$1()V

    return-void
.end method

.method private captureBitmap()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarCaptureHelper;->captureWithoutRipple()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[captureBitmap] capture "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarCaptureHelper;->mTargetView:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is failed!"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "HideToolbarCaptureHelper"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarCaptureHelper;->mCallback:Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;->onCallback(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method

.method private captureWithoutRipple()Landroid/graphics/Bitmap;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarCaptureHelper;->mHideToolbar:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbar;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbar;->getToolbarButtons()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->backupViewStates(Ljava/util/List;)Ljava/util/Map;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarCaptureHelper;->mHideToolbar:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbar;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbar;->requestBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->restoreViewStates(Ljava/util/Map;)V

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-object p0
.end method

.method private synthetic lambda$forceCapture$0()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarCaptureHelper;->mHideToolbar:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbar;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbar;->canForceCapture()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarCaptureHelper;->captureBitmap()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$postCapture$1()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarCaptureHelper;->shouldCaptureLater()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarCaptureHelper;->mHideToolbar:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbar;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbar;->invalidateLayout()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarCaptureHelper;->mHideToolbar:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbar;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbar;->shouldCaptureBitmap()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarCaptureHelper;->captureBitmap()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarCaptureHelper;->mCaptureBitmapRunnable:Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarCaptureHelper;->mCaptureBitmapHandler:Landroid/os/Handler;

    :cond_1
    return-void
.end method

.method private shouldCaptureLater()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarCaptureHelper;->mHideToolbar:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbar;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbar;->shouldCaptureLater()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarCaptureHelper;->mHideToolbar:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbar;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbar;->getToolbarButtons()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public forceCapture()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarCaptureHelper;->mHideToolbar:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbar;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbar;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/hide_toolbar/a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/hide_toolbar/a;-><init>(Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarCaptureHelper;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarCaptureHelper;->mCaptureBitmapHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarCaptureHelper;->mCaptureBitmapRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarCaptureHelper;->mCaptureBitmapRunnable:Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarCaptureHelper;->mCaptureBitmapHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method public postCapture()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarCaptureHelper;->mHideToolbar:Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbar;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbar;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarCaptureHelper;->mCaptureBitmapHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarCaptureHelper;->mCaptureBitmapRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    new-instance v0, Lcom/sec/android/app/sbrowser/hide_toolbar/a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/hide_toolbar/a;-><init>(Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarCaptureHelper;I)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarCaptureHelper;->mCaptureBitmapRunnable:Ljava/lang/Runnable;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarCaptureHelper;->mCaptureBitmapHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarCaptureHelper;->mCaptureBitmapRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
