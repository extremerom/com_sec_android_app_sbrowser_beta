.class Lorg/chromium/components/thinwebview/internal/ThinWebViewImplJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/components/thinwebview/internal/ThinWebViewImpl$Natives;


# annotations
.annotation build Lorg/jni_zero/CheckDiscard;
.end annotation

.annotation build Lorg/jni_zero/internal/NullUnmarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lorg/chromium/components/thinwebview/internal/ThinWebViewImpl$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/components/thinwebview/internal/ThinWebViewImplJni;

    invoke-direct {v0}, Lorg/chromium/components/thinwebview/internal/ThinWebViewImplJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public destroy(JLorg/chromium/components/thinwebview/internal/ThinWebViewImpl;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->Mi0zHYZ4(JLjava/lang/Object;)V

    return-void
.end method

.method public setWebContents(JLorg/chromium/components/thinwebview/internal/ThinWebViewImpl;Lorg/chromium/content_public/browser/WebContents;Lorg/chromium/components/embedder_support/delegate/WebContentsDelegateAndroid;)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, LJ/N;->M9Q7LfVV(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public sizeChanged(JLorg/chromium/components/thinwebview/internal/ThinWebViewImpl;II)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, LJ/N;->MgG98$5a(JLjava/lang/Object;II)V

    return-void
.end method
