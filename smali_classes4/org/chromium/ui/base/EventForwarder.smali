.class public Lorg/chromium/ui/base/EventForwarder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/ui/base/EventForwarder$StylusWritingDelegate;,
        Lorg/chromium/ui/base/EventForwarder$InputDeviceSource;,
        Lorg/chromium/ui/base/EventForwarder$Natives;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mConvertTrackpadEventsToMouse:Z

.field private mCurrentTouchOffsetX:F

.field protected mCurrentTouchOffsetY:F

.field private mDragDispatchingOffsetX:F

.field private mDragDispatchingOffsetY:F

.field private final mIsDragDropEnabled:Z

.field private mLastMouseButtonState:I

.field protected mLastToolType:I

.field private mMetaState:I

.field protected mNativeEventForwarder:J

.field private mStylusWritingDelegate:Lorg/chromium/ui/base/EventForwarder$StylusWritingDelegate;


# direct methods
.method public constructor <init>(JZZ)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/chromium/ui/base/EventForwarder;->mNativeEventForwarder:J

    iput-boolean p3, p0, Lorg/chromium/ui/base/EventForwarder;->mIsDragDropEnabled:Z

    iput-boolean p4, p0, Lorg/chromium/ui/base/EventForwarder;->mConvertTrackpadEventsToMouse:Z

    const/4 p1, 0x0

    iput p1, p0, Lorg/chromium/ui/base/EventForwarder;->mMetaState:I

    return-void
.end method

.method private static create(JZ)Lorg/chromium/ui/base/EventForwarder;
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    const-string v0, "ConvertTrackpadEventsToMouse"

    invoke-static {v0}, Lorg/chromium/ui/base/UiAndroidFeatureMap;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lorg/chromium/ui/base/EventForwarder;

    invoke-direct {v1, p0, p1, p2, v0}, Lorg/chromium/ui/base/EventForwarder;-><init>(JZZ)V

    return-object v1
.end method

.method private destroy()V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/ui/base/EventForwarder;->mNativeEventForwarder:J

    return-void
.end method

.method public static getMouseEventActionButton(Landroid/view/MotionEvent;)I
    .locals 0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getActionButton()I

    move-result p0

    return p0
.end method

.method private getWebContentsOffsetYInWindow()F
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget p0, p0, Lorg/chromium/ui/base/EventForwarder;->mCurrentTouchOffsetY:F

    return p0
.end method

.method private hasTouchEventOffset()Z
    .locals 2

    iget v0, p0, Lorg/chromium/ui/base/EventForwarder;->mCurrentTouchOffsetY:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget p0, p0, Lorg/chromium/ui/base/EventForwarder;->mCurrentTouchOffsetX:F

    cmpl-float p0, p0, v1

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

.method public static isTrackpadToMouseConversionEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-static {p0}, Lorg/chromium/ui/util/MotionEventUtils;->isTrackpadEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0xc

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result p0

    const/4 v0, 0x7

    if-ne p0, v0, :cond_2

    :cond_1
    :goto_0
    return v2

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private static isValidTouchEventActionForNative(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x5

    if-eq p0, v1, :cond_1

    const/4 v1, 0x6

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private static final logActionDown(Landroid/view/MotionEvent;)V
    .locals 4

    const/16 v0, 0x2002

    invoke-virtual {p0, v0}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0, v3}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    if-ne v1, v2, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v3}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    const/16 v0, 0x4002

    invoke-virtual {p0, v0}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x4

    goto :goto_0

    :cond_2
    const/16 v0, 0x1002

    invoke-virtual {p0, v0}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    move v2, v3

    :goto_0
    const-string p0, "Android.Event.ActionDown"

    const/4 v0, 0x5

    invoke-static {p0, v2, v0}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    return-void
.end method

