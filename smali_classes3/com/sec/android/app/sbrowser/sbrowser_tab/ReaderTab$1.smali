.class Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;->createReaderTabEventListener()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab$1;->lambda$onLoadFailed$1()V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab$1;->lambda$onShow$0()V

    return-void
.end method

.method private synthetic lambda$onLoadFailed$1()V
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;->m(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p0, v0, v0, v1, v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->setReaderPageEnabled(ZZZZ)V

    return-void
.end method

.method private synthetic lambda$onShow$0()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->applyReaderOption(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V

    return-void
.end method


# virtual methods
.method public onBitmapCompositedLayersConsumeEvent(Landroid/view/MotionEvent;Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;->m(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyBitmapCompositedLayersConsumeEvent(Landroid/view/MotionEvent;Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;)V

    return-void
.end method

.method public onBottomOffsetsForFullscreenChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;FF)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;->m(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;

    invoke-virtual {p1, p0, p2, p3}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyBottomOffsetsForFullscreenChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;FF)V

    return-void
.end method

.method public onContentViewTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;->m(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyContentViewTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onContentsZoomChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;->m(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;->getZoomInfoBarAnchorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->changeZoomValue(ZLandroid/view/View;)V

    return-void
.end method

.method public onDidCommitProvisionalLoadForFrame(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;JZLjava/lang/String;I)V
    .locals 6

    if-eqz p4, :cond_1

    invoke-static {p5}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isValidUrl(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "about:blank"

    invoke-virtual {p5, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;->m(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {p5}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isContentUrl(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;->m(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object v0

    const/4 v3, 0x1

    move-wide v1, p2

    move-object v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyDidCommitProvisionalLoadForFrame(JZLjava/lang/String;I)V

    const-string p1, "[onDidCommitProvisionalLoadForFrame] transitionType : "

    const-string p2, "si__ReaderTab"

    invoke-static {p6, p1, p2}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    if-nez p6, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;->m(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    move-result-object p0

    invoke-interface {p0, p5}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->loadUrlWithRunnable(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDidEnableBitmapCompositionForLayer(Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;ZZ)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;->m(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyDidEnableBitmapCompositionForLayer(Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;ZZ)V

    return-void
.end method

.method public onDidNavigateMainFrame(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;->m(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->setIsRenderViewReady(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;->m(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyDidNavigateMainFrame(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    return-void
.end method

.method public onDragEntered()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;->m(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyDragEntered()V

    return-void
.end method

.method public onExtractionSuccess(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;->m(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyExtractTextSuccess()V

    return-void
.end method

.method public onFindOnPage(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;->m(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyFindOnPage(Ljava/lang/String;)V

    return-void
.end method

.method public onFindOnPageResult(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;II)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;->m(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyFindOnPageResult(II)V

    return-void
.end method

.method public onLoadFailed(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;ILjava/lang/String;)V
    .locals 0

    const-string p1, "si__ReaderTab"

    const-string p2, "[onLoadFailed]"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;->m(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isReaderView()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "mailto:"

    invoke-static {p3, p1}, Lcom/sec/android/app/sbrowser/common/utils/decoder/StringUtils;->containsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isYoutubeUrl(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;->m(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getReader()Lcom/sec/android/app/sbrowser/common/model/reader/IReader;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/reader/IReader;->isLoadCompleted()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;

    new-instance p2, Lcom/sec/android/app/sbrowser/sbrowser_tab/g;

    const/4 p3, 0x1

    invoke-direct {p2, p3, p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/g;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onLoadFinished(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;)V
    .locals 3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;->m(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getReader()Lcom/sec/android/app/sbrowser/common/model/reader/IReader;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;->m(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;->l(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const-string v0, "about:blank"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "si__ReaderTab"

    if-eqz v0, :cond_2

    const-string p0, "[onLoadFinished] about:blank for reader"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1, v1}, Lcom/sec/android/app/sbrowser/common/model/reader/IReader;->setLoadFinished(Z)V

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/reader/IReader;->loadData()V

    return-void

    :cond_2
    const-string p1, "[onLoadFinished]"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isContentUrl(Ljava/lang/String;)Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;->notifyLoadFinished(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onOffsetsForFullscreenChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;FF)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;->m(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;

    invoke-virtual {p1, p0, p2, p3}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyOffsetsForFullscreenChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;FF)V

    return-void
.end method

.method public onOpenInNewTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 6

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;->m(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object v0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyOpenInNewTab(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V

    return-void
.end method

.method public onPageSavedAs(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;->m(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyPageSavedAs(Ljava/lang/String;)V

    return-void
.end method

.method public onShow(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;

    new-instance v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/g;-><init>(ILjava/lang/Object;)V

    const-wide/16 v1, 0xa

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onTakeFocus(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;->m(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyTakeFocus(Z)V

    return-void
.end method

.method public onToolbarVisibilityChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;->m(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyToolbarVisibilityChanged(Z)V

    return-void
.end method

.method public onWebContentsCreated(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;->m(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->loadUrlWithRunnable(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public onZoomValueChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;DZ)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;->m(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->setZoomApplyToThisTabOnly(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;->m(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->setZoomValue(D)V

    return-void
.end method
