.class public Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView$ObjectCaptureViewDelegate;,
        Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView$CheckForLongPress;
    }
.end annotation


# static fields
.field private static final CLIPPED_OBJECT_DRAG_DROP_TARGET_APP_PACKAGE_NAMES:[Ljava/lang/String;


# instance fields
.field private mCheckForLongPress:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView$CheckForLongPress;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHasPerformedLongPress:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mOCDrawHelper:Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCaptureDrawHelper;

.field private mObjectCaptureViewDelegate:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView$ObjectCaptureViewDelegate;

.field private mProgressBar:Landroidx/appcompat/widget/SeslProgressBar;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v4, "com.samsung.android.messaging"

    const-string v5, "com.android.systemui"

    const-string v0, "com.samsung.android.app.notes"

    const-string v1, "com.samsung.android.email.provider"

    const-string v2, "com.sec.android.app.myfiles"

    const-string v3, "com.sec.android.gallery3d"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->CLIPPED_OBJECT_DRAG_DROP_TARGET_APP_PACKAGE_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;Landroid/view/MenuItem;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->lambda$addCustomMenu$0(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method private addCustomMenu()V
    .locals 8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->mOCDrawHelper:Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCaptureDrawHelper;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCaptureDrawHelper;->createToolbarMenuBuilder()Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ToolbarMenu$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ToolbarMenu$Builder;->addCopy(IZ)Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ToolbarMenu$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ToolbarMenu$Builder;->addShare(IZ)Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ToolbarMenu$Builder;

    move-result-object v2

    const/4 v4, 0x3

    invoke-virtual {v2, v4, v1}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ToolbarMenu$Builder;->addSaveAsImage(IZ)Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ToolbarMenu$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->isSaveAsStickerSupported()Z

    move-result v2

    const-string v4, ".FileProvider"

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->isSaveAsStickerDefaultSupported()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move v5, v3

    goto :goto_0

    :cond_1
    const-string v2, ""

    move v5, v1

    :goto_0
    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v5, v2, v7}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ToolbarMenu$Builder;->addSaveAsSticker(IZLjava/lang/String;Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/StickerCallbackListener;)Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ToolbarMenu$Builder;

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->isOCEditSupported()Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    invoke-virtual {v0, v4, v3, v2}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ToolbarMenu$Builder;->addEdit(IZLjava/lang/String;)Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ToolbarMenu$Builder;

    :cond_3
    invoke-virtual {v0}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ToolbarMenu$Builder;->build()Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ToolbarMenu;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->mOCDrawHelper:Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCaptureDrawHelper;

    invoke-interface {v2, v1}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCaptureDrawHelper;->useDefaultMenu(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->mOCDrawHelper:Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCaptureDrawHelper;

    invoke-interface {v1, v0}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCaptureDrawHelper;->setToolbarMenu(Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ToolbarMenu;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->mOCDrawHelper:Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCaptureDrawHelper;

    new-instance v1, Lcom/sec/android/app/sbrowser/object_capture/c;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/object_capture/c;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCaptureDrawHelper;->setToolbarOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;)F
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->mLastMotionX:F

    return p0
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;)F
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->mLastMotionY:F

    return p0
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;)Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView$ObjectCaptureViewDelegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->mObjectCaptureViewDelegate:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView$ObjectCaptureViewDelegate;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->mHasPerformedLongPress:Z

    return-void
.end method

