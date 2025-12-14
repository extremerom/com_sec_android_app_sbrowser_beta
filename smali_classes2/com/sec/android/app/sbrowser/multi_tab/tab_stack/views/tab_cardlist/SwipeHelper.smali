.class public Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper$SwipeHelperCallback;,
        Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper$Delegate;
    }
.end annotation


# static fields
.field private static final sLinearInterpolator:Landroid/view/animation/LinearInterpolator;


# instance fields
.field private final mCallback:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper$SwipeHelperCallback;

.field private mCanCurrViewBeDimissed:Z

.field private final mContext:Landroid/content/Context;

.field private mCurrView:Landroid/view/View;

.field private final mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper$Delegate;

.field private final mDensityScale:F

.field private mDownX:F

.field private mDownY:F

.field private mDragging:Z

.field private mInitialTouchPos:F

.field private mMinAlpha:F

.field private final mPagingTouchSlop:F

.field private final mSwipeDirection:I

.field private mTabViewIndexInDownEvent:I

.field private final mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->sLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    return-void
.end method

.method public constructor <init>(ILcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper$SwipeHelperCallback;FFLandroid/content/Context;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper$Delegate;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->mMinAlpha:F

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->mCallback:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper$SwipeHelperCallback;

    iput p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->mSwipeDirection:I

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iput p3, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->mDensityScale:F

    iput p4, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->mPagingTouchSlop:F

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->mContext:Landroid/content/Context;

    iput-object p6, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper$Delegate;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->lambda$endSwipe$1(ILandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;FZLcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->lambda$endSwipe$0(FZLcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;ILandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper$SwipeHelperCallback;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->mCallback:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper$SwipeHelperCallback;

    return-object p0
.end method

.method private createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;
    .locals 2

    iget p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->mSwipeDirection:I

    if-nez p0, :cond_0

    sget-object p0, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    goto :goto_0

    :cond_0
    sget-object p0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    :goto_0
    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-static {p1, p0, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;Landroid/view/View;)F
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->getAlphaForOffset(Landroid/view/View;)F

    move-result p0

    return p0
.end method

.method private endSwipe(Landroid/view/VelocityTracker;)V
    .locals 14

    const/high16 v0, 0x44fa0000    # 2000.0f

    iget v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->mDensityScale:F

    mul-float/2addr v1, v0

    const/16 v0, 0x3e8

    invoke-virtual {p1, v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->getVelocity(Landroid/view/VelocityTracker;)F

    move-result v4

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->getPerpendicularVelocity(Landroid/view/VelocityTracker;)F

    move-result p1

    const/high16 v0, 0x42c80000    # 100.0f

    iget v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->mDensityScale:F

    mul-float/2addr v1, v0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->mCurrView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    instance-of v2, v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView;

    const/4 v3, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper$Delegate;

    check-cast v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView;->getTab()Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper$Delegate;->getIndex(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;)I

    move-result v0

    iget v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->mTabViewIndexInDownEvent:I

    if-ne v0, v2, :cond_1

    move v0, v5

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->isLandscape()Z

    move-result v6

    if-eqz v6, :cond_2

    const v6, 0x3ecccccd    # 0.4f

    goto :goto_1

    :cond_2
    const/high16 v6, 0x3f000000    # 0.5f

    :goto_1
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-direct {p0, v8}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v8

    mul-float/2addr v6, v8

    cmpl-float v6, v7, v6

    if-lez v6, :cond_3

    move v6, v5

    goto :goto_2

    :cond_3
    move v6, v3

    :goto_2
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v1, v7, v1

    const/4 v7, 0x0

    if-lez v1, :cond_6

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, v1, p1

    if-lez p1, :cond_6

    cmpl-float p1, v4, v7

    if-lez p1, :cond_4

    move p1, v5

    goto :goto_3

    :cond_4
    move p1, v3

    :goto_3
    cmpl-float v1, v2, v7

    if-lez v1, :cond_5

    move v1, v5

    goto :goto_4

    :cond_5
    move v1, v3

    :goto_4
    if-ne p1, v1, :cond_6

    move p1, v5

    goto :goto_5

    :cond_6
    move p1, v3

    :goto_5
    if-nez p1, :cond_7

    if-eqz v6, :cond_8

    :cond_7
    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->mCurrView:Landroid/view/View;

    check-cast v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView;->getTab()Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->mIsLocked:Z

    if-nez v0, :cond_8

    move v3, v5

    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->mCurrView:Landroid/view/View;

    check-cast v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView;->getTab()Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;

    move-result-object v6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper$Delegate;

    invoke-interface {v0, v6}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper$Delegate;->getIndex(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;)I

    move-result v0

    if-eqz v3, :cond_b

    iget-boolean v1, v6, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->isGroupTab:Z

    if-eqz v1, :cond_9

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->mContext:Landroid/content/Context;

    iget-object v10, v6, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->title:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper$Delegate;

    invoke-interface {v1, v10}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper$Delegate;->hasLockedTab(Ljava/lang/String;)Z

    move-result v11

    new-instance v12, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/a;

    move-object v2, v12

    move-object v3, p0

    move v5, p1

    move v7, v0

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/a;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;FZLcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;I)V

    new-instance v13, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/b;

    const/4 p1, 0x0

    invoke-direct {v13, v0, p1, p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/b;-><init>(IILjava/lang/Object;)V

    const/4 v9, 0x0

    invoke-static/range {v8 .. v13}, Lcom/sec/android/app/sbrowser/common/multi_tab/MultiTabUtil;->showCloseGroupDialog(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;ZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lm/l;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper$Delegate;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper$Delegate;->setCloseDialog(Lm/l;)V

    goto :goto_7

    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz p1, :cond_a

    goto :goto_6

    :cond_a
    move v4, v7

    :goto_6
    invoke-virtual {p0, v0, v4}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->dismissChild(Landroid/view/View;F)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper$Delegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper$Delegate;->sendSALoggingForTabSwipe()V

    goto :goto_7

    :cond_b
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->snapChild(Landroid/view/View;I)V

    :goto_7
    return-void
.end method

.method private getAlphaForOffset(Landroid/view/View;)F
    .locals 5

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v0

    const v1, 0x3f266666    # 0.65f

    mul-float/2addr v1, v0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result p1

    const v2, 0x3e19999a    # 0.15f

    mul-float/2addr v2, v0

    cmpl-float v3, p1, v2

    const/high16 v4, 0x3f800000    # 1.0f

    if-ltz v3, :cond_0

    sub-float/2addr p1, v2

    div-float/2addr p1, v1

    sub-float p1, v4, p1

    goto :goto_0

    :cond_0
    const v3, 0x3f59999a    # 0.85f

    mul-float/2addr v0, v3

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    add-float/2addr v2, p1

    div-float/2addr v2, v1

    add-float p1, v2, v4

    goto :goto_0

    :cond_1
    move p1, v4

    :goto_0
    invoke-static {p1, v4}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->mMinAlpha:F

    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method private getPerpendicularVelocity(Landroid/view/VelocityTracker;)F
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->mSwipeDirection:I

    if-nez p0, :cond_0

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p0

    :goto_0
    return p0
.end method

.method private getPos(Landroid/view/MotionEvent;)F
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->mSwipeDirection:I

    if-nez p0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p0

    :goto_0
    return p0
.end method

.method private getSize(Landroid/view/View;)F
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->mSwipeDirection:I

    if-nez p0, :cond_1

    iget p0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    :goto_0
    int-to-float p0, p0

    goto :goto_1

    :cond_1
    iget p0, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_0

    :goto_1
    return p0
.end method

.method private getTranslation(Landroid/view/View;)F
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->mSwipeDirection:I

    if-nez p0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p0

    :goto_0
    return p0
.end method

.method private getVelocity(Landroid/view/VelocityTracker;)F
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->mSwipeDirection:I

    if-nez p0, :cond_0

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result p0

    :goto_0
    return p0
.end method

.method private isLandscape()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscapeWindow(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$endSwipe$0(FZLcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->onPositiveClick(FZLcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;I)V

    return-void
.end method

.method private synthetic lambda$endSwipe$1(ILandroid/content/DialogInterface;I)V
    .locals 0

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, p2, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->snapChild(Landroid/view/View;I)V

    return-void
.end method

.method private onPositiveClick(FZLcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper$Delegate;

    iget-object p3, p3, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->title:Ljava/lang/String;

    invoke-interface {v0, p3}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper$Delegate;->hasLockedTab(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper$Delegate;

    invoke-interface {p1, p4}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper$Delegate;->snapChild(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper$Delegate;

    invoke-interface {p1, p4}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper$Delegate;->closeUnlockedMember(I)V

    goto :goto_1

    :cond_0
    iget-object p3, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper$Delegate;

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-interface {p3, p4, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper$Delegate;->dismissChild(IF)V

    :goto_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper$Delegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper$Delegate;->sendSALoggingForTabSwipe()V

    return-void
.end method

.method private setSwipeAmount(F)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SwipeHelper Setting swipeamount to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SwipeHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->setTranslation(Landroid/view/View;F)V

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->mCanCurrViewBeDimissed:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->getAlphaForOffset(Landroid/view/View;)F

    move-result p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method private setTranslation(Landroid/view/View;F)V
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->mSwipeDirection:I

    if-nez p0, :cond_0

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    :goto_0
    return-void
.end method


# virtual methods
.method public dismissChild(Landroid/view/View;F)V
    .locals 3

    const/4 v0, 0x0

    cmpg-float v1, p2, v0

    if-ltz v1, :cond_2

    cmpl-float v1, p2, v0

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v2

    cmpg-float v2, v2, v0

    if-ltz v2, :cond_2

    :cond_0
    if-nez v1, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v1

    cmpl-float v1, v1, v0

    if-nez v1, :cond_1

    iget v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->mSwipeDirection:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v1

    goto :goto_1

    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v1

    neg-float v1, v1

    :goto_1
    cmpl-float v0, p2, v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v0

    sub-float v0, v1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    div-float/2addr v0, p2

    float-to-int p2, v0

    const/16 v0, 0x96

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_2

    :cond_3
    const/16 p2, 0x4b

    :goto_2
    invoke-direct {p0, p1, v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->sLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper$1;

    invoke-direct {p2, p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper$1;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;Landroid/view/View;)V

    invoke-virtual {v0, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance p2, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper$2;

    invoke-direct {p2, p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper$2;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;Landroid/view/View;)V

    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public isDragging()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->mDragging:Z

    return p0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const-string v3, "SwipeHelper"

    const/4 v4, 0x1

    if-eqz v0, :cond_6

    if-eq v0, v4, :cond_4

    const/4 v5, 0x2

    if-eq v0, v5, :cond_0

    const/4 p1, 0x3

    if-eq v0, p1, :cond_4

    goto/16 :goto_3

    :cond_0
    const-string v0, "[onInterceptTouchEvent] This is ACTION_MOVE"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->mTabViewIndexInDownEvent:I

    if-le v0, v1, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->mInitialTouchPos:F

    sub-float v1, v0, v1

    iget v5, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->mSwipeDirection:I

    if-nez v5, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget v6, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->mDownX:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v6, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->mDownY:F

    sub-float/2addr p1, v6

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, v5, p1

    if-lez p1, :cond_2

    :goto_0
    move v2, v4

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget v6, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->mDownX:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v6, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->mDownY:F

    sub-float/2addr p1, v6

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, v5, p1

    if-gez p1, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->mPagingTouchSlop:F

    cmpl-float p1, p1, v1

    if-lez p1, :cond_9

    if-eqz v2, :cond_9

    iput-boolean v4, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->mDragging:Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result p1

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->mInitialTouchPos:F

    goto :goto_3

    :cond_3
    const-string p1, "mCurrentView is null in ActionDown onInterceptTouchEvent"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_4
    if-ne v0, v4, :cond_5

    const-string p1, "[onInterceptTouchEvent] This is ACTION_UP"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    const-string p1, "[onInterceptTouchEvent] This is ACTION_CANCEL"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->mDragging:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->mCurrView:Landroid/view/View;

    goto :goto_3

    :cond_6
    const-string v0, "[onInterceptTouchEvent] This is ACTION_DOWN in SwipeHelper"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->mDragging:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->mCallback:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper$SwipeHelperCallback;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper$SwipeHelperCallback;->getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->mCurrView:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v0, :cond_8

    iput-boolean v4, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->mCanCurrViewBeDimissed:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->mInitialTouchPos:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->mDownX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->mDownY:F

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->mCurrView:Landroid/view/View;

    instance-of v0, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper$Delegate;

    check-cast p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView;->getTab()Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper$Delegate;->getIndex(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->mTabViewIndexInDownEvent:I

    goto :goto_3

    :cond_7
    iput v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->mTabViewIndexInDownEvent:I

    goto :goto_3

    :cond_8
    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->mCanCurrViewBeDimissed:Z

    iput v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->mTabViewIndexInDownEvent:I

    :cond_9
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "[onInterceptTouchEvent] mDragging : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->mDragging:Z

    invoke-static {v3, p1, v0}, Lt/b;->z(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->mDragging:Z

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->mDragging:Z

    const-string v1, "SwipeHelper"

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "mCanCurrViewBeDimissed "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->mCanCurrViewBeDimissed:Z

    invoke-static {v1, p1, v0}, Lt/b;->z(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->mCanCurrViewBeDimissed:Z

    return p0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "[onTouchEvent] This is ACTION_MOVE"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result p1

    iget v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->mInitialTouchPos:F

    sub-float/2addr p1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "delta is max swipe amount is "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->setSwipeAmount(F)V

    goto :goto_0

    :cond_2
    const-string p0, "Swipe Helper Action move is ohk but mCurrView is null"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2

    :cond_3
    if-ne v0, v2, :cond_6

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz p1, :cond_6

    check-cast p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView;->getTab()Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->mCurrView:Landroid/view/View;

    check-cast p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView;->getTab()Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;

    move-result-object p1

    iget-boolean p1, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->isIncognito:Z

    if-eqz p1, :cond_4

    const-string v0, "4105"

    goto :goto_1

    :cond_4
    const-string v0, "4004"

    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_5

    const-string v2, "Right"

    goto :goto_2

    :cond_5
    const-string v2, "Left"

    :goto_2
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/multi_tab/MultiTabLoggingHelper;->getScreenID(Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0, v2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const-string p1, "[onTouchEvent] This is ACTION_UP"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->endSwipe(Landroid/view/VelocityTracker;)V

    goto :goto_3

    :cond_7
    const-string p1, "CurrentView is null at swipe end"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->mDragging:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->mTabViewIndexInDownEvent:I

    return p1
.end method

.method public setMinAlpha(F)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->mMinAlpha:F

    return-void
.end method

.method public snapChild(Landroid/view/View;I)V
    .locals 3

    instance-of v0, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->mTabViewIndexInDownEvent:I

    if-eq p2, v0, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0xfa

    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;->createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance p2, Lh2/c;

    invoke-direct {p2}, Lh2/c;-><init>()V

    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p2, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper$3;

    invoke-direct {p2, p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper$3;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;Landroid/view/View;)V

    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p2, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper$4;

    invoke-direct {p2, p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper$4;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/SwipeHelper;Landroid/view/View;)V

    invoke-virtual {v0, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
