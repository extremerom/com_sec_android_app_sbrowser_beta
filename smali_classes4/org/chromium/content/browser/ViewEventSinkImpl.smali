.class public final Lorg/chromium/content/browser/ViewEventSinkImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/content_public/browser/ViewEventSink;
.implements Lorg/chromium/ui/base/WindowAndroid$ActivityStateObserver;
.implements Lorg/chromium/base/UserData;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/ViewEventSinkImpl$UserDataFactoryLazyHolder;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mHasInputFocus:Ljava/lang/Boolean;

.field private mHasViewFocus:Ljava/lang/Boolean;

.field private mHideKeyboardOnBlur:Z

.field private mIsTopActivity:Z

.field private final mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;


# direct methods
.method public constructor <init>(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/browser/ViewEventSinkImpl;->mIsTopActivity:Z

    check-cast p1, Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    iput-object p1, p0, Lorg/chromium/content/browser/ViewEventSinkImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    return-void
.end method

.method public static from(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/ViewEventSinkImpl;
    .locals 2

    const-class v0, Lorg/chromium/content/browser/ViewEventSinkImpl;

    invoke-static {}, Lorg/chromium/content/browser/ViewEventSinkImpl$UserDataFactoryLazyHolder;->a()Lorg/chromium/content_public/browser/WebContents$UserDataFactory;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lorg/chromium/content_public/browser/WebContents;->getOrSetUserData(Ljava/lang/Class;Lorg/chromium/content_public/browser/WebContents$UserDataFactory;)Lorg/chromium/base/UserData;

    move-result-object p0

    check-cast p0, Lorg/chromium/content/browser/ViewEventSinkImpl;

    return-object p0
.end method

.method private onFocusChanged()V
    .locals 3

    iget-object v0, p0, Lorg/chromium/content/browser/ViewEventSinkImpl;->mHasViewFocus:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/chromium/content/browser/ViewEventSinkImpl;->mIsTopActivity:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/chromium/content/browser/ViewEventSinkImpl;->mHasInputFocus:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v1, v0, :cond_2

    return-void

    :cond_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/ViewEventSinkImpl;->mHasInputFocus:Ljava/lang/Boolean;

    iget-object v0, p0, Lorg/chromium/content/browser/ViewEventSinkImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    if-nez v0, :cond_3

    return-void

    :cond_3
    invoke-static {v0}, Lorg/chromium/content/browser/WindowEventObserverManager;->from(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/WindowEventObserverManager;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/content/browser/ViewEventSinkImpl;->mHasInputFocus:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-boolean v2, p0, Lorg/chromium/content/browser/ViewEventSinkImpl;->mHideKeyboardOnBlur:Z

    invoke-virtual {v0, v1, v2}, Lorg/chromium/content/browser/WindowEventObserverManager;->onViewFocusChanged(ZZ)V

    iget-object v0, p0, Lorg/chromium/content/browser/ViewEventSinkImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    iget-object p0, p0, Lorg/chromium/content/browser/ViewEventSinkImpl;->mHasInputFocus:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {v0, p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->setFocus(Z)V

    return-void
.end method


# virtual methods
.method public onActivityDestroyed()V
    .locals 0

    return-void
.end method

.method public onActivityTopResumedChanged(Z)V
    .locals 1

    iget-boolean v0, p0, Lorg/chromium/content/browser/ViewEventSinkImpl;->mIsTopActivity:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lorg/chromium/content/browser/ViewEventSinkImpl;->mIsTopActivity:Z

    invoke-direct {p0}, Lorg/chromium/content/browser/ViewEventSinkImpl;->onFocusChanged()V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/ViewEventSinkImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-static {p0}, Lorg/chromium/content/browser/WindowEventObserverManager;->from(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/WindowEventObserverManager;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/content/browser/WindowEventObserverManager;->onAttachedToWindow()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    const-string v0, "ViewEventSink.onConfigurationChanged"

    :try_start_0
    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/chromium/content/browser/ViewEventSinkImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-static {v1}, Lorg/chromium/content/browser/WindowEventObserverManager;->from(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/WindowEventObserverManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/chromium/content/browser/WindowEventObserverManager;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p0, p0, Lorg/chromium/content/browser/ViewEventSinkImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getViewAndroidDelegate()Lorg/chromium/ui/base/ViewAndroidDelegate;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/ui/base/ViewAndroidDelegate;->getContainerView()Landroid/view/View;

    move-result-object p0

    const-string p1, "ViewEventSinkImpl.onConfigurationChanged"

    invoke-static {p0, p1}, Lorg/chromium/ui/base/ViewUtils;->requestLayout(Landroid/view/View;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    return-void

    :goto_1
    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    throw p0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ViewEventSinkImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-static {v0}, Lorg/chromium/content/browser/WindowEventObserverManager;->from(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/WindowEventObserverManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/WindowEventObserverManager;->onDetachedFromWindow()V

    iget-object v0, p0, Lorg/chromium/content/browser/ViewEventSinkImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {v0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getStylusWritingHandler()Lorg/chromium/content_public/browser/StylusWritingHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ViewEventSinkImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {v0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getViewAndroidDelegate()Lorg/chromium/ui/base/ViewAndroidDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/chromium/content/browser/ViewEventSinkImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getStylusWritingHandler()Lorg/chromium/content_public/browser/StylusWritingHandler;

    move-result-object p0

    invoke-virtual {v0}, Lorg/chromium/ui/base/ViewAndroidDelegate;->getContainerView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/chromium/content_public/browser/StylusWritingHandler;->onDetachedFromWindow(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onViewFocusChanged(Z)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ViewEventSinkImpl;->mHasViewFocus:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/ViewEventSinkImpl;->mHasViewFocus:Ljava/lang/Boolean;

    invoke-direct {p0}, Lorg/chromium/content/browser/ViewEventSinkImpl;->onFocusChanged()V

    iget-object v0, p0, Lorg/chromium/content/browser/ViewEventSinkImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {v0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getStylusWritingHandler()Lorg/chromium/content_public/browser/StylusWritingHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/chromium/content/browser/ViewEventSinkImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {p0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getStylusWritingHandler()Lorg/chromium/content_public/browser/StylusWritingHandler;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/chromium/content_public/browser/StylusWritingHandler;->onFocusChanged(Z)V

    :cond_1
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/ViewEventSinkImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-static {p0}, Lorg/chromium/content/browser/WindowEventObserverManager;->from(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/WindowEventObserverManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/WindowEventObserverManager;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public setAccessDelegate(Lorg/chromium/content_public/browser/ViewEventSink$InternalAccessDelegate;)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ViewEventSinkImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-static {v0}, Lorg/chromium/content/browser/GestureListenerManagerImpl;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/GestureListenerManagerImpl;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/GestureListenerManagerImpl;->setScrollDelegate(Lorg/chromium/content_public/browser/ViewEventSink$InternalAccessDelegate;)V

    iget-object p0, p0, Lorg/chromium/content/browser/ViewEventSinkImpl;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-static {p0}, Lorg/chromium/content/browser/ContentUiEventHandler;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/ContentUiEventHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/ContentUiEventHandler;->setEventDelegate(Lorg/chromium/content_public/browser/ViewEventSink$InternalAccessDelegate;)V

    return-void
.end method

.method public setHideKeyboardOnBlur(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/chromium/content/browser/ViewEventSinkImpl;->mHideKeyboardOnBlur:Z

    return-void
.end method