.method public static bridge synthetic g()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->CLIPPED_OBJECT_DRAG_DROP_TARGET_APP_PACKAGE_NAMES:[Ljava/lang/String;

    return-object v0
.end method

.method public static isSaveAsStickerDefaultSupported()Z
    .locals 2

    sget v0, Lcom/sec/sbrowser/spl/util/PlatformInfo;->ONEUI_VERSION:I

    const v1, 0xeac4

    if-lt v0, v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isNativeAiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$addCustomMenu$0(Landroid/view/MenuItem;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->mObjectCaptureViewDelegate:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView$ObjectCaptureViewDelegate;

    if-eqz p0, :cond_0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView$ObjectCaptureViewDelegate;->onMenuItemClicked(I)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private postCheckForLongClick()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->mOCDrawHelper:Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCaptureDrawHelper;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->mHasPerformedLongPress:Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->mCheckForLongPress:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView$CheckForLongPress;

    if-nez v1, :cond_1

    new-instance v1, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView$CheckForLongPress;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView$CheckForLongPress;-><init>(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;I)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->mCheckForLongPress:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView$CheckForLongPress;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->mCheckForLongPress:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView$CheckForLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method private removeLongPressCallback()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->mCheckForLongPress:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView$CheckForLongPress;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public clearClientViewIfVisible()V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->mOCDrawHelper:Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCaptureDrawHelper;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCaptureDrawHelper;->dismissToolbar()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->mOCDrawHelper:Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCaptureDrawHelper;

    invoke-interface {v0}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCaptureDrawHelper;->clearObjectCapture()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->mOCDrawHelper:Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCaptureDrawHelper;

    :cond_1
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->mOCDrawHelper:Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCaptureDrawHelper;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCaptureDrawHelper;->dispatchDraw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public getOCDrawHelper()Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCaptureDrawHelper;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->mOCDrawHelper:Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCaptureDrawHelper;

    return-object p0
.end method

.method public getStartForCurrentLayoutDirection(Landroid/graphics/RectF;)F
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    if-nez v0, :cond_0

    iget p0, p1, Landroid/graphics/RectF;->left:F

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->mObjectCaptureViewDelegate:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView$ObjectCaptureViewDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView$ObjectCaptureViewDelegate;->getCurrentViewRect()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    int-to-float p0, p0

    iget p1, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr p1, p0

    return p1
.end method

.method public hideProgressBarIfVisible()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->mProgressBar:Landroidx/appcompat/widget/SeslProgressBar;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->mProgressBar:Landroidx/appcompat/widget/SeslProgressBar;

    return-void
.end method

.method public initialize(Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCapture;Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectResult;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCapture;->getObjectCaptureDrawHelper(Landroid/content/Context;)Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCaptureDrawHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->mOCDrawHelper:Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCaptureDrawHelper;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->mHandler:Landroid/os/Handler;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->mOCDrawHelper:Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCaptureDrawHelper;

    invoke-interface {p1, p0}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCaptureDrawHelper;->init(Landroid/view/ViewGroup;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->mOCDrawHelper:Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCaptureDrawHelper;

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p3

    const/4 v0, 0x0

    invoke-interface {p1, p3, v0}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCaptureDrawHelper;->setBitmap(Landroid/graphics/Bitmap;Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->mOCDrawHelper:Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCaptureDrawHelper;

    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3, p4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-interface {p1, p3}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCaptureDrawHelper;->setBitmapRect(Landroid/graphics/RectF;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->mOCDrawHelper:Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCaptureDrawHelper;

    invoke-interface {p1, p2}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCaptureDrawHelper;->setObjectResult(Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectResult;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->mOCDrawHelper:Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCaptureDrawHelper;

    sget-object p2, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/LayerType;->OUT_GLOW_LAYER:Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/LayerType;

    filled-new-array {p2}, [Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/LayerType;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCaptureDrawHelper;->setLayerView([Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/LayerType;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->mOCDrawHelper:Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCaptureDrawHelper;

    new-instance p2, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView$1;

    invoke-direct {p2, p0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView$1;-><init>(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;)V

    invoke-interface {p1, p2}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCaptureDrawHelper;->setOnStartDragListener(Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCaptureDrawHelper$OnStartDragListener;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->addCustomMenu()V

    return-void
.end method

.method public isOCEditSupported()Z
    .locals 5

    sget v0, Lcom/sec/sbrowser/spl/util/PlatformInfo;->ONEUI_VERSION:I

    const v1, 0xeac4

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.sec.android.mimage.photoretouching"

    invoke-virtual {p0, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/32 v3, 0x13bab861

    cmp-long p0, v0, v3

    if-ltz p0, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    return v2

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "package not found: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ObjectCaptureView"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2
.end method

.method public isProgressBarVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->mProgressBar:Landroidx/appcompat/widget/SeslProgressBar;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSaveAsStickerSupported()Z
    .locals 5

    sget v0, Lcom/sec/sbrowser/spl/util/PlatformInfo;->ONEUI_VERSION:I

    const v1, 0xea60

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.sec.android.mimage.photoretouching"

    invoke-virtual {p0, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/32 v3, 0x13377ea1

    cmp-long p0, v0, v3

    if-ltz p0, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    return v2

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "package not found: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ObjectCaptureView"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v1, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->removeLongPressCallback()V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->mHasPerformedLongPress:Z

    if-nez v0, :cond_6

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->removeLongPressCallback()V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->mHasPerformedLongPress:Z

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->removeLongPressCallback()V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->mOCDrawHelper:Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCaptureDrawHelper;

    if-eqz v0, :cond_4

    invoke-interface {v0, p1}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCaptureDrawHelper;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->mObjectCaptureViewDelegate:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView$ObjectCaptureViewDelegate;

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->clearClientViewIfVisible()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->mObjectCaptureViewDelegate:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView$ObjectCaptureViewDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView$ObjectCaptureViewDelegate;->clearObjectCaptureInfo()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->mObjectCaptureViewDelegate:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView$ObjectCaptureViewDelegate;

    :cond_4
    return v1

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->mLastMotionX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->mLastMotionY:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->mHasPerformedLongPress:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->postCheckForLongClick()V

    :cond_6
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->mOCDrawHelper:Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCaptureDrawHelper;

    if-eqz p0, :cond_7

    invoke-interface {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCaptureDrawHelper;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_7
    return v1
.end method

.method public performLongClick(FF)Z
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->mObjectCaptureViewDelegate:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView$ObjectCaptureViewDelegate;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView$ObjectCaptureViewDelegate;->onPerformLongClickAtPoint(FF)Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->startObjectCaptureAnimation(FF)V

    const/4 p0, 0x1

    return p0
.end method

.method public revokeDragImageUriPermissions()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".FileProvider"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "images"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "drag-clipped-images"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    return-void
.end method

.method public setObjectCaptureViewDelegate(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView$ObjectCaptureViewDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->mObjectCaptureViewDelegate:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView$ObjectCaptureViewDelegate;

    return-void
.end method

.method public showProgressBar(Landroid/graphics/Rect;Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->mProgressBar:Landroidx/appcompat/widget/SeslProgressBar;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const v1, 0x7f0b0845

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SeslProgressBar;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->mProgressBar:Landroidx/appcompat/widget/SeslProgressBar;

    const v1, 0x7f0804ac

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    if-eqz p2, :cond_1

    new-instance p1, Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->mObjectCaptureViewDelegate:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView$ObjectCaptureViewDelegate;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView$ObjectCaptureViewDelegate;->getCurrentViewRect()Landroid/graphics/Rect;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_1
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    move-object p1, p2

    :goto_0
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->mProgressBar:Landroidx/appcompat/widget/SeslProgressBar;

    invoke-virtual {v1}, Landroidx/appcompat/widget/SeslProgressBar;->getMaxWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p2, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->mProgressBar:Landroidx/appcompat/widget/SeslProgressBar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SeslProgressBar;->getMaxHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    sub-float/2addr p1, v0

    iput p1, p2, Landroid/graphics/RectF;->top:F

    iget p1, p2, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->mProgressBar:Landroidx/appcompat/widget/SeslProgressBar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SeslProgressBar;->getMaxWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    iput p1, p2, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->getStartForCurrentLayoutDirection(Landroid/graphics/RectF;)F

    move-result p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->mProgressBar:Landroidx/appcompat/widget/SeslProgressBar;

    invoke-virtual {v0, p1}, Landroid/view/View;->setX(F)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->mProgressBar:Landroidx/appcompat/widget/SeslProgressBar;

    iget p2, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, p2}, Landroid/view/View;->setY(F)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->mProgressBar:Landroidx/appcompat/widget/SeslProgressBar;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public startObjectCaptureAnimation(FF)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->mOCDrawHelper:Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCaptureDrawHelper;

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCaptureDrawHelper;->startObjectCaptureByLongClick(FF)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Asynctask exception="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ObjectCaptureView"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
