.class public Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/extract_text/LiveTextView$GestureListener;,
        Lcom/sec/android/app/sbrowser/extract_text/LiveTextView$LiveTextControllerDelegate;,
        Lcom/sec/android/app/sbrowser/extract_text/LiveTextView$OriginType;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mGestureDetector:Lf1/j;

.field private mGuideMessageSnackbar:LH6/o;

.field private mIsScrollInProgress:Z

.field private mLiveTextControllerDelegate:Lcom/sec/android/app/sbrowser/extract_text/LiveTextView$LiveTextControllerDelegate;

.field private mShouldApplyDim:Z

.field private mShouldConsumeTouchEvent:Z

.field private mVisionTextDrawHelper:Lcom/samsung/android/app/sdk/deepsky/textextraction/selectionui/TextExtractionDrawHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p2    # Landroid/util/AttributeSet;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;->mContext:Landroid/content/Context;

    new-instance p2, Lf1/j;

    new-instance v0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView$GestureListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView$GestureListener;-><init>(Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;I)V

    invoke-direct {p2, p1, v0}, Lf1/j;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;->mGestureDetector:Lf1/j;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;->lambda$onTouchEvent$0()V

    return-void
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;)Lcom/sec/android/app/sbrowser/extract_text/LiveTextView$LiveTextControllerDelegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;->mLiveTextControllerDelegate:Lcom/sec/android/app/sbrowser/extract_text/LiveTextView$LiveTextControllerDelegate;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;)Lcom/samsung/android/app/sdk/deepsky/textextraction/selectionui/TextExtractionDrawHelper;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;->mVisionTextDrawHelper:Lcom/samsung/android/app/sdk/deepsky/textextraction/selectionui/TextExtractionDrawHelper;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;->mIsScrollInProgress:Z

    return-void
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;->isBrowserControlsVisible()Z

    move-result p0

    return p0
.end method

.method private isBrowserControlsVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;->mLiveTextControllerDelegate:Lcom/sec/android/app/sbrowser/extract_text/LiveTextView$LiveTextControllerDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView$LiveTextControllerDelegate;->getTopMargin()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;->mLiveTextControllerDelegate:Lcom/sec/android/app/sbrowser/extract_text/LiveTextView$LiveTextControllerDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView$LiveTextControllerDelegate;->getBottomMargin()I

    move-result p0

    if-lez p0, :cond_0

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

.method private synthetic lambda$onTouchEvent$0()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;->mLiveTextControllerDelegate:Lcom/sec/android/app/sbrowser/extract_text/LiveTextView$LiveTextControllerDelegate;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView$LiveTextControllerDelegate;->requestUpdatedElementRect()V

    :cond_0
    return-void
.end method

