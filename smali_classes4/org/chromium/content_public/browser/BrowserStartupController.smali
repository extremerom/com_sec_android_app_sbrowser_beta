.class public interface abstract Lorg/chromium/content_public/browser/BrowserStartupController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content_public/browser/BrowserStartupController$StartupCallback;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# direct methods
.method public static getInstance()Lorg/chromium/content_public/browser/BrowserStartupController;
    .locals 1

    invoke-static {}, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->getInstance()Lorg/chromium/content_public/browser/BrowserStartupController;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract addStartupCompletedObserver(Lorg/chromium/content_public/browser/BrowserStartupController$StartupCallback;)V
.end method

.method public abstract isFullBrowserStarted()Z
.end method

.method public abstract isNativeStarted()Z
.end method

.method public abstract isRunningInMinimalBrowserMode()Z
.end method

.method public abstract startBrowserProcessesAsync(IZZLorg/chromium/content_public/browser/BrowserStartupController$StartupCallback;)V
.end method

.method public abstract startBrowserProcessesSync(IZZ)V
.end method
