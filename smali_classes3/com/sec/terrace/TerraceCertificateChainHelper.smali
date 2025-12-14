.class public Lcom/sec/terrace/TerraceCertificateChainHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/TerraceCertificateChainHelper$Natives;
    }
.end annotation


# direct methods
.method public static getCertificateChain(Lcom/sec/terrace/Terrace;)[[B
    .locals 1

    invoke-static {}, Lcom/sec/terrace/TerraceCertificateChainHelperJni;->get()Lcom/sec/terrace/TerraceCertificateChainHelper$Natives;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getWebContents()Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/sec/terrace/TerraceCertificateChainHelper$Natives;->getCertificateChain(Lorg/chromium/content_public/browser/WebContents;)[[B

    move-result-object p0

    return-object p0
.end method
