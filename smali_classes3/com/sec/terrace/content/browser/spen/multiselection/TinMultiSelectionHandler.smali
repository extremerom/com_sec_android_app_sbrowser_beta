.class public Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler$Natives;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mController:Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController;

.field private mMultiSelectionObj:Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionJSCallbackHandler;

.field private mMultiSelectionScript:Ljava/lang/String;

.field private mNativeTinMultiSelectionHandler:J

.field private mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

.field private mWebContentsObserver:Lorg/chromium/content_public/browser/WebContentsObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/terrace/content/browser/TinWebContentsImpl;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;->mNativeTinMultiSelectionHandler:J

    iput-object p1, p0, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;->getController()Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;->mController:Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;->mMultiSelectionObj:Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionJSCallbackHandler;

    iput-object p1, p0, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;->mMultiSelectionScript:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;->lambda$onClearSelectionCompleted$1()V

    return-void
.end method

.method public static synthetic b(Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;->lambda$onPerformCurrentSelection$0(II)V

    return-void
.end method

.method public static bridge synthetic c(Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;)J
    .locals 2

    iget-wide v0, p0, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;->mNativeTinMultiSelectionHandler:J

    return-wide v0
.end method

.method private clearOverlappingSelection(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "javascript:clearOverlappingSelection("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public static createRect(IIII)Landroid/graphics/Rect;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public static bridge synthetic d(Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;->getLastSelectedText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getLastSelectedText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-static {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lcom/sec/terrace/content/browser/TinContentViewCore;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getLastSelectedText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onClearSelectionCompleted$1()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;->resetSelectionPerformed()V

    return-void
.end method

.method private synthetic lambda$onPerformCurrentSelection$0(II)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;->getController()Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController;->setSelectionId(I)V

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;->setSelectionOverlapping(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;->setSelectionOverlapping(Z)V

    iget-wide p1, p0, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;->mNativeTinMultiSelectionHandler:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandlerJni;->get()Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler$Natives;

    move-result-object p1

    iget-wide v0, p0, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;->mNativeTinMultiSelectionHandler:J

    invoke-interface {p1, v0, v1, p0}, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler$Natives;->getSelectionMarkupWithBounds(JLcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setExtractedSelectionContent(Ljava/lang/String;Landroid/graphics/Rect;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-static {v0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->isFocusedNodeEditable()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;->getController()Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController;->setExtractedSelectionContent(Ljava/lang/String;Landroid/graphics/Rect;)V

    const-string p1, "javascript:initMultiSelection();"

    invoke-virtual {p0, p1}, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;->loadUrl(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;->getMultiSelectionListSize()I

    move-result p0

    const/4 p1, 0x1

    if-le p0, p1, :cond_1

    invoke-virtual {v0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->showActionModeOrClearOnFailure()V

    :cond_1
    return-void
.end method


# virtual methods
.method public accessMultiSelectionScript()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;->mContext:Landroid/content/Context;

    const-string v0, "MultiSelection.js"

    invoke-static {p0, v0}, Lcom/sec/terrace/TinTerraceInternals;->readFileFromAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public accessMultiSelectionScriptFromAssets()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;->mMultiSelectionScript:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;->accessMultiSelectionScript()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;->mMultiSelectionScript:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;->mMultiSelectionScript:Ljava/lang/String;

    return-object p0
.end method

.method public applyMultiSelection()V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;->getMultiSelectionListSize()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-virtual {v0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->collapseSelection()V

    const-string v0, "201"

    const-string v1, "9205"

    invoke-static {v0, v1}, Lcom/sec/terrace/browser/TinSALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "javascript:applyMultiSelection();"

    invoke-virtual {p0, v0}, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public clearMultiSelection(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;->isSelectionPerformed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const-string p1, "javascript:clearSelection();"

    invoke-virtual {p0, p1}, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;->resetSelectionPerformed()V

    :goto_0
    iget-wide v0, p0, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;->mNativeTinMultiSelectionHandler:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandlerJni;->get()Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler$Natives;

    move-result-object p1

    iget-wide v0, p0, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;->mNativeTinMultiSelectionHandler:J

    invoke-interface {p1, v0, v1, p0}, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler$Natives;->onMultiSelectionCleared(JLcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;)V

    :cond_2
    return-void
.end method

.method public clearOverlappingSelection(Z)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;->clearOverlappingSelection(I)V

    return-void
.end method

.method public createWebContentsObserver()V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    new-instance v0, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler$1;

    iget-object v1, p0, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-direct {v0, p0, v1}, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler$1;-><init>(Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;Lorg/chromium/content_public/browser/WebContents;)V

    iput-object v0, p0, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;->mWebContentsObserver:Lorg/chromium/content_public/browser/WebContentsObserver;

    return-void
.end method

.method public evaluateJavaScript()V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-static {v0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lcom/sec/terrace/content/browser/TinContentViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;->accessMultiSelectionScriptFromAssets()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->evaluateJavaScript(Ljava/lang/String;Lorg/chromium/content_public/browser/JavaScriptCallback;)V

    return-void
.end method

.method public getController()Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;->mController:Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler$2;

    invoke-direct {v0, p0}, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler$2;-><init>(Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;)V

    iput-object v0, p0, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;->mController:Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController;

    :cond_0
    iget-object p0, p0, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;->mController:Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController;

    return-object p0
.end method

.method public getHTMLSelections()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;->getController()Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController;->getHTMLSelections()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMultiSelectionListSize()I
    .locals 0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;->getController()Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController;->getMultiSelectionListSize()I

    move-result p0

    return p0
.end method

.method public getMultiSelectionObj()Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionJSCallbackHandler;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;->mMultiSelectionObj:Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionJSCallbackHandler;

    return-object p0
.end method

.method public getSelectedText()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;->getController()Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController;->getSelectedText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public init(J)V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iput-wide p1, p0, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;->mNativeTinMultiSelectionHandler:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;->createWebContentsObserver()V

    :cond_0
    return-void
.end method

.method public initializeAndAddMultiSelectionJSHandler()V
    .locals 3

    iget-object v0, p0, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;->mMultiSelectionObj:Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionJSCallbackHandler;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionJSCallbackHandler;

    invoke-direct {v0, p0}, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionJSCallbackHandler;-><init>(Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;)V

    iput-object v0, p0, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;->mMultiSelectionObj:Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionJSCallbackHandler;

    iget-object v0, p0, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-static {v0}, Lorg/chromium/content_public/browser/JavascriptInjector;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content_public/browser/JavascriptInjector;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;->mMultiSelectionObj:Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionJSCallbackHandler;

    const-string v1, "multiSelectionObj"

    const-class v2, Lcom/sec/terrace/browser/JavascriptInterface;

    invoke-interface {v0, p0, v1, v2}, Lorg/chromium/content_public/browser/JavascriptInjector;->addPossiblyUnsafeInterface(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public isSelectionPerformed()Z
    .locals 0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;->getController()Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController;->isSelectionPerformed()Z

    move-result p0

    return p0
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    new-instance v0, Lorg/chromium/content_public/browser/LoadUrlParams;

    invoke-direct {v0, p1}, Lorg/chromium/content_public/browser/LoadUrlParams;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getNavigationController()Lorg/chromium/content_public/browser/NavigationController;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getNavigationController()Lorg/chromium/content_public/browser/NavigationController;

    move-result-object p0

    invoke-interface {p0, v0}, Lorg/chromium/content_public/browser/NavigationController;->loadUrl(Lorg/chromium/content_public/browser/LoadUrlParams;)Lorg/chromium/content_public/browser/NavigationHandle;

    :cond_1
    :goto_0
    return-void
.end method

.method public onClearSelectionCompleted(Z)V
    .locals 2

    iget-object p1, p0, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;->mContext:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    new-instance v0, Lcom/sec/android/app/sbrowser/tab_sync/o;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/tab_sync/o;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onNativeDestroyed()V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;->mNativeTinMultiSelectionHandler:J

    return-void
.end method

.method public onPerformCurrentSelection(II)V
    .locals 3

    iget-object v0, p0, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/sec/android/app/sbrowser/sbrowser_tab/j;

    const/4 v2, 0x2

    invoke-direct {v1, p0, p2, p1, v2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/j;-><init>(Ljava/lang/Object;III)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onRemoveFromSelectionList(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;->getController()Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController;->removeFromSelectionList(I)V

    return-void
.end method

.method public resetSelectionPerformed()V
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;->getController()Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController;->resetSelectionPerformed()V

    iget-wide v0, p0, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;->mNativeTinMultiSelectionHandler:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandlerJni;->get()Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;->mNativeTinMultiSelectionHandler:J

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler$Natives;->resetSelectionPerformed(JLcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;)V

    :cond_0
    return-void
.end method

.method public selectedMarkupWithStartContentRect(Ljava/lang/String;Landroid/graphics/Rect;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;->setExtractedSelectionContent(Ljava/lang/String;Landroid/graphics/Rect;)V

    return-void
.end method

.method public setNativeTinMultiSelectionHandler(J)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-wide p1, p0, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;->mNativeTinMultiSelectionHandler:J

    return-void
.end method

.method public setSelectionOverlapping(Z)V
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-wide v0, p0, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;->mNativeTinMultiSelectionHandler:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandlerJni;->get()Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;->mNativeTinMultiSelectionHandler:J

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler$Natives;->setSelectionOverlapping(JLcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;Z)V

    :cond_0
    return-void
.end method
