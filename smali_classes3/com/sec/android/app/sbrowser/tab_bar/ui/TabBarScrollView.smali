.class public Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimationView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView$Listener;
    }
.end annotation


# static fields
.field private static final sBoundEvaluator:Landroid/animation/TypeEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/animation/TypeEvaluator<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActivePointerId:I

.field private mAnimatingState:I

.field private mCaptureTask:Ljava/lang/Runnable;

.field private mCurScrollX:I

.field private mCurrentPosX:I

.field private mDownX:I

.field private mDownY:I

.field private mDraggedView:Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;

.field private mDraggingStartScroll:I

.field private mHoverCell:Landroid/graphics/drawable/BitmapDrawable;

.field private mHoverCellCurrentBounds:Landroid/graphics/Rect;

.field private mHoverCellOriginalBounds:Landroid/graphics/Rect;

.field private mIsAnimating:Z

.field private mIsCreating:Z

.field private mIsDragAnimating:Z

.field private mIsDragging:Z

.field private mIsFastTabSwitchingNeeded:Z

.field private mIsIncognito:Z

.field private mIsTouchEnabled:Z

.field private mLastEventX:I

.field private mLastEventY:I

.field private mLastScrollX:I

.field private final mLeftDirection:I

.field private mListener:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView$Listener;

.field private final mOverFlingDistance:I

.field private final mOverScroller:Landroid/widget/OverScroller;

.field private mParentLayout:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;

.field private final mRightDirection:I

.field private final mRunnable:Ljava/lang/Runnable;

.field private final mSmoothScrollAmountAtEdge:I

.field private mTearingView:Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;

.field private mTotalOffsetX:I

.field private mTotalOffsetY:I

