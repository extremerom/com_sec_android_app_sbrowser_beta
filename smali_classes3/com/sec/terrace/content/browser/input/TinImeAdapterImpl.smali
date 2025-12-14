.class public Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl;
.super Lorg/chromium/content/browser/input/ImeAdapterImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl$DeferLoadingHandler;,
        Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl$TerraceDelegate;,
        Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl$UserDataFactoryLazyHolder;
    }
.end annotation


# instance fields
.field private mAcceleratorManager:Lcom/sec/terrace/browser/extensions/AcceleratorManager;

.field private mDeferLoadingHandler:Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl$DeferLoadingHandler;

.field private mEnableDeferLoading:Z

.field private mIsImeShowing:Z

.field private mIsShiftModeOn:Z

.field private mLastEnteredTextTime:J

.field private mTerraceDelegate:Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl$TerraceDelegate;


# direct methods
.method public constructor <init>(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/chromium/content/browser/input/ImeAdapterImpl;-><init>(Lorg/chromium/content_public/browser/WebContents;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl;->mEnableDeferLoading:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl;->mLastEnteredTextTime:J

    new-instance p1, Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl$DeferLoadingHandler;

    invoke-direct {p1, p0}, Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl$DeferLoadingHandler;-><init>(Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl;)V

    iput-object p1, p0, Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl;->mDeferLoadingHandler:Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl$DeferLoadingHandler;

    new-instance p1, Lcom/sec/terrace/browser/extensions/AcceleratorManager;

    iget-wide v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mNativeImeAdapterAndroid:J

    invoke-direct {p1, v0, v1}, Lcom/sec/terrace/browser/extensions/AcceleratorManager;-><init>(J)V

    iput-object p1, p0, Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl;->mAcceleratorManager:Lcom/sec/terrace/browser/extensions/AcceleratorManager;

    return-void
.end method

.method public static fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl;
    .locals 0

    invoke-static {p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/input/ImeAdapterImpl;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl;

    return-object p0
.end method

.method private getMainBrowserScreen()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl;->isIncognito()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "202"

    goto :goto_0

    :cond_0
    const-string p0, "201"

    :goto_0
    return-object p0
.end method

.method private requestStylusUnbufferedDispatch()V
    .locals 0

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->getContainerView()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/content/browser/TinContentView;

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentView;->requestStylusUnbufferedDispatch()V

    return-void
.end method


# virtual methods
.method public canSelectAll()Z
    .locals 3

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl;->getInputConnectionText()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget v2, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mLastSelectionEnd:I

    iget p0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mLastSelectionStart:I

    sub-int/2addr v2, p0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result p0

    if-le v0, p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public checkAndSendDeferringMessage(I)V
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl;->mDeferLoadingHandler:Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl$DeferLoadingHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl;->mDeferLoadingHandler:Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl$DeferLoadingHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl;->mDeferLoadingHandler:Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl$DeferLoadingHandler;

    int-to-long v2, p1

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public createInputConnectionFactory()V
    .locals 2

    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mInputConnectionFactory:Lorg/chromium/content/browser/input/ChromiumBaseInputConnection$Factory;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/sec/terrace/content/browser/input/TinThreadedInputConnectionFactory;

    iget-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mInputMethodManagerWrapper:Lorg/chromium/content_public/browser/InputMethodManagerWrapper;

    invoke-direct {v0, v1}, Lcom/sec/terrace/content/browser/input/TinThreadedInputConnectionFactory;-><init>(Lorg/chromium/content_public/browser/InputMethodManagerWrapper;)V

    iput-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mInputConnectionFactory:Lorg/chromium/content/browser/input/ChromiumBaseInputConnection$Factory;

    return-void
.end method

.method public deferringEventRequired(Ljava/lang/String;)V
    .locals 6
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl;->mLastEnteredTextTime:J

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-eqz p1, :cond_1

    sub-long v2, v0, v2

    const-wide/16 v4, 0xc8

    cmp-long p1, v2, v4

    if-gtz p1, :cond_1

    iget-object p1, p0, Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl;->mDeferLoadingHandler:Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl$DeferLoadingHandler;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0, v2}, Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl;->setDeferLoading(Z)V

    iget-object p1, p0, Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl;->mDeferLoadingHandler:Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl$DeferLoadingHandler;

    invoke-virtual {p1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iput-wide v0, p0, Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl;->mLastEnteredTextTime:J

    return-void

    :cond_0
    const/16 p1, 0xc8

    invoke-virtual {p0, p1}, Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl;->checkAndSendDeferringMessage(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl;->checkAndSendDeferringMessage(I)V

    :goto_0
    iput-wide v0, p0, Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl;->mLastEnteredTextTime:J

    return-void
.end method

.method public getCachedEditableFromUIThread()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mLastText:Ljava/lang/String;

    return-object p0
.end method

.method public getCurrentTerraceActivity()Lcom/sec/terrace/TerraceActivity;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/TerraceHelper;->getCurrentTerraceActivity()Lcom/sec/terrace/TerraceActivity;

    move-result-object p0

    return-object p0
.end method

.method public getInputConnectionText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mInputConnection:Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mLastText:Ljava/lang/String;

    return-object p0

    :cond_0
    check-cast v0, Lorg/chromium/content/browser/input/ThreadedInputConnection;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->requestAndWaitForTextInputState()Lorg/chromium/content/browser/input/TextInputState;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mLastText:Ljava/lang/String;

    return-object p0

    :cond_1
    invoke-virtual {v0}, Lorg/chromium/content/browser/input/TextInputState;->text()Ljava/lang/CharSequence;

    move-result-object p0

    if-nez p0, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getWebContents()Lcom/sec/terrace/content/browser/TinWebContentsImpl;
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    check-cast p0, Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    return-object p0
.end method

.method public hasSelection()Z
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mLastSelectionEnd:I

    iget p0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mLastSelectionStart:I

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hideKeyboard()V
    .locals 3

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->getContainerView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "hideKeyboard: IMM Active with ContentView = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mInputMethodManagerWrapper:Lorg/chromium/content_public/browser/InputMethodManagerWrapper;

    invoke-interface {v2, v0}, Lorg/chromium/content_public/browser/InputMethodManagerWrapper;->isActive(Landroid/view/View;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", ContentView isFocused = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", ContainerView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", is IME Showing: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl;->mIsImeShowing:Z

    const-string v2, "TinImeAdapterImpl"

    invoke-static {v2, v1, v0}, Lcom/sec/android/app/sbrowser/autofill/password/k;->A(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    invoke-super {p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->hideKeyboard()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl;->mIsImeShowing:Z

    iget-object v1, p0, Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl;->mTerraceDelegate:Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl$TerraceDelegate;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl$TerraceDelegate;->getContentViewCallback()Lcom/sec/terrace/TerraceContentViewCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/terrace/TerraceContentViewCallback;->hideClipboard()V

    iget-object p0, p0, Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl;->mTerraceDelegate:Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl$TerraceDelegate;

    invoke-interface {p0}, Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl$TerraceDelegate;->getContentViewCallback()Lcom/sec/terrace/TerraceContentViewCallback;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/sec/terrace/TerraceContentViewCallback;->onContentViewIMEVisibilityChanged(Z)V

    :cond_0
    return-void
.end method

.method public isIncognito()Z
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->isIncognito()Z

    move-result p0

    return p0
.end method

.method public isKeyboardShowing()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl;->mIsImeShowing:Z

    return p0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2

    const-string v0, "TinImeAdapterImpl"

    const-string v1, "onCreateInputConnection: Called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object p0

    return-object p0
.end method

.method public onImeEvent()V
    .locals 2

    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mLastSelectionEnd:I

    iget v1, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mLastSelectionStart:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-boolean v1, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mNodeEditable:Z

    if-eqz v1, :cond_0

    if-gtz v0, :cond_0

    invoke-super {p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->onImeEvent()V

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mEventObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content_public/browser/ImeEventObserver;

    invoke-interface {v0}, Lorg/chromium/content_public/browser/ImeEventObserver;->onImeEvent()V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public onTouchDownOutsideWritableArea()V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {v0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getEventForwarder()Lorg/chromium/ui/base/EventForwarder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/ui/base/EventForwarder;->getLastToolType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {v0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getStylusWritingHandler()Lorg/chromium/content_public/browser/StylusWritingHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl;->requestStylusUnbufferedDispatch()V

    :cond_0
    return-void
.end method

.method public removeEventObserver(Lorg/chromium/content_public/browser/ImeEventObserver;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mEventObservers:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public sendCompositionToNative(Ljava/lang/CharSequence;IZI)Z
    .locals 2

    if-nez p3, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl;->shouldEnableDefersLoading()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl;->deferringEventRequired(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl;->mEnableDeferLoading:Z

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->sendCompositionToNative(Ljava/lang/CharSequence;IZI)Z

    move-result p0

    return p0
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    invoke-super {p0, p1}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x3b

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x3c

    if-ne v1, v2, :cond_1

    :cond_0
    iget v1, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mLastSelectionEnd:I

    iget v2, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mLastSelectionStart:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget-boolean v2, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mNodeEditable:Z

    if-eqz v2, :cond_1

    if-lez v1, :cond_1

    iget-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-static {v1}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-static {v1}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->setTextHandlesTemporarilyHidden(Z)V

    :cond_1
    iget-object p0, p0, Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl;->mAcceleratorManager:Lcom/sec/terrace/browser/extensions/AcceleratorManager;

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/extensions/AcceleratorManager;->sendKeyEvent(Landroid/view/KeyEvent;)V

    return v0
.end method

.method public sendSALogForStylusHandwriting(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "commit_text"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-static {p1}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->hasSelection()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "1251"

    goto :goto_0

    :cond_1
    const-string p1, "1250"

    goto :goto_0

    :cond_2
    const-string v0, "backspace"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "1252"

    goto :goto_0

    :cond_3
    const-string v0, "zigzag"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p1, "1253"

    goto :goto_0

    :cond_4
    const-string v0, "v_space"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "1256"

    goto :goto_0

    :cond_5
    const-string p1, "1257"

    goto :goto_0

    :cond_6
    const-string v0, "wedge_space"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "1258"

    goto :goto_0

    :cond_7
    const-string p1, "1259"

    goto :goto_0

    :cond_8
    const-string p2, "u_type_remove_space"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    const-string p1, "1254"

    goto :goto_0

    :cond_9
    const-string p2, "arch_type_remove_space"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    const-string p1, "1255"

    :goto_0
    invoke-direct {p0}, Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl;->getMainBrowserScreen()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sec/terrace/browser/TinSALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    return-void
.end method

.method public setDeferLoading(Z)V
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-wide v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mNativeImeAdapterAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/chromium/content/browser/input/ImeAdapterImplJni;->get()Lorg/chromium/content/browser/input/ImeAdapterImpl$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mNativeImeAdapterAndroid:J

    invoke-interface {v0, v1, v2, p0, p1}, Lorg/chromium/content/browser/input/ImeAdapterImpl$Natives;->defersLoading(JLorg/chromium/content/browser/input/ImeAdapterImpl;Z)V

    return-void
.end method

.method public setDelegate(Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl$TerraceDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl;->mTerraceDelegate:Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl$TerraceDelegate;

    return-void
.end method

.method public setInputConnection(Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->setInputConnection(Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;)V

    iget-object p1, p0, Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl;->mTerraceDelegate:Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl$TerraceDelegate;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mInputConnection:Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;

    if-nez p0, :cond_0

    invoke-interface {p1}, Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl$TerraceDelegate;->getContentViewCallback()Lcom/sec/terrace/TerraceContentViewCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/terrace/TerraceContentViewCallback;->unregisterClipboardPasteListener()V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl$TerraceDelegate;->getContentViewCallback()Lcom/sec/terrace/TerraceContentViewCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/terrace/TerraceContentViewCallback;->registerClipboardPasteListener()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setLaunchedExtensionView()V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mInputMethodManagerWrapper:Lorg/chromium/content_public/browser/InputMethodManagerWrapper;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl;->getCurrentTerraceActivity()Lcom/sec/terrace/TerraceActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object p0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mInputMethodManagerWrapper:Lorg/chromium/content_public/browser/InputMethodManagerWrapper;

    invoke-interface {p0, v1}, Lorg/chromium/content_public/browser/InputMethodManagerWrapper;->setLaunchedExtensionView(Z)V

    return-void

    :cond_1
    invoke-static {}, Lcom/sec/terrace/TinTerraceInternals;->isDexDualMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mInputMethodManagerWrapper:Lorg/chromium/content_public/browser/InputMethodManagerWrapper;

    invoke-static {}, Lcom/sec/terrace/TinTerraceInternals;->isExtensionsViewLaunched()Z

    move-result v0

    invoke-interface {p0, v0}, Lorg/chromium/content_public/browser/InputMethodManagerWrapper;->setLaunchedExtensionView(Z)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mInputMethodManagerWrapper:Lorg/chromium/content_public/browser/InputMethodManagerWrapper;

    invoke-interface {p0, v1}, Lorg/chromium/content_public/browser/InputMethodManagerWrapper;->setLaunchedExtensionView(Z)V

    :goto_0
    return-void
.end method

.method public setWindowSoftInputMode(I)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getTopLevelNativeWindow()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    :goto_0
    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    if-eq v0, p1, :cond_2

    invoke-virtual {p0, p1}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_2
    return-void
.end method

.method public shiftPressed(ZJ)V
    .locals 0

    iget-boolean p2, p0, Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl;->mIsShiftModeOn:Z

    if-eq p2, p1, :cond_0

    iput-boolean p1, p0, Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl;->mIsShiftModeOn:Z

    iget-object p0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-static {p0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->setTextHandlesTemporarilyHidden(Z)V

    :cond_0
    return-void
.end method

.method public shouldEnableDefersLoading()Z
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mTextInputType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl;->isKeyboardShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl;->mEnableDeferLoading:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public shouldInitiateStylusWriting()Z
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-super {p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->shouldInitiateStylusWriting()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl;->requestStylusUnbufferedDispatch()V

    :cond_0
    return v0
.end method

.method public showClipboard()V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl;->mTerraceDelegate:Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl$TerraceDelegate;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl$TerraceDelegate;->getContentViewCallback()Lcom/sec/terrace/TerraceContentViewCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/terrace/TerraceContentViewCallback;->showClipboard()V

    :cond_0
    return-void
.end method

.method public showSoftKeyboard()V
    .locals 9

    invoke-static {}, Lcom/sec/terrace/content/browser/input/TerraceImeAdapterHelper;->getInstance()Lcom/sec/terrace/content/browser/input/TerraceImeAdapterHelper;

    move-result-object v0

    iget v1, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mTextInputType:I

    iget v2, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mTextInputFlags:I

    iget v3, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mTextInputMode:I

    iget v4, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mTextInputAction:I

    iget-object v5, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mLastText:Ljava/lang/String;

    iget v6, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mLastSelectionStart:I

    invoke-virtual/range {v0 .. v6}, Lcom/sec/terrace/content/browser/input/TerraceImeAdapterHelper;->createFullScreenKeyboard(IIIILjava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->getContainerView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "showSoftKeyboard: ContainerView = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "IMM Active = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mInputMethodManagerWrapper:Lorg/chromium/content_public/browser/InputMethodManagerWrapper;

    invoke-interface {v2, v0}, Lorg/chromium/content_public/browser/InputMethodManagerWrapper;->isActive(Landroid/view/View;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "ContentView isFocused = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TinImeAdapterImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl;->setLaunchedExtensionView()V

    iget-boolean v1, p0, Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl;->mIsImeShowing:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mInputMethodManagerWrapper:Lorg/chromium/content_public/browser/InputMethodManagerWrapper;

    invoke-interface {v1, v0}, Lorg/chromium/content_public/browser/InputMethodManagerWrapper;->viewClicked(Landroid/view/View;)V

    :cond_1
    iget-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {v1}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getTopLevelNativeWindow()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v1

    const/4 v3, 0x0

    if-nez v1, :cond_2

    move-object v1, v3

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_3

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v5, :cond_3

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v8, 0x258

    if-ge v7, v8, :cond_3

    iget v7, v6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ne v7, v8, :cond_3

    iget v6, v6, Landroid/graphics/Rect;->top:I

    const/16 v7, 0x96

    if-lt v6, v7, :cond_3

    move v6, v5

    goto :goto_1

    :cond_3
    move v6, v4

    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mInputMethodManagerWrapper:Lorg/chromium/content_public/browser/InputMethodManagerWrapper;

    invoke-interface {v7, v0}, Lorg/chromium/content_public/browser/InputMethodManagerWrapper;->isActive(Landroid/view/View;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "showSoftKeyboard: Un-focus & Focus ConentView"

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "showSoftKeyboard: IMM Active with ContentView = "

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mInputMethodManagerWrapper:Lorg/chromium/content_public/browser/InputMethodManagerWrapper;

    invoke-interface {v7, v0}, Lorg/chromium/content_public/browser/InputMethodManagerWrapper;->isActive(Landroid/view/View;)Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", IMM Active with DecorView = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mInputMethodManagerWrapper:Lorg/chromium/content_public/browser/InputMethodManagerWrapper;

    invoke-interface {v0, v3}, Lorg/chromium/content_public/browser/InputMethodManagerWrapper;->isActive(Landroid/view/View;)Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mInputMethodManagerWrapper:Lorg/chromium/content_public/browser/InputMethodManagerWrapper;

    invoke-interface {v0, v3}, Lorg/chromium/content_public/browser/InputMethodManagerWrapper;->isActive(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mInputMethodManagerWrapper:Lorg/chromium/content_public/browser/InputMethodManagerWrapper;

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->getNewShowKeyboardReceiver()Landroid/os/ResultReceiver;

    move-result-object v1

    invoke-interface {v0, v3, v4, v1}, Lorg/chromium/content_public/browser/InputMethodManagerWrapper;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)V

    :cond_5
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl;->setWindowSoftInputMode(I)V

    invoke-super {p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->showSoftKeyboard()V

    if-eqz v6, :cond_6

    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl;->setWindowSoftInputMode(I)V

    :cond_6
    iput-boolean v5, p0, Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl;->mIsImeShowing:Z

    iget-object p0, p0, Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl;->mTerraceDelegate:Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl$TerraceDelegate;

    if-eqz p0, :cond_7

    invoke-interface {p0}, Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl$TerraceDelegate;->getContentViewCallback()Lcom/sec/terrace/TerraceContentViewCallback;

    move-result-object p0

    invoke-interface {p0, v5}, Lcom/sec/terrace/TerraceContentViewCallback;->onContentViewIMEVisibilityChanged(Z)V

    :cond_7
    return-void
.end method

.method public updateState(IIIIZZLjava/lang/CharSequence;IIIIZII)V
    .locals 5

    move-object v0, p0

    move v1, p1

    iget-object v2, v0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {v2}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getVisibleUrl()Lorg/chromium/url/GURL;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/url/GURL;->getSpec()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz p5, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v4, "google"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-boolean v3, v0, Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl;->mEnableDeferLoading:Z

    :cond_0
    iget v2, v0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mTextInputType:I

    if-eq v2, v1, :cond_2

    iget-object v2, v0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-static {v2}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Lorg/chromium/content/browser/input/ImeAdapterImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-static {v2}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;

    move-result-object v2

    const/16 v4, 0xf

    if-ne v1, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->setAsRichlyEditable(Z)V

    :cond_2
    invoke-super/range {p0 .. p14}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->updateState(IIIIZZLjava/lang/CharSequence;IIIIZII)V

    return-void
.end method
