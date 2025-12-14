.class Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mDelegate:Lcom/sec/android/app/sbrowser/trans_bar/TransBarDelegate;

.field private mDragDiffX:I

.field private mDragDiffY:I

.field private mDragView:Landroid/view/View;

.field private mEvent:Landroid/view/MotionEvent;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mIsFocusLayoutType:Z

.field private mLangService:Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;

.field private mNeedUpdatePos:Z

.field private mTouchPoint:Landroid/graphics/Point;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;->mGestureDetector:Landroid/view/GestureDetector;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;->mDelegate:Lcom/sec/android/app/sbrowser/trans_bar/TransBarDelegate;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;->mLangService:Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;->mNeedUpdatePos:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;->mIsFocusLayoutType:Z

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;->mDragDiffX:I

    return p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;->mDragDiffY:I

    return p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;)Landroid/view/GestureDetector;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;->mGestureDetector:Landroid/view/GestureDetector;

    return-object p0
.end method

.method private commitBarPosition(Landroid/view/View;IIIIIIIIZ)V
    .locals 11

    move-object v9, p0

    move-object v10, p1

    iget-boolean v0, v9, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;->mIsFocusLayoutType:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;->getToolbarHeight()I

    move-result v0

    sub-int v0, p9, v0

    move v8, v0

    goto :goto_0

    :cond_0
    move/from16 v8, p9

    :goto_0
    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;->getMeasureLastPos(IIIIIIII)Landroid/graphics/Point;

    move-result-object v0

    if-eqz p10, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, v0, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, v0, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    :cond_1
    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setX(F)V

    iget v1, v0, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setY(F)V

    :goto_1
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;->storeLastPos(II)V

    return-void
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;->mDragDiffX:I

    return-void
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;->mDragDiffY:I

    return-void
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;Landroid/view/View;IIIIIIII)V
    .locals 11

    const/4 v10, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v10}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;->commitBarPosition(Landroid/view/View;IIIIIIIIZ)V

    return-void
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;->onDragEnd(Landroid/view/View;)V

    return-void
.end method

.method private getGestureListener(Landroid/view/View;Landroid/view/View;)Landroid/view/GestureDetector$OnGestureListener;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler$10;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler$10;-><init>(Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;Landroid/view/View;Landroid/view/View;)V

    return-object v0
.end method

.method private getMeasureLastPos(IIIIIIII)Landroid/graphics/Point;
    .locals 3

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;->getToolbarHeight()I

    move-result v1

    const/4 v2, 0x0

    if-ltz p1, :cond_1

    if-ge p7, p3, :cond_0

    goto :goto_0

    :cond_0
    add-int/2addr p1, p3

    add-int/2addr p5, p7

    if-le p1, p5, :cond_2

    sub-int/2addr p7, p3

    iput p7, v0, Landroid/graphics/Point;->x:I

    goto :goto_1

    :cond_1
    :goto_0
    iput v2, v0, Landroid/graphics/Point;->x:I

    :cond_2
    :goto_1
    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;->mIsFocusLayoutType:Z

    if-eqz p0, :cond_5

    if-ltz p2, :cond_4

    if-ge p8, p4, :cond_3

    goto :goto_2

    :cond_3
    add-int/2addr p2, p4

    add-int/2addr p6, p8

    if-le p2, p6, :cond_8

    sub-int/2addr p8, p4

    iput p8, v0, Landroid/graphics/Point;->y:I

    goto :goto_4

    :cond_4
    :goto_2
    iput v2, v0, Landroid/graphics/Point;->y:I

    goto :goto_4

    :cond_5
    if-lt p2, v1, :cond_7

    if-ge p8, p4, :cond_6

    goto :goto_3

    :cond_6
    add-int/2addr p2, p4

    add-int/2addr p6, p8

    if-le p2, p6, :cond_8

    sub-int/2addr p8, p4

    iput p8, v0, Landroid/graphics/Point;->y:I

    goto :goto_4

    :cond_7
    :goto_3
    iput v1, v0, Landroid/graphics/Point;->y:I

    :cond_8
    :goto_4
    return-object v0
.end method

