.class public final synthetic Lorg/chromium/components/browser_ui/client_certificate/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lorg/chromium/components/browser_ui/client_certificate/SSLClientCertificateRequest$KeyChainCertSelectionCallback;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/components/browser_ui/client_certificate/SSLClientCertificateRequest$KeyChainCertSelectionCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/components/browser_ui/client_certificate/c;->a:Lorg/chromium/components/browser_ui/client_certificate/SSLClientCertificateRequest$KeyChainCertSelectionCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/browser_ui/client_certificate/c;->a:Lorg/chromium/components/browser_ui/client_certificate/SSLClientCertificateRequest$KeyChainCertSelectionCallback;

    invoke-static {p0}, Lorg/chromium/components/browser_ui/client_certificate/SSLClientCertificateRequest$KeyChainCertSelectionCallback;->b(Lorg/chromium/components/browser_ui/client_certificate/SSLClientCertificateRequest$KeyChainCertSelectionCallback;)V

    return-void
.end method
