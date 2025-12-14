.class public Lorg/chromium/content/browser/input/InputMethodManagerWrapperImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/content_public/browser/InputMethodManagerWrapper;


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDelegate:Lorg/chromium/content_public/browser/InputMethodManagerWrapper$Delegate;

.field private mExtensionsViewLaunched:Z

.field private mPendingRunnableOnInputConnection:Ljava/lang/Runnable;

.field private mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/chromium/ui/base/WindowAndroid;Lorg/chromium/content_public/browser/InputMethodManagerWrapper$Delegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/content/browser/input/InputMethodManagerWrapperImpl;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lorg/chromium/content/browser/input/InputMethodManagerWrapperImpl;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    iput-object p3, p0, Lorg/chromium/content/browser/input/InputMethodManagerWrapperImpl;->mDelegate:Lorg/chromium/content_public/browser/InputMethodManagerWrapper$Delegate;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/chromium/content/browser/input/InputMethodManagerWrapperImpl;->mExtensionsViewLaunched:Z

    return-void
.end method

.method public static synthetic a(Lorg/chromium/content/browser/input/InputMethodManagerWrapperImpl;Landroid/view/View;ILandroid/os/ResultReceiver;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/content/browser/input/InputMethodManagerWrapperImpl;->lambda$showSoftInput$0(Landroid/view/View;ILandroid/os/ResultReceiver;)V

    return-void
.end method

.method private static getActivityFromWindowAndroid(Lorg/chromium/ui/base/WindowAndroid;)Landroid/app/Activity;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    return-object p0
.end method

.method private getContextForMultiDisplay()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/input/InputMethodManagerWrapperImpl;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    invoke-static {v0}, Lorg/chromium/content/browser/input/InputMethodManagerWrapperImpl;->getActivityFromWindowAndroid(Lorg/chromium/ui/base/WindowAndroid;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/input/InputMethodManagerWrapperImpl;->mContext:Landroid/content/Context;

    :cond_0
    return-object v0
.end method

.method private getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    invoke-direct {p0}, Lorg/chromium/content/browser/input/InputMethodManagerWrapperImpl;->getContextForMultiDisplay()Landroid/content/Context;

    move-result-object p0

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    return-object p0
.end method

.method private synthetic lambda$showSoftInput$0(Landroid/view/View;ILandroid/os/ResultReceiver;)V
    .locals 1

    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/input/InputMethodManagerWrapperImpl;->isActive(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/content/browser/input/InputMethodManagerWrapperImpl;->showSoftInputInternal(Landroid/view/View;ILandroid/os/ResultReceiver;)V

    :cond_0
    return-void
.end method

.method private showSoftInputInternal(Landroid/view/View;ILandroid/os/ResultReceiver;)V
    .locals 1

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    :try_start_0
    invoke-direct {p0}, Lorg/chromium/content/browser/input/InputMethodManagerWrapperImpl;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-void

    :goto_1
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw p0
.end method


# virtual methods
.method public getDisplayId(Landroid/content/Context;)I
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {p1}, Lorg/chromium/ui/display/DisplayAndroid;->getNonMultiDisplay(Landroid/content/Context;)Lorg/chromium/ui/display/DisplayAndroid;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/ui/display/DisplayAndroid;->getDisplayId()I

    move-result p0

    return p0
.end method

.method public hasCorrectDisplayId(Landroid/content/Context;Landroid/app/Activity;)Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/input/InputMethodManagerWrapperImpl;->getDisplayId(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {p0, p2}, Lorg/chromium/content/browser/input/InputMethodManagerWrapperImpl;->getDisplayId(Landroid/content/Context;)I

    move-result p0

    if-eq p0, p1, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "IMM"

    const-string v0, "Activity\'s display ID(%d) does not match context\'s display ID(%d). Using a workaround to show soft input on the correct display..."

    invoke-static {p2, v0, p0, p1}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)Z
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/content/browser/input/InputMethodManagerWrapperImpl;->mPendingRunnableOnInputConnection:Ljava/lang/Runnable;

    invoke-direct {p0}, Lorg/chromium/content/browser/input/InputMethodManagerWrapperImpl;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->isAcceptingText()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public isActive(Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0}, Lorg/chromium/content/browser/input/InputMethodManagerWrapperImpl;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onInputConnectionCreated()V
    .locals 2

    iget-object v0, p0, Lorg/chromium/content/browser/input/InputMethodManagerWrapperImpl;->mPendingRunnableOnInputConnection:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/chromium/content/browser/input/InputMethodManagerWrapperImpl;->mPendingRunnableOnInputConnection:Ljava/lang/Runnable;

    const/4 p0, 0x7

    invoke-static {p0, v0}, Lorg/chromium/base/task/PostTask;->postTask(ILjava/lang/Runnable;)V

    return-void
.end method

.method public onWindowAndroidChanged(Lorg/chromium/ui/base/WindowAndroid;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/input/InputMethodManagerWrapperImpl;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    return-void
.end method

.method public restartInput(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/content/browser/input/InputMethodManagerWrapperImpl;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    return-void
.end method

.method public setLaunchedExtensionView(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/chromium/content/browser/input/InputMethodManagerWrapperImpl;->mExtensionsViewLaunched:Z

    return-void
.end method

.method public showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)V
    .locals 7

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/content/browser/input/InputMethodManagerWrapperImpl;->mPendingRunnableOnInputConnection:Ljava/lang/Runnable;

    iget-object v0, p0, Lorg/chromium/content/browser/input/InputMethodManagerWrapperImpl;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    invoke-static {v0}, Lorg/chromium/content/browser/input/InputMethodManagerWrapperImpl;->getActivityFromWindowAndroid(Lorg/chromium/ui/base/WindowAndroid;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/chromium/content/browser/input/InputMethodManagerWrapperImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v0}, Lorg/chromium/content/browser/input/InputMethodManagerWrapperImpl;->hasCorrectDisplayId(Landroid/content/Context;Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lorg/chromium/content/browser/input/InputMethodManagerWrapperImpl;->mExtensionsViewLaunched:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLocalFocus(ZZ)V

    iget-object v0, p0, Lorg/chromium/content/browser/input/InputMethodManagerWrapperImpl;->mDelegate:Lorg/chromium/content_public/browser/InputMethodManagerWrapper$Delegate;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/chromium/content_public/browser/InputMethodManagerWrapper$Delegate;->hasInputConnection()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, LN4/f;

    const/4 v3, 0x3

    move-object v1, v0

    move v2, p2

    move-object v4, p0

    move-object v5, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, LN4/f;-><init>(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/chromium/content/browser/input/InputMethodManagerWrapperImpl;->mPendingRunnableOnInputConnection:Ljava/lang/Runnable;

    return-void

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/content/browser/input/InputMethodManagerWrapperImpl;->showSoftInputInternal(Landroid/view/View;ILandroid/os/ResultReceiver;)V

    return-void
.end method

.method public updateCursorAnchorInfo(Landroid/view/View;Landroid/view/inputmethod/CursorAnchorInfo;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/content/browser/input/InputMethodManagerWrapperImpl;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/view/inputmethod/InputMethodManager;->updateCursorAnchorInfo(Landroid/view/View;Landroid/view/inputmethod/CursorAnchorInfo;)V

    return-void
.end method

.method public updateExtractedText(Landroid/view/View;ILandroid/view/inputmethod/ExtractedText;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/content/browser/input/InputMethodManagerWrapperImpl;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/inputmethod/InputMethodManager;->updateExtractedText(Landroid/view/View;ILandroid/view/inputmethod/ExtractedText;)V

    return-void
.end method

.method public updateSelection(Landroid/view/View;IIII)V
    .locals 6

    invoke-direct {p0}, Lorg/chromium/content/browser/input/InputMethodManagerWrapperImpl;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    return-void
.end method

.method public viewClicked(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/content/browser/input/InputMethodManagerWrapperImpl;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->viewClicked(Landroid/view/View;)V

    return-void
.end method