.method private getToolbarHeight()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;->mDelegate:Lcom/sec/android/app/sbrowser/trans_bar/TransBarDelegate;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDelegate;->getVisibleHeight()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;->startDragging(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method private initializeCloseView(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler$9;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler$9;-><init>(Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method

.method private initializeCollapseView(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler$4;-><init>(Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method

.method private initializeExpandView(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler$3;-><init>(Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method

.method private initializeMoreView(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler$8;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler$8;-><init>(Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method

.method private initializeSplitBtnView(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler$7;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler$7;-><init>(Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method

.method private initializeTargetView(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler$5;-><init>(Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method

.method private initializeTranslateBtnView(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler$6;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler$6;-><init>(Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method

.method private onDragEnd(Landroid/view/View;)V
    .locals 0

    const/16 p0, 0x8

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private sendMoveEventLog()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;->mLangService:Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;->sendMoveEventLog()V

    return-void
.end method

.method private startDragging(Landroid/view/View;Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;->updateStartTouchPoint(Landroid/view/View;)V

    const-string v0, "TransBarDragHandler"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;->mTouchPoint:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    if-ltz v2, :cond_1

    iget v2, v1, Landroid/graphics/Point;->y:I

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragShadowBuilder;

    invoke-direct {v2, p1, v1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragShadowBuilder;-><init>(Landroid/view/View;Landroid/graphics/Point;)V

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p2, v0, v2, p2, p1}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/VibratorUtil;->getInstance()Lcom/sec/android/app/sbrowser/common/utils/VibratorUtil;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/common/utils/VibratorUtil;->performVibrationFeedbackForDragStart(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;->sendMoveEventLog()V

    nop

    :cond_1
    :goto_0
    return-void
.end method

.method private storeLastPos(II)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setTransBarIsMoved(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setTransBarLastPosX(I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setTransBarLastPosY(I)V

    return-void
.end method

.method private updateStartTouchPoint(Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance p1, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;->mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    const/4 v2, 0x0

    aget v2, v0, v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;->mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    const/4 v3, 0x1

    aget v0, v0, v3

    int-to-float v0, v0

    sub-float/2addr v2, v0

    float-to-int v0, v2

    invoke-direct {p1, v1, v0}, Landroid/graphics/Point;-><init>(II)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;->mTouchPoint:Landroid/graphics/Point;

    return-void
.end method


# virtual methods
.method public isUpdatePos()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;->mNeedUpdatePos:Z

    return p0
.end method

.method public needUpdatePos(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;->mNeedUpdatePos:Z

    return-void
.end method

.method public sendTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;->mEvent:Landroid/view/MotionEvent;

    :cond_0
    return-void
.end method

.method public setDelegate(Lcom/sec/android/app/sbrowser/trans_bar/TransBarDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;->mDelegate:Lcom/sec/android/app/sbrowser/trans_bar/TransBarDelegate;

    return-void
.end method

.method public setupDragListeners(Landroid/content/Context;Landroid/view/View;Landroid/view/View;IILcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;)V
    .locals 0

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;->mDragView:Landroid/view/View;

    iput-object p6, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;->mLangService:Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;

    new-instance p4, Landroid/view/GestureDetector;

    invoke-direct {p0, p2, p3}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;->getGestureListener(Landroid/view/View;Landroid/view/View;)Landroid/view/GestureDetector$OnGestureListener;

    move-result-object p5

    invoke-direct {p4, p1, p5}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;->mGestureDetector:Landroid/view/GestureDetector;

    new-instance p1, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler$1;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler$1;-><init>(Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance p1, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler$2;

    invoke-direct {p1, p0, p2, p3}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler$2;-><init>(Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p3, p1}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    return-void
.end method

.method public setupViewModeDragListeners(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;->initializeExpandView(Landroid/view/View;)V

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;->initializeCollapseView(Landroid/view/View;)V

    invoke-direct {p0, p3}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;->initializeTargetView(Landroid/view/View;)V

    invoke-direct {p0, p4}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;->initializeTranslateBtnView(Landroid/view/View;)V

    invoke-direct {p0, p5}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;->initializeSplitBtnView(Landroid/view/View;)V

    invoke-direct {p0, p6}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;->initializeMoreView(Landroid/view/View;)V

    invoke-direct {p0, p7}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;->initializeCloseView(Landroid/view/View;)V

    return-void
.end method

.method public updateBarPosition(Landroid/view/View;IIZZ)V
    .locals 11

    move-object v0, p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getTransBarIsMoved()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;->needUpdatePos(Z)V

    :cond_1
    move/from16 v1, p5

    iput-boolean v1, v0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;->mIsFocusLayoutType:Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getTransBarLastPosX()I

    move-result v2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getTransBarLastPosY()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;->mDragView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    float-to-int v6, v1

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;->mDragView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    float-to-int v7, v1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;->getToolbarHeight()I

    move-result v1

    sub-int v9, p3, v1

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move v8, p2

    invoke-direct/range {v0 .. v10}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;->commitBarPosition(Landroid/view/View;IIIIIIIIZ)V

    return-void
.end method
