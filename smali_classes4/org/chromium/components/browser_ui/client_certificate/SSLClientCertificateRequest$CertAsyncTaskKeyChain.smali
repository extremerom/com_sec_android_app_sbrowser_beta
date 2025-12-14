.class Lorg/chromium/components/browser_ui/client_certificate/SSLClientCertificateRequest$CertAsyncTaskKeyChain;
.super Lorg/chromium/base/task/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/components/browser_ui/client_certificate/SSLClientCertificateRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CertAsyncTaskKeyChain"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/base/task/AsyncTask<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final mAlias:Ljava/lang/String;

.field final mContext:Landroid/content/Context;

.field private mEncodedChain:[[B

.field private final mNativePtr:J

.field private mPrivateKey:Ljava/security/PrivateKey;


# direct methods
.method public constructor <init>(Landroid/content/Context;JLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/base/task/AsyncTask;-><init>()V

    iput-wide p2, p0, Lorg/chromium/components/browser_ui/client_certificate/SSLClientCertificateRequest$CertAsyncTaskKeyChain;->mNativePtr:J

    iput-object p1, p0, Lorg/chromium/components/browser_ui/client_certificate/SSLClientCertificateRequest$CertAsyncTaskKeyChain;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lorg/chromium/components/browser_ui/client_certificate/SSLClientCertificateRequest$CertAsyncTaskKeyChain;->mAlias:Ljava/lang/String;

    return-void
.end method

.method private getAlias()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/browser_ui/client_certificate/SSLClientCertificateRequest$CertAsyncTaskKeyChain;->mAlias:Ljava/lang/String;

    return-object p0
.end method

.method private getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .locals 3

    const-string v0, "SSLClientCertRequest"

    const/4 v1, 0x0

    :try_start_0
    iget-object p0, p0, Lorg/chromium/components/browser_ui/client_certificate/SSLClientCertificateRequest$CertAsyncTaskKeyChain;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Landroid/security/KeyChain;->getCertificateChain(Landroid/content/Context;Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object p0
    :try_end_0
    .catch Landroid/security/KeyChainException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "InterruptedException when looking for \'"

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'certificate"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :catch_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "KeyChainException when looking for \'"

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' certificate"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 3

    const-string v0, "SSLClientCertRequest"

    const/4 v1, 0x0

    :try_start_0
    iget-object p0, p0, Lorg/chromium/components/browser_ui/client_certificate/SSLClientCertificateRequest$CertAsyncTaskKeyChain;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Landroid/security/KeyChain;->getPrivateKey(Landroid/content/Context;Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object p0
    :try_end_0
    .catch Landroid/security/KeyChainException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "InterruptedException when looking for \'"

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'certificate"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :catch_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "KeyChainException when looking for \'"

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' certificate"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lorg/chromium/components/browser_ui/client_certificate/SSLClientCertificateRequest$CertAsyncTaskKeyChain;->doInBackground()Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public doInBackground()Ljava/lang/Void;
    .locals 7

    invoke-direct {p0}, Lorg/chromium/components/browser_ui/client_certificate/SSLClientCertificateRequest$CertAsyncTaskKeyChain;->getAlias()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-direct {p0, v0}, Lorg/chromium/components/browser_ui/client_certificate/SSLClientCertificateRequest$CertAsyncTaskKeyChain;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v2

    invoke-direct {p0, v0}, Lorg/chromium/components/browser_ui/client_certificate/SSLClientCertificateRequest$CertAsyncTaskKeyChain;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v0

    const-string v3, "SSLClientCertRequest"

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    array-length v4, v0

    if-nez v4, :cond_1

    goto :goto_2

    :cond_1
    array-length v4, v0

    new-array v4, v4, [[B

    const/4 v5, 0x0

    :goto_0
    :try_start_0
    array-length v6, v0

    if-ge v5, v6, :cond_2

    aget-object v6, v0, v5

    invoke-virtual {v6}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v6

    aput-object v6, v4, v5
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_2
    iput-object v4, p0, Lorg/chromium/components/browser_ui/client_certificate/SSLClientCertificateRequest$CertAsyncTaskKeyChain;->mEncodedChain:[[B

    iput-object v2, p0, Lorg/chromium/components/browser_ui/client_certificate/SSLClientCertificateRequest$CertAsyncTaskKeyChain;->mPrivateKey:Ljava/security/PrivateKey;

    return-object v1

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Could not retrieve encoded certificate chain: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_3
    :goto_2
    const-string p0, "Empty client certificate chain?"

    invoke-static {v3, p0}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/components/browser_ui/client_certificate/SSLClientCertificateRequest$CertAsyncTaskKeyChain;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Void;)V
    .locals 3

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    invoke-static {}, Lorg/chromium/components/browser_ui/client_certificate/SSLClientCertificateRequestJni;->get()Lorg/chromium/components/browser_ui/client_certificate/SSLClientCertificateRequest$Natives;

    move-result-object p1

    iget-wide v0, p0, Lorg/chromium/components/browser_ui/client_certificate/SSLClientCertificateRequest$CertAsyncTaskKeyChain;->mNativePtr:J

    iget-object v2, p0, Lorg/chromium/components/browser_ui/client_certificate/SSLClientCertificateRequest$CertAsyncTaskKeyChain;->mEncodedChain:[[B

    iget-object p0, p0, Lorg/chromium/components/browser_ui/client_certificate/SSLClientCertificateRequest$CertAsyncTaskKeyChain;->mPrivateKey:Ljava/security/PrivateKey;

    invoke-interface {p1, v0, v1, v2, p0}, Lorg/chromium/components/browser_ui/client_certificate/SSLClientCertificateRequest$Natives;->onSystemRequestCompletion(J[[BLjava/security/PrivateKey;)V

    return-void
.end method
