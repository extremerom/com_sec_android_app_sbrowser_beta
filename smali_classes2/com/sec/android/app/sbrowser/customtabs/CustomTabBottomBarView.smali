.class public Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbar;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarView$BottomBarSwipeGestureListener;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mSwipeGestureListener:Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarView$BottomBarSwipeGestureListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarView;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public canForceCapture()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getToolbarButtons()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method public getVisibleHeight()I
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    return p0
.end method

.method public getVisibleWidth()I
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    return p0
.end method

.method public invalidateLayout()V
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarView;->mSwipeGestureListener:Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarView$BottomBarSwipeGestureListener;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/gesture/SwipeGestureListener;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarView;->mSwipeGestureListener:Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarView$BottomBarSwipeGestureListener;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/gesture/SwipeGestureListener;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public requestBitmap()Landroid/graphics/Bitmap;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->captureBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public setSwipeHandler(Lcom/sec/android/app/sbrowser/common/gesture/SwipeGestureListener$SwipeHandler;)V
    .locals 2
    .param p1    # Lcom/sec/android/app/sbrowser/common/gesture/SwipeGestureListener$SwipeHandler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarView;->mSwipeGestureListener:Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarView$BottomBarSwipeGestureListener;

    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarView$BottomBarSwipeGestureListener;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarView$BottomBarSwipeGestureListener;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/gesture/SwipeGestureListener$SwipeHandler;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarView;->mSwipeGestureListener:Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarView$BottomBarSwipeGestureListener;

    return-void
.end method

.method public shouldCaptureBitmap()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public shouldCaptureLater()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
