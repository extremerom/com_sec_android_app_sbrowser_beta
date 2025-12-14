.class public Lorg/chromium/content/browser/ScreenOrientationProviderImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/ApplicationStatus$ActivityStateListener;
.implements Lorg/chromium/content_public/browser/ScreenOrientationProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/ScreenOrientationProviderImpl$Holder;,
        Lorg/chromium/content/browser/ScreenOrientationProviderImpl$PendingRequest;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# instance fields
.field private mDefaultOrientationOverrides:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/Activity;",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private mDelayedRequests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/Activity;",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mDelegate:Lorg/chromium/content_public/browser/ScreenOrientationDelegate;

.field private final mPendingRequests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/chromium/content_public/browser/WebContents;",
            "Lorg/chromium/content/browser/ScreenOrientationProviderImpl$PendingRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/ScreenOrientationProviderImpl;->mDefaultOrientationOverrides:Ljava/util/Map;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/ScreenOrientationProviderImpl;->mDelayedRequests:Ljava/util/Map;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/ScreenOrientationProviderImpl;->mPendingRequests:Ljava/util/Map;

    return-void
.end method

.method private addPendingRequest(Lorg/chromium/content_public/browser/WebContents;ZB)V
    .locals 3

    invoke-static {p1}, Lorg/chromium/content/browser/WindowEventObserverManager;->from(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/WindowEventObserverManager;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/content/browser/ScreenOrientationProviderImpl;->mPendingRequests:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/content/browser/ScreenOrientationProviderImpl$PendingRequest;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/chromium/content/browser/ScreenOrientationProviderImpl$PendingRequest;->cancel()V

    :cond_0
    iget-object v1, p0, Lorg/chromium/content/browser/ScreenOrientationProviderImpl;->mPendingRequests:Ljava/util/Map;

    new-instance v2, Lorg/chromium/content/browser/ScreenOrientationProviderImpl$PendingRequest;

    invoke-direct {v2, p0, v0, p2, p3}, Lorg/chromium/content/browser/ScreenOrientationProviderImpl$PendingRequest;-><init>(Lorg/chromium/content/browser/ScreenOrientationProviderImpl;Lorg/chromium/content/browser/WindowEventObserverManager;ZB)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private areRequestsDelayedForActivity(Landroid/app/Activity;)Z
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/ScreenOrientationProviderImpl;->mDelayedRequests:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static getInstance()Lorg/chromium/content/browser/ScreenOrientationProviderImpl;
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lorg/chromium/content/browser/ScreenOrientationProviderImpl$Holder;->a()Lorg/chromium/content/browser/ScreenOrientationProviderImpl;

    move-result-object v0

    return-object v0
.end method

.method private static getOrientationFromWebScreenOrientations(BLorg/chromium/ui/base/WindowAndroid;Landroid/content/Context;)I
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p0, :pswitch_data_0

    const-string p0, "ScreenOrientation"

    const-string p1, "Trying to lock to unsupported orientation!"

    invoke-static {p0, p1}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :pswitch_0
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/chromium/ui/base/WindowAndroid;->getDisplay()Lorg/chromium/ui/display/DisplayAndroid;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lorg/chromium/ui/display/DisplayAndroid;->getNonMultiDisplay(Landroid/content/Context;)Lorg/chromium/ui/display/DisplayAndroid;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Lorg/chromium/ui/display/DisplayAndroid;->getRotation()I

    move-result p1

    if-eqz p1, :cond_3

    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/chromium/ui/display/DisplayAndroid;->getDisplayHeight()I

    move-result p1

    invoke-virtual {p0}, Lorg/chromium/ui/display/DisplayAndroid;->getDisplayWidth()I

    move-result p0

    if-ge p1, p0, :cond_2

    return v2

    :cond_2
    return v1

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lorg/chromium/ui/display/DisplayAndroid;->getDisplayHeight()I

    move-result p1

    invoke-virtual {p0}, Lorg/chromium/ui/display/DisplayAndroid;->getDisplayWidth()I

    move-result p0

    if-lt p1, p0, :cond_4

    return v2

    :cond_4
    return v1

    :pswitch_1
    const/4 p0, 0x7

    return p0

    :pswitch_2
    const/4 p0, 0x6

    return p0

    :pswitch_3
    const/16 p0, 0xa

    return p0

    :pswitch_4
    const/16 p0, 0x8

    return p0

    :pswitch_5
    return v1

    :pswitch_6
    const/16 p0, 0x9

    return p0

    :pswitch_7
    return v2

    :pswitch_8
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private lockOrientationForWebContents(Lorg/chromium/content_public/browser/WebContents;B)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-interface {p1}, Lorg/chromium/content_public/browser/WebContents;->getTopLevelNativeWindow()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lorg/chromium/content/browser/ScreenOrientationProviderImpl;->addPendingRequest(Lorg/chromium/content_public/browser/WebContents;ZB)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0, p2}, Lorg/chromium/content/browser/ScreenOrientationProviderImpl;->lockOrientation(Lorg/chromium/ui/base/WindowAndroid;B)V

    :goto_0
    return-void
