.class public Lorg/chromium/content/browser/device_posture/WindowLayoutInfoListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/UnownedUserData;


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final KEY:Lorg/chromium/base/UnownedUserDataKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/UnownedUserDataKey<",
            "Lorg/chromium/content/browser/device_posture/WindowLayoutInfoListener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCurrentWindowLayoutInfo:Landroidx/window/extensions/layout/WindowLayoutInfo;

.field private mObservers:Lorg/chromium/base/ObserverList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/ObserverList<",
            "Lorg/chromium/content/browser/device_posture/DevicePosturePlatformProviderAndroid;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

.field private final mWindowLayoutInfoChangedCallback:Landroidx/window/extensions/core/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/window/extensions/core/util/function/Consumer<",
            "Landroidx/window/extensions/layout/WindowLayoutInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/chromium/base/UnownedUserDataKey;

    const-class v1, Lorg/chromium/content/browser/device_posture/WindowLayoutInfoListener;

    invoke-direct {v0, v1}, Lorg/chromium/base/UnownedUserDataKey;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lorg/chromium/content/browser/device_posture/WindowLayoutInfoListener;->KEY:Lorg/chromium/base/UnownedUserDataKey;

    return-void
.end method

.method private constructor <init>(Lorg/chromium/ui/base/WindowAndroid;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/chromium/base/ObserverList;

    invoke-direct {v0}, Lorg/chromium/base/ObserverList;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/device_posture/WindowLayoutInfoListener;->mObservers:Lorg/chromium/base/ObserverList;

    new-instance v0, Lcom/sec/android/app/sbrowser/search_widget/a;

    const/16 v1, 0x17

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/search_widget/a;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lorg/chromium/content/browser/device_posture/WindowLayoutInfoListener;->mWindowLayoutInfoChangedCallback:Landroidx/window/extensions/core/util/function/Consumer;

    iput-object p1, p0, Lorg/chromium/content/browser/device_posture/WindowLayoutInfoListener;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    return-void
.end method

.method public static synthetic a(Lorg/chromium/content/browser/device_posture/WindowLayoutInfoListener;Landroidx/window/extensions/layout/WindowLayoutInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/content/browser/device_posture/WindowLayoutInfoListener;->onWindowLayoutInfoChanged(Landroidx/window/extensions/layout/WindowLayoutInfo;)V

    return-void
.end method

.method public static getWindowLayoutListenerForWindow(Lorg/chromium/ui/base/WindowAndroid;)Lorg/chromium/content/browser/device_posture/WindowLayoutInfoListener;
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    invoke-virtual {p0}, Lorg/chromium/ui/base/WindowAndroid;->getContext()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lj9/a;->z(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/chromium/content/browser/device_posture/WindowLayoutInfoListener;->KEY:Lorg/chromium/base/UnownedUserDataKey;

    invoke-virtual {p0}, Lorg/chromium/ui/base/WindowAndroid;->getUnownedUserDataHost()Lorg/chromium/base/UnownedUserDataHost;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/base/UnownedUserDataKey;->retrieveDataFromHost(Lorg/chromium/base/UnownedUserDataHost;)Lorg/chromium/base/UnownedUserData;

    move-result-object v1

    check-cast v1, Lorg/chromium/content/browser/device_posture/WindowLayoutInfoListener;

    if-nez v1, :cond_1

    new-instance v1, Lorg/chromium/content/browser/device_posture/WindowLayoutInfoListener;

    invoke-direct {v1, p0}, Lorg/chromium/content/browser/device_posture/WindowLayoutInfoListener;-><init>(Lorg/chromium/ui/base/WindowAndroid;)V

    invoke-virtual {p0}, Lorg/chromium/ui/base/WindowAndroid;->getUnownedUserDataHost()Lorg/chromium/base/UnownedUserDataHost;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Lorg/chromium/base/UnownedUserDataKey;->attachToHost(Lorg/chromium/base/UnownedUserDataHost;Lorg/chromium/base/UnownedUserData;)V

    :cond_1
    return-object v1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private onWindowLayoutInfoChanged(Landroidx/window/extensions/layout/WindowLayoutInfo;)V
    .locals 2

    iput-object p1, p0, Lorg/chromium/content/browser/device_posture/WindowLayoutInfoListener;->mCurrentWindowLayoutInfo:Landroidx/window/extensions/layout/WindowLayoutInfo;

    iget-object p1, p0, Lorg/chromium/content/browser/device_posture/WindowLayoutInfoListener;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {p1}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/browser/device_posture/DevicePosturePlatformProviderAndroid;

    iget-object v1, p0, Lorg/chromium/content/browser/device_posture/WindowLayoutInfoListener;->mCurrentWindowLayoutInfo:Landroidx/window/extensions/layout/WindowLayoutInfo;

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/device_posture/DevicePosturePlatformProviderAndroid;->onWindowLayoutInfoChanged(Landroidx/window/extensions/layout/WindowLayoutInfo;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addObserver(Lorg/chromium/content/browser/device_posture/DevicePosturePlatformProviderAndroid;)V
    .locals 2

    iget-object v0, p0, Lorg/chromium/content/browser/device_posture/WindowLayoutInfoListener;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/chromium/content/browser/device_posture/WindowLayoutInfoListener;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    invoke-virtual {v0}, Lorg/chromium/ui/base/WindowAndroid;->getContext()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lorg/chromium/content/browser/device_posture/WindowLayoutInfoListener;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v1}, Lorg/chromium/base/ObserverList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/chromium/content/browser/device_posture/WindowLayoutInfoListener;->mWindowLayoutInfoChangedCallback:Landroidx/window/extensions/core/util/function/Consumer;

    invoke-static {v0, v1}, Lorg/chromium/window/WindowUtil;->addWindowLayoutInfoListener(Landroid/content/Context;Landroidx/window/extensions/core/util/function/Consumer;)V

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/device_posture/WindowLayoutInfoListener;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p1}, Lorg/chromium/base/ObserverList;->addObserver(Ljava/lang/Object;)Z

    iget-object p0, p0, Lorg/chromium/content/browser/device_posture/WindowLayoutInfoListener;->mCurrentWindowLayoutInfo:Landroidx/window/extensions/layout/WindowLayoutInfo;

    if-eqz p0, :cond_1

    invoke-virtual {p1, p0}, Lorg/chromium/content/browser/device_posture/DevicePosturePlatformProviderAndroid;->onWindowLayoutInfoChanged(Landroidx/window/extensions/layout/WindowLayoutInfo;)V

    :cond_1
    return-void
.end method

.method public onDetachedFromHost(Lorg/chromium/base/UnownedUserDataHost;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/chromium/content/browser/device_posture/WindowLayoutInfoListener;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    iget-object p0, p0, Lorg/chromium/content/browser/device_posture/WindowLayoutInfoListener;->mWindowLayoutInfoChangedCallback:Landroidx/window/extensions/core/util/function/Consumer;

    invoke-static {p0}, Lorg/chromium/window/WindowUtil;->removeWindowLayoutInfoListener(Landroidx/window/extensions/core/util/function/Consumer;)V

    return-void
.end method

.method public removeObserver(Lorg/chromium/content/browser/device_posture/DevicePosturePlatformProviderAndroid;)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/device_posture/WindowLayoutInfoListener;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p1}, Lorg/chromium/base/ObserverList;->removeObserver(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/chromium/content/browser/device_posture/WindowLayoutInfoListener;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {p1}, Lorg/chromium/base/ObserverList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/chromium/content/browser/device_posture/WindowLayoutInfoListener;->mWindowLayoutInfoChangedCallback:Landroidx/window/extensions/core/util/function/Consumer;

    invoke-static {p1}, Lorg/chromium/window/WindowUtil;->removeWindowLayoutInfoListener(Landroidx/window/extensions/core/util/function/Consumer;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/chromium/content/browser/device_posture/WindowLayoutInfoListener;->mCurrentWindowLayoutInfo:Landroidx/window/extensions/layout/WindowLayoutInfo;

    :cond_0
    return-void
.end method
