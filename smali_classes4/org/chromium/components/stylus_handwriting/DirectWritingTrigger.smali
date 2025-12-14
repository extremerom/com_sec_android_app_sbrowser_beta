.class Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/content_public/browser/StylusWritingHandler;
.implements Lorg/chromium/components/stylus_handwriting/StylusApiOption;


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private mBinder:Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;

.field private mCallback:Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;

.field private mConfig:Lorg/chromium/components/stylus_handwriting/DirectWritingServiceConfiguration;

.field private mCurrentStylusDownEvent:Landroid/view/MotionEvent;

.field private mDwServiceEnabled:Z

.field private mEditableNodeBounds:Landroid/graphics/Rect;

.field private final mHandler:Landroid/os/Handler;

.field private mHideDwToolbarCallbackToken:Ljava/lang/Object;

.field private mIsHandwritingIconShowing:Z

.field private mNeedsFocusedNodeChangedAfterTouchUp:Z

.field private mRecognitionStarted:Z

.field private mStopWritingCallbackToken:Ljava/lang/Object;

.field private mStylusUpEvent:Landroid/view/MotionEvent;

.field private mStylusWritingDetected:Z

.field private mStylusWritingImeCallback:Lorg/chromium/content_public/browser/StylusWritingImeCallback;

.field private mWasButtonPressed:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;

    invoke-direct {v0}, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;-><init>()V

    iput-object v0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mBinder:Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;

    new-instance v0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceConfiguration;

    invoke-direct {v0}, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceConfiguration;-><init>()V

    iput-object v0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mConfig:Lorg/chromium/components/stylus_handwriting/DirectWritingServiceConfiguration;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->lambda$handlePenEvent$0()V

    return-void
.end method

