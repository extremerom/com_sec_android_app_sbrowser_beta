.class Lorg/chromium/components/browser_ui/client_certificate/SSLClientCertificateRequestJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/components/browser_ui/client_certificate/SSLClientCertificateRequest$Natives;


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

.method public static get()Lorg/chromium/components/browser_ui/client_certificate/SSLClientCertificateRequest$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/components/browser_ui/client_certificate/SSLClientCertificateRequestJni;

    invoke-direct {v0}, Lorg/chromium/components/browser_ui/client_certificate/SSLClientCertificateRequestJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onSystemRequestCompletion(J[[BLjava/security/PrivateKey;)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->M8LmNuWo(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
