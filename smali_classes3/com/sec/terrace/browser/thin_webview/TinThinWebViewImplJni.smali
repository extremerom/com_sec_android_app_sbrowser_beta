.class Lcom/sec/terrace/browser/thin_webview/TinThinWebViewImplJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/thin_webview/TinThinWebViewImpl$Natives;


# annotations
.annotation build Lorg/jni_zero/CheckDiscard;
.end annotation

.annotation build Lorg/jni_zero/internal/NullUnmarked;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/sec/terrace/browser/thin_webview/TinThinWebViewImpl$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lcom/sec/terrace/browser/thin_webview/TinThinWebViewImplJni;

    invoke-direct {v0}, Lcom/sec/terrace/browser/thin_webview/TinThinWebViewImplJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public init(Lcom/sec/terrace/browser/thin_webview/TinThinWebViewImpl;Lorg/chromium/components/thinwebview/CompositorView;Lorg/chromium/ui/base/WindowAndroid;)J
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MjQykaBJ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)J

    move-result-wide p0

    return-wide p0
.end method

.method public setContentViewCore(JLcom/sec/terrace/browser/thin_webview/TinThinWebViewImpl;J)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, LJ/N;->MteP6Qgv(JLjava/lang/Object;J)V

    return-void
.end method
