.class final Lorg/chromium/content/browser/ScreenOrientationProviderImpl$PendingRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/content/browser/WindowEventObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/ScreenOrientationProviderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PendingRequest"
.end annotation


# instance fields
.field private final mLockOrUnlock:Z

.field private mObserverRemoved:Z

.field private final mProvider:Lorg/chromium/content/browser/ScreenOrientationProviderImpl;

.field private final mWebScreenOrientation:B

.field private final mWindowEventManager:Lorg/chromium/content/browser/WindowEventObserverManager;


# direct methods
.method public constructor <init>(Lorg/chromium/content/browser/ScreenOrientationProviderImpl;Lorg/chromium/content/browser/WindowEventObserverManager;ZB)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/content/browser/ScreenOrientationProviderImpl$PendingRequest;->mProvider:Lorg/chromium/content/browser/ScreenOrientationProviderImpl;

    iput-object p2, p0, Lorg/chromium/content/browser/ScreenOrientationProviderImpl$PendingRequest;->mWindowEventManager:Lorg/chromium/content/browser/WindowEventObserverManager;

    iput-boolean p3, p0, Lorg/chromium/content/browser/ScreenOrientationProviderImpl$PendingRequest;->mLockOrUnlock:Z

    iput-byte p4, p0, Lorg/chromium/content/browser/ScreenOrientationProviderImpl$PendingRequest;->mWebScreenOrientation:B

    invoke-virtual {p2, p0}, Lorg/chromium/content/browser/WindowEventObserverManager;->addObserver(Lorg/chromium/content/browser/WindowEventObserver;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-boolean v0, p0, Lorg/chromium/content/browser/ScreenOrientationProviderImpl$PendingRequest;->mObserverRemoved:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ScreenOrientationProviderImpl$PendingRequest;->mWindowEventManager:Lorg/chromium/content/browser/WindowEventObserverManager;

    invoke-virtual {v0, p0}, Lorg/chromium/content/browser/WindowEventObserverManager;->removeObserver(Lorg/chromium/content/browser/WindowEventObserver;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/browser/ScreenOrientationProviderImpl$PendingRequest;->mObserverRemoved:Z

    return-void
.end method

.method public onWindowAndroidChanged(Lorg/chromium/ui/base/WindowAndroid;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lorg/chromium/content/browser/ScreenOrientationProviderImpl$PendingRequest;->mLockOrUnlock:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/content/browser/ScreenOrientationProviderImpl$PendingRequest;->mProvider:Lorg/chromium/content/browser/ScreenOrientationProviderImpl;

    iget-byte v1, p0, Lorg/chromium/content/browser/ScreenOrientationProviderImpl$PendingRequest;->mWebScreenOrientation:B

    invoke-virtual {v0, p1, v1}, Lorg/chromium/content/browser/ScreenOrientationProviderImpl;->lockOrientation(Lorg/chromium/ui/base/WindowAndroid;B)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/ScreenOrientationProviderImpl$PendingRequest;->mProvider:Lorg/chromium/content/browser/ScreenOrientationProviderImpl;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/ScreenOrientationProviderImpl;->unlockOrientation(Lorg/chromium/ui/base/WindowAndroid;)V

    :goto_0
    iget-object p1, p0, Lorg/chromium/content/browser/ScreenOrientationProviderImpl$PendingRequest;->mWindowEventManager:Lorg/chromium/content/browser/WindowEventObserverManager;

    invoke-virtual {p1, p0}, Lorg/chromium/content/browser/WindowEventObserverManager;->removeObserver(Lorg/chromium/content/browser/WindowEventObserver;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/chromium/content/browser/ScreenOrientationProviderImpl$PendingRequest;->mObserverRemoved:Z

    return-void
.end method
