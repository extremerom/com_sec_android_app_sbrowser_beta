.class public abstract Lorg/chromium/base/ActivityLifecycleCallbacksAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lorg/chromium/base/ActivityLifecycleCallbacksAdapter;->onStateChanged(Landroid/app/Activity;I)V

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x6

    invoke-virtual {p0, p1, v0}, Lorg/chromium/base/ActivityLifecycleCallbacksAdapter;->onStateChanged(Landroid/app/Activity;I)V

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lorg/chromium/base/ActivityLifecycleCallbacksAdapter;->onStateChanged(Landroid/app/Activity;I)V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lorg/chromium/base/ActivityLifecycleCallbacksAdapter;->onStateChanged(Landroid/app/Activity;I)V

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lorg/chromium/base/ActivityLifecycleCallbacksAdapter;->onStateChanged(Landroid/app/Activity;I)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lorg/chromium/base/ActivityLifecycleCallbacksAdapter;->onStateChanged(Landroid/app/Activity;I)V

    return-void
.end method

.method public abstract onStateChanged(Landroid/app/Activity;I)V
.end method
