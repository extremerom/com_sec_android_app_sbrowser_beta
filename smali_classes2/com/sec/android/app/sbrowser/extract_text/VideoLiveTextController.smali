.class public Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController$TextRecognizerListener;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mInflatedViewForLiveText:Landroid/view/View;

.field private mIsTextRecognized:Z

.field private mLiveTextView:Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;

.field private final mParent:Landroid/view/ViewGroup;

.field private mTextRecognizerListener:Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController$TextRecognizerListener;

.field private mVideoLiveTextModel:Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;

.field private mVisionTextDrawHelper:Lcom/samsung/android/app/sdk/deepsky/textextraction/selectionui/TextExtractionDrawHelper;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;->mParent:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;)Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;->mLiveTextView:Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;)Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController$TextRecognizerListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;->mTextRecognizerListener:Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController$TextRecognizerListener;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;)Lcom/samsung/android/app/sdk/deepsky/textextraction/selectionui/TextExtractionDrawHelper;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;->mVisionTextDrawHelper:Lcom/samsung/android/app/sdk/deepsky/textextraction/selectionui/TextExtractionDrawHelper;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;->mIsTextRecognized:Z

    return-void
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;Lcom/samsung/android/app/sdk/deepsky/textextraction/selectionui/TextExtractionDrawHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;->mVisionTextDrawHelper:Lcom/samsung/android/app/sdk/deepsky/textextraction/selectionui/TextExtractionDrawHelper;

    return-void
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;->onNothingRecognized(Z)V

    return-void
.end method

.method private isClientViewInflated()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;->mInflatedViewForLiveText:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private onNothingRecognized(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;->mTextRecognizerListener:Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController$TextRecognizerListener;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController$TextRecognizerListener;->onTextRecognizerResultReceived(Ljava/lang/Boolean;)V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;->clearRecognitionInfo()V

    return-void
.end method

.method private startSelectionByButton()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;->mLiveTextView:Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;->mLiveTextView:Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;->mLiveTextView:Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;->setDim(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;->mLiveTextView:Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;->startSelectionByButton()Z

    return-void
.end method


# virtual methods
.method public clearRecognitionInfo()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;->mIsTextRecognized:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;->setInvisibleForLiveTextView()Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/LiveTextUtil;->releaseVisionText()V

    return-void
.end method

.method public exitLiveTextView()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;->clearRecognitionInfo()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;->isClientViewInflated()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;->mLiveTextView:Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;->hideMessage()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;->mLiveTextView:Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;->clearClientViewIfVisible()V

    const-string v0, "VideoLiveTextController"

    const-string v1, "[Video Live Text] removeClientView : remove inflated view"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;->mParent:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;->mInflatedViewForLiveText:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;->mTextRecognizerListener:Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController$TextRecognizerListener;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;->mVideoLiveTextModel:Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;->stopRecognizeIfInProgress()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;->mVideoLiveTextModel:Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;

    :cond_2
    return-void
.end method

.method public isLiveTextViewVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;->mLiveTextView:Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTextRecognized()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;->mIsTextRecognized:Z

    return p0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;->mLiveTextView:Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;->mLiveTextView:Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;->mLiveTextView:Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;->mLiveTextView:Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;->onTouchEventForVideo(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public performTScanClick()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;->setInvisibleForLiveTextView()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;->startSelectionByButton()V

    :cond_0
    return-void
.end method

.method public setInvisibleForLiveTextView()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;->mLiveTextView:Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;->mLiveTextView:Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;->hideMessage()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;->mLiveTextView:Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;->clearSelection()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;->mLiveTextView:Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;->setDim(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;->mLiveTextView:Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public setTextRecognizerListener(Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController$TextRecognizerListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;->mTextRecognizerListener:Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController$TextRecognizerListener;

    return-void
.end method

.method public startRecognize(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Z)V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;->isClientViewInflated()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f0e090a

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;->mInflatedViewForLiveText:Landroid/view/View;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;->mInflatedViewForLiveText:Landroid/view/View;

    const v3, 0x7f0b0e2d

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;->mLiveTextView:Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;

    if-nez v0, :cond_0

    const-string p0, "VideoLiveTextController"

    const-string p1, "[Video Live Text] VisionTextCustomView is null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;->mLiveTextView:Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    :cond_1
    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;->mIsTextRecognized:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;->mVideoLiveTextModel:Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;->stopRecognizeIfInProgress()V

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;->mVideoLiveTextModel:Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;

    new-instance v0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController$1;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController$1;-><init>(Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;Landroid/graphics/Bitmap;ZLandroid/graphics/Rect;)V

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;->setVideoLiveTextControllerDelegate(Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel$VideoLiveTextControllerDelegate;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;->mVideoLiveTextModel:Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;->startRecognize()V

    return-void
.end method

.method public startTextSelectionByLongClick(FF)Z
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;->mLiveTextView:Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;->mLiveTextView:Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;

    invoke-virtual {v0, p1, p2, v2}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;->performTextSelection(FFZ)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "[Video Live Text] selectedText :"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;->mLiveTextView:Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;->getSelectedText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "VideoLiveTextController"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;->mLiveTextView:Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;->mLiveTextView:Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;->mLiveTextView:Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;->setDim(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;->mLiveTextView:Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;

    invoke-virtual {p0, p1, p2, v1}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;->performTextSelection(FFZ)Z

    move v1, v2

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;->mLiveTextView:Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;

    invoke-virtual {p0, p1, p2, v2}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;->performTextSelection(FFZ)Z

    move-result v1

    :cond_2
    :goto_0
    return v1
.end method

.method public stopRecognize()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;->mVideoLiveTextModel:Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextModel;->stopRecognizeIfInProgress()V

    :cond_0
    return-void
.end method
