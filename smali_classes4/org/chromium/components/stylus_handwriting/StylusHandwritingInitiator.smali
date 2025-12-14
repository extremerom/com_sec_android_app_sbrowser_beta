.class Lorg/chromium/components/stylus_handwriting/StylusHandwritingInitiator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/stylus_handwriting/StylusHandwritingInitiator$StylusTouchData;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private final mHandwritingSlopPx:I

.field private final mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mStylusTouchData:Lorg/chromium/components/stylus_handwriting/StylusHandwritingInitiator$StylusTouchData;


# direct methods
.method public constructor <init>(Landroid/view/inputmethod/InputMethodManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/components/stylus_handwriting/StylusHandwritingInitiator;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Lorg/chromium/ui/base/ViewUtils;->dpToPx(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lorg/chromium/components/stylus_handwriting/StylusHandwritingInitiator;->mHandwritingSlopPx:I

    return-void
.end method

.method private clearStylusInfo()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/components/stylus_handwriting/StylusHandwritingInitiator;->mStylusTouchData:Lorg/chromium/components/stylus_handwriting/StylusHandwritingInitiator$StylusTouchData;

    return-void
.end method

.method private isStylusEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result p0

    const/4 p1, 0x2

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private largerThanSlop(FFFFI)Z
    .locals 0

    sub-float/2addr p1, p3

    sub-float/2addr p2, p4

    mul-float/2addr p1, p1

    mul-float/2addr p2, p2

    add-float/2addr p2, p1

    mul-int/2addr p5, p5

    int-to-float p0, p5

    cmpl-float p0, p2, p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private updateStylusInfoOnDownEvent(Landroid/view/MotionEvent;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    new-instance v1, Lorg/chromium/components/stylus_handwriting/StylusHandwritingInitiator$StylusTouchData;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-direct {v1, v2, v3, p1}, Lorg/chromium/components/stylus_handwriting/StylusHandwritingInitiator$StylusTouchData;-><init>(IFF)V

    iput-object v1, p0, Lorg/chromium/components/stylus_handwriting/StylusHandwritingInitiator;->mStylusTouchData:Lorg/chromium/components/stylus_handwriting/StylusHandwritingInitiator$StylusTouchData;

    return-void
.end method


# virtual methods
.method public isStylusHandwritingFeatureEnabled()Z
    .locals 0

    const-string p0, "UseHandwritingInitiator"

    invoke-static {p0}, Lorg/chromium/components/stylus_handwriting/StylusHandwritingFeatureMap;->isEnabled(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isViewWritable()Z
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 p0, 0x1

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 9

    invoke-virtual {p0}, Lorg/chromium/components/stylus_handwriting/StylusHandwritingInitiator;->isStylusHandwritingFeatureEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lorg/chromium/components/stylus_handwriting/StylusHandwritingInitiator;->isStylusEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lorg/chromium/components/stylus_handwriting/StylusHandwritingInitiator;->clearStylusInfo()V

    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v0

    iget-object v2, p0, Lorg/chromium/components/stylus_handwriting/StylusHandwritingInitiator;->mStylusTouchData:Lorg/chromium/components/stylus_handwriting/StylusHandwritingInitiator$StylusTouchData;

    if-eqz v2, :cond_2

    iget v2, v2, Lorg/chromium/components/stylus_handwriting/StylusHandwritingInitiator$StylusTouchData;->deviceId:I

    if-eq v2, v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_7

    const/4 v2, 0x1

    if-eq v0, v2, :cond_6

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 p2, 0x3

    if-eq v0, p2, :cond_6

    const/4 p2, 0x5

    if-eq v0, p2, :cond_7

    const/4 p1, 0x6

    if-eq v0, p1, :cond_6

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/chromium/components/stylus_handwriting/StylusHandwritingInitiator;->mStylusTouchData:Lorg/chromium/components/stylus_handwriting/StylusHandwritingInitiator$StylusTouchData;

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {p0}, Lorg/chromium/components/stylus_handwriting/StylusHandwritingInitiator;->isViewWritable()Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    iget-object p1, p0, Lorg/chromium/components/stylus_handwriting/StylusHandwritingInitiator;->mStylusTouchData:Lorg/chromium/components/stylus_handwriting/StylusHandwritingInitiator$StylusTouchData;

    iget v6, p1, Lorg/chromium/components/stylus_handwriting/StylusHandwritingInitiator$StylusTouchData;->stylusDownX:F

    iget v7, p1, Lorg/chromium/components/stylus_handwriting/StylusHandwritingInitiator$StylusTouchData;->stylusDownY:F

    iget v8, p0, Lorg/chromium/components/stylus_handwriting/StylusHandwritingInitiator;->mHandwritingSlopPx:I

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lorg/chromium/components/stylus_handwriting/StylusHandwritingInitiator;->largerThanSlop(FFFFI)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lorg/chromium/components/stylus_handwriting/StylusHandwritingInitiator;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {p1, p2}, Lorg/chromium/components/autofill/a;->k(Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;)V

    invoke-direct {p0}, Lorg/chromium/components/stylus_handwriting/StylusHandwritingInitiator;->clearStylusInfo()V

    return v2

    :cond_5
    return v1

    :cond_6
    invoke-direct {p0}, Lorg/chromium/components/stylus_handwriting/StylusHandwritingInitiator;->clearStylusInfo()V

    goto :goto_0

    :cond_7
    invoke-direct {p0, p1}, Lorg/chromium/components/stylus_handwriting/StylusHandwritingInitiator;->updateStylusInfoOnDownEvent(Landroid/view/MotionEvent;)V

    :goto_0
    return v1
.end method
