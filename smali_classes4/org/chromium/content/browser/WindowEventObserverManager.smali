.class public final Lorg/chromium/content/browser/WindowEventObserverManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/ui/display/DisplayAndroid$DisplayAndroidObserver;
.implements Lorg/chromium/base/UserData;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/WindowEventObserverManager$UserDataFactoryLazyHolder;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mAttachedToWindow:Z

.field private mDipScale:F

.field private mRotation:I

.field private mViewEventSink:Lorg/chromium/content/browser/ViewEventSinkImpl;

.field private mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

.field private final mWindowEventObservers:Lorg/chromium/base/ObserverList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/ObserverList<",
            "Lorg/chromium/content/browser/WindowEventObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/chromium/base/ObserverList;

    invoke-direct {v0}, Lorg/chromium/base/ObserverList;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/WindowEventObserverManager;->mWindowEventObservers:Lorg/chromium/base/ObserverList;

    invoke-static {p1}, Lorg/chromium/content/browser/ViewEventSinkImpl;->from(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/ViewEventSinkImpl;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/WindowEventObserverManager;->mViewEventSink:Lorg/chromium/content/browser/ViewEventSinkImpl;

    invoke-interface {p1}, Lorg/chromium/content_public/browser/WebContents;->getTopLevelNativeWindow()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/WindowEventObserverManager;->onWindowAndroidChanged(Lorg/chromium/ui/base/WindowAndroid;)V

    :cond_0
    check-cast p1, Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/WindowEventObserverManager;->addObserver(Lorg/chromium/content/browser/WindowEventObserver;)V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/chromium/content_public/browser/WebContents;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/content/browser/WindowEventObserverManager;-><init>(Lorg/chromium/content_public/browser/WebContents;)V

    return-void
.end method

.method private addActivityStateObserver()V
    .locals 2

    iget-boolean v0, p0, Lorg/chromium/content/browser/WindowEventObserverManager;->mAttachedToWindow:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/content/browser/WindowEventObserverManager;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/chromium/content/browser/WindowEventObserverManager;->mViewEventSink:Lorg/chromium/content/browser/ViewEventSinkImpl;

    invoke-virtual {v0, v1}, Lorg/chromium/ui/base/WindowAndroid;->addActivityStateObserver(Lorg/chromium/ui/base/WindowAndroid$ActivityStateObserver;)V

    iget-object v0, p0, Lorg/chromium/content/browser/WindowEventObserverManager;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    invoke-virtual {v0}, Lorg/chromium/ui/base/WindowAndroid;->isTopResumedActivity()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/chromium/content/browser/WindowEventObserverManager;->mViewEventSink:Lorg/chromium/content/browser/ViewEventSinkImpl;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/ViewEventSinkImpl;->onActivityTopResumedChanged(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private addDisplayAndroidObserverIfNeeded()V
    .locals 2

    iget-boolean v0, p0, Lorg/chromium/content/browser/WindowEventObserverManager;->mAttachedToWindow:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/content/browser/WindowEventObserverManager;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/chromium/ui/base/WindowAndroid;->getDisplay()Lorg/chromium/ui/display/DisplayAndroid;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/chromium/ui/display/DisplayAndroid;->addObserver(Lorg/chromium/ui/display/DisplayAndroid$DisplayAndroidObserver;)V

    invoke-virtual {v0}, Lorg/chromium/ui/display/DisplayAndroid;->getRotation()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/chromium/content/browser/WindowEventObserverManager;->onRotationChanged(I)V

    invoke-virtual {v0}, Lorg/chromium/ui/display/DisplayAndroid;->getDipScale()F

    move-result v0

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/WindowEventObserverManager;->onDIPScaleChanged(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method private addUiObservers()V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/content/browser/WindowEventObserverManager;->addDisplayAndroidObserverIfNeeded()V

    invoke-direct {p0}, Lorg/chromium/content/browser/WindowEventObserverManager;->addActivityStateObserver()V

    return-void
.end method

.method public static from(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/WindowEventObserverManager;
    .locals 0

    invoke-static {p0}, Lorg/chromium/content/browser/WindowEventObserverManager;->maybeFrom(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/WindowEventObserverManager;

    move-result-object p0

    return-object p0
.end method

.method public static maybeFrom(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/WindowEventObserverManager;
    .locals 2

    const-class v0, Lorg/chromium/content/browser/WindowEventObserverManager;

    invoke-static {}, Lorg/chromium/content/browser/WindowEventObserverManager$UserDataFactoryLazyHolder;->a()Lorg/chromium/content_public/browser/WebContents$UserDataFactory;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lorg/chromium/content_public/browser/WebContents;->getOrSetUserData(Ljava/lang/Class;Lorg/chromium/content_public/browser/WebContents$UserDataFactory;)Lorg/chromium/base/UserData;

    move-result-object p0

    check-cast p0, Lorg/chromium/content/browser/WindowEventObserverManager;

    return-object p0
.end method

.method private removeActivityStateObserver()V
    .locals 1

    iget-boolean v0, p0, Lorg/chromium/content/browser/WindowEventObserverManager;->mAttachedToWindow:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/content/browser/WindowEventObserverManager;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/chromium/content/browser/WindowEventObserverManager;->mViewEventSink:Lorg/chromium/content/browser/ViewEventSinkImpl;

    invoke-virtual {v0, p0}, Lorg/chromium/ui/base/WindowAndroid;->removeActivityStateObserver(Lorg/chromium/ui/base/WindowAndroid$ActivityStateObserver;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private removeDisplayAndroidObserver()V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/WindowEventObserverManager;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lorg/chromium/ui/base/WindowAndroid;->getDisplay()Lorg/chromium/ui/display/DisplayAndroid;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/chromium/ui/display/DisplayAndroid;->removeObserver(Lorg/chromium/ui/display/DisplayAndroid$DisplayAndroidObserver;)V

    return-void
.end method

.method private removeUiObservers()V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/content/browser/WindowEventObserverManager;->removeDisplayAndroidObserver()V

    invoke-direct {p0}, Lorg/chromium/content/browser/WindowEventObserverManager;->removeActivityStateObserver()V

    return-void
.end method


# virtual methods
.method public addObserver(Lorg/chromium/content/browser/WindowEventObserver;)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/WindowEventObserverManager;->mWindowEventObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p1}, Lorg/chromium/base/ObserverList;->addObserver(Ljava/lang/Object;)Z

    iget-boolean p0, p0, Lorg/chromium/content/browser/WindowEventObserverManager;->mAttachedToWindow:Z

    if-eqz p0, :cond_0

    invoke-interface {p1}, Lorg/chromium/content/browser/WindowEventObserver;->onAttachedToWindow()V

    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/browser/WindowEventObserverManager;->mAttachedToWindow:Z

    invoke-direct {p0}, Lorg/chromium/content/browser/WindowEventObserverManager;->addUiObservers()V

    iget-object p0, p0, Lorg/chromium/content/browser/WindowEventObserverManager;->mWindowEventObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {p0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/browser/WindowEventObserver;

    invoke-interface {v0}, Lorg/chromium/content/browser/WindowEventObserver;->onAttachedToWindow()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object p0, p0, Lorg/chromium/content/browser/WindowEventObserverManager;->mWindowEventObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {p0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/browser/WindowEventObserver;

    invoke-interface {v0, p1}, Lorg/chromium/content/browser/WindowEventObserver;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDIPScaleChanged(F)V
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/WindowEventObserverManager;->mDipScale:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lorg/chromium/content/browser/WindowEventObserverManager;->mDipScale:F

    iget-object p0, p0, Lorg/chromium/content/browser/WindowEventObserverManager;->mWindowEventObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {p0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/browser/WindowEventObserver;

    invoke-interface {v0, p1}, Lorg/chromium/ui/display/DisplayAndroid$DisplayAndroidObserver;->onDIPScaleChanged(F)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-direct {p0}, Lorg/chromium/content/browser/WindowEventObserverManager;->removeUiObservers()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/content/browser/WindowEventObserverManager;->mAttachedToWindow:Z

    iget-object p0, p0, Lorg/chromium/content/browser/WindowEventObserverManager;->mWindowEventObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {p0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/browser/WindowEventObserver;

    invoke-interface {v0}, Lorg/chromium/content/browser/WindowEventObserver;->onDetachedFromWindow()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onRotationChanged(I)V
    .locals 1

    iget v0, p0, Lorg/chromium/content/browser/WindowEventObserverManager;->mRotation:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lorg/chromium/content/browser/WindowEventObserverManager;->mRotation:I

    iget-object p0, p0, Lorg/chromium/content/browser/WindowEventObserverManager;->mWindowEventObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {p0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/browser/WindowEventObserver;

    invoke-interface {v0, p1}, Lorg/chromium/ui/display/DisplayAndroid$DisplayAndroidObserver;->onRotationChanged(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onViewFocusChanged(ZZ)V
    .locals 1

    iget-object p0, p0, Lorg/chromium/content/browser/WindowEventObserverManager;->mWindowEventObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {p0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/browser/WindowEventObserver;

    invoke-interface {v0, p1, p2}, Lorg/chromium/content/browser/WindowEventObserver;->onViewFocusChanged(ZZ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onWindowAndroidChanged(Lorg/chromium/ui/base/WindowAndroid;)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/WindowEventObserverManager;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lorg/chromium/content/browser/WindowEventObserverManager;->removeUiObservers()V

    iput-object p1, p0, Lorg/chromium/content/browser/WindowEventObserverManager;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    invoke-direct {p0}, Lorg/chromium/content/browser/WindowEventObserverManager;->addUiObservers()V

    iget-object p0, p0, Lorg/chromium/content/browser/WindowEventObserverManager;->mWindowEventObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {p0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/browser/WindowEventObserver;

    invoke-interface {v0, p1}, Lorg/chromium/content/browser/WindowEventObserver;->onWindowAndroidChanged(Lorg/chromium/ui/base/WindowAndroid;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    iget-object p0, p0, Lorg/chromium/content/browser/WindowEventObserverManager;->mWindowEventObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {p0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/browser/WindowEventObserver;

    invoke-interface {v0, p1}, Lorg/chromium/content/browser/WindowEventObserver;->onWindowFocusChanged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeObserver(Lorg/chromium/content/browser/WindowEventObserver;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/WindowEventObserverManager;->mWindowEventObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {p0, p1}, Lorg/chromium/base/ObserverList;->removeObserver(Ljava/lang/Object;)Z

    return-void
.end method
