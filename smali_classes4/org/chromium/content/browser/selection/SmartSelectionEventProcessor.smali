.class public Lorg/chromium/content/browser/selection/SmartSelectionEventProcessor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/content_public/browser/SelectionEventProcessor;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private mConverter:Lorg/chromium/content/browser/selection/SelectionIndicesConverter;

.field private mSession:Landroid/view/textclassifier/TextClassifier;

.field private mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;


# direct methods
.method private constructor <init>(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lorg/chromium/content_public/browser/WebContents;->getTopLevelNativeWindow()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/selection/SmartSelectionEventProcessor;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    invoke-static {p1}, Lorg/chromium/content/browser/WindowEventObserverManager;->maybeFrom(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/WindowEventObserverManager;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lorg/chromium/content/browser/selection/SmartSelectionEventProcessor$1;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/selection/SmartSelectionEventProcessor$1;-><init>(Lorg/chromium/content/browser/selection/SmartSelectionEventProcessor;)V

    invoke-virtual {p1, v0}, Lorg/chromium/content/browser/WindowEventObserverManager;->addObserver(Lorg/chromium/content/browser/WindowEventObserver;)V

    :cond_0
    return-void
.end method

.method public static bridge synthetic a(Lorg/chromium/content/browser/selection/SmartSelectionEventProcessor;Lorg/chromium/ui/base/WindowAndroid;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/selection/SmartSelectionEventProcessor;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    return-void
.end method

.method public static create(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/selection/SmartSelectionEventProcessor;
    .locals 1

    invoke-interface {p0}, Lorg/chromium/content_public/browser/WebContents;->getTopLevelNativeWindow()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/chromium/ui/base/WindowAndroid;->getContext()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/chromium/content/browser/selection/SmartSelectionEventProcessor;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/selection/SmartSelectionEventProcessor;-><init>(Lorg/chromium/content_public/browser/WebContents;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private createSession(Landroid/content/Context;Z)Landroid/view/textclassifier/TextClassifier;
    .locals 1

    new-instance p0, Landroid/view/textclassifier/TextClassificationContext$Builder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_0

    const-string p2, "edit-webview"

    goto :goto_0

    :cond_0
    const-string p2, "webview"

    :goto_0
    invoke-direct {p0, v0, p2}, Landroid/view/textclassifier/TextClassificationContext$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassificationContext$Builder;->build()Landroid/view/textclassifier/TextClassificationContext;

    move-result-object p0

    const-string p2, "textclassification"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/textclassifier/TextClassificationManager;

    invoke-virtual {p1, p0}, Landroid/view/textclassifier/TextClassificationManager;->createTextClassificationSession(Landroid/view/textclassifier/TextClassificationContext;)Landroid/view/textclassifier/TextClassifier;

    move-result-object p0

    return-object p0
.end method

.method private endTextClassificationSession()V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/selection/SmartSelectionEventProcessor;->mSession:Landroid/view/textclassifier/TextClassifier;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/view/textclassifier/TextClassifier;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/selection/SmartSelectionEventProcessor;->mSession:Landroid/view/textclassifier/TextClassifier;

    invoke-interface {v0}, Landroid/view/textclassifier/TextClassifier;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/content/browser/selection/SmartSelectionEventProcessor;->mSession:Landroid/view/textclassifier/TextClassifier;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getTextClassifierSession()Landroid/view/textclassifier/TextClassifier;
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/selection/SmartSelectionEventProcessor;->mSession:Landroid/view/textclassifier/TextClassifier;

    return-object p0
.end method

.method public logEvent(Landroid/view/textclassifier/SelectionEvent;)V
    .locals 0
    .annotation build Lorg/chromium/build/annotations/RequiresNonNull;
    .end annotation

    iget-object p0, p0, Lorg/chromium/content/browser/selection/SmartSelectionEventProcessor;->mSession:Landroid/view/textclassifier/TextClassifier;

    invoke-interface {p0, p1}, Landroid/view/textclassifier/TextClassifier;->onSelectionEvent(Landroid/view/textclassifier/SelectionEvent;)V

    return-void
.end method

.method public onSelectionAction(Ljava/lang/String;IILorg/chromium/content_public/browser/SelectionClient$Result;)V
    .locals 2

    iget-object v0, p0, Lorg/chromium/content/browser/selection/SmartSelectionEventProcessor;->mSession:Landroid/view/textclassifier/TextClassifier;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/selection/SmartSelectionEventProcessor;->mConverter:Lorg/chromium/content/browser/selection/SelectionIndicesConverter;

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/chromium/content/browser/selection/SmartSelectionEventProcessor;->mConverter:Lorg/chromium/content/browser/selection/SelectionIndicesConverter;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/content/browser/selection/SelectionIndicesConverter;->updateSelectionState(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lorg/chromium/content/browser/selection/SmartSelectionEventProcessor;->endTextClassificationSession()V

    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, p2

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lorg/chromium/content/browser/selection/SmartSelectionEventProcessor;->mConverter:Lorg/chromium/content/browser/selection/SelectionIndicesConverter;

    invoke-virtual {v1, p2, p1, v0}, Lorg/chromium/content/browser/selection/SelectionIndicesConverter;->getWordDelta(II[I)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-direct {p0}, Lorg/chromium/content/browser/selection/SmartSelectionEventProcessor;->endTextClassificationSession()V

    return-void

    :cond_2
    const/4 p1, 0x1

    const/4 p2, 0x0

    if-eqz p4, :cond_3

    iget-object p4, p4, Lorg/chromium/content_public/browser/SelectionClient$Result;->textClassification:Landroid/view/textclassifier/TextClassification;

    if-eqz p4, :cond_3

    aget p2, v0, p2

    aget p1, v0, p1

    invoke-static {p2, p1, p3, p4}, Landroid/view/textclassifier/SelectionEvent;->createSelectionActionEvent(IIILandroid/view/textclassifier/TextClassification;)Landroid/view/textclassifier/SelectionEvent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/selection/SmartSelectionEventProcessor;->logEvent(Landroid/view/textclassifier/SelectionEvent;)V

    goto :goto_0

    :cond_3
    aget p2, v0, p2

    aget p1, v0, p1

    invoke-static {p2, p1, p3}, Landroid/view/textclassifier/SelectionEvent;->createSelectionActionEvent(III)Landroid/view/textclassifier/SelectionEvent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/selection/SmartSelectionEventProcessor;->logEvent(Landroid/view/textclassifier/SelectionEvent;)V

    :goto_0
    invoke-static {p3}, Landroid/view/textclassifier/SelectionEvent;->isTerminal(I)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lorg/chromium/content/browser/selection/SmartSelectionEventProcessor;->endTextClassificationSession()V

    :cond_4
    return-void
.end method

.method public onSelectionModified(Ljava/lang/String;ILorg/chromium/content_public/browser/SelectionClient$Result;)V
    .locals 2

    iget-object v0, p0, Lorg/chromium/content/browser/selection/SmartSelectionEventProcessor;->mSession:Landroid/view/textclassifier/TextClassifier;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/selection/SmartSelectionEventProcessor;->mConverter:Lorg/chromium/content/browser/selection/SelectionIndicesConverter;

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/chromium/content/browser/selection/SmartSelectionEventProcessor;->mConverter:Lorg/chromium/content/browser/selection/SelectionIndicesConverter;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/content/browser/selection/SelectionIndicesConverter;->updateSelectionState(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lorg/chromium/content/browser/selection/SmartSelectionEventProcessor;->endTextClassificationSession()V

    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, p2

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lorg/chromium/content/browser/selection/SmartSelectionEventProcessor;->mConverter:Lorg/chromium/content/browser/selection/SelectionIndicesConverter;

    invoke-virtual {v1, p2, p1, v0}, Lorg/chromium/content/browser/selection/SelectionIndicesConverter;->getWordDelta(II[I)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-direct {p0}, Lorg/chromium/content/browser/selection/SmartSelectionEventProcessor;->endTextClassificationSession()V

    return-void

    :cond_2
    const/4 p1, 0x1

    const/4 p2, 0x0

    if-eqz p3, :cond_3

    iget-object v1, p3, Lorg/chromium/content_public/browser/SelectionClient$Result;->textSelection:Landroid/view/textclassifier/TextSelection;

    if-eqz v1, :cond_3

    aget p2, v0, p2

    aget p1, v0, p1

    invoke-static {p2, p1, v1}, Landroid/view/textclassifier/SelectionEvent;->createSelectionModifiedEvent(IILandroid/view/textclassifier/TextSelection;)Landroid/view/textclassifier/SelectionEvent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/selection/SmartSelectionEventProcessor;->logEvent(Landroid/view/textclassifier/SelectionEvent;)V

    goto :goto_0

    :cond_3
    if-eqz p3, :cond_4

    iget-object p3, p3, Lorg/chromium/content_public/browser/SelectionClient$Result;->textClassification:Landroid/view/textclassifier/TextClassification;

    if-eqz p3, :cond_4

    aget p2, v0, p2

    aget p1, v0, p1

    invoke-static {p2, p1, p3}, Landroid/view/textclassifier/SelectionEvent;->createSelectionModifiedEvent(IILandroid/view/textclassifier/TextClassification;)Landroid/view/textclassifier/SelectionEvent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/selection/SmartSelectionEventProcessor;->logEvent(Landroid/view/textclassifier/SelectionEvent;)V

    goto :goto_0

    :cond_4
    aget p2, v0, p2

    aget p1, v0, p1

    invoke-static {p2, p1}, Landroid/view/textclassifier/SelectionEvent;->createSelectionModifiedEvent(II)Landroid/view/textclassifier/SelectionEvent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/selection/SmartSelectionEventProcessor;->logEvent(Landroid/view/textclassifier/SelectionEvent;)V

    :goto_0
    return-void
.end method

.method public onSelectionStarted(Ljava/lang/String;IZ)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/selection/SmartSelectionEventProcessor;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lorg/chromium/ui/base/WindowAndroid;->getContext()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, v0, p3}, Lorg/chromium/content/browser/selection/SmartSelectionEventProcessor;->createSession(Landroid/content/Context;Z)Landroid/view/textclassifier/TextClassifier;

    move-result-object p3

    iput-object p3, p0, Lorg/chromium/content/browser/selection/SmartSelectionEventProcessor;->mSession:Landroid/view/textclassifier/TextClassifier;

    new-instance p3, Lorg/chromium/content/browser/selection/SelectionIndicesConverter;

    invoke-direct {p3}, Lorg/chromium/content/browser/selection/SelectionIndicesConverter;-><init>()V

    iput-object p3, p0, Lorg/chromium/content/browser/selection/SmartSelectionEventProcessor;->mConverter:Lorg/chromium/content/browser/selection/SelectionIndicesConverter;

    invoke-virtual {p3, p1, p2}, Lorg/chromium/content/browser/selection/SelectionIndicesConverter;->updateSelectionState(Ljava/lang/String;I)Z

    iget-object p1, p0, Lorg/chromium/content/browser/selection/SmartSelectionEventProcessor;->mConverter:Lorg/chromium/content/browser/selection/SelectionIndicesConverter;

    invoke-virtual {p1, p2}, Lorg/chromium/content/browser/selection/SelectionIndicesConverter;->setInitialStartOffset(I)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroid/view/textclassifier/SelectionEvent;->createSelectionStartedEvent(II)Landroid/view/textclassifier/SelectionEvent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/selection/SmartSelectionEventProcessor;->logEvent(Landroid/view/textclassifier/SelectionEvent;)V

    return-void
.end method
