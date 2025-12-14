.class public Lcom/sec/terrace/browser/vr/XrActivityListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/vr/XrActivityListener$Natives;
    }
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# instance fields
.field private mNativeXrActivityListener:J

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
.method private constructor <init>(JLorg/chromium/content_public/browser/WebContents;)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    invoke-interface {p3}, Lorg/chromium/content_public/browser/WebContents;->getTopLevelNativeWindow()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object p3

    invoke-virtual {p3}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/Activity;

    iput-wide p1, p0, Lcom/sec/terrace/browser/vr/XrActivityListener;->mNativeXrActivityListener:J

    new-instance p1, Lorg/chromium/ui/base/ImmutableWeakReference;

    invoke-direct {p1, p3}, Lorg/chromium/ui/base/ImmutableWeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/sec/terrace/browser/vr/XrActivityListener;->mWeakActivity:Lorg/chromium/ui/base/ImmutableWeakReference;

    invoke-virtual {p3}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    new-instance p2, Lorg/chromium/ui/base/ImmutableWeakReference;

    invoke-direct {p2, p1}, Lorg/chromium/ui/base/ImmutableWeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/sec/terrace/browser/vr/XrActivityListener;->mWeakApplication:Lorg/chromium/ui/base/ImmutableWeakReference;

    invoke-virtual {p1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method private onNativeDestroy()V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/terrace/browser/vr/XrActivityListener;->mNativeXrActivityListener:J

    iget-object v0, p0, Lcom/sec/terrace/browser/vr/XrActivityListener;->mWeakApplication:Lorg/chromium/ui/base/ImmutableWeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method


# virtual methods
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
    .locals 4

    iget-object v0, p0, Lcom/sec/terrace/browser/vr/XrActivityListener;->mWeakActivity:Lorg/chromium/ui/base/ImmutableWeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_1

    iget-wide v0, p0, Lcom/sec/terrace/browser/vr/XrActivityListener;->mNativeXrActivityListener:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/vr/XrActivityListenerJni;->get()Lcom/sec/terrace/browser/vr/XrActivityListener$Natives;

    move-result-object p1

    iget-wide v0, p0, Lcom/sec/terrace/browser/vr/XrActivityListener;->mNativeXrActivityListener:J

    invoke-interface {p1, v0, v1, p0}, Lcom/sec/terrace/browser/vr/XrActivityListener$Natives;->onActivityResumed(JLcom/sec/terrace/browser/vr/XrActivityListener;)V

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