.method public static synthetic b(Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->lambda$handlePenEvent$1(Landroid/view/View;)V

    return-void
.end method

.method private bindDirectWritingService(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mBinder:Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v1, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger$2;

    invoke-direct {v1, p0}, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger$2;-><init>(Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;)V

    invoke-virtual {v0, p1, v1}, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;->bindService(Landroid/content/Context;Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder$DirectWritingTriggerCallback;)V

    return-void
.end method

.method public static bridge synthetic c(Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;)Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mBinder:Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;

    return-object p0
.end method

.method public static bridge synthetic d(Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;)Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mCallback:Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;

    return-object p0
.end method

.method public static bridge synthetic e(Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;)Lorg/chromium/components/stylus_handwriting/DirectWritingServiceConfiguration;
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mConfig:Lorg/chromium/components/stylus_handwriting/DirectWritingServiceConfiguration;

    return-object p0
.end method

.method public static bridge synthetic f(Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mEditableNodeBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static bridge synthetic g(Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mIsHandwritingIconShowing:Z

    return p0
.end method

.method public static bridge synthetic h(Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;)Lorg/chromium/content_public/browser/StylusWritingImeCallback;
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mStylusWritingImeCallback:Lorg/chromium/content_public/browser/StylusWritingImeCallback;

    return-object p0
.end method

.method private handleButtonEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    iput-boolean v1, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mWasButtonPressed:Z

    :cond_0
    return v1

    :cond_1
    iget-boolean v0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mWasButtonPressed:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_2

    iput-boolean v2, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mWasButtonPressed:Z

    :cond_2
    return v1

    :cond_3
    return v2
.end method

.method private handlePenEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 6
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_9

    if-eq v0, v2, :cond_6

    const/4 v4, 0x2

    if-eq v0, v4, :cond_4

    const/16 p1, 0x9

    if-eq v0, p1, :cond_2

    const/16 p1, 0xa

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v3, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mIsHandwritingIconShowing:Z

    iget-boolean p1, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mRecognitionStarted:Z

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mHideDwToolbarCallbackToken:Ljava/lang/Object;

    iget-object v0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mHandler:Landroid/os/Handler;

    new-instance v1, Lorg/chromium/components/stylus_handwriting/b;

    invoke-direct {v1, p0, p2}, Lorg/chromium/components/stylus_handwriting/b;-><init>(Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;Landroid/view/View;)V

    iget-object p0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mConfig:Lorg/chromium/components/stylus_handwriting/DirectWritingServiceConfiguration;

    invoke-virtual {p0}, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceConfiguration;->getHideDwToolbarDelayMs()J

    move-result-wide v4

    invoke-virtual {v0, v1, p1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mHideDwToolbarCallbackToken:Ljava/lang/Object;

    if-eqz p1, :cond_3

    iget-object p2, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mHideDwToolbarCallbackToken:Ljava/lang/Object;

    :cond_3
    :goto_0
    return v3

    :cond_4
    iget-boolean v0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mRecognitionStarted:Z

    if-eqz v0, :cond_5

    invoke-direct {p0, p1, p2}, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->onDispatchEvent(Landroid/view/MotionEvent;Landroid/view/View;)V

    return v2

    :cond_5
    return v3

    :cond_6
    iget-boolean v0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mRecognitionStarted:Z

    if-eqz v0, :cond_7

    invoke-direct {p0, p1, p2}, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->onDispatchEvent(Landroid/view/MotionEvent;Landroid/view/View;)V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mStopWritingCallbackToken:Ljava/lang/Object;

    iget-object p2, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mHandler:Landroid/os/Handler;

    new-instance v0, Lorg/chromium/components/stylus_handwriting/a;

    invoke-direct {v0, p0}, Lorg/chromium/components/stylus_handwriting/a;-><init>(Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;)V

    iget-object p0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mConfig:Lorg/chromium/components/stylus_handwriting/DirectWritingServiceConfiguration;

    invoke-virtual {p0}, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceConfiguration;->getKeepWritingDelayMs()J

    move-result-wide v3

    invoke-virtual {p2, v0, p1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    return v2

    :cond_7
    iget-object v0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mEditableNodeBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mCurrentStylusDownEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_8

    iget-object v1, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mEditableNodeBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iget-object v4, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mCurrentStylusDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v1, v0, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mEditableNodeBounds:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v0, p2}, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->onStopRecognition(Landroid/view/MotionEvent;Landroid/graphics/Rect;Landroid/view/View;)V

    goto :goto_1

    :cond_8
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mStylusUpEvent:Landroid/view/MotionEvent;

    iput-boolean v2, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mNeedsFocusedNodeChangedAfterTouchUp:Z

    :goto_1
    return v3

    :cond_9
    iget-object v0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mHideDwToolbarCallbackToken:Ljava/lang/Object;

    if-eqz v0, :cond_a

    iget-object v4, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mHideDwToolbarCallbackToken:Ljava/lang/Object;

    :cond_a
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mCurrentStylusDownEvent:Landroid/view/MotionEvent;

    iput-boolean v3, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mNeedsFocusedNodeChangedAfterTouchUp:Z

    iget-object v0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mStopWritingCallbackToken:Ljava/lang/Object;

    if-eqz v0, :cond_b

    iget-object v3, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mStopWritingCallbackToken:Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->onDispatchEvent(Landroid/view/MotionEvent;Landroid/view/View;)V

    return v2

    :cond_b
    iput-boolean v3, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mStylusWritingDetected:Z

    iput-boolean v3, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mRecognitionStarted:Z

    return v3
.end method

.method private hideDwToolbar()V
    .locals 1

    iget-boolean v0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mDwServiceEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mBinder:Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;

    invoke-virtual {p0}, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;->hideDwToolbar()V

    return-void
.end method

.method private isDirectWritingServiceEnabled(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p1}, Lorg/chromium/components/stylus_handwriting/DirectWritingSettingsHelper;->isEnabled(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$handlePenEvent$0()V
    .locals 1

    invoke-direct {p0}, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->resetRecognition()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mStopWritingCallbackToken:Ljava/lang/Object;

    return-void
.end method

.method private synthetic lambda$handlePenEvent$1(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, p1}, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->onStopRecognition(Landroid/view/MotionEvent;Landroid/graphics/Rect;Landroid/view/View;)V

    iput-object v0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mHideDwToolbarCallbackToken:Ljava/lang/Object;

    return-void
.end method

.method private onDispatchEvent(Landroid/view/MotionEvent;Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mBinder:Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;

    invoke-virtual {p0, p1, p2}, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;->onDispatchEvent(Landroid/view/MotionEvent;Landroid/view/View;)V

    return-void
.end method

.method private onDwServiceEnabled()V
    .locals 2

    iget-object v0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mCallback:Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;

    invoke-direct {v0}, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;-><init>()V

    iput-object v0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mCallback:Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;

    new-instance v1, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger$1;

    invoke-direct {v1, p0}, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger$1;-><init>(Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;)V

    invoke-virtual {v0, v1}, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;->setTriggerCallback(Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback$TriggerCallback;)V

    return-void
.end method

.method private onStopRecognition(Landroid/view/MotionEvent;Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mStylusWritingImeCallback:Lorg/chromium/content_public/browser/StylusWritingImeCallback;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lorg/chromium/content_public/browser/StylusWritingImeCallback;->getContainerView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->onStopRecognition(Landroid/view/MotionEvent;Landroid/graphics/Rect;Landroid/view/View;)V

    return-void
.end method

.method private onStopRecognition(Landroid/view/MotionEvent;Landroid/graphics/Rect;Landroid/view/View;)V
    .locals 1

    iget-boolean v0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mDwServiceEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mBinder:Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;

    invoke-virtual {v0, p1, p2, p3}, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;->onStopRecognition(Landroid/view/MotionEvent;Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-direct {p0}, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->resetRecognition()V

    return-void
.end method

.method private resetRecognition()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mRecognitionStarted:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mCurrentStylusDownEvent:Landroid/view/MotionEvent;

    iput-object v0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mStylusUpEvent:Landroid/view/MotionEvent;

    return-void
.end method

.method private startRecognition(Landroid/graphics/Rect;)V
    .locals 3

    iget-object v0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mCurrentStylusDownEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mStylusWritingImeCallback:Lorg/chromium/content_public/browser/StylusWritingImeCallback;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/chromium/content_public/browser/StylusWritingImeCallback;->getContainerView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mBinder:Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;

    iget-object v2, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mCurrentStylusDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1, p1, v2, v0}, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;->startRecognition(Landroid/graphics/Rect;Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mRecognitionStarted:Z

    iget-object p1, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mCurrentStylusDownEvent:Landroid/view/MotionEvent;

    invoke-direct {p0, p1, v0}, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->onDispatchEvent(Landroid/view/MotionEvent;Landroid/view/View;)V

    iget-object p0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mStylusWritingImeCallback:Lorg/chromium/content_public/browser/StylusWritingImeCallback;

    invoke-interface {p0}, Lorg/chromium/content_public/browser/StylusWritingImeCallback;->resetGestureDetection()V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateDwServiceStatus(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->isDirectWritingServiceEnabled(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mDwServiceEnabled:Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "updateDwServiceStatus() : isEnabled = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mDwServiceEnabled:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DwTrigger"

    invoke-static {p1, p0}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public canShowSoftKeyboard()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getServiceCallback()Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mCallback:Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;

    return-object p0
.end method

.method public getStylusPointerIcon()I
    .locals 0

    const/16 p0, 0x4e38

    return p0
.end method

.method public getStylusWritingImeCallbackForTest()Lorg/chromium/content_public/browser/StylusWritingImeCallback;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mStylusWritingImeCallback:Lorg/chromium/content_public/browser/StylusWritingImeCallback;

    return-object p0
.end method

.method public handleHoverEvent(Landroid/view/MotionEvent;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    iget-boolean v0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mDwServiceEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mBinder:Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;

    invoke-virtual {v0}, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;->isServiceConnected()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_2

    invoke-direct {p0, p2}, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->bindDirectWritingService(Landroid/view/View;)V

    :cond_2
    invoke-direct {p0, p1, p2}, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->handlePenEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    return-void
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 3
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    iget-boolean v0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mDwServiceEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->handleButtonEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-nez p1, :cond_3

    invoke-direct {p0}, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->hideDwToolbar()V

    :cond_3
    return v1

    :cond_4
    :goto_0
    invoke-direct {p0, p1, p2}, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->handlePenEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public hideHandwritingToolbar()V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->hideDwToolbar()V

    return-void
.end method

.method public onDetachedFromWindow(Landroid/content/Context;)V
    .locals 1

    iget-boolean v0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mDwServiceEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mBinder:Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;

    invoke-virtual {v0}, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;->isServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mBinder:Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;

    invoke-virtual {p0, p1}, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;->unbindService(Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onEditElementFocusedForStylusWriting(Landroid/graphics/Rect;Landroid/graphics/Point;FILandroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_0

    return-void

    :cond_0
    iget-boolean p3, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mStylusWritingDetected:Z

    if-eqz p3, :cond_2

    iget-object p3, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mStylusWritingImeCallback:Lorg/chromium/content_public/browser/StylusWritingImeCallback;

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    invoke-virtual {p1, p3, p4}, Landroid/graphics/Rect;->offset(II)V

    const/4 p4, 0x1

    invoke-static {p4}, Lorg/chromium/components/stylus_handwriting/StylusApiOption;->recordStylusHandwritingTriggered(I)V

    invoke-direct {p0, p1}, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->startRecognition(Landroid/graphics/Rect;)V

    iget-object p4, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mCallback:Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;

    invoke-static {p4}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p4, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mCallback:Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;

    invoke-virtual {p4, p1, p2}, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;->updateEditableBounds(Landroid/graphics/Rect;Landroid/graphics/Point;)V

    iget-object p0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mBinder:Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;

    invoke-virtual {p0, p1, p5, p3}, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;->updateEditableBounds(Landroid/graphics/Rect;Landroid/view/View;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onFocusChanged(Z)V
    .locals 0

    if-nez p1, :cond_0

    invoke-direct {p0}, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->hideDwToolbar()V

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1}, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->onStopRecognition(Landroid/view/MotionEvent;Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public onFocusedNodeChanged(Landroid/graphics/Rect;ZLandroid/view/View;FI)V
    .locals 4

    iget-boolean v0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mDwServiceEnabled:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mBinder:Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;

    invoke-virtual {v0}, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;->isServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    mul-float/2addr v1, p4

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    mul-float/2addr v2, p4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    mul-float/2addr v3, p4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    mul-float/2addr p1, p4

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-direct {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1, p5}, Landroid/graphics/Rect;->offset(II)V

    if-eqz p2, :cond_1

    iget-boolean p2, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mStylusWritingDetected:Z

    if-nez p2, :cond_2

    iget-boolean p2, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mNeedsFocusedNodeChangedAfterTouchUp:Z

    if-eqz p2, :cond_2

    iget-object p2, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mStylusUpEvent:Landroid/view/MotionEvent;

    if-eqz p2, :cond_2

    iget-object p2, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mBinder:Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;

    const/4 p4, 0x1

    invoke-virtual {p2, v0, p3, p4}, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;->updateEditableBounds(Landroid/graphics/Rect;Landroid/view/View;Z)V

    iget-object p2, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mStylusUpEvent:Landroid/view/MotionEvent;

    invoke-direct {p0, p2, v0, p3}, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->onStopRecognition(Landroid/view/MotionEvent;Landroid/graphics/Rect;Landroid/view/View;)V

    iput-boolean p1, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mNeedsFocusedNodeChangedAfterTouchUp:Z

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->hideDwToolbar()V

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1, p3}, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->onStopRecognition(Landroid/view/MotionEvent;Landroid/graphics/Rect;Landroid/view/View;)V

    :cond_2
    :goto_0
    iput-object v0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mEditableNodeBounds:Landroid/graphics/Rect;

    iget-object p1, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mCallback:Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;

    invoke-static {p1}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mCallback:Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0, v0, p1}, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;->updateEditableBounds(Landroid/graphics/Rect;Landroid/graphics/Point;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onImeAdapterDestroyed()V
    .locals 1

    iget-object v0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mCallback:Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mStylusWritingImeCallback:Lorg/chromium/content_public/browser/StylusWritingImeCallback;

    iget-object p0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mCallback:Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;

    invoke-virtual {p0, v0}, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;->setImeCallback(Lorg/chromium/content_public/browser/StylusWritingImeCallback;)V

    return-void
.end method

.method public onWebContentsChanged(Landroid/content/Context;Lorg/chromium/content_public/browser/WebContents;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->updateDwSettings(Landroid/content/Context;)V

    invoke-interface {p2, p0}, Lorg/chromium/content_public/browser/WebContents;->setStylusWritingHandler(Lorg/chromium/content_public/browser/StylusWritingHandler;)V

    invoke-interface {p2}, Lorg/chromium/content_public/browser/WebContents;->getStylusWritingImeCallback()Lorg/chromium/content_public/browser/StylusWritingImeCallback;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mStylusWritingImeCallback:Lorg/chromium/content_public/browser/StylusWritingImeCallback;

    iget-object p1, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mCallback:Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;

    invoke-static {p1}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mCallback:Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;

    iget-object p0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mStylusWritingImeCallback:Lorg/chromium/content_public/browser/StylusWritingImeCallback;

    invoke-virtual {p1, p0}, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;->setImeCallback(Lorg/chromium/content_public/browser/StylusWritingImeCallback;)V

    return-void
.end method

.method public shouldInitiateStylusWriting()Z
    .locals 1

    iget-boolean v0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mDwServiceEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mBinder:Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;

    invoke-virtual {v0}, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;->isServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mStylusWritingDetected:Z

    return v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public stylusWritingDetected()Z
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-boolean p0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mStylusWritingDetected:Z

    return p0
.end method

.method public updateDwSettings(Landroid/content/Context;)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-boolean v0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mDwServiceEnabled:Z

    invoke-direct {p0, p1}, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->updateDwServiceStatus(Landroid/content/Context;)V

    if-nez v0, :cond_0

    iget-boolean p1, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mDwServiceEnabled:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->onDwServiceEnabled()V

    :cond_0
    return-void
.end method

.method public updateEditorInfo(Landroid/view/inputmethod/EditorInfo;)V
    .locals 1

    iget-boolean v0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mDwServiceEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mBinder:Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;

    invoke-virtual {v0}, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;->isServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mCallback:Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mCallback:Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;

    invoke-virtual {v0, p1}, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;->updateEditorInfo(Landroid/view/inputmethod/EditorInfo;)V

    iget-object p0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mBinder:Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;

    invoke-virtual {p0, p1}, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;->updateEditorInfo(Landroid/view/inputmethod/EditorInfo;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateHandlerState(Landroid/content/Context;Z)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->updateDwSettings(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->hideDwToolbar()V

    :goto_0
    iget-boolean v0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mDwServiceEnabled:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mBinder:Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;

    invoke-virtual {p0, p1, p2}, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;->handleWindowFocusChanged(Landroid/content/Context;Z)V

    return-void
.end method

.method public updateInputState(Ljava/lang/String;II)V
    .locals 1

    iget-boolean v0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mDwServiceEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mBinder:Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;

    invoke-virtual {v0}, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceBinder;->isServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mCallback:Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lorg/chromium/components/stylus_handwriting/DirectWritingTrigger;->mCallback:Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;

    invoke-virtual {p0, p1, p2, p3}, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;->updateInputState(Ljava/lang/String;II)V

    :cond_1
    :goto_0
    return-void
.end method
