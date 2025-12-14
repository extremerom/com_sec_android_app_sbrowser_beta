.class public Lcom/sec/terrace/ui/base/TinEventForwarder;
.super Lorg/chromium/ui/base/EventForwarder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/ui/base/TinEventForwarder$TinInternalAccessDelegate;,
        Lcom/sec/terrace/ui/base/TinEventForwarder$Natives;
    }
.end annotation


# instance fields
.field private mInternalAccessDelegate:Lcom/sec/terrace/ui/base/TinEventForwarder$TinInternalAccessDelegate;


# direct methods
.method private constructor <init>(JZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/chromium/ui/base/EventForwarder;-><init>(JZZ)V

    return-void
.end method

.method public static create(JZ)Lcom/sec/terrace/ui/base/TinEventForwarder;
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
    new-instance v1, Lcom/sec/terrace/ui/base/TinEventForwarder;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/sec/terrace/ui/base/TinEventForwarder;-><init>(JZZ)V

    return-object v1
.end method


# virtual methods
.method public getImageDragSourceHTML()Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/sec/terrace/content/browser/TinImageDragHelper;->getInstance()Lcom/sec/terrace/content/browser/TinImageDragHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinImageDragHelper;->getImageDragSourceHTML()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/ui/base/TinEventForwarder;->mInternalAccessDelegate:Lcom/sec/terrace/ui/base/TinEventForwarder$TinInternalAccessDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/sec/terrace/ui/base/TinEventForwarder$TinInternalAccessDelegate;->cancelMouseClickOnGoToTop(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Lorg/chromium/ui/base/EventForwarder;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x9

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    iput v0, p0, Lorg/chromium/ui/base/EventForwarder;->mLastToolType:I

    :cond_0
    iget-object v0, p0, Lcom/sec/terrace/ui/base/TinEventForwarder;->mInternalAccessDelegate:Lcom/sec/terrace/ui/base/TinEventForwarder$TinInternalAccessDelegate;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/sec/terrace/ui/base/TinEventForwarder$TinInternalAccessDelegate;->updateMotionEventOffset(Landroid/view/MotionEvent;)V

    iget-object v0, p0, Lcom/sec/terrace/ui/base/TinEventForwarder;->mInternalAccessDelegate:Lcom/sec/terrace/ui/base/TinEventForwarder$TinInternalAccessDelegate;

    invoke-interface {v0, p1}, Lcom/sec/terrace/ui/base/TinEventForwarder$TinInternalAccessDelegate;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :cond_1
    if-nez v2, :cond_2

    invoke-super {p0, p1}, Lorg/chromium/ui/base/EventForwarder;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :cond_2
    iget-object p0, p0, Lcom/sec/terrace/ui/base/TinEventForwarder;->mInternalAccessDelegate:Lcom/sec/terrace/ui/base/TinEventForwarder$TinInternalAccessDelegate;

    if-eqz p0, :cond_3

    invoke-interface {p0, p1}, Lcom/sec/terrace/ui/base/TinEventForwarder$TinInternalAccessDelegate;->clearMotionEventOffset(Landroid/view/MotionEvent;)V

    :cond_3
    return v2
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/terrace/ui/base/TinEventForwarder;->mInternalAccessDelegate:Lcom/sec/terrace/ui/base/TinEventForwarder$TinInternalAccessDelegate;

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lorg/chromium/ui/base/EventForwarder;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_0
    invoke-interface {v0}, Lcom/sec/terrace/ui/base/TinEventForwarder$TinInternalAccessDelegate;->getTinTapDisambiguator()Lcom/sec/terrace/content/browser/TinTapDisambiguator;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/terrace/content/browser/TinTapDisambiguator;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    invoke-virtual {v0}, Lcom/sec/terrace/content/browser/TinTapDisambiguator;->backButtonPressed()V

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-super {p0, p1, p2}, Lorg/chromium/ui/base/EventForwarder;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/ui/base/TinEventForwarder;->mInternalAccessDelegate:Lcom/sec/terrace/ui/base/TinEventForwarder$TinInternalAccessDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/sec/terrace/ui/base/TinEventForwarder$TinInternalAccessDelegate;->updateMotionEventOffset(Landroid/view/MotionEvent;)V

    iget-object v0, p0, Lcom/sec/terrace/ui/base/TinEventForwarder;->mInternalAccessDelegate:Lcom/sec/terrace/ui/base/TinEventForwarder$TinInternalAccessDelegate;

    invoke-interface {v0, p1}, Lcom/sec/terrace/ui/base/TinEventForwarder$TinInternalAccessDelegate;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    invoke-super {p0, p1}, Lorg/chromium/ui/base/EventForwarder;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_1
    iget-object p0, p0, Lcom/sec/terrace/ui/base/TinEventForwarder;->mInternalAccessDelegate:Lcom/sec/terrace/ui/base/TinEventForwarder$TinInternalAccessDelegate;

    if-eqz p0, :cond_2

    invoke-interface {p0, p1}, Lcom/sec/terrace/ui/base/TinEventForwarder$TinInternalAccessDelegate;->clearMotionEventOffset(Landroid/view/MotionEvent;)V

    :cond_2
    return v0
.end method

.method public scrollBegin(JFFFF)V
    .locals 10

    move-object v3, p0

    iget-wide v0, v3, Lorg/chromium/ui/base/EventForwarder;->mNativeEventForwarder:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v3, Lcom/sec/terrace/ui/base/TinEventForwarder;->mInternalAccessDelegate:Lcom/sec/terrace/ui/base/TinEventForwarder$TinInternalAccessDelegate;

    invoke-interface {v0}, Lcom/sec/terrace/ui/base/TinEventForwarder$TinInternalAccessDelegate;->getTinTapDisambiguator()Lcom/sec/terrace/content/browser/TinTapDisambiguator;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/terrace/content/browser/TinTapDisambiguator;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/terrace/content/browser/TinTapDisambiguator;->hidePopup(Z)V

    :cond_1
    invoke-static {}, Lcom/sec/terrace/ui/base/TinEventForwarderJni;->get()Lcom/sec/terrace/ui/base/TinEventForwarder$Natives;

    move-result-object v0

    iget-wide v1, v3, Lorg/chromium/ui/base/EventForwarder;->mNativeEventForwarder:J

    move-object v3, p0

    move-wide v4, p1

    move v6, p3

    move v7, p4

    move v8, p5

    move/from16 v9, p6

    invoke-interface/range {v0 .. v9}, Lcom/sec/terrace/ui/base/TinEventForwarder$Natives;->scrollBegin(JLcom/sec/terrace/ui/base/TinEventForwarder;JFFFF)V

    return-void
.end method

.method public scrollBy(JFFFF)V
    .locals 10

    move-object v3, p0

    iget-wide v0, v3, Lorg/chromium/ui/base/EventForwarder;->mNativeEventForwarder:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/terrace/ui/base/TinEventForwarderJni;->get()Lcom/sec/terrace/ui/base/TinEventForwarder$Natives;

    move-result-object v0

    iget-wide v1, v3, Lorg/chromium/ui/base/EventForwarder;->mNativeEventForwarder:J

    move-object v3, p0

    move-wide v4, p1

    move v6, p3

    move v7, p4

    move v8, p5

    move/from16 v9, p6

    invoke-interface/range {v0 .. v9}, Lcom/sec/terrace/ui/base/TinEventForwarder$Natives;->scrollBy(JLcom/sec/terrace/ui/base/TinEventForwarder;JFFFF)V

    return-void
.end method

.method public scrollEnd(J)V
    .locals 7

    iget-wide v0, p0, Lorg/chromium/ui/base/EventForwarder;->mNativeEventForwarder:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/terrace/ui/base/TinEventForwarderJni;->get()Lcom/sec/terrace/ui/base/TinEventForwarder$Natives;

    move-result-object v1

    iget-wide v2, p0, Lorg/chromium/ui/base/EventForwarder;->mNativeEventForwarder:J

    move-object v4, p0

    move-wide v5, p1

    invoke-interface/range {v1 .. v6}, Lcom/sec/terrace/ui/base/TinEventForwarder$Natives;->scrollEnd(JLcom/sec/terrace/ui/base/TinEventForwarder;J)V

    return-void
.end method

.method public sendNativeMouseEvent(Landroid/view/MotionEvent;)Z
    .locals 19

    move-object/from16 v3, p0

    move-object/from16 v6, p1

    iget-wide v0, v3, Lorg/chromium/ui/base/EventForwarder;->mNativeEventForwarder:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    const/4 v13, 0x0

    if-nez v0, :cond_0

    return v13

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v17

    if-nez v17, :cond_1

    invoke-virtual {v6, v13}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    const/4 v15, 0x1

    if-ne v0, v15, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-static {}, Lorg/chromium/ui/base/EventForwarderJni;->get()Lorg/chromium/ui/base/EventForwarder$Natives;

    move-result-object v0

    iget-wide v1, v3, Lorg/chromium/ui/base/EventForwarder;->mNativeEventForwarder:J

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {v6, v13}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    invoke-virtual {v6, v13}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v10

    invoke-virtual {v6, v13}, Landroid/view/MotionEvent;->getOrientation(I)F

    move-result v11

    const/16 v12, 0x19

    invoke-virtual {v6, v12, v13}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v16

    move/from16 v18, v15

    move/from16 v15, v16

    invoke-virtual {v6, v13}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v16

    const/4 v13, 0x2

    move-object/from16 v3, p0

    move/from16 v6, v17

    invoke-interface/range {v0 .. v16}, Lorg/chromium/ui/base/EventForwarder$Natives;->onMouseEvent(JLorg/chromium/ui/base/EventForwarder;JIFFIFFFIIII)V

    return v18

    :cond_1
    invoke-super/range {p0 .. p1}, Lorg/chromium/ui/base/EventForwarder;->sendNativeMouseEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setEventDelegate(Lcom/sec/terrace/ui/base/TinEventForwarder$TinInternalAccessDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/ui/base/TinEventForwarder;->mInternalAccessDelegate:Lcom/sec/terrace/ui/base/TinEventForwarder$TinInternalAccessDelegate;

    return-void
.end method
