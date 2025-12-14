.class public Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarCaptureHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mCachedPixels:[I

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

.field private final mHideToolbar:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbar;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbar;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V
    .locals 0
    .param p1    # Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbar;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbar;",
            "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarCaptureHelper;->mHideToolbar:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbar;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarCaptureHelper;->mCallback:Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarCaptureHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarCaptureHelper;->lambda$postCapture$1()V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarCaptureHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarCaptureHelper;->lambda$forceCapture$0()V

    return-void
.end method

.method private captureBitmap(Z)V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarCaptureHelper;->captureWithoutRipple()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarCaptureHelper;->updateCachedBitmap(Landroid/graphics/Bitmap;Z)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarCaptureHelper;->mCallback:Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;->onCallback(Ljava/lang/Object;)V

    return-void
.end method

.method private captureWithoutRipple()Landroid/graphics/Bitmap;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarCaptureHelper;->mHideToolbar:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbar;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbar;->getToolbarButtons()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->backupViewStates(Ljava/util/List;)Ljava/util/Map;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarCaptureHelper;->mHideToolbar:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbar;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbar;->requestBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->restoreViewStates(Ljava/util/Map;)V

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-object p0
.end method

.method private synthetic lambda$forceCapture$0()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarCaptureHelper;->mHideToolbar:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbar;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbar;->canForceCapture()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarCaptureHelper;->captureBitmap(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$postCapture$1()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarCaptureHelper;->shouldCaptureLater()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarCaptureHelper;->mHideToolbar:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbar;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbar;->invalidateLayout()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarCaptureHelper;->mHideToolbar:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbar;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbar;->shouldCaptureBitmap()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarCaptureHelper;->captureBitmap(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarCaptureHelper;->mCaptureBitmapRunnable:Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarCaptureHelper;->mCaptureBitmapHandler:Landroid/os/Handler;

    :cond_1
    return-void
.end method

.method private shouldCaptureLater()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarCaptureHelper;->mHideToolbar:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbar;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbar;->shouldCaptureLater()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarCaptureHelper;->mHideToolbar:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbar;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbar;->getToolbarButtons()Ljava/util/List;

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

.method private updateCachedBitmap(Landroid/graphics/Bitmap;Z)Z
    .locals 11
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarCaptureHelper;->mHideToolbar:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbar;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbar;->getVisibleWidth()I

    move-result v0

    const/4 v8, 0x0

    const-string v9, "CustomTabHideToolbarCaptureHelper"

    if-eq v6, v0, :cond_1

    const-string p0, "[updateCachedBitmap] Captured of bitmap target view is invalid."

    invoke-static {v9, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return v8

    :cond_1
    mul-int v0, v6, v7

    :try_start_0
    new-array v10, v0, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p1

    move-object v1, v10

    move v3, v6

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarCaptureHelper;->mCachedPixels:[I

    invoke-static {p2, v10}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p2

    if-nez p2, :cond_3

    :cond_2
    iput-object v10, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarCaptureHelper;->mCachedPixels:[I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const-string p0, "updateCachedBitmap : OutOfMemoryError"

    invoke-static {v9, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return v8
.end method


# virtual methods
.method public forceCapture()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarCaptureHelper;->mHideToolbar:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbar;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbar;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/a;-><init>(Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarCaptureHelper;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public postCapture()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarCaptureHelper;->mHideToolbar:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbar;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbar;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarCaptureHelper;->mCaptureBitmapHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarCaptureHelper;->mCaptureBitmapRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    new-instance v0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/a;-><init>(Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarCaptureHelper;I)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarCaptureHelper;->mCaptureBitmapRunnable:Ljava/lang/Runnable;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarCaptureHelper;->mCaptureBitmapHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarCaptureHelper;->mCaptureBitmapRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public resetCachedPixels()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarCaptureHelper;->mCachedPixels:[I

    return-void
.end method