.field private final mTransitionListener:LY2/d0;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView$1;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->sBoundEvaluator:Landroid/animation/TypeEvaluator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mWidth:I

    const/4 p2, -0x1

    iput p2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mLastEventX:I

    iput p2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mLastEventY:I

    iput p2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mActivePointerId:I

    iput p2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mAnimatingState:I

    new-instance v0, Lcom/sec/android/app/sbrowser/tab_bar/ui/i;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/i;-><init>(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;I)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView$2;-><init>(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mTransitionListener:LY2/d0;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mIsCreating:Z

    new-instance v1, Landroid/widget/OverScroller;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/InterpolatorUtil;->sineInOut70()Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mOverScroller:Landroid/widget/OverScroller;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mOverFlingDistance:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42480000    # 50.0f

    div-float/2addr v1, p1

    float-to-int p1, v1

    iput p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mSmoothScrollAmountAtEdge:I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/LocalizationUtils;->isLayoutRtl()Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    iput p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mLeftDirection:I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/LocalizationUtils;->isLayoutRtl()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move p2, v0

    :goto_1
    iput p2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mRightDirection:I

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->lambda$handleDragAndDrop$2(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->lambda$touchEventsEnded$3(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private buildTabTearingClipData(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;)Landroid/content/ClipData;
    .locals 5
    .param p1    # Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-class v3, Lcom/sec/android/app/sbrowser/MultiInstanceActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->getTaskId(Landroid/app/Activity;)I

    move-result v0

    const-string v2, "tab_button_drag_item_instance"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->getTabId()I

    move-result v0

    const-string v2, "tab_button_drag_item_id"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->getTaskId(Landroid/app/Activity;)I

    move-result v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->getTabId()I

    move-result p1

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    invoke-static {v2}, LA2/q;->r(Landroid/app/ActivityOptions;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v4, 0x4000000

    invoke-static {p0, v3, v1, v4, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object p0

    invoke-static {}, LA2/e;->e()Landroid/content/ClipData$Item$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, LA2/e;->g(Landroid/content/ClipData$Item$Builder;Ljava/lang/String;)Landroid/content/ClipData$Item$Builder;

    move-result-object p1

    invoke-static {p1, p0}, LA2/e;->f(Landroid/content/ClipData$Item$Builder;Landroid/content/IntentSender;)Landroid/content/ClipData$Item$Builder;

    move-result-object p0

    invoke-static {p0}, LA2/e;->h(Landroid/content/ClipData$Item$Builder;)Landroid/content/ClipData$Item;

    move-result-object p0

    new-instance p1, Landroid/content/ClipData;

    new-instance v0, Landroid/content/ClipDescription;

    const-string v1, "application/octet-stream"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "content_label"

    invoke-direct {v0, v2, v1}, Landroid/content/ClipDescription;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;)V

    invoke-direct {p1, v0, p0}, Landroid/content/ClipData;-><init>(Landroid/content/ClipDescription;Landroid/content/ClipData$Item;)V

    return-object p1
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->lambda$triggerCapture$0()V

    return-void
.end method

.method private canScroll()Z
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    add-int/2addr v0, v1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mParentLayout:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->lambda$updateFastOverScroll$1()V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->handleScrollEventAtBoundary()V

    return-void
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mAnimatingState:I

    return p0
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mAnimatingState:I

    return-void
.end method

.method private getNeighborView(Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;I)Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;
    .locals 2

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->getParentLayout()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_1

    return-object p0

    :cond_1
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_2

    return-object p0

    :cond_2
    add-int/2addr p1, p2

    if-ltz p1, :cond_4

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-lt p1, p2, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;

    :cond_4
    :goto_0
    return-object p0
.end method

.method private getScrollRangeX()I
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p0

    sub-int/2addr v2, p0

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_0
    return v1
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mIsDragAnimating:Z

    return-void
.end method

.method private handleDragAndDrop(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;)V
    .locals 2
    .param p1    # Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->isGroupView()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->isIncognitoChild()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mParentLayout:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->supportTabTearing(Z)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mTearingView:Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mParentLayout:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;->getCurrentTabButton()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    move-result-object v0

    if-ne v0, p1, :cond_2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->getTabId()I

    move-result v0

    new-instance v1, Lcom/sec/android/app/sbrowser/tab_bar/ui/k;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/k;-><init>(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;)V

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->captureTabAsyncForPreview(ILcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V

    return-void

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleDragAndDrop for tab id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->getTabId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TabBarScrollView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->startDragAndDrop(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;Landroid/graphics/Bitmap;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mParentLayout:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;->removeTabButtonView(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private handleGroupAreaIfNeeded()V
    .locals 15

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mDraggedView:Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->touchEventsEnded(Z)V

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->isGroupView()Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mIsDragAnimating:Z

    if-eqz v2, :cond_2

    return-void

    :cond_2
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->updateTotalOffset()V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mHoverCellOriginalBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mTotalOffsetX:I

    add-int/2addr v3, v4

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->isInGroup()Z

    move-result v4

    const/4 v5, 0x2

    const-string v6, ")"

    const-string v7, " at "

    const-string v8, "[handleGroupAreaIfNeeded] move "

    const-string v9, "TabBarScrollView"

    const/4 v10, 0x0

    const/4 v11, 0x3

    if-eqz v4, :cond_9

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->isFirstTab()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->isLastTab()Z

    move-result v4

    if-nez v4, :cond_3

    return-void

    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mParentLayout:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->getGroupName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;->getTabGroupByName(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    move-result-object v4

    if-nez v4, :cond_4

    return-void

    :cond_4
    div-int/lit8 v12, v2, 0x3

    add-int/2addr v12, v3

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->getLeftEdge()I

    move-result v13

    if-ge v12, v13, :cond_5

    move v12, v1

    goto :goto_0

    :cond_5
    move v12, v10

    :goto_0
    invoke-static {v2, v5, v11, v3}, LV0/c;->B(IIII)I

    move-result v2

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->getRightEdge()I

    move-result v3

    if-le v2, v3, :cond_6

    move v10, v1

    :cond_6
    if-nez v12, :cond_7

    if-nez v10, :cond_7

    return-void

    :cond_7
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->updateSwitchTransition()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->getIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v12, :cond_8

    const-string v3, "left"

    goto :goto_1

    :cond_8
    const-string v3, "right"

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " outside from ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->getGroupName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mListener:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView$Listener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->getIndex()I

    move-result v3

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->getGroupName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView$Listener;->onTabButtonUngrouped(ILjava/lang/String;)V

    goto/16 :goto_3

    :cond_9
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mParentLayout:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->getView()Landroid/view/View;

    move-result-object v12

    invoke-virtual {v4, v12}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mParentLayout:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;

    iget v13, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mLeftDirection:I

    add-int/2addr v13, v4

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;

    iget-object v13, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mParentLayout:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;

    iget v14, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mRightDirection:I

    add-int/2addr v4, v14

    invoke-virtual {v13, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;

    if-eqz v12, :cond_a

    invoke-interface {v12}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->isGroupView()Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-interface {v12}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->isExpanded()Z

    move-result v13

    if-eqz v13, :cond_a

    div-int/lit8 v13, v2, 0x3

    add-int/2addr v13, v3

    invoke-interface {v12}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->getRightEdge()I

    move-result v14

    if-ge v13, v14, :cond_a

    move v13, v1

    goto :goto_2

    :cond_a
    move v13, v10

    :goto_2
    if-eqz v4, :cond_b

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->isGroupView()Z

    move-result v14

    if-eqz v14, :cond_b

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->isExpanded()Z

    move-result v14

    if-eqz v14, :cond_b

    invoke-static {v2, v5, v11, v3}, LV0/c;->B(IIII)I

    move-result v2

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->getLeftEdge()I

    move-result v3

    if-le v2, v3, :cond_b

    move v10, v1

    :cond_b
    if-nez v13, :cond_c

    if-nez v10, :cond_c

    return-void

    :cond_c
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->updateSwitchTransition()V

    if-eqz v13, :cond_d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->getIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to left into ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v12}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->getGroupName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v6, v9}, Landroidx/recyclerview/widget/P;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mListener:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView$Listener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->getIndex()I

    move-result v3

    invoke-interface {v12}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->getGroupName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView$Listener;->onTabButtonGrouped(ILjava/lang/String;)V

    goto :goto_3

    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->getIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to right into ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->getGroupName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v6, v9}, Landroidx/recyclerview/widget/P;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mListener:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView$Listener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->getIndex()I

    move-result v3

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->getGroupName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView$Listener;->onTabButtonGrouped(ILjava/lang/String;)V

    :goto_3
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->updateMargin()V

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mIsDragAnimating:Z

    return-void
.end method

.method private handleHoveredTabButtonMove()V
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mHoverCellOriginalBounds:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mTotalOffsetX:I

    add-int/2addr v2, v3

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mTotalOffsetY:I

    add-int/2addr v1, v3

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mDraggedView:Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;

    if-eqz v3, :cond_2

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->getView()Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mDraggedView:Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v4, v0

    sub-int/2addr v4, v3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->canScroll()Z

    move-result v5

    if-eqz v5, :cond_1

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    add-int/2addr v4, v3

    :cond_1
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->moveHoverCell(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method private handleScrollEventAtBoundary()V
    .locals 10

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mHoverCell:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->computeHorizontalScrollOffset()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->computeHorizontalScrollExtent()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->computeHorizontalScrollRange()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mHoverCellCurrentBounds:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    iget v4, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v6

    sub-int/2addr v5, v6

    iget v7, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mSmoothScrollAmountAtEdge:I

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-gt v5, v7, :cond_1

    if-lez v1, :cond_1

    move v5, v9

    goto :goto_0

    :cond_1
    move v5, v8

    :goto_0
    sub-int/2addr v4, v6

    if-lt v4, v0, :cond_2

    add-int/2addr v1, v2

    if-ge v1, v3, :cond_2

    move v0, v9

    goto :goto_1

    :cond_2
    move v0, v8

    :goto_1
    if-nez v5, :cond_3

    if-eqz v0, :cond_5

    :cond_3
    if-eqz v5, :cond_4

    const/4 v0, -0x1

    goto :goto_2

    :cond_4
    move v0, v9

    :goto_2
    mul-int/2addr v7, v0

    invoke-virtual {p0, v7, v8}, Landroid/widget/HorizontalScrollView;->smoothScrollBy(II)V

    iput-boolean v9, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mIsFastTabSwitchingNeeded:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->updateTotalOffset()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->handleTabButtonSwitch()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->handleGroupAreaIfNeeded()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    :goto_3
    return-void
.end method

.method private handleTabButtonSwitch()V
    .locals 14

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mDraggedView:Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->touchEventsEnded(Z)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mHoverCellOriginalBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mTotalOffsetX:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mLeftDirection:I

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->getNeighborView(Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;I)Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mRightDirection:I

    invoke-direct {p0, v0, v4}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->getNeighborView(Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;I)Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;

    move-result-object v4

    invoke-direct {p0, v3, v2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->isLeftOfView(Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;I)Z

    move-result v5

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->getView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v6, v2

    invoke-direct {p0, v4, v6}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->isRightOfView(Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;I)Z

    move-result v2

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    move-object v3, v4

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_b

    if-eq v3, v0, :cond_b

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mIsDragAnimating:Z

    if-eqz v2, :cond_3

    goto/16 :goto_2

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->updateSwitchTransition()V

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->isGroupView()Z

    move-result v2

    const/4 v4, 0x0

    const-string v6, " right "

    const-string v7, " left "

    const-string v8, " with"

    const-string v9, "[handleTabButtonSwitch] switch "

    const-string v10, "TabBarScrollView"

    const-string v11, " at "

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mParentLayout:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->getView()Landroid/view/View;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mParentLayout:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->getView()Landroid/view/View;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->getTag()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_4

    move-object v6, v7

    :cond_4
    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-le v12, v2, :cond_5

    move v4, v1

    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mListener:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView$Listener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->getGroupName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5, v12, v4}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView$Listener;->onTabGroupSwapped(Ljava/lang/String;IZ)V

    goto/16 :goto_1

    :cond_6
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->getIndex()I

    move-result v2

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->getIndex()I

    move-result v12

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->isGroupView()Z

    move-result v13

    if-eqz v13, :cond_9

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->getTag()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_7

    move-object v6, v7

    :cond_7
    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mParentLayout:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    if-le v2, v12, :cond_8

    move v4, v1

    :cond_8
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mListener:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView$Listener;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->getGroupName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v2, v4}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView$Listener;->onTabGroupSwapped(Ljava/lang/String;IZ)V

    goto :goto_1

    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->getTag()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_a

    move-object v6, v7

    :cond_a
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mListener:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView$Listener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->getIndex()I

    move-result v4

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->getIndex()I

    move-result v5

    invoke-interface {v2, v4, v5}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView$Listener;->onTabButtonSwapped(II)V

    :goto_1
    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->updateMargin()V

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->updateMargin()V

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mIsDragAnimating:Z

    :cond_b
    :goto_2
    return-void
.end method

.method public static bridge synthetic i(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->resetDraggedView(Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;)V

    return-void
.end method

.method private isLeftOfView(Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;I)Z
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    :cond_0
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->getRightEdge()I

    move-result v0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->getSwitchOffset()I

    move-result p1

    sub-int/2addr v0, p1

    if-ge p2, v0, :cond_1

    const/4 p0, 0x1

    :cond_1
    return p0
.end method

.method private isRightOfView(Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;I)Z
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    :cond_0
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->getLeftEdge()I

    move-result v0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->getSwitchOffset()I

    move-result p1

    add-int/2addr p1, v0

    if-le p2, p1, :cond_1

    const/4 p0, 0x1

    :cond_1
    return p0
.end method

.method private synthetic lambda$handleDragAndDrop$2(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;Landroid/graphics/Bitmap;)V
    .locals 3

    const-string v0, "handleDragAndDrop for current tab"

    const-string v1, "TabBarScrollView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "handleDragAndDrop for tab id = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->getTabId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->startDragAndDrop(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;Landroid/graphics/Bitmap;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mParentLayout:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;->removeTabButtonView(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;)V

    return-void
.end method

.method private synthetic lambda$touchEventsEnded$3(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$triggerCapture$0()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mCurrentPosX:I

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mCaptureTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mCaptureTask:Ljava/lang/Runnable;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mListener:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView$Listener;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView$Listener;->onTouchEnded()V

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mCurrentPosX:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mCaptureTask:Ljava/lang/Runnable;

    const-wide/16 v1, 0x32

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$updateFastOverScroll$1()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mIsFastTabSwitchingNeeded:Z

    return-void
.end method

.method private moveHoverCell(II)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mDraggedView:Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->isGroupView()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mDraggedView:Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->isInGroup()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mDraggedView:Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->isIncognitoChild()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->supportTabTearing(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mDraggedView:Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mHoverCellOriginalBounds:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v0

    if-le p2, v2, :cond_0

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v0

    if-lt p2, v1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mDraggedView:Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;

    check-cast p1, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->handleDragAndDrop(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mDraggedView:Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->resetDraggedView(Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;)V

    return-void

    :cond_1
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mHoverCellCurrentBounds:Landroid/graphics/Rect;

    iget v0, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2, p1, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mHoverCell:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mHoverCellCurrentBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void
.end method

.method private recycleBitmap(Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    return-void
.end method

.method private resetDraggedView()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mListener:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView$Listener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView$Listener;->onDraggingEnded()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mIsDragging:Z

    iput v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mTotalOffsetX:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mTotalOffsetY:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mDraggingStartScroll:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mLastEventX:I

    iput v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mLastEventY:I

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mIsDragAnimating:Z

    iput v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mActivePointerId:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mDraggedView:Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mHoverCell:Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->recycleBitmap(Landroid/graphics/drawable/BitmapDrawable;)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private resetDraggedView(Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[resetDraggedView] "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TabBarScrollView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->setDragging(Z)V

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->updateDrawable()V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->resetDraggedView()V

    return-void
.end method

.method private setHoverView(Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;FF)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->getView()Landroid/view/View;

    move-result-object p3

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->getLeftEdge()I

    move-result v0

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p3

    add-int/2addr p3, v0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->isGroupView()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v3

    sub-int v3, v0, v3

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v4

    sub-int v4, p3, v4

    int-to-float v3, v3

    cmpg-float v5, p2, v3

    if-ltz v5, :cond_1

    int-to-float v4, v4

    cmpl-float v4, p2, v4

    if-lez v4, :cond_2

    :cond_1
    int-to-float v0, v0

    sub-float/2addr p2, v3

    add-float/2addr v0, p2

    float-to-int v0, v0

    int-to-float p3, p3

    add-float/2addr p3, p2

    float-to-int p3, p3

    :cond_2
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->getHoveredBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {p2, v3, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, v0, v1, p3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mHoverCellOriginalBounds:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mHoverCellOriginalBounds:Landroid/graphics/Rect;

    invoke-direct {p1, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mHoverCellCurrentBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mHoverCell:Landroid/graphics/drawable/BitmapDrawable;

    return-void
.end method

.method private startDragAndDrop(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1    # Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mListener:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView$Listener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView$Listener;->onTabTearingStarted()V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->buildTabTearingClipData(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;)Landroid/content/ClipData;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->getTabWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->getTabHeight()I

    move-result v1

    new-instance v2, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarDragShadowBuilder;

    invoke-direct {v2, p1, v0, v1, p2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarDragShadowBuilder;-><init>(Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;IILandroid/graphics/Bitmap;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->getView()Landroid/view/View;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->getView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->getView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x2100

    invoke-virtual {p2, p0, v2, p1, v0}, Landroid/view/View;->startDragAndDrop(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    return-void
.end method

.method private triggerCapture()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mCaptureTask:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mCurrentPosX:I

    new-instance v0, Lcom/sec/android/app/sbrowser/tab_bar/ui/i;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/i;-><init>(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;I)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mCaptureTask:Ljava/lang/Runnable;

    const-wide/16 v1, 0x32

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private updateFastOverScroll(I)V
    .locals 3

    iget v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mLastScrollX:I

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mIsFastTabSwitchingNeeded:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/tab_bar/ui/i;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/i;-><init>(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;I)V

    const-wide/16 v1, 0xfa

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    iput p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mLastScrollX:I

    return-void
.end method

.method private updateSwitchTransition()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mParentLayout:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;

    new-instance v1, LY2/i;

    invoke-direct {v1}, LY2/i;-><init>()V

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mIsFastTabSwitchingNeeded:Z

    if-eqz v2, :cond_0

    const-wide/16 v2, 0xa

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x96

    :goto_0
    invoke-virtual {v1, v2, v3}, LY2/f0;->setDuration(J)LY2/f0;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mTransitionListener:LY2/d0;

    invoke-virtual {v1, p0}, LY2/f0;->addListener(LY2/d0;)LY2/f0;

    invoke-static {v0, v1}, LY2/j0;->a(Landroid/view/ViewGroup;LY2/f0;)V

    return-void
.end method

.method private updateTotalOffset()V
    .locals 4

    iget v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mLastEventX:I

    iget v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mDownX:I

    sub-int v1, v0, v1

    iget v2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mLastEventY:I

    iget v3, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mDownY:I

    sub-int v3, v2, v3

    iput v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mDownX:I

    iput v2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mDownY:I

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    iget v2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mDraggingStartScroll:I

    sub-int v2, v0, v2

    iput v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mDraggingStartScroll:I

    iget v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mTotalOffsetX:I

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mTotalOffsetX:I

    iget v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mTotalOffsetY:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mTotalOffsetY:I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->handleHoveredTabButtonMove()V

    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 11

    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->computeScroll()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mOverScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mCurScrollX:I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mOverScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v1

    if-eq v0, v1, :cond_0

    sub-int v2, v1, v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->getScrollRangeX()I

    move-result v6

    iget v8, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mOverFlingDistance:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move v4, v0

    invoke-virtual/range {v1 .. v10}, Landroid/view/View;->overScrollBy(IIIIIIIIZ)Z

    iget v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mCurScrollX:I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0, v2}, Landroid/view/View;->onScrollChanged(IIII)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mOverScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getStartX()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mListener:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView$Listener;

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView$Listener;->onScrollChanged(I)V

    return-void
.end method

.method public final customSmoothScroll(IZ)V
    .locals 6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mOverScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mOverScroller:Landroid/widget/OverScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/OverScroller;->forceFinished(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mCurScrollX:I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mCurScrollX:I

    sub-int v3, p1, v1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mOverScroller:Landroid/widget/OverScroller;

    const/4 v4, 0x0

    const/16 v5, 0xfa

    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :goto_0
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mHoverCell:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mHoverCell:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public enableTabBarScroll(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->setTouchEnabled(Z)V

    return-void
.end method

.method public getAnimationViewWidth()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mWidth:I

    return p0
.end method

.method public bridge synthetic getTag()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->getTag()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mIsIncognito:Z

    if-eqz p0, :cond_0

    const-string p0, "Secret"

    goto :goto_0

    :cond_0
    const-string p0, "Normal"

    :goto_0
    const-string v0, "TabBarScrollView_"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTearingView()Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mTearingView:Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;

    return-object p0
.end method

.method public isAtLeftEdge()Z
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isAtRightEdge()Z
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    add-int/2addr p0, v0

    sub-int/2addr v2, p0

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isCreating()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mIsCreating:Z

    return p0
.end method

.method public isDragging()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mIsDragging:Z

    return p0
.end method

.method public onAnimationCancel(Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation$Type;)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->setIsAnimating(Z)V

    return-void
.end method

.method public onAnimationEnd(Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation$Type;)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->setIsAnimating(Z)V

    return-void
.end method

.method public onAnimationStart(Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation$Type;)V
    .locals 0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->setIsAnimating(Z)V

    return-void
.end method

.method public onAnimationUpdate(Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation$Type;F)V
    .locals 0

    return-void
.end method

.method public onAnimationUpdate(Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation$Type;I)V
    .locals 0

    if-lez p2, :cond_1

    iget p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mWidth:I

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_1

    iput p2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mWidth:I

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    float-to-int v1, v1

    const/16 v2, 0x9

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result p1

    float-to-int p1, p1

    const/4 v2, 0x0

    if-ltz v1, :cond_3

    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    if-gtz v1, :cond_2

    if-lez p1, :cond_4

    :cond_2
    add-int/lit8 v0, v0, -0x64

    invoke-virtual {p0, v0, v2}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    goto :goto_1

    :cond_3
    :goto_0
    add-int/lit8 v0, v0, 0x64

    invoke-virtual {p0, v0, v2}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    :cond_4
    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_5
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mIsTouchEnabled:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    const/4 v3, -0x1

    if-eq v0, v1, :cond_3

    const/4 v4, 0x2

    if-eq v0, v4, :cond_1

    const/4 v4, 0x3

    if-eq v0, v4, :cond_3

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-eq v0, v3, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->isDragging()Z

    move-result v4

    if-eqz v4, :cond_5

    iget v4, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mActivePointerId:I

    if-eq v4, v3, :cond_5

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mDraggedView:Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mLastEventX:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mLastEventY:I

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->updateFastOverScroll(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->handleScrollEventAtBoundary()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->updateTotalOffset()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->handleTabButtonSwitch()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->handleGroupAreaIfNeeded()V

    goto :goto_0

    :cond_3
    iput v3, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mDownX:I

    iput v3, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mDownY:I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->touchEventsEnded(Z)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mDownX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mDownY:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mActivePointerId:I

    :cond_5
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->isDragging()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_6

    goto :goto_1

    :cond_6
    move v1, v2

    :goto_1
    return v1

    :catch_0
    return v2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mIsTouchEnabled:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-eq v0, v1, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->touchEventsEnded(Z)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->triggerCapture()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mListener:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView$Listener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView$Listener;->onScrollEnd()V

    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public resetTearingView()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mTearingView:Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;

    return-void
.end method

.method public setDragging(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;FF)V
    .locals 3
    .param p1    # Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mDownX:I

    const/4 v1, 0x1

    if-gez v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->touchEventsEnded(Z)V

    return-void

    :cond_1
    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->performHapticFeedback(I)Z

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mIsDragging:Z

    iput v2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mTotalOffsetX:I

    iput v2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mTotalOffsetY:I

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mDraggingStartScroll:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mParentLayout:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mDraggedView:Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;

    invoke-direct {p0, p2, p3, p4}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->setHoverView(Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;FF)V

    invoke-interface {p2, v1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->setDragging(Z)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "[setDragging] "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->getTag()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mDraggedView:Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->isGroupView()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, " as group view"

    goto :goto_0

    :cond_2
    const-string p0, " as tab button"

    :goto_0
    const-string p2, "TabBarScrollView"

    invoke-static {p1, p0, p2}, Landroidx/recyclerview/widget/P;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setIsAnimating(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mIsAnimating:Z

    return-void
.end method

.method public setIsCreatingEnded()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mIsCreating:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mIsCreating:Z

    return-void
.end method

.method public setIsIncognito(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mIsIncognito:Z

    return-void
.end method

.method public setListener(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mListener:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView$Listener;

    return-void
.end method

.method public setTouchEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mIsTouchEnabled:Z

    return-void
.end method

.method public touchEventsEnded(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->isDragging()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->resetDraggedView()V

    return-void

    :cond_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mAnimatingState:I

    if-nez v0, :cond_1

    const/4 p1, 0x1

    iput p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mAnimatingState:I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mDraggedView:Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->resetDraggedView()V

    return-void

    :cond_2
    if-nez p1, :cond_3

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->resetDraggedView(Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;)V

    return-void

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mHoverCellCurrentBounds:Landroid/graphics/Rect;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->getLeftEdge()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mHoverCellOriginalBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mHoverCell:Landroid/graphics/drawable/BitmapDrawable;

    sget-object v1, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->sBoundEvaluator:Landroid/animation/TypeEvaluator;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->mHoverCellCurrentBounds:Landroid/graphics/Rect;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "bounds"

    invoke-static {p1, v3, v1, v2}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    new-instance v1, Lcom/sec/android/app/sbrowser/tab_bar/ui/j;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/j;-><init>(Landroid/view/ViewGroup;I)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView$3;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView$3;-><init>(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;)V

    invoke-virtual {p1, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method
