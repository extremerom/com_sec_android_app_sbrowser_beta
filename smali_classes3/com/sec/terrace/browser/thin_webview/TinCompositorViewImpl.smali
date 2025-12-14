.class public Lcom/sec/terrace/browser/thin_webview/TinCompositorViewImpl;
.super Lorg/chromium/components/thinwebview/internal/CompositorViewImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/thin_webview/TinCompositorViewImpl$Natives;
    }
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/chromium/ui/base/WindowAndroid;Lorg/chromium/components/thinwebview/ThinWebViewConstraints;)V
    .locals 0

    invoke-direct {p0, p1, p3}, Lorg/chromium/components/thinwebview/internal/CompositorViewImpl;-><init>(Landroid/content/Context;Lorg/chromium/components/thinwebview/ThinWebViewConstraints;)V

    invoke-static {}, Lcom/sec/terrace/browser/thin_webview/TinCompositorViewImplJni;->get()Lcom/sec/terrace/browser/thin_webview/TinCompositorViewImpl$Natives;

    move-result-object p3

    invoke-static {p1}, Lcom/sec/terrace/TinTerraceInternals;->getBackgroundColor(Landroid/content/Context;)I

    move-result p1

    invoke-interface {p3, p0, p2, p1}, Lcom/sec/terrace/browser/thin_webview/TinCompositorViewImpl$Natives;->init(Lcom/sec/terrace/browser/thin_webview/TinCompositorViewImpl;Lorg/chromium/ui/base/WindowAndroid;I)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/chromium/components/thinwebview/internal/CompositorViewImpl;->mNativeCompositorViewImpl:J

    return-void
.end method

.method private getCompositorNativePtr()J
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-wide v0, p0, Lorg/chromium/components/thinwebview/internal/CompositorViewImpl;->mNativeCompositorViewImpl:J

    return-wide v0
.end method


# virtual methods
.method public destroy()V
    .locals 0

    invoke-super {p0}, Lorg/chromium/components/thinwebview/internal/CompositorViewImpl;->destroy()V

    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 0

    invoke-super {p0}, Lorg/chromium/components/thinwebview/internal/CompositorViewImpl;->getView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public setAlpha(F)V
    .locals 0

    invoke-super {p0, p1}, Lorg/chromium/components/thinwebview/internal/CompositorViewImpl;->setAlpha(F)V

    return-void
.end method
