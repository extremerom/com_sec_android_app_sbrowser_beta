.class Lcom/sec/terrace/browser/thin_webview/TinCompositorViewImplJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/thin_webview/TinCompositorViewImpl$Natives;


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

.method public static get()Lcom/sec/terrace/browser/thin_webview/TinCompositorViewImpl$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lcom/sec/terrace/browser/thin_webview/TinCompositorViewImplJni;

    invoke-direct {v0}, Lcom/sec/terrace/browser/thin_webview/TinCompositorViewImplJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public init(Lcom/sec/terrace/browser/thin_webview/TinCompositorViewImpl;Lorg/chromium/ui/base/WindowAndroid;I)J
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MPFP0jje(Ljava/lang/Object;Ljava/lang/Object;I)J

    move-result-wide p0

    return-wide p0
.end method