.method private sendTouchEvent(Landroid/view/MotionEvent;Z)Z
    .locals 44

    move-object/from16 v0, p0

    sget-boolean v1, Lorg/chromium/build/SamsungBuildConfig;->SAMSUNG_TOUCH_EVENT:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-wide v3, v0, Lorg/chromium/ui/base/EventForwarder;->mNativeEventForwarder:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_0

    return v2

    :cond_0
    const-string v38, "sendTouchEvent"

    invoke-static/range {v38 .. v38}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v14

    invoke-static/range {p1 .. p1}, Lorg/chromium/ui/util/MotionEventUtils;->getEventTimeNanos(Landroid/view/MotionEvent;)J

    move-result-wide v8

    if-nez v14, :cond_1

    move-object/from16 v1, p1

    move-wide v6, v8

    goto :goto_0

    :cond_1
    move-object/from16 v1, p1

    invoke-static {v1, v2}, Lorg/chromium/ui/util/MotionEventUtils;->getHistoricalEventTimeNanos(Landroid/view/MotionEvent;I)J

    move-result-wide v3

    move-wide v6, v3

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    invoke-static {v3}, Lorg/chromium/ui/base/SPenSupport;->convertSPenEventAction(I)I

    move-result v12

    invoke-static {v12}, Lorg/chromium/ui/base/EventForwarder;->isValidTouchEventActionForNative(I)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_2

    invoke-static/range {v38 .. v38}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    return v2

    :cond_2
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lorg/chromium/ui/base/EventForwarder;->hasTouchEventOffset()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    invoke-virtual/range {p0 .. p1}, Lorg/chromium/ui/base/EventForwarder;->createOffsetMotionEventIfNeeded(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    move-object v15, v1

    move/from16 v39, v4

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_b

    :cond_3
    move-object v15, v1

    move/from16 v39, v2

    :goto_1
    invoke-virtual {v15}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v13

    const/4 v1, 0x2

    new-array v3, v1, [F

    invoke-virtual {v15}, Landroid/view/MotionEvent;->getTouchMajor()F

    move-result v5

    aput v5, v3, v2

    if-le v13, v4, :cond_4

    invoke-virtual {v15, v4}, Landroid/view/MotionEvent;->getTouchMajor(I)F

    move-result v10

    goto :goto_2

    :cond_4
    const/4 v10, 0x0

    :goto_2
    aput v10, v3, v4

    new-array v10, v1, [F

    invoke-virtual {v15}, Landroid/view/MotionEvent;->getTouchMinor()F

    move-result v11

    aput v11, v10, v2

    if-le v13, v4, :cond_5

    invoke-virtual {v15, v4}, Landroid/view/MotionEvent;->getTouchMinor(I)F

    move-result v11

    goto :goto_3

    :cond_5
    const/4 v11, 0x0

    :goto_3
    aput v11, v10, v4

    move v11, v2

    :goto_4
    if-ge v11, v1, :cond_7

    aget v16, v3, v11

    aget v17, v10, v11

    cmpg-float v18, v16, v17

    if-gez v18, :cond_6

    aput v17, v3, v11

    aput v16, v10, v11

    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_7
    if-le v13, v4, :cond_8

    invoke-virtual {v15, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    move/from16 v18, v1

    goto :goto_5

    :cond_8
    const/16 v18, 0x0

    :goto_5
    if-le v13, v4, :cond_9

    invoke-virtual {v15, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    move/from16 v19, v1

    goto :goto_6

    :cond_9
    const/16 v19, 0x0

    :goto_6
    invoke-virtual {v15}, Landroid/view/MotionEvent;->getClassification()I

    move-result v34

    invoke-static {}, Lorg/chromium/ui/base/EventForwarderJni;->get()Lorg/chromium/ui/base/EventForwarder$Natives;

    move-result-object v1

    move-wide/from16 v16, v6

    iget-wide v5, v0, Lorg/chromium/ui/base/EventForwarder;->mNativeEventForwarder:J

    invoke-virtual {v15}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v20

    invoke-virtual {v15}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v22

    invoke-virtual {v15}, Landroid/view/MotionEvent;->getX()F

    move-result v23

    invoke-virtual {v15}, Landroid/view/MotionEvent;->getY()F

    move-result v24

    invoke-virtual {v15, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v25

    if-le v13, v4, :cond_a

    invoke-virtual {v15, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    :goto_7
    move/from16 v26, v7

    goto :goto_8

    :cond_a
    const/4 v7, -0x1

    goto :goto_7

    :goto_8
    aget v27, v3, v2

    aget v28, v3, v4

    aget v29, v10, v2

    aget v30, v10, v4

    invoke-virtual {v15}, Landroid/view/MotionEvent;->getOrientation()F

    move-result v31

    if-le v13, v4, :cond_b

    invoke-virtual {v15, v4}, Landroid/view/MotionEvent;->getOrientation(I)F

    move-result v3

    move/from16 v32, v3

    goto :goto_9

    :cond_b
    const/16 v32, 0x0

    :goto_9
    const/16 v3, 0x19

    invoke-virtual {v15, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v33

    if-le v13, v4, :cond_c

    invoke-virtual {v15, v3, v4}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v3

    move/from16 v35, v3

    goto :goto_a

    :cond_c
    const/16 v35, 0x0

    :goto_a
    invoke-virtual {v15}, Landroid/view/MotionEvent;->getRawX()F

    move-result v36

    invoke-virtual {v15}, Landroid/view/MotionEvent;->getRawY()F

    move-result v37

    invoke-virtual {v15, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v40

    if-le v13, v4, :cond_d

    invoke-virtual {v15, v4}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    :cond_d
    move/from16 v41, v2

    invoke-virtual {v15}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v42

    invoke-virtual {v15}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v43

    move-wide v2, v5

    move-object/from16 v4, p0

    move-object v5, v15

    move-wide/from16 v6, v16

    move-wide/from16 v10, v20

    move-object v0, v15

    move/from16 v15, v22

    move/from16 v16, v23

    move/from16 v17, v24

    move/from16 v20, v25

    move/from16 v21, v26

    move/from16 v22, v27

    move/from16 v23, v28

    move/from16 v24, v29

    move/from16 v25, v30

    move/from16 v26, v31

    move/from16 v27, v32

    move/from16 v28, v33

    move/from16 v29, v35

    move/from16 v30, v36

    move/from16 v31, v37

    move/from16 v32, v40

    move/from16 v33, v41

    move/from16 v35, v42

    move/from16 v36, v43

    move/from16 v37, p2

    invoke-interface/range {v1 .. v37}, Lorg/chromium/ui/base/EventForwarder$Natives;->onTouchEvent(JLorg/chromium/ui/base/EventForwarder;Landroid/view/MotionEvent;JJJIIIIFFFFIIFFFFFFFFFFIIIIIZ)Z

    move-result v1

    if-eqz v39, :cond_e

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_e
    invoke-static/range {v38 .. v38}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    return v1

    :goto_b
    invoke-static/range {v38 .. v38}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    throw v0
.end method

.method private touchEventRequiresSpecialHandling(Landroid/view/MotionEvent;)Z
    .locals 5

    iget-object v0, p0, Lorg/chromium/ui/base/EventForwarder;->mStylusWritingDelegate:Lorg/chromium/ui/base/EventForwarder$StylusWritingDelegate;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/chromium/ui/base/EventForwarder$StylusWritingDelegate;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/ui/base/EventForwarder;->isTrackpadToMouseEventConversionEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lorg/chromium/ui/base/EventForwarder;->isTrackpadToMouseConversionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/chromium/ui/base/EventForwarder;->onMouseEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v4, 0x2

    if-eq v2, v4, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-eq v2, v1, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-ne v1, v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lorg/chromium/ui/base/EventForwarder;->onMouseEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    return v0
.end method

.method private updateMouseEventState(Landroid/view/MotionEvent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result p1

    iput p1, p0, Lorg/chromium/ui/base/EventForwarder;->mLastMouseButtonState:I

    :cond_1
    return-void
.end method


# virtual methods
.method public cancelFling(J)V
    .locals 8

    iget-wide v0, p0, Lorg/chromium/ui/base/EventForwarder;->mNativeEventForwarder:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/chromium/ui/base/EventForwarderJni;->get()Lorg/chromium/ui/base/EventForwarder$Natives;

    move-result-object v1

    iget-wide v2, p0, Lorg/chromium/ui/base/EventForwarder;->mNativeEventForwarder:J

    const/4 v7, 0x1

    move-object v4, p0

    move-wide v5, p1

    invoke-interface/range {v1 .. v7}, Lorg/chromium/ui/base/EventForwarder$Natives;->cancelFling(JLorg/chromium/ui/base/EventForwarder;JZ)V

    return-void
.end method

.method public createOffsetMotionEventIfNeeded(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 1

    invoke-direct {p0}, Lorg/chromium/ui/base/EventForwarder;->hasTouchEventOffset()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iget v0, p0, Lorg/chromium/ui/base/EventForwarder;->mCurrentTouchOffsetX:F

    iget p0, p0, Lorg/chromium/ui/base/EventForwarder;->mCurrentTouchOffsetY:F

    invoke-virtual {p1, v0, p0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    return-object p1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    iget-wide v0, p0, Lorg/chromium/ui/base/EventForwarder;->mNativeEventForwarder:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lorg/chromium/ui/base/EventForwarderJni;->get()Lorg/chromium/ui/base/EventForwarder$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/ui/base/EventForwarder;->mNativeEventForwarder:J

    invoke-interface {v0, v1, v2, p0, p1}, Lorg/chromium/ui/base/EventForwarder$Natives;->dispatchKeyEvent(JLorg/chromium/ui/base/EventForwarder;Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public getImageDragSourceHTML()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getLastToolType()I
    .locals 0

    iget p0, p0, Lorg/chromium/ui/base/EventForwarder;->mLastToolType:I

    return p0
.end method

.method public getMetaStateForDexLive()I
    .locals 0

    iget p0, p0, Lorg/chromium/ui/base/EventForwarder;->mMetaState:I

    return p0
.end method

.method public isTrackpadToMouseEventConversionEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lorg/chromium/ui/base/EventForwarder;->mConvertTrackpadEventsToMouse:Z

    return p0
.end method

.method public onDragEvent(Landroid/view/DragEvent;Landroid/view/View;)Z
    .locals 20

    move-object/from16 v4, p0

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/ui/base/MimeTypeUtils;->clipDescriptionHasBrowserContent(Landroid/content/ClipDescription;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    iget-wide v5, v4, Lorg/chromium/ui/base/EventForwarder;->mNativeEventForwarder:J

    const-wide/16 v7, 0x0

    cmp-long v1, v5, v7

    if-nez v1, :cond_1

    return v2

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/ClipDescription;->getMimeTypeCount()I

    move-result v1

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    new-array v10, v1, [Ljava/lang/String;

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_3

    invoke-virtual {v0, v3}, Landroid/content/ClipDescription;->getMimeType(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v10, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    const/4 v15, 0x1

    if-ne v1, v15, :cond_4

    iget-boolean v0, v4, Lorg/chromium/ui/base/EventForwarder;->mIsDragDropEnabled:Z

    return v0

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getAction()I

    move-result v6

    const/4 v7, 0x3

    const/4 v8, 0x0

    if-ne v6, v7, :cond_e

    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v7

    if-nez v7, :cond_5

    move v9, v2

    goto :goto_2

    :cond_5
    invoke-virtual {v7}, Landroid/content/ClipData;->getItemCount()I

    move-result v9

    :goto_2
    move v11, v2

    :goto_3
    if-ge v11, v9, :cond_8

    invoke-virtual {v7, v11}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v12

    if-eqz v12, :cond_7

    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lorg/chromium/base/ContentUriUtils;->maybeGetDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_6

    new-instance v13, Ljava/lang/String;

    invoke-direct {v13}, Ljava/lang/String;-><init>()V

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v7, v8

    move-object v11, v7

    goto/16 :goto_a

    :cond_6
    :goto_4
    filled-new-array {v12, v13}, [Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_8
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_c

    if-lez v9, :cond_c

    invoke-virtual {v7, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    if-eqz v9, :cond_a

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/reflect/UndeclaredThrowableException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v11, "text/x-moz-url"

    invoke-virtual {v0, v11}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/reflect/UndeclaredThrowableException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v0, :cond_9

    :goto_5
    move-object v11, v9

    goto :goto_7

    :cond_9
    move-object v11, v8

    goto :goto_7

    :catch_1
    move-exception v0

    move-object v7, v8

    move-object v11, v7

    :goto_6
    move-object v8, v9

    goto :goto_a

    :cond_a
    move-object v9, v8

    goto :goto_5

    :goto_7
    :try_start_2
    invoke-virtual {v7}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8
    :try_end_2
    .catch Ljava/lang/reflect/UndeclaredThrowableException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_b
    move-object v7, v8

    move-object v8, v9

    goto :goto_8

    :catch_2
    move-exception v0

    move-object v7, v8

    goto :goto_6

    :cond_c
    move-object v7, v8

    move-object v11, v7

    :goto_8
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lorg/chromium/ui/base/EventForwarder;->getImageDragSourceHTML()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/ui/base/EventForwarder;->getImageDragSourceHTML()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    :catch_3
    move-exception v0

    goto :goto_a

    :cond_d
    :goto_9
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_3
    .catch Ljava/lang/reflect/UndeclaredThrowableException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_b

    :goto_a
    const-string v6, "EventForwarder"

    const-string v9, "Parsing clip data content failed."

    invoke-static {v6, v9, v0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_b
    const-string v0, "Android.DragDrop.Files.Count"

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v0, v6}, Lorg/chromium/base/metrics/RecordHistogram;->recordCount100Histogram(Ljava/lang/String;I)V

    move-object v0, v7

    move-object v14, v8

    move-object/from16 v16, v11

    move-object v11, v3

    goto :goto_c

    :cond_e
    move-object v11, v3

    move-object v0, v8

    move-object v14, v0

    move-object/from16 v16, v14

    :goto_c
    const/4 v3, 0x2

    new-array v3, v3, [I

    move-object/from16 v6, p2

    invoke-virtual {v6, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v6

    iget v7, v4, Lorg/chromium/ui/base/EventForwarder;->mDragDispatchingOffsetX:F

    add-float/2addr v6, v7

    iget v7, v4, Lorg/chromium/ui/base/EventForwarder;->mCurrentTouchOffsetX:F

    add-float/2addr v6, v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v7

    iget v8, v4, Lorg/chromium/ui/base/EventForwarder;->mCurrentTouchOffsetY:F

    add-float/2addr v7, v8

    iget v8, v4, Lorg/chromium/ui/base/EventForwarder;->mDragDispatchingOffsetY:F

    add-float/2addr v7, v8

    aget v8, v3, v2

    int-to-float v8, v8

    add-float/2addr v8, v6

    aget v3, v3, v15

    int-to-float v3, v3

    add-float v9, v7, v3

    invoke-static {}, Lorg/chromium/ui/base/EventForwarderJni;->get()Lorg/chromium/ui/base/EventForwarder$Natives;

    move-result-object v3

    iget-wide v12, v4, Lorg/chromium/ui/base/EventForwarder;->mNativeEventForwarder:J

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getAction()I

    move-result v17

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    new-array v1, v2, [[Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v19, v1

    check-cast v19, [[Ljava/lang/String;

    move-object v1, v3

    move-wide v2, v12

    move-object/from16 v4, p0

    move/from16 v5, v17

    move-object/from16 v12, v18

    move-object/from16 v13, v19

    move/from16 v17, v15

    move-object v15, v0

    invoke-interface/range {v1 .. v16}, Lorg/chromium/ui/base/EventForwarder$Natives;->onDragEvent(JLorg/chromium/ui/base/EventForwarder;IFFFF[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v17
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    iget-wide v0, p0, Lorg/chromium/ui/base/EventForwarder;->mNativeEventForwarder:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x23

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-ge v0, v2, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    if-eq v0, v3, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    if-ne v0, v4, :cond_2

    :cond_1
    :goto_0
    move v0, v4

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    if-ne v0, v3, :cond_2

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Lorg/chromium/ui/base/EventForwarder;->isTrackpadToMouseEventConversionEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {p1}, Lorg/chromium/ui/base/EventForwarder;->isTrackpadToMouseConversionEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v1, v4

    :cond_4
    if-nez v0, :cond_5

    if-eqz v1, :cond_6

    :cond_5
    invoke-direct {p0, p1}, Lorg/chromium/ui/base/EventForwarder;->updateMouseEventState(Landroid/view/MotionEvent;)V

    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_7

    invoke-virtual {p0, p1}, Lorg/chromium/ui/base/EventForwarder;->createOffsetMotionEventIfNeeded(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    :cond_7
    move-object v4, p1

    invoke-static {}, Lorg/chromium/ui/base/EventForwarderJni;->get()Lorg/chromium/ui/base/EventForwarder$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/ui/base/EventForwarder;->mNativeEventForwarder:J

    invoke-static {v4}, Lorg/chromium/ui/util/MotionEventUtils;->getEventTimeNanos(Landroid/view/MotionEvent;)J

    move-result-wide v5

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v7

    move-object v3, p0

    invoke-interface/range {v0 .. v8}, Lorg/chromium/ui/base/EventForwarder$Natives;->onGenericMotionEvent(JLorg/chromium/ui/base/EventForwarder;Landroid/view/MotionEvent;JJ)Z

    move-result p0

    return p0
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 23

    move-object/from16 v0, p0

    const-string v18, "onHoverEvent"

    invoke-static/range {v18 .. v18}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    iget-object v1, v0, Lorg/chromium/ui/base/EventForwarder;->mStylusWritingDelegate:Lorg/chromium/ui/base/EventForwarder$StylusWritingDelegate;

    move-object/from16 v2, p1

    if-eqz v1, :cond_0

    invoke-interface {v1, v2}, Lorg/chromium/ui/base/EventForwarder$StylusWritingDelegate;->handleHoverEvent(Landroid/view/MotionEvent;)V

    :cond_0
    const/4 v15, 0x0

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lorg/chromium/ui/base/EventForwarder;->hasTouchEventOffset()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual/range {p0 .. p1}, Lorg/chromium/ui/base/EventForwarder;->createOffsetMotionEventIfNeeded(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v13, v1

    move/from16 v19, v3

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_0
    move-object/from16 v22, v2

    goto/16 :goto_6

    :cond_1
    move-object v13, v2

    move/from16 v19, v15

    :goto_1
    :try_start_2
    invoke-virtual {v13}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    const/16 v2, 0x9

    if-ne v1, v2, :cond_3

    :try_start_3
    iget v1, v0, Lorg/chromium/ui/base/EventForwarder;->mLastMouseButtonState:I

    if-ne v1, v3, :cond_2

    invoke-static {}, Lorg/chromium/ui/base/EventForwarderJni;->get()Lorg/chromium/ui/base/EventForwarder$Natives;

    move-result-object v1

    iget-wide v2, v0, Lorg/chromium/ui/base/EventForwarder;->mNativeEventForwarder:J

    invoke-static {v13}, Lorg/chromium/ui/util/MotionEventUtils;->getEventTimeNanos(Landroid/view/MotionEvent;)J

    move-result-wide v5

    invoke-virtual {v13}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {v13}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-virtual {v13, v15}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    invoke-virtual {v13, v15}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v11

    invoke-virtual {v13, v15}, Landroid/view/MotionEvent;->getOrientation(I)F

    move-result v12

    const/16 v4, 0x19

    invoke-virtual {v13, v4, v15}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v16

    invoke-virtual {v13}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v17

    invoke-virtual {v13}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v20

    invoke-virtual {v13, v15}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v21
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/16 v7, 0xc

    const/4 v14, 0x1

    move-object/from16 v4, p0

    move-object/from16 v22, v13

    move/from16 v13, v16

    move/from16 v15, v17

    move/from16 v16, v20

    move/from16 v17, v21

    :try_start_4
    invoke-interface/range {v1 .. v17}, Lorg/chromium/ui/base/EventForwarder$Natives;->onMouseEvent(JLorg/chromium/ui/base/EventForwarder;JIFFIFFFIIII)V

    const/4 v1, 0x0

    goto :goto_3

    :catchall_1
    move-exception v0

    :goto_2
    move/from16 v15, v19

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object/from16 v22, v13

    goto :goto_2

    :cond_2
    move-object/from16 v22, v13

    move v1, v15

    :goto_3
    iput v1, v0, Lorg/chromium/ui/base/EventForwarder;->mLastMouseButtonState:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 v1, v22

    goto :goto_4

    :cond_3
    move-object v1, v13

    :goto_4
    :try_start_5
    invoke-virtual {v0, v1}, Lorg/chromium/ui/base/EventForwarder;->sendNativeMouseEvent(Landroid/view/MotionEvent;)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v19, :cond_4

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    :cond_4
    invoke-static/range {v18 .. v18}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    return v0

    :catchall_3
    move-exception v0

    :goto_5
    move-object/from16 v22, v1

    goto :goto_2

    :catchall_4
    move-exception v0

    move-object v1, v13

    goto :goto_5

    :catchall_5
    move-exception v0

    move v1, v15

    goto :goto_0

    :goto_6
    if-eqz v15, :cond_5

    invoke-virtual/range {v22 .. v22}, Landroid/view/MotionEvent;->recycle()V

    :cond_5
    invoke-static/range {v18 .. v18}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    throw v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6

    iget-wide v0, p0, Lorg/chromium/ui/base/EventForwarder;->mNativeEventForwarder:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lorg/chromium/ui/base/EventForwarderJni;->get()Lorg/chromium/ui/base/EventForwarder$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/ui/base/EventForwarder;->mNativeEventForwarder:J

    move-object v3, p0

    move-object v4, p2

    move v5, p1

    invoke-interface/range {v0 .. v5}, Lorg/chromium/ui/base/EventForwarder$Natives;->onKeyUp(JLorg/chromium/ui/base/EventForwarder;Landroid/view/KeyEvent;I)Z

    move-result p0

    return p0
.end method

.method public onMouseEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const-string v0, "sendMouseEvent"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lorg/chromium/ui/base/EventForwarder;->hasTouchEventOffset()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1}, Lorg/chromium/ui/base/EventForwarder;->createOffsetMotionEventIfNeeded(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lorg/chromium/ui/base/EventForwarder;->updateMouseEventState(Landroid/view/MotionEvent;)V

    invoke-virtual {p0, p1}, Lorg/chromium/ui/base/EventForwarder;->sendNativeMouseEvent(Landroid/view/MotionEvent;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    :cond_1
    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    return p0

    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    :cond_2
    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    throw p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    iput v0, p0, Lorg/chromium/ui/base/EventForwarder;->mLastToolType:I

    invoke-static {p1}, Lorg/chromium/ui/base/EventForwarder;->logActionDown(Landroid/view/MotionEvent;)V

    :cond_0
    invoke-direct {p0, p1}, Lorg/chromium/ui/base/EventForwarder;->touchEventRequiresSpecialHandling(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-direct {p0, p1, v1}, Lorg/chromium/ui/base/EventForwarder;->sendTouchEvent(Landroid/view/MotionEvent;Z)Z

    move-result p0

    return p0
.end method

.method public scrollBy(FF)V
    .locals 7

    iget-wide v0, p0, Lorg/chromium/ui/base/EventForwarder;->mNativeEventForwarder:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/chromium/ui/base/EventForwarderJni;->get()Lorg/chromium/ui/base/EventForwarder$Natives;

    move-result-object v1

    iget-wide v2, p0, Lorg/chromium/ui/base/EventForwarder;->mNativeEventForwarder:J

    move-object v4, p0

    move v5, p1

    move v6, p2

    invoke-interface/range {v1 .. v6}, Lorg/chromium/ui/base/EventForwarder$Natives;->scrollBy(JLorg/chromium/ui/base/EventForwarder;FF)V

    return-void
.end method

.method public scrollTo(FF)V
    .locals 7

    iget-wide v0, p0, Lorg/chromium/ui/base/EventForwarder;->mNativeEventForwarder:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/chromium/ui/base/EventForwarderJni;->get()Lorg/chromium/ui/base/EventForwarder$Natives;

    move-result-object v1

    iget-wide v2, p0, Lorg/chromium/ui/base/EventForwarder;->mNativeEventForwarder:J

    move-object v4, p0

    move v5, p1

    move v6, p2

    invoke-interface/range {v1 .. v6}, Lorg/chromium/ui/base/EventForwarder$Natives;->scrollTo(JLorg/chromium/ui/base/EventForwarder;FF)V

    return-void
.end method

.method public sendNativeMouseEvent(Landroid/view/MotionEvent;)Z
    .locals 22

    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    const/16 v1, 0x9

    const/4 v2, 0x0

    if-eq v6, v1, :cond_5

    const/16 v1, 0xa

    if-ne v6, v1, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v15, 0x1

    if-eqz v6, :cond_1

    if-ne v6, v15, :cond_2

    :cond_1
    move/from16 v17, v15

    goto/16 :goto_3

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/chromium/ui/base/EventForwarder;->isTrackpadToMouseEventConversionEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static/range {p1 .. p1}, Lorg/chromium/ui/base/EventForwarder;->isTrackpadToMouseConversionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v15

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_0
    invoke-static {}, Lorg/chromium/ui/base/EventForwarderJni;->get()Lorg/chromium/ui/base/EventForwarder$Natives;

    move-result-object v3

    move-object/from16 v4, p0

    iget-wide v7, v4, Lorg/chromium/ui/base/EventForwarder;->mNativeEventForwarder:J

    invoke-static/range {p1 .. p1}, Lorg/chromium/ui/util/MotionEventUtils;->getEventTimeNanos(Landroid/view/MotionEvent;)J

    move-result-wide v9

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v13

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v14

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getOrientation(I)F

    move-result v16

    const/16 v5, 0x19

    invoke-virtual {v0, v5, v2}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v17

    invoke-static/range {p1 .. p1}, Lorg/chromium/ui/base/EventForwarder;->getMouseEventActionButton(Landroid/view/MotionEvent;)I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v19

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v20

    if-eqz v1, :cond_4

    const/4 v0, 0x3

    :goto_1
    move/from16 v21, v0

    goto :goto_2

    :cond_4
    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    goto :goto_1

    :goto_2
    move-object v0, v3

    move-wide v1, v7

    move-object/from16 v3, p0

    move-wide v4, v9

    move v7, v11

    move v8, v12

    move v9, v13

    move v10, v14

    move/from16 v11, v16

    move/from16 v12, v17

    move/from16 v13, v18

    move/from16 v14, v19

    move/from16 v17, v15

    move/from16 v15, v20

    move/from16 v16, v21

    invoke-interface/range {v0 .. v16}, Lorg/chromium/ui/base/EventForwarder$Natives;->onMouseEvent(JLorg/chromium/ui/base/EventForwarder;JIFFIFFFIIII)V

    :goto_3
    return v17

    :cond_5
    :goto_4
    return v2
.end method

.method public setCurrentTouchEventOffsets(FF)V
    .locals 0

    iput p1, p0, Lorg/chromium/ui/base/EventForwarder;->mCurrentTouchOffsetX:F

    iput p2, p0, Lorg/chromium/ui/base/EventForwarder;->mCurrentTouchOffsetY:F

    return-void
.end method

.method public setCurrentTouchOffsetY(F)V
    .locals 0

    iput p1, p0, Lorg/chromium/ui/base/EventForwarder;->mCurrentTouchOffsetY:F

    return-void
.end method

.method public setMetaStateForDexLive(I)V
    .locals 1

    iget v0, p0, Lorg/chromium/ui/base/EventForwarder;->mMetaState:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lorg/chromium/ui/base/EventForwarder;->mMetaState:I

    :cond_0
    return-void
.end method

.method public setStylusWritingDelegate(Lorg/chromium/ui/base/EventForwarder$StylusWritingDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/ui/base/EventForwarder;->mStylusWritingDelegate:Lorg/chromium/ui/base/EventForwarder$StylusWritingDelegate;

    return-void
.end method

.method public startFling(JFFZZ)V
    .locals 10

    move-object v3, p0

    iget-wide v0, v3, Lorg/chromium/ui/base/EventForwarder;->mNativeEventForwarder:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/chromium/ui/base/EventForwarderJni;->get()Lorg/chromium/ui/base/EventForwarder$Natives;

    move-result-object v0

    iget-wide v1, v3, Lorg/chromium/ui/base/EventForwarder;->mNativeEventForwarder:J

    move-object v3, p0

    move-wide v4, p1

    move v6, p3

    move v7, p4

    move v8, p5

    move/from16 v9, p6

    invoke-interface/range {v0 .. v9}, Lorg/chromium/ui/base/EventForwarder$Natives;->startFling(JLorg/chromium/ui/base/EventForwarder;JFFZZ)V

    return-void
.end method
