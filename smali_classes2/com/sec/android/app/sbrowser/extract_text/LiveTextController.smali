.class public Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/extract_text/LiveTextController$TextDetectionListener;,
        Lcom/sec/android/app/sbrowser/extract_text/LiveTextController$Delegate;
    }
.end annotation


# instance fields
.field private mBrowserControlsStateNeedsReset:Z

.field private final mContext:Landroid/content/Context;

.field private mContextMenuListener:Lcom/sec/android/app/sbrowser/extract_text/LiveTextController$TextDetectionListener;

.field private mDelegate:Lcom/sec/android/app/sbrowser/extract_text/LiveTextController$Delegate;

.field private mImageHiddenHeightBottom:I

.field private mImageHiddenHeightTop:I

.field private mInflatedViewForLiveText:Landroid/view/View;

.field private mIsBitmapReceived:Z

.field private mIsBitmapRecycleRequestReceived:Z

.field private mLiveTextInitializer:Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer;

.field private mLiveTextModel:Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;

.field private mLiveTextView:Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;

.field private mProgressBar:Landroidx/appcompat/widget/SeslProgressBar;

.field private final mTab:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mTab:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->lambda$initializeVisionTextAndStartDetection$0(Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;)Lcom/sec/android/app/sbrowser/extract_text/LiveTextController$TextDetectionListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mContextMenuListener:Lcom/sec/android/app/sbrowser/extract_text/LiveTextController$TextDetectionListener;

    return-object p0
.end method

