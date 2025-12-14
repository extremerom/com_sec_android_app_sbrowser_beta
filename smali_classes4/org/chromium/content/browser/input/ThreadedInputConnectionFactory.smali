.class public Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/content/browser/input/ChromiumBaseInputConnection$Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$FocusState;,
        Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$LazyHandlerHolder;,
        Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$CheckInvalidator;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field protected mCheckInvalidator:Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$CheckInvalidator;

.field private mFocusState:I
    .annotation build Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$FocusState;
    .end annotation
.end field

.field private final mInputMethodManagerWrapper:Lorg/chromium/content_public/browser/InputMethodManagerWrapper;

.field private mProxyView:Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;

.field private mReentrantTriggering:Z

.field protected mThreadedInputConnection:Lorg/chromium/content/browser/input/ThreadedInputConnection;

.field private mTriggerDelayedOnCreateInputConnection:Z


# direct methods
.method public constructor <init>(Lorg/chromium/content_public/browser/InputMethodManagerWrapper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->mFocusState:I

    iput-object p1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->mInputMethodManagerWrapper:Lorg/chromium/content_public/browser/InputMethodManagerWrapper;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->mTriggerDelayedOnCreateInputConnection:Z

    return-void
.end method

.method public static bridge synthetic a(Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;)Lorg/chromium/content_public/browser/InputMethodManagerWrapper;
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->mInputMethodManagerWrapper:Lorg/chromium/content_public/browser/InputMethodManagerWrapper;

    return-object p0
.end method

.method public static bridge synthetic b(Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;)Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->mProxyView:Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;

    return-object p0
.end method

.method public static bridge synthetic c(Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;Landroid/view/View;Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$CheckInvalidator;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->checkRegisterResult(Landroid/view/View;Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$CheckInvalidator;I)V

    return-void
.end method

.method private checkRegisterResult(Landroid/view/View;Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$CheckInvalidator;I)V
    .locals 2

    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->mInputMethodManagerWrapper:Lorg/chromium/content_public/browser/InputMethodManagerWrapper;

    iget-object v1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->mProxyView:Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;

    invoke-interface {v0, v1}, Lorg/chromium/content_public/browser/InputMethodManagerWrapper;->isActive(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->onRegisterProxyViewSuccess()V

    return-void

    :cond_0
    if-lez p3, :cond_1

    add-int/lit8 p3, p3, -0x1

    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->postCheckRegisterResultOnUiThread(Landroid/view/View;Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$CheckInvalidator;I)V

    return-void

    :cond_1
    invoke-virtual {p2}, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$CheckInvalidator;->isInvalid()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->onRegisterProxyViewFailure()V

    return-void
.end method

.method public static bridge synthetic d(Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;Landroid/view/View;Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$CheckInvalidator;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->postCheckRegisterResultOnUiThread(Landroid/view/View;Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$CheckInvalidator;I)V

    return-void
.end method

.method private postCheckRegisterResultOnUiThread(Landroid/view/View;Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$CheckInvalidator;I)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$2;-><init>(Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;Landroid/view/View;Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$CheckInvalidator;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public createProxyView(Landroid/os/Handler;Landroid/view/View;)Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    new-instance v0, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2, p0}, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/view/View;Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;)V

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 0

    invoke-static {}, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$LazyHandlerHolder;->a()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic initializeAndGet(Landroid/view/View;Lorg/chromium/content/browser/input/ImeAdapterImpl;IIIIIILjava/lang/String;Landroid/view/inputmethod/EditorInfo;)Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;
    .locals 0

    invoke-virtual/range {p0 .. p10}, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->initializeAndGet(Landroid/view/View;Lorg/chromium/content/browser/input/ImeAdapterImpl;IIIIIILjava/lang/String;Landroid/view/inputmethod/EditorInfo;)Lorg/chromium/content/browser/input/ThreadedInputConnection;

    move-result-object p0

    return-object p0
.end method

.method public initializeAndGet(Landroid/view/View;Lorg/chromium/content/browser/input/ImeAdapterImpl;IIIIIILjava/lang/String;Landroid/view/inputmethod/EditorInfo;)Lorg/chromium/content/browser/input/ThreadedInputConnection;
    .locals 0

    invoke-static {}, Lorg/chromium/content/browser/input/ImeUtils;->checkOnUiThread()V

    invoke-static/range {p3 .. p10}, Lorg/chromium/content/browser/input/ImeUtils;->computeEditorInfo(IIIIIILjava/lang/String;Landroid/view/inputmethod/EditorInfo;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    const-string p4, "com.htc.android.mail"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->mCheckInvalidator:Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$CheckInvalidator;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$CheckInvalidator;->invalidate()V

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->shouldTriggerDelayedOnCreateInputConnection()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->triggerDelayedOnCreateInputConnection(Landroid/view/View;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    iget-object p3, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->mThreadedInputConnection:Lorg/chromium/content/browser/input/ThreadedInputConnection;

    if-nez p3, :cond_2

    new-instance p3, Lorg/chromium/content/browser/input/ThreadedInputConnection;

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->getHandler()Landroid/os/Handler;

    move-result-object p4

    invoke-direct {p3, p1, p2, p4}, Lorg/chromium/content/browser/input/ThreadedInputConnection;-><init>(Landroid/view/View;Lorg/chromium/content/browser/input/ImeAdapterImpl;Landroid/os/Handler;)V

    iput-object p3, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->mThreadedInputConnection:Lorg/chromium/content/browser/input/ThreadedInputConnection;

    goto :goto_0

    :cond_2
    invoke-virtual {p3}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->resetOnUiThread()V

    :goto_0
    iget-object p0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->mThreadedInputConnection:Lorg/chromium/content/browser/input/ThreadedInputConnection;

    return-object p0
.end method

.method public onRegisterProxyViewFailure()V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string p0, "Ime"

    const-string v0, "onRegisterProxyViewFailure"

    invoke-static {p0, v0}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRegisterProxyViewSuccess()V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "Ime"

    const-string v1, "onRegisterProxyViewSuccess"

    invoke-static {v0, v1, p0}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onViewAttachedToWindow()V
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->mProxyView:Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;->onOriginalViewAttachedToWindow()V

    :cond_0
    return-void
.end method

.method public onViewDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->mCheckInvalidator:Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$CheckInvalidator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$CheckInvalidator;->invalidate()V

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->mProxyView:Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;->onOriginalViewDetachedFromWindow()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->mThreadedInputConnection:Lorg/chromium/content/browser/input/ThreadedInputConnection;

    return-void
.end method

.method public onViewFocusChanged(Z)V
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->mCheckInvalidator:Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$CheckInvalidator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$CheckInvalidator;->invalidate()V

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->mProxyView:Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;->onOriginalViewFocusChanged(Z)V

    :cond_1
    iget v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->mFocusState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    if-eqz p1, :cond_3

    const/4 p1, 0x2

    iput p1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->mFocusState:I

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    iput p1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->mFocusState:I

    :cond_3
    :goto_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->mCheckInvalidator:Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$CheckInvalidator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$CheckInvalidator;->invalidate()V

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->mProxyView:Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;->onOriginalViewWindowFocusChanged(Z)V

    :cond_1
    if-nez p1, :cond_2

    const/4 p1, 0x1

    iput p1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->mFocusState:I

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    iget p1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->mFocusState:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    const/4 p1, 0x3

    iput p1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->mFocusState:I

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    iput p1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->mFocusState:I

    :goto_0
    return-void
.end method

.method public postDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-virtual {p1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    invoke-virtual {p0, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setTriggerDelayedOnCreateInputConnection(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->mTriggerDelayedOnCreateInputConnection:Z

    return-void
.end method

.method public shouldTriggerDelayedOnCreateInputConnection()Z
    .locals 0

    iget-boolean p0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->mTriggerDelayedOnCreateInputConnection:Z

    return p0
.end method

.method public triggerDelayedOnCreateInputConnection(Landroid/view/View;)V
    .locals 4

    iget-boolean v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->mReentrantTriggering:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$CheckInvalidator;

    invoke-direct {v0}, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$CheckInvalidator;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->mCheckInvalidator:Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$CheckInvalidator;

    invoke-virtual {p1}, Landroid/view/View;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->mCheckInvalidator:Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$CheckInvalidator;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$CheckInvalidator;->invalidate()V

    :cond_2
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->createProxyView(Landroid/os/Handler;Landroid/view/View;)Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->mProxyView:Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->mReentrantTriggering:Z

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->mReentrantTriggering:Z

    new-instance v1, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$1;

    invoke-direct {v1, p0, p1}, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$1;-><init>(Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;Landroid/view/View;)V

    iget v2, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->mFocusState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, p1, v1, v2, v3}, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->postDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    iput v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->mFocusState:I

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
