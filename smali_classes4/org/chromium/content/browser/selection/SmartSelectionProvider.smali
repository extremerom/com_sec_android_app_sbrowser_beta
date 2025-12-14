.class public Lorg/chromium/content/browser/selection/SmartSelectionProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/selection/SmartSelectionProvider$RequestType;,
        Lorg/chromium/content/browser/selection/SmartSelectionProvider$ClassificationTask;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private mClassificationTask:Lorg/chromium/content/browser/selection/SmartSelectionProvider$ClassificationTask;

.field private mFailureResponseRunnable:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mResultCallback:Lorg/chromium/content_public/browser/SelectionClient$ResultCallback;

.field private final mSelectionEventProcessor:Lorg/chromium/content/browser/selection/SmartSelectionEventProcessor;

.field private mTextClassifier:Landroid/view/textclassifier/TextClassifier;

.field private mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;


# direct methods
.method public constructor <init>(Lorg/chromium/content_public/browser/SelectionClient$ResultCallback;Lorg/chromium/content_public/browser/WebContents;Lorg/chromium/content/browser/selection/SmartSelectionEventProcessor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/content/browser/selection/SmartSelectionProvider;->mResultCallback:Lorg/chromium/content_public/browser/SelectionClient$ResultCallback;

    invoke-interface {p2}, Lorg/chromium/content_public/browser/WebContents;->getTopLevelNativeWindow()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/content/browser/selection/SmartSelectionProvider;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    invoke-static {p2}, Lorg/chromium/content/browser/WindowEventObserverManager;->maybeFrom(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/WindowEventObserverManager;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance p2, Lorg/chromium/content/browser/selection/SmartSelectionProvider$1;

    invoke-direct {p2, p0}, Lorg/chromium/content/browser/selection/SmartSelectionProvider$1;-><init>(Lorg/chromium/content/browser/selection/SmartSelectionProvider;)V

    invoke-virtual {p1, p2}, Lorg/chromium/content/browser/WindowEventObserverManager;->addObserver(Lorg/chromium/content/browser/WindowEventObserver;)V

    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lorg/chromium/content/browser/selection/SmartSelectionProvider;->mHandler:Landroid/os/Handler;

    new-instance p1, Lorg/chromium/content/browser/selection/SmartSelectionProvider$2;

    invoke-direct {p1, p0}, Lorg/chromium/content/browser/selection/SmartSelectionProvider$2;-><init>(Lorg/chromium/content/browser/selection/SmartSelectionProvider;)V

    iput-object p1, p0, Lorg/chromium/content/browser/selection/SmartSelectionProvider;->mFailureResponseRunnable:Ljava/lang/Runnable;

    iput-object p3, p0, Lorg/chromium/content/browser/selection/SmartSelectionProvider;->mSelectionEventProcessor:Lorg/chromium/content/browser/selection/SmartSelectionEventProcessor;

    return-void
.end method

.method public static bridge synthetic a(Lorg/chromium/content/browser/selection/SmartSelectionProvider;)Lorg/chromium/content_public/browser/SelectionClient$ResultCallback;
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/selection/SmartSelectionProvider;->mResultCallback:Lorg/chromium/content_public/browser/SelectionClient$ResultCallback;

    return-object p0
.end method

.method public static bridge synthetic b(Lorg/chromium/content/browser/selection/SmartSelectionProvider;Lorg/chromium/ui/base/WindowAndroid;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/selection/SmartSelectionProvider;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    return-void
.end method

.method private getTextClassificationSession()Landroid/view/textclassifier/TextClassifier;
    .locals 2

    iget-object v0, p0, Lorg/chromium/content/browser/selection/SmartSelectionProvider;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/chromium/ui/base/WindowAndroid;->getContext()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/selection/SmartSelectionProvider;->mSelectionEventProcessor:Lorg/chromium/content/browser/selection/SmartSelectionEventProcessor;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SmartSelectionProvider;->getTextClassifier()Landroid/view/textclassifier/TextClassifier;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {v0}, Lorg/chromium/content/browser/selection/SmartSelectionEventProcessor;->getTextClassifierSession()Landroid/view/textclassifier/TextClassifier;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/view/textclassifier/TextClassifier;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    return-object v0

    :cond_4
    :goto_0
    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SmartSelectionProvider;->getTextClassifier()Landroid/view/textclassifier/TextClassifier;

    move-result-object p0

    return-object p0
.end method

.method private sendSmartSelectionRequest(ILjava/lang/CharSequence;II)V
    .locals 9

    invoke-direct {p0}, Lorg/chromium/content/browser/selection/SmartSelectionProvider;->getTextClassificationSession()Landroid/view/textclassifier/TextClassifier;

    move-result-object v2

    if-eqz v2, :cond_2

    sget-object v0, Landroid/view/textclassifier/TextClassifier;->NO_OP:Landroid/view/textclassifier/TextClassifier;

    if-ne v2, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/selection/SmartSelectionProvider;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/chromium/content/browser/selection/SmartSelectionProvider;->mClassificationTask:Lorg/chromium/content/browser/selection/SmartSelectionProvider$ClassificationTask;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/base/task/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/content/browser/selection/SmartSelectionProvider;->mClassificationTask:Lorg/chromium/content/browser/selection/SmartSelectionProvider$ClassificationTask;

    :cond_1
    new-instance v8, Lorg/chromium/content/browser/selection/SmartSelectionProvider$ClassificationTask;

    iget-object v0, p0, Lorg/chromium/content/browser/selection/SmartSelectionProvider;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    invoke-virtual {v0}, Lorg/chromium/ui/base/WindowAndroid;->getContext()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/content/Context;

    move-object v0, v8

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v7}, Lorg/chromium/content/browser/selection/SmartSelectionProvider$ClassificationTask;-><init>(Lorg/chromium/content/browser/selection/SmartSelectionProvider;Landroid/view/textclassifier/TextClassifier;ILjava/lang/CharSequence;IILandroid/content/Context;)V

    iput-object v8, p0, Lorg/chromium/content/browser/selection/SmartSelectionProvider;->mClassificationTask:Lorg/chromium/content/browser/selection/SmartSelectionProvider$ClassificationTask;

    sget-object p0, Lorg/chromium/base/task/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v8, p0}, Lorg/chromium/base/task/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;)Lorg/chromium/base/task/AsyncTask;

    return-void

    :cond_2
    :goto_0
    iget-object p1, p0, Lorg/chromium/content/browser/selection/SmartSelectionProvider;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lorg/chromium/content/browser/selection/SmartSelectionProvider;->mFailureResponseRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public cancelAllRequests()V
    .locals 2

    iget-object v0, p0, Lorg/chromium/content/browser/selection/SmartSelectionProvider;->mClassificationTask:Lorg/chromium/content/browser/selection/SmartSelectionProvider$ClassificationTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/base/task/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/content/browser/selection/SmartSelectionProvider;->mClassificationTask:Lorg/chromium/content/browser/selection/SmartSelectionProvider$ClassificationTask;

    :cond_0
    return-void