.method public static createLiveTextController(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;
    .locals 1

    invoke-static {p0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/extract_text/ExtractTextHelper;->isVisionTextSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;-><init>(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;)Lcom/sec/android/app/sbrowser/extract_text/LiveTextController$Delegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mDelegate:Lcom/sec/android/app/sbrowser/extract_text/LiveTextController$Delegate;

    return-object p0
.end method

.method private deInitializeVisionText()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mLiveTextInitializer:Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer;->deInitializeVisionText()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mLiveTextInitializer:Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mLiveTextModel:Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;

    return-void
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mImageHiddenHeightBottom:I

    return p0
.end method

.method public static extractTextMenu(Lcom/sec/terrace/Terrace;)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getWebContainerView()Landroid/view/ViewGroup;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_2

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "board"

    const-string v3, "eagle_eye"

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "com.samsung.android.honeyboard.action.SHOW_BOARD"

    invoke-virtual {v0, p0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->sendAppPrivateCommand(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_2
    return-void
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mIsBitmapRecycleRequestReceived:Z

    return p0
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;)Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mLiveTextInitializer:Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer;

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;)Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mLiveTextView:Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;

    return-object p0
.end method

.method private hideProgressBar()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mProgressBar:Landroidx/appcompat/widget/SeslProgressBar;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mProgressBar:Landroidx/appcompat/widget/SeslProgressBar;

    return-void
.end method

.method public static bridge synthetic i(Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;)Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mTab:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    return-object p0
.end method

.method private isLiveTextViewVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mLiveTextView:Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;

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

.method private isProgressBarVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mProgressBar:Landroidx/appcompat/widget/SeslProgressBar;

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

.method public static bridge synthetic j(Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mIsBitmapRecycleRequestReceived:Z

    return-void
.end method

.method public static bridge synthetic k(Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->deInitializeVisionText()V

    return-void
.end method

.method public static bridge synthetic l(Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->hideProgressBar()V

    return-void
.end method

.method private synthetic lambda$initializeVisionTextAndStartDetection$0(Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mLiveTextModel:Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;->startDetection(Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;)V

    return-void
.end method

.method public static bridge synthetic m(Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->isProgressBarVisible()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic n(Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->removeClientView()V

    return-void
.end method

.method public static bridge synthetic o(Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->startSelectionByButton()V

    return-void
.end method

.method public static bridge synthetic p(Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->updateBrowserControlsIfNeeded(I)V

    return-void
.end method

.method private removeClientView()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mLiveTextView:Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;->hideMessage()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mLiveTextView:Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;->clearSelection()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->hideProgressBar()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mTab:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getView()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mInflatedViewForLiveText:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mLiveTextView:Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;

    const-string v0, "LiveTextController"

    const-string v1, "Removed inflated view"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->resetBrowserControlsStateIfNeeded()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mDelegate:Lcom/sec/android/app/sbrowser/extract_text/LiveTextController$Delegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController$Delegate;->onExtractTextEnded()V

    return-void
.end method

.method private resetBrowserControlsStateIfNeeded()V
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mBrowserControlsStateNeedsReset:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mTab:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->updateBrowserControlsState(IZ)V

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mBrowserControlsStateNeedsReset:Z

    return-void
.end method

.method private scrollImageIntoViewIfNeeded()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mTab:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mImageHiddenHeightBottom:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-lez v1, :cond_3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mDelegate:Lcom/sec/android/app/sbrowser/extract_text/LiveTextController$Delegate;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController$Delegate;->getBottomMargin()I

    move-result v4

    if-gt v1, v4, :cond_1

    invoke-direct {p0, v3}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->updateBrowserControlsIfNeeded(I)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/terrace/Terrace;->getContextMenuImageElementBounds()V

    :cond_0
    return-void

    :cond_1
    if-eqz v0, :cond_2

    iget v1, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mImageHiddenHeightBottom:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mDelegate:Lcom/sec/android/app/sbrowser/extract_text/LiveTextController$Delegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController$Delegate;->getTopMargin()I

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-virtual {v0, v2, p0}, Lcom/sec/terrace/Terrace;->scrollBy(II)V

    :cond_2
    return-void

    :cond_3
    iget v1, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mImageHiddenHeightTop:I

    if-lez v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mDelegate:Lcom/sec/android/app/sbrowser/extract_text/LiveTextController$Delegate;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController$Delegate;->getTopMargin()I

    move-result v1

    if-nez v1, :cond_4

    invoke-direct {p0, v3}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->updateBrowserControlsIfNeeded(I)V

    :cond_4
    if-eqz v0, :cond_5

    iget p0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mImageHiddenHeightTop:I

    neg-int p0, p0

    invoke-virtual {v0, v2, p0}, Lcom/sec/terrace/Terrace;->scrollBy(II)V

    :cond_5
    return-void
.end method

.method private setScrollDataIfRequired(Landroid/graphics/Rect;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mTab:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sec/terrace/Terrace;->getCurrentViewRect()Landroid/graphics/Rect;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mImageHiddenHeightBottom:I

    iput v1, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mImageHiddenHeightTop:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    if-lt v1, v2, :cond_4

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->right:I

    if-le v1, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-le v1, v2, :cond_2

    return-void

    :cond_2
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    if-ge v1, v2, :cond_3

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mImageHiddenHeightTop:I

    :cond_3
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-le p1, v0, :cond_4

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mImageHiddenHeightBottom:I

    :cond_4
    :goto_0
    return-void
.end method

.method private showProgressBar()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mProgressBar:Landroidx/appcompat/widget/SeslProgressBar;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mInflatedViewForLiveText:Landroid/view/View;

    const v1, 0x7f0b04f4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SeslProgressBar;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mProgressBar:Landroidx/appcompat/widget/SeslProgressBar;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mProgressBar:Landroidx/appcompat/widget/SeslProgressBar;

    const v1, 0x7f0804d2

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mProgressBar:Landroidx/appcompat/widget/SeslProgressBar;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private startSelectionByButton()V
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->scrollImageIntoViewIfNeeded()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mLiveTextView:Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mLiveTextView:Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;->setDim(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mLiveTextView:Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mLiveTextView:Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;->startSelectionByButton()Z

    move-result v0

    const-string v1, "Started Extract mode = "

    const-string v2, "LiveTextController"

    invoke-static {v1, v2, v0}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->didRemoveClientView()Z

    :cond_0
    return-void
.end method

.method private updateBrowserControlsIfNeeded(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mTab:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/terrace/Terrace;->getBrowserTopControlsState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mTab:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->updateBrowserControlsState(IZ)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mBrowserControlsStateNeedsReset:Z

    return-void
.end method


# virtual methods
.method public didRemoveClientView()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->isClientViewInflated()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->isLiveTextViewVisible()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->removeClientView()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mLiveTextModel:Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;->isExtractionInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mLiveTextModel:Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;->cancelExtraction()V

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->resetAndClearExtractTextInfo()V

    return v1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public handleConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->didRemoveClientView()Z

    return-void
.end method

.method public handleKeyEvent()Z
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->didRemoveClientView()Z

    move-result p0

    return p0
.end method

.method public handleWindowFocusChanged(Z)V
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->didRemoveClientView()Z

    :cond_0
    return-void
.end method

.method public initializeVisionTextAndStartDetection()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mLiveTextInitializer:Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mLiveTextInitializer:Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer;

    new-instance v1, Lcom/sec/android/app/sbrowser/extract_text/a;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/extract_text/a;-><init>(Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer;->initializeVisionText(Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer$RecognizerInitListener;)V

    return-void
.end method

.method public isBitMapReceived()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mIsBitmapReceived:Z

    return p0
.end method

.method public isClientViewInflated()Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mInflatedViewForLiveText:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mTab:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mTab:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getView()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mInflatedViewForLiveText:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

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

.method public onContextMenuImageElementBoundsReceived(Landroid/graphics/Rect;)V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->isLiveTextViewVisible()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mDelegate:Lcom/sec/android/app/sbrowser/extract_text/LiveTextController$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController$Delegate;->onExtractTextSuccess()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mLiveTextView:Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;->onContextMenuImageElementBoundsReceived(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onCurrentTabChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->didRemoveClientView()Z

    return-void
.end method

.method public onScrollEnded()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->isLiveTextViewVisible()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mImageHiddenHeightBottom:I

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mImageHiddenHeightTop:I

    if-gtz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mTab:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/terrace/Terrace;->getContextMenuImageElementBounds()V

    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mImageHiddenHeightBottom:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mImageHiddenHeightTop:I

    return-void
.end method

.method public onScrollStarted()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->isLiveTextViewVisible()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mLiveTextView:Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;->onScrollStarted()V

    return-void
.end method

.method public prepareAndStartProgressBar()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mLiveTextView:Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController$2;-><init>(Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;->setLiveTextControllerDelegate(Lcom/sec/android/app/sbrowser/extract_text/LiveTextView$LiveTextControllerDelegate;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mDelegate:Lcom/sec/android/app/sbrowser/extract_text/LiveTextController$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController$Delegate;->onExtractTextStarted()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mLiveTextView:Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;->setDim(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mLiveTextView:Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->showProgressBar()V

    return-void
.end method

.method public prepareForExtractTextOnImage(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V
    .locals 5
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->isClientViewInflated()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mTab:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getView()Landroid/view/ViewGroup;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x7f0e090a

    invoke-virtual {v0, v4, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mInflatedViewForLiveText:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mTab:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getView()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mInflatedViewForLiveText:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mInflatedViewForLiveText:Landroid/view/View;

    const v2, 0x7f0b0e2d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mLiveTextView:Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;

    if-nez v0, :cond_0

    const-string p0, "LiveTextController"

    const-string p1, "VisionTextCustomView is null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mLiveTextView:Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    :cond_1
    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mIsBitmapReceived:Z

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->setScrollDataIfRequired(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mLiveTextModel:Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;->stopDetectionIfInProgress()V

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;

    invoke-direct {v0, p1}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mLiveTextModel:Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;

    new-instance v1, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController$1;-><init>(Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;->setLiveTextControllerDelegate(Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel$LiveTextControllerDelegate;)V

    return-void
.end method

.method public recycleBitmapIfNeeded()V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mLiveTextModel:Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;->isDetectionInProgress()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mLiveTextModel:Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;->isExtractionInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mLiveTextModel:Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;->recycleBitmapIfNeeded()V

    return-void

    :cond_2
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mIsBitmapRecycleRequestReceived:Z

    return-void
.end method

.method public resetAndClearExtractTextInfo()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->recycleBitmapIfNeeded()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mIsBitmapReceived:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mContextMenuListener:Lcom/sec/android/app/sbrowser/extract_text/LiveTextController$TextDetectionListener;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mLiveTextModel:Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;->isDetectionInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mLiveTextModel:Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;->stopDetectionIfInProgress()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mLiveTextModel:Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;->isExtractionInProgress()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mLiveTextModel:Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;->cancelExtraction()V

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->deInitializeVisionText()V

    return-void
.end method

.method public setDelegate(Lcom/sec/android/app/sbrowser/extract_text/LiveTextController$Delegate;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mDelegate:Lcom/sec/android/app/sbrowser/extract_text/LiveTextController$Delegate;

    return-void
.end method

.method public setLiveTextModelForTest(Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mLiveTextModel:Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;

    return-void
.end method

.method public setLiveTextViewForTest(Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;Landroid/view/View;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mInflatedViewForLiveText:Landroid/view/View;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mLiveTextView:Lcom/sec/android/app/sbrowser/extract_text/LiveTextView;

    return-void
.end method

.method public setTextDetectionListener(Lcom/sec/android/app/sbrowser/extract_text/LiveTextController$TextDetectionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mContextMenuListener:Lcom/sec/android/app/sbrowser/extract_text/LiveTextController$TextDetectionListener;

    return-void
.end method

.method public startExtraction()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mLiveTextInitializer:Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->prepareAndStartProgressBar()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mLiveTextModel:Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->mLiveTextInitializer:Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextInitializer;->getRecognizer()Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextModel;->startExtraction(Lcom/samsung/android/app/sdk/deepsky/textextraction/Recognizer;)V

    return-void
.end method

.method public stopProgressBarAndRemoveView()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->hideProgressBar()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->didRemoveClientView()Z

    return-void
.end method