.end method

.method private setMaybeDelayedRequestedOrientation(Landroid/app/Activity;ZI)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/chromium/content/browser/ScreenOrientationProviderImpl;->areRequestsDelayedForActivity(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/chromium/content/browser/ScreenOrientationProviderImpl;->mDelayedRequests:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/content/browser/ScreenOrientationProviderImpl;->setRequestedOrientationNow(Landroid/app/Activity;ZI)V

    :goto_0
    return-void
.end method

.method private setRequestedOrientationNow(Landroid/app/Activity;ZI)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/ScreenOrientationProviderImpl;->mDelegate:Lorg/chromium/content_public/browser/ScreenOrientationDelegate;

    if-eqz v0, :cond_2

    if-eqz p2, :cond_0

    invoke-interface {v0}, Lorg/chromium/content_public/browser/ScreenOrientationDelegate;->canLockOrientation()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-nez p2, :cond_2

    iget-object p0, p0, Lorg/chromium/content/browser/ScreenOrientationProviderImpl;->mDelegate:Lorg/chromium/content_public/browser/ScreenOrientationDelegate;

    invoke-interface {p0, p1, p3}, Lorg/chromium/content_public/browser/ScreenOrientationDelegate;->canUnlockOrientation(Landroid/app/Activity;I)Z

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p1, p3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method

.method private unlockOrientationForWebContents(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-interface {p1}, Lorg/chromium/content_public/browser/WebContents;->getTopLevelNativeWindow()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lorg/chromium/content/browser/ScreenOrientationProviderImpl;->addPendingRequest(Lorg/chromium/content_public/browser/WebContents;ZB)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/ScreenOrientationProviderImpl;->unlockOrientation(Lorg/chromium/ui/base/WindowAndroid;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public isOrientationLockEnabled()Z
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/content/browser/ScreenOrientationProviderImpl;->mDelegate:Lorg/chromium/content_public/browser/ScreenOrientationDelegate;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lorg/chromium/content_public/browser/ScreenOrientationDelegate;->canLockOrientation()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public lockOrientation(Lorg/chromium/ui/base/WindowAndroid;B)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {p2, p1, v0}, Lorg/chromium/content/browser/ScreenOrientationProviderImpl;->getOrientationFromWebScreenOrientations(BLorg/chromium/ui/base/WindowAndroid;Landroid/content/Context;)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    return-void

    :cond_2
    const/4 p2, 0x1

    invoke-direct {p0, v0, p2, p1}, Lorg/chromium/content/browser/ScreenOrientationProviderImpl;->setMaybeDelayedRequestedOrientation(Landroid/app/Activity;ZI)V

    return-void
.end method

.method public onActivityStateChange(Landroid/app/Activity;I)V
    .locals 1

    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    iget-object p0, p0, Lorg/chromium/content/browser/ScreenOrientationProviderImpl;->mDelayedRequests:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setOrientationDelegate(Lorg/chromium/content_public/browser/ScreenOrientationDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/ScreenOrientationProviderImpl;->mDelegate:Lorg/chromium/content_public/browser/ScreenOrientationDelegate;

    return-void
.end method

.method public unlockOrientation(Lorg/chromium/ui/base/WindowAndroid;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lorg/chromium/content/browser/ScreenOrientationProviderImpl;->mDefaultOrientationOverrides:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/chromium/content/browser/ScreenOrientationProviderImpl;->mDefaultOrientationOverrides:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    invoke-static {v1, p1, v0}, Lorg/chromium/content/browser/ScreenOrientationProviderImpl;->getOrientationFromWebScreenOrientations(BLorg/chromium/ui/base/WindowAndroid;Landroid/content/Context;)I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_3

    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    iget p1, v1, Landroid/content/pm/ActivityInfo;->screenOrientation:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-direct {p0, v0, v2, p1}, Lorg/chromium/content/browser/ScreenOrientationProviderImpl;->setMaybeDelayedRequestedOrientation(Landroid/app/Activity;ZI)V

    throw v1

    :catch_0
    :cond_3
    :goto_1
    invoke-direct {p0, v0, v2, p1}, Lorg/chromium/content/browser/ScreenOrientationProviderImpl;->setMaybeDelayedRequestedOrientation(Landroid/app/Activity;ZI)V

    return-void
.end method