.end method

.method public getTextClassifier()Landroid/view/textclassifier/TextClassifier;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    iget-object v0, p0, Lorg/chromium/content/browser/selection/SmartSelectionProvider;->mTextClassifier:Landroid/view/textclassifier/TextClassifier;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lorg/chromium/content/browser/selection/SmartSelectionProvider;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    const/4 v0, 0x0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lorg/chromium/ui/base/WindowAndroid;->getContext()Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    if-nez p0, :cond_2

    return-object v0

    :cond_2
    const-string v0, "textclassification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/textclassifier/TextClassificationManager;

    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassificationManager;->getTextClassifier()Landroid/view/textclassifier/TextClassifier;

    move-result-object p0

    return-object p0
.end method

.method public isSmartClassificationTaskInProgress()Z
    .locals 1

    iget-object p0, p0, Lorg/chromium/content/browser/selection/SmartSelectionProvider;->mClassificationTask:Lorg/chromium/content/browser/selection/SmartSelectionProvider$ClassificationTask;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/base/task/AsyncTask;->getStatus()I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public sendClassifyRequest(Ljava/lang/CharSequence;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/chromium/content/browser/selection/SmartSelectionProvider;->sendSmartSelectionRequest(ILjava/lang/CharSequence;II)V

    return-void
.end method

.method public sendSuggestAndClassifyRequest(Ljava/lang/CharSequence;II)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/chromium/content/browser/selection/SmartSelectionProvider;->sendSmartSelectionRequest(ILjava/lang/CharSequence;II)V

    return-void
.end method
