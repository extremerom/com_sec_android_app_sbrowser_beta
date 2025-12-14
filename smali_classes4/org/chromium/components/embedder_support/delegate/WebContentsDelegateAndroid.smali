.class public Lorg/chromium/components/embedder_support/delegate/WebContentsDelegateAndroid;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/embedder_support/delegate/WebContentsDelegateAndroid$Natives;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final LOG_LEVEL_ERROR:I = 0x3

.field public static final LOG_LEVEL_LOG:I = 0x1

.field public static final LOG_LEVEL_TIP:I = 0x0

.field public static final LOG_LEVEL_WARNING:I = 0x2


# direct methods
.method public static synthetic a(JLandroid/graphics/Bitmap;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/chromium/components/embedder_support/delegate/WebContentsDelegateAndroid;->lambda$maybeCopyContentAreaAsBitmap$0(JLandroid/graphics/Bitmap;)V

    return-void
.end method

.method private static synthetic lambda$maybeCopyContentAreaAsBitmap$0(JLandroid/graphics/Bitmap;)V
    .locals 1

    invoke-static {}, Lorg/chromium/components/embedder_support/delegate/WebContentsDelegateAndroidJni;->get()Lorg/chromium/components/embedder_support/delegate/WebContentsDelegateAndroid$Natives;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lorg/chromium/components/embedder_support/delegate/WebContentsDelegateAndroid$Natives;->maybeCopyContentAreaAsBitmapOutcome(JLandroid/graphics/Bitmap;)V

    return-void
.end method

.method private maybeCopyContentAreaAsBitmap(J)Z
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lorg/chromium/components/embedder_support/delegate/e;

    invoke-direct {v0, p1, p2}, Lorg/chromium/components/embedder_support/delegate/e;-><init>(J)V

    invoke-virtual {p0, v0}, Lorg/chromium/components/embedder_support/delegate/WebContentsDelegateAndroid;->maybeCopyContentAreaAsBitmap(Lorg/chromium/base/Callback;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public activateContents()V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    return-void
.end method

.method public addMessageToConsole(ILjava/lang/String;ILjava/lang/String;)Z
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public closeContents()V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    return-void
.end method

.method public contentsZoomChange(Z)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    return-void
.end method

.method public controlsResizeView()Z
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public didBackForwardTransitionAnimationChange()V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    return-void
.end method

.method public didChangeCloseSignalInterceptStatus()V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    return-void
.end method

.method public enterFullscreenModeForTab(ZZ)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    return-void
.end method

.method public exitFullscreenModeForTab()V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    return-void
.end method

.method public fullscreenStateChangedForTab(ZZ)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    return-void
.end method

.method public getBackForwardTransitionFallbackUXFaviconBackgroundColor()I
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public getBackForwardTransitionFallbackUXInternalPageIcon()Landroid/graphics/Bitmap;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBackForwardTransitionFallbackUXPageBackgroundColor()I
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public getBottomControlsHeight()I
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public getBottomControlsMinHeight()I
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public getDisplayMode()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getDisplayModeChecked()I
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-virtual {p0}, Lorg/chromium/components/embedder_support/delegate/WebContentsDelegateAndroid;->getDisplayMode()I

    move-result p0

    return p0
.end method

.method public getTopControlsHeight()I
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public getTopControlsMinHeight()I
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public getVirtualKeyboardHeight()I
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public handleKeyboardEvent(Landroid/view/KeyEvent;)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    return-void
.end method

.method public isFullscreenForTabOrPending()Z
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public loadingStateChanged(Z)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    return-void
.end method

.method public maybeCopyContentAreaAsBitmap(Lorg/chromium/base/Callback;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/base/Callback<",
            "Landroid/graphics/Bitmap;",
            ">;)Z"
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public maybeCopyContentAreaAsBitmapSync()Landroid/graphics/Bitmap;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public navigationStateChanged(I)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    return-void
.end method

.method public onUpdateUrl(Lorg/chromium/url/GURL;)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    return-void
.end method

.method public openNewTab(Lorg/chromium/url/GURL;Ljava/lang/String;Lorg/chromium/content_public/common/ResourceRequestBody;IZ)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    return-void
.end method

.method public rendererResponsive()V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    return-void
.end method

.method public rendererUnresponsive()V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    return-void
.end method

.method public shouldAnimateBrowserControlsHeightChanges()Z
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public shouldBlockMediaRequest(Lorg/chromium/url/GURL;)Z
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public shouldCreateWebContents(Lorg/chromium/url/GURL;)Z
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const/4 p0, 0x1

    return p0
.end method

.method public showRepostFormWarningDialog()V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    return-void
.end method

.method public takeFocus(Z)Z
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public visibleSSLStateChanged()V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    return-void
.end method

.method public webContentsCreated(Lorg/chromium/content_public/browser/WebContents;JJLjava/lang/String;Lorg/chromium/url/GURL;Lorg/chromium/content_public/browser/WebContents;)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    return-void
.end method
