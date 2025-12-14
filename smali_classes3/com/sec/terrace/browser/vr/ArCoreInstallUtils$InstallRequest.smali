.class Lcom/sec/terrace/browser/vr/ArCoreInstallUtils$InstallRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/vr/ArCoreInstallUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InstallRequest"
.end annotation


# instance fields
.field private mInstallInstance:Lcom/sec/terrace/browser/vr/ArCoreInstallUtils;

.field private mWeakActivity:Lorg/chromium/ui/base/ImmutableWeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/ui/base/ImmutableWeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mWeakApplication:Lorg/chromium/ui/base/ImmutableWeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/ui/base/ImmutableWeakReference<",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/vr/ArCoreInstallUtils;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/browser/vr/ArCoreInstallUtils$InstallRequest;->mInstallInstance:Lcom/sec/terrace/browser/vr/ArCoreInstallUtils;

    new-instance p1, Lorg/chromium/ui/base/ImmutableWeakReference;

    invoke-direct {p1, p2}, Lorg/chromium/ui/base/ImmutableWeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/sec/terrace/browser/vr/ArCoreInstallUtils$InstallRequest;->mWeakActivity:Lorg/chromium/ui/base/ImmutableWeakReference;

    invoke-virtual {p2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    new-instance p2, Lorg/chromium/ui/base/ImmutableWeakReference;

    invoke-direct {p2, p1}, Lorg/chromium/ui/base/ImmutableWeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/sec/terrace/browser/vr/ArCoreInstallUtils$InstallRequest;->mWeakApplication:Lorg/chromium/ui/base/ImmutableWeakReference;

    invoke-virtual {p1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/terrace/browser/vr/ArCoreInstallUtils$InstallRequest;->mInstallInstance:Lcom/sec/terrace/browser/vr/ArCoreInstallUtils;

    iget-object v0, p0, Lcom/sec/terrace/browser/vr/ArCoreInstallUtils$InstallRequest;->mWeakApplication:Lorg/chromium/ui/base/ImmutableWeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/vr/ArCoreInstallUtils$InstallRequest;->mWeakActivity:Lorg/chromium/ui/base/ImmutableWeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_1

    iget-object p0, p0, Lcom/sec/terrace/browser/vr/ArCoreInstallUtils$InstallRequest;->mInstallInstance:Lcom/sec/terrace/browser/vr/ArCoreInstallUtils;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/sec/terrace/browser/vr/ArCoreInstallUtils;->a(Lcom/sec/terrace/browser/vr/ArCoreInstallUtils;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