.method private showGuideMessage(Landroid/content/Context;I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;->mLiveTextControllerDelegate:Lcom/sec/android/app/sbrowser/extract_text/LiveTextView$LiveTextControllerDelegate;

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/common/utils/SnackbarUtil;->make(Landroid/app/Activity;Ljava/lang/CharSequence;)LH6/o;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;->mGuideMessageSnackbar:LH6/o;

    iget-object p1, p1, LH6/m;->i:LH6/l;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v0, 0x31

    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;->mLiveTextControllerDelegate:Lcom/sec/android/app/sbrowser/extract_text/LiveTextView$LiveTextControllerDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView$LiveTextControllerDelegate;->getTopMargin()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07058c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {p1, p2}, LH6/l;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;->mGuideMessageSnackbar:LH6/o;

    invoke-virtual {p0}, LH6/o;->l()V

    return-void
.end method


# virtual methods
.method public clearClientViewIfVisible()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;->clearSelection()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;->mLiveTextControllerDelegate:Lcom/sec/android/app/sbrowser/extract_text/LiveTextView$LiveTextControllerDelegate;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView$LiveTextControllerDelegate;->clearExtractTextInfo()V

    :cond_1
    return-void
.end method

.method public clearSelection()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;->mVisionTextDrawHelper:Lcom/samsung/android/app/sdk/deepsky/textextraction/selectionui/TextExtractionDrawHelper;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/samsung/android/app/sdk/deepsky/textextraction/selectionui/TextExtractionDrawHelper;->clearAllSelection()V

    :cond_0
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;->mVisionTextDrawHelper:Lcom/samsung/android/app/sdk/deepsky/textextraction/selectionui/TextExtractionDrawHelper;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;->mShouldApplyDim:Z

    if-nez v1, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/selectionui/TextExtractionDrawHelper;->drawSelection(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    const/16 v0, 0x7d

    const/4 v1, 0x0

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;->mLiveTextControllerDelegate:Lcom/sec/android/app/sbrowser/extract_text/LiveTextView$LiveTextControllerDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView$LiveTextControllerDelegate;->getVisibleViewRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v1

    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v1

    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v5, v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getSelectedText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;->mVisionTextDrawHelper:Lcom/samsung/android/app/sdk/deepsky/textextraction/selectionui/TextExtractionDrawHelper;

    if-nez p0, :cond_0

    const-string p0, "empty"

    return-object p0

    :cond_0
    invoke-interface {p0}, Lcom/samsung/android/app/sdk/deepsky/textextraction/selectionui/TextExtractionDrawHelper;->getSelectedText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hideMessage()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;->mGuideMessageSnackbar:LH6/o;

    if-eqz v0, :cond_0

    invoke-static {}, Lo3/n;->u()Lo3/n;

    move-result-object v1

    iget-object v0, v0, LH6/m;->u:LH6/j;

    iget-object v2, v1, Lo3/n;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {v1, v0}, Lo3/n;->v(LH6/j;)Z

    move-result v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;->mGuideMessageSnackbar:LH6/o;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, LH6/m;->b(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;->mGuideMessageSnackbar:LH6/o;

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method public initialize(Lcom/samsung/android/app/sdk/deepsky/textextraction/selectionui/TextExtractionDrawHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;->mVisionTextDrawHelper:Lcom/samsung/android/app/sdk/deepsky/textextraction/selectionui/TextExtractionDrawHelper;

    invoke-interface {p1, p0}, Lcom/samsung/android/app/sdk/deepsky/textextraction/selectionui/TextExtractionDrawHelper;->init(Landroid/view/View;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;->mVisionTextDrawHelper:Lcom/samsung/android/app/sdk/deepsky/textextraction/selectionui/TextExtractionDrawHelper;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/selectionui/TextExtractionDrawHelper;->setMagnifierEnabled(Z)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;->mLiveTextControllerDelegate:Lcom/sec/android/app/sbrowser/extract_text/LiveTextView$LiveTextControllerDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView$LiveTextControllerDelegate;->origin()Lcom/sec/android/app/sbrowser/extract_text/LiveTextView$OriginType;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView$OriginType;->IMAGE:Lcom/sec/android/app/sbrowser/extract_text/LiveTextView$OriginType;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;->hideMessage()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;->clearClientViewIfVisible()V

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onContextMenuImageElementBoundsReceived(Landroid/graphics/Rect;)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;->mShouldApplyDim:Z

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;->clearClientViewIfVisible()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;->mLiveTextControllerDelegate:Lcom/sec/android/app/sbrowser/extract_text/LiveTextView$LiveTextControllerDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView$LiveTextControllerDelegate;->getTopMargin()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;->mVisionTextDrawHelper:Lcom/samsung/android/app/sdk/deepsky/textextraction/selectionui/TextExtractionDrawHelper;

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/selectionui/TextExtractionDrawHelper;->updateTextSelection(Landroid/graphics/RectF;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;->mVisionTextDrawHelper:Lcom/samsung/android/app/sdk/deepsky/textextraction/selectionui/TextExtractionDrawHelper;

    invoke-interface {p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/selectionui/TextExtractionDrawHelper;->isTextSelected()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;->mVisionTextDrawHelper:Lcom/samsung/android/app/sdk/deepsky/textextraction/selectionui/TextExtractionDrawHelper;

    invoke-interface {p0}, Lcom/samsung/android/app/sdk/deepsky/textextraction/selectionui/TextExtractionDrawHelper;->showPopupMenu()V

    :cond_2
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onScrollStarted()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;->mIsScrollInProgress:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;->mShouldApplyDim:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;->mVisionTextDrawHelper:Lcom/samsung/android/app/sdk/deepsky/textextraction/selectionui/TextExtractionDrawHelper;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/samsung/android/app/sdk/deepsky/textextraction/selectionui/TextExtractionDrawHelper;->dismissPopupMenu()V

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[Video Live Text] onSingleTapConfirmed : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LiveTextView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;->performTextSelection(FFZ)Z

    move-result p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;->hideMessage()V

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v2, :cond_0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;->mShouldConsumeTouchEvent:Z

    if-eqz v0, :cond_3

    return v2

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;->mShouldConsumeTouchEvent:Z

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;->mShouldConsumeTouchEvent:Z

    return v2

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;->mLiveTextControllerDelegate:Lcom/sec/android/app/sbrowser/extract_text/LiveTextView$LiveTextControllerDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView$LiveTextControllerDelegate;->isProgressBarVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;->mShouldConsumeTouchEvent:Z

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;->hideMessage()V

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_4

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;->mIsScrollInProgress:Z

    if-eqz v0, :cond_4

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/sec/android/app/sbrowser/extract_text/c;

    const/4 v4, 0x1

    invoke-direct {v3, v4, p0}, Lcom/sec/android/app/sbrowser/extract_text/c;-><init>(ILjava/lang/Object;)V

    const-wide/16 v4, 0x32

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;->mIsScrollInProgress:Z

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;->mGestureDetector:Lf1/j;

    iget-object v0, v0, Lf1/j;->a:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;->mVisionTextDrawHelper:Lcom/samsung/android/app/sdk/deepsky/textextraction/selectionui/TextExtractionDrawHelper;

    if-eqz p0, :cond_5

    if-nez v0, :cond_5

    invoke-interface {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/selectionui/TextExtractionDrawHelper;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_5
    return v2
.end method

.method public onTouchEventForVideo(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;->mVisionTextDrawHelper:Lcom/samsung/android/app/sdk/deepsky/textextraction/selectionui/TextExtractionDrawHelper;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/selectionui/TextExtractionDrawHelper;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    const-string p1, "[Video Live Text] onTouchEventForVideo selected : "

    const-string v0, "LiveTextView"

    invoke-static {p1, v0, p0}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public performTextSelection(FFZ)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;->mVisionTextDrawHelper:Lcom/samsung/android/app/sdk/deepsky/textextraction/selectionui/TextExtractionDrawHelper;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/app/sdk/deepsky/textextraction/selectionui/TextExtractionDrawHelper;->startTextSelectionWithCoordinate(FFZ)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p3, :cond_1

    const-string p2, "8517"

    goto :goto_1

    :cond_1
    const-string p2, "8516"

    :goto_1
    iget-object p3, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;->mContext:Landroid/content/Context;

    instance-of v0, p3, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    if-eqz v0, :cond_2

    instance-of p3, p3, Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;->mLiveTextControllerDelegate:Lcom/sec/android/app/sbrowser/extract_text/LiveTextView$LiveTextControllerDelegate;

    invoke-interface {p3}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView$LiveTextControllerDelegate;->origin()Lcom/sec/android/app/sbrowser/extract_text/LiveTextView$OriginType;

    move-result-object p3

    sget-object v0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView$OriginType;->IMAGE:Lcom/sec/android/app/sbrowser/extract_text/LiveTextView$OriginType;

    if-ne p3, v0, :cond_2

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;->mContext:Landroid/content/Context;

    check-cast p0, Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;->getScreenID()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return p1
.end method

.method public setDim(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;->mVisionTextDrawHelper:Lcom/samsung/android/app/sdk/deepsky/textextraction/selectionui/TextExtractionDrawHelper;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/selectionui/TextExtractionDrawHelper;->setDimEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setLiveTextControllerDelegate(Lcom/sec/android/app/sbrowser/extract_text/LiveTextView$LiveTextControllerDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;->mLiveTextControllerDelegate:Lcom/sec/android/app/sbrowser/extract_text/LiveTextView$LiveTextControllerDelegate;

    return-void
.end method

.method public startSelectionByButton()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;->mVisionTextDrawHelper:Lcom/samsung/android/app/sdk/deepsky/textextraction/selectionui/TextExtractionDrawHelper;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/app/sdk/deepsky/textextraction/selectionui/TextExtractionDrawHelper;->startTextSelectionByButton()Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;->mContext:Landroid/content/Context;

    const v1, 0x7f1405cd

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;->showGuideMessage(Landroid/content/Context;I)V

    const/4 p0, 0x1

    return p0
.end method
