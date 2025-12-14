.class public final synthetic Lorg/chromium/components/browser_ui/client_certificate/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lorg/chromium/components/browser_ui/client_certificate/SSLClientCertificateRequest$KeyChainCertSelectionCallback;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/components/browser_ui/client_certificate/SSLClientCertificateRequest$KeyChainCertSelectionCallback;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/components/browser_ui/client_certificate/b;->a:Lorg/chromium/components/browser_ui/client_certificate/SSLClientCertificateRequest$KeyChainCertSelectionCallback;

    iput-object p2, p0, Lorg/chromium/components/browser_ui/client_certificate/b;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/chromium/components/browser_ui/client_certificate/b;->a:Lorg/chromium/components/browser_ui/client_certificate/SSLClientCertificateRequest$KeyChainCertSelectionCallback;

    iget-object p0, p0, Lorg/chromium/components/browser_ui/client_certificate/b;->b:Ljava/lang/String;

    invoke-static {v0, p0}, Lorg/chromium/components/browser_ui/client_certificate/SSLClientCertificateRequest$KeyChainCertSelectionCallback;->a(Lorg/chromium/components/browser_ui/client_certificate/SSLClientCertificateRequest$KeyChainCertSelectionCallback;Ljava/lang/String;)V

    return-void
.end method
