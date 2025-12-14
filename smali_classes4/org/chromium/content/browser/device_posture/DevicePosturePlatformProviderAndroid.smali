.class public Lorg/chromium/content/browser/device_posture/DevicePosturePlatformProviderAndroid;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/content/browser/WindowEventObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/device_posture/DevicePosturePlatformProviderAndroid$Natives;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mListening:Z

.field private mNativeDevicePosturePlatformProvider:J

.field private final mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

.field private mWindowLayoutInfoListener:Lorg/chromium/content/browser/device_posture/WindowLayoutInfoListener;


# direct methods
.method private constructor <init>(JLorg/chromium/content/browser/webcontents/WebContentsImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/chromium/content/browser/device_posture/DevicePosturePlatformProviderAndroid;->mNativeDevicePosturePlatformProvider:J

    iput-object p3, p0, Lorg/chromium/content/browser/device_posture/DevicePosturePlatformProviderAndroid;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-static {p3}, Lorg/chromium/content/browser/WindowEventObserverManager;->maybeFrom(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/WindowEventObserverManager;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lorg/chromium/content/browser/WindowEventObserverManager;->addObserver(Lorg/chromium/content/browser/WindowEventObserver;)V

    :cond_0
    return-void
.end method

.method private static create(JLorg/chromium/content/browser/webcontents/WebContentsImpl;)Lorg/chromium/content/browser/device_posture/DevicePosturePlatformProviderAndroid;
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lorg/chromium/content/browser/device_posture/DevicePosturePlatformProviderAndroid;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/content/browser/device_posture/DevicePosturePlatformProviderAndroid;-><init>(JLorg/chromium/content/browser/webcontents/WebContentsImpl;)V

    return-object v0
.end method

.method private destroy()V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-direct {p0}, Lorg/chromium/content/browser/device_posture/DevicePosturePlatformProviderAndroid;->stopListening()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/content/browser/device_posture/DevicePosturePlatformProviderAndroid;->mNativeDevicePosturePlatformProvider:J

    return-void
.end method

.method private getFirstFoldingFeature(Landroidx/window/extensions/layout/WindowLayoutInfo;)Landroidx/window/extensions/layout/FoldingFeature;
    .locals 2

    invoke-virtual {p1}, Landroidx/window/extensions/layout/WindowLayoutInfo;->getDisplayFeatures()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroidx/window/extensions/layout/WindowLayoutInfo;->getDisplayFeatures()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/window/extensions/layout/DisplayFeature;

    instance-of v1, p1, Landroidx/window/extensions/layout/FoldingFeature;

    if-eqz v1, :cond_1

    check-cast p1, Landroidx/window/extensions/layout/FoldingFeature;

    return-object p1

    :cond_2
    return-object v0
.end method

.method private notifyNativePlatformProvider(ZLandroid/graphics/Rect;)V
    .locals 8

    invoke-static {}, Lorg/chromium/content/browser/device_posture/DevicePosturePlatformProviderAndroidJni;->get()Lorg/chromium/content/browser/device_posture/DevicePosturePlatformProviderAndroid$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/content/browser/device_posture/DevicePosturePlatformProviderAndroid;->mNativeDevicePosturePlatformProvider:J

    iget v4, p2, Landroid/graphics/Rect;->left:I

    iget v5, p2, Landroid/graphics/Rect;->top:I

    iget v6, p2, Landroid/graphics/Rect;->right:I

    iget v7, p2, Landroid/graphics/Rect;->bottom:I

    move v3, p1

    invoke-interface/range {v0 .. v7}, Lorg/chromium/content/browser/device_posture/DevicePosturePlatformProviderAndroid$Natives;->updateDisplayFeature(JZIIII)V

    return-void
.end method

.method private observeWindowLayoutListener(Lorg/chromium/ui/base/WindowAndroid;)V
    .locals 2

    if-eqz p1, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_1

    const-string v0, "DevicePosture"

    invoke-static {v0}, Lorg/chromium/content_public/browser/ContentFeatureMap;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/chromium/window/WindowApiCheck;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lorg/chromium/content/browser/device_posture/WindowLayoutInfoListener;->getWindowLayoutListenerForWindow(Lorg/chromium/ui/base/WindowAndroid;)Lorg/chromium/content/browser/device_posture/WindowLayoutInfoListener;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/content/browser/device_posture/DevicePosturePlatformProviderAndroid;->mWindowLayoutInfoListener:Lorg/chromium/content/browser/device_posture/WindowLayoutInfoListener;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Lorg/chromium/content/browser/device_posture/WindowLayoutInfoListener;->addObserver(Lorg/chromium/content/browser/device_posture/DevicePosturePlatformProviderAndroid;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private startListening()V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const-string v0, "DevicePosture"

    invoke-static {v0}, Lorg/chromium/content_public/browser/ContentFeatureMap;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ViewportSegments"

    invoke-static {v0}, Lorg/chromium/content_public/browser/ContentFeatureMap;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/browser/device_posture/DevicePosturePlatformProviderAndroid;->mListening:Z

    iget-object v0, p0, Lorg/chromium/content/browser/device_posture/DevicePosturePlatformProviderAndroid;->mWebContents:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {v0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->getTopLevelNativeWindow()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/device_posture/DevicePosturePlatformProviderAndroid;->observeWindowLayoutListener(Lorg/chromium/ui/base/WindowAndroid;)V

    :cond_1
    return-void
.end method

.method private stopListening()V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/content/browser/device_posture/DevicePosturePlatformProviderAndroid;->mListening:Z

    invoke-direct {p0}, Lorg/chromium/content/browser/device_posture/DevicePosturePlatformProviderAndroid;->unObserveWindowLayoutListener()V

    return-void
.end method

.method private unObserveWindowLayoutListener()V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/device_posture/DevicePosturePlatformProviderAndroid;->mWindowLayoutInfoListener:Lorg/chromium/content/browser/device_posture/WindowLayoutInfoListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lorg/chromium/content/browser/device_posture/WindowLayoutInfoListener;->removeObserver(Lorg/chromium/content/browser/device_posture/DevicePosturePlatformProviderAndroid;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/content/browser/device_posture/DevicePosturePlatformProviderAndroid;->mWindowLayoutInfoListener:Lorg/chromium/content/browser/device_posture/WindowLayoutInfoListener;

    :cond_0
    return-void
.end method


# virtual methods
.method public onWindowAndroidChanged(Lorg/chromium/ui/base/WindowAndroid;)V
    .locals 1

    invoke-direct {p0}, Lorg/chromium/content/browser/device_posture/DevicePosturePlatformProviderAndroid;->unObserveWindowLayoutListener()V

    iget-boolean v0, p0, Lorg/chromium/content/browser/device_posture/DevicePosturePlatformProviderAndroid;->mListening:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lorg/chromium/content/browser/device_posture/DevicePosturePlatformProviderAndroid;->observeWindowLayoutListener(Lorg/chromium/ui/base/WindowAndroid;)V

    :cond_0
    return-void
.end method

.method public onWindowLayoutInfoChanged(Landroidx/window/extensions/layout/WindowLayoutInfo;)V
    .locals 4

    iget-wide v0, p0, Lorg/chromium/content/browser/device_posture/DevicePosturePlatformProviderAndroid;->mNativeDevicePosturePlatformProvider:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    invoke-direct {p0, p1}, Lorg/chromium/content/browser/device_posture/DevicePosturePlatformProviderAndroid;->getFirstFoldingFeature(Landroidx/window/extensions/layout/WindowLayoutInfo;)Landroidx/window/extensions/layout/FoldingFeature;

    move-result-object p1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x0

    if-nez p1, :cond_0

    invoke-direct {p0, v1, v0}, Lorg/chromium/content/browser/device_posture/DevicePosturePlatformProviderAndroid;->notifyNativePlatformProvider(ZLandroid/graphics/Rect;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroidx/window/extensions/layout/FoldingFeature;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {p1}, Landroidx/window/extensions/layout/FoldingFeature;->getType()I

    move-result v2

    if-eq v2, v3, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    invoke-virtual {p1}, Landroidx/window/extensions/layout/FoldingFeature;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    :cond_3
    invoke-direct {p0, v1, v0}, Lorg/chromium/content/browser/device_posture/DevicePosturePlatformProviderAndroid;->notifyNativePlatformProvider(ZLandroid/graphics/Rect;)V

    :cond_4
    return-void
.end method
