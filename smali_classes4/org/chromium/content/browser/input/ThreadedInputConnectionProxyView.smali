.class public Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private final mContainerView:Landroid/view/View;

.field private final mFactory:Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;

.field private final mFocused:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mImeThreadHandler:Landroid/os/Handler;

.field private final mRootView:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mWindowFocused:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mWindowToken:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/view/View;Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;->mFocused:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;->mWindowFocused:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;->mWindowToken:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v2, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;->mRootView:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p2, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;->mImeThreadHandler:Landroid/os/Handler;

    iput-object p3, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;->mContainerView:Landroid/view/View;

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p3}, Landroid/view/View;->hasFocus()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p3}, Landroid/view/View;->hasWindowFocus()Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {p3}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iput-object p4, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;->mFactory:Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;

    return-void
.end method

.method public static synthetic a(Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;->lambda$onCreateInputConnection$0(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onCreateInputConnection$0(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2

    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;->mFactory:Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->setTriggerDelayedOnCreateInputConnection(Z)V

    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;->mContainerView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    iget-object p0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;->mFactory:Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->setTriggerDelayedOnCreateInputConnection(Z)V

    return-object p1
.end method


# virtual methods
.method public checkInputConnectionProxy(Landroid/view/View;)Z
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;->mContainerView:Landroid/view/View;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;->mImeThreadHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public getRootView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;->mWindowFocused:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;->mRootView:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getWindowToken()Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;->mWindowToken:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IBinder;

    return-object p0
.end method

.method public hasWindowFocus()Z
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;->mWindowFocused:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public isFocused()Z
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;->mFocused:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public onCheckIsTextEditor()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2

    new-instance v0, Lc9/a;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0, p1}, Lc9/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const/16 p0, 0x8

    invoke-static {p0, v0}, Lorg/chromium/base/task/PostTask;->runSynchronously(ILjava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputConnection;

    return-object p0
.end method

.method public onOriginalViewAttachedToWindow()V
    .locals 2

    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;->mWindowToken:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;->mContainerView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;->mRootView:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object p0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;->mContainerView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public onOriginalViewDetachedFromWindow()V
    .locals 2

    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;->mWindowToken:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object p0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;->mRootView:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public onOriginalViewFocusChanged(Z)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;->mFocused:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public onOriginalViewWindowFocusChanged(Z)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;->mWindowFocused:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    return-void
.end method
