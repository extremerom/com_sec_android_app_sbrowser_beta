.class public Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView;
.super Landroidx/core/widget/NestedScrollView;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView$Direction;
    }
.end annotation


# instance fields
.field private mAutoScrollDirection:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView$Direction;

.field private mScrollAllowRange:I

.field private mScrollScale:I

.field private mScrollViewRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/core/widget/NestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object p1, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView$Direction;->NONE:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView$Direction;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView;->mAutoScrollDirection:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView$Direction;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView;->mScrollViewRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07038e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView;->mScrollScale:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07038d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView;->mScrollAllowRange:I

    return-void
.end method

.method public static bridge synthetic n(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView;)Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView$Direction;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView;->mAutoScrollDirection:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView$Direction;

    return-object p0
.end method

.method public static bridge synthetic o(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView;->mScrollScale:I

    return p0
.end method

.method private startAutoScrollDelayed()V
    .locals 3

    const-string v0, "CustomizeToolbarScrollView"

    const-string v1, "startAutoScrollDelayed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView$1;-><init>(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView;)V

    const-wide/16 v1, 0xa

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private updateAutoScrollState(IILandroid/view/View;)V
    .locals 7

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->computeVerticalScrollOffset()I

    move-result v0

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->computeVerticalScrollExtent()I

    move-result v1

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->computeVerticalScrollRange()I

    move-result v2

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView;->mScrollViewRect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->top:I

    iget v5, v3, Landroid/graphics/Rect;->left:I

    iget v6, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView;->mScrollAllowRange:I

    sub-int/2addr v5, v6

    if-lt p1, v5, :cond_3

    iget v5, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    if-gt p1, v5, :cond_3

    sub-int p1, v4, v6

    if-lt p2, p1, :cond_3

    iget p1, v3, Landroid/graphics/Rect;->bottom:I

    add-int v3, p1, v6

    if-le p2, v3, :cond_0

    goto :goto_0

    :cond_0
    add-int v3, v1, v4

    sub-int/2addr v3, p3

    sub-int/2addr v3, v6

    if-lt p2, v3, :cond_1

    if-gt p2, p1, :cond_1

    add-int/2addr v1, v0

    if-le v2, v1, :cond_1

    sget-object p1, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView$Direction;->DOWNWARD:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView$Direction;

    goto :goto_1

    :cond_1
    add-int/2addr v4, p3

    if-ge p2, v4, :cond_2

    if-lez v0, :cond_2

    sget-object p1, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView$Direction;->UPWARD:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView$Direction;

    goto :goto_1

    :cond_2
    sget-object p1, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView$Direction;->NONE:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView$Direction;

    goto :goto_1

    :cond_3
    :goto_0
    sget-object p1, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView$Direction;->NONE:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView$Direction;

    :goto_1
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView;->mAutoScrollDirection:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView$Direction;

    if-eq p2, p1, :cond_4

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView;->mAutoScrollDirection:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView$Direction;

    sget-object p2, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView$Direction;->NONE:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView$Direction;

    if-eq p1, p2, :cond_4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView;->startAutoScrollDelayed()V

    :cond_4
    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/DragEvent;II)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    const/4 p1, 0x4

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView$Direction;->NONE:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView$Direction;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView;->mAutoScrollDirection:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView$Direction;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v1

    int-to-float p2, p2

    add-float/2addr v1, p2

    float-to-int p2, v1

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result p1

    int-to-float p3, p3

    add-float/2addr p1, p3

    float-to-int p1, p1

    invoke-direct {p0, p2, p1, v0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView;->updateAutoScrollState(IILandroid/view/View;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView;->mScrollViewRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    :goto_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView;->mAutoScrollDirection:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView$Direction;

    sget-object v1, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView$Direction;->NONE:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView$Direction;

    if-ne v0, v1, :cond_1

    invoke-super {p0, p1}, Landroidx/core/widget/NestedScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

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
