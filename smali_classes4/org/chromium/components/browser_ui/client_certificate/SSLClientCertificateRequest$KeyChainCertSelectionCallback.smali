.class Lorg/chromium/components/browser_ui/client_certificate/SSLClientCertificateRequest$KeyChainCertSelectionCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/security/KeyChainAliasCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/components/browser_ui/client_certificate/SSLClientCertificateRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyChainCertSelectionCallback"
.end annotation


# instance fields
.field private mAliasCalled:Z

.field private final mContext:Landroid/content/Context;

.field private final mNativePtr:J


# direct methods
.method public constructor <init>(Landroid/content/Context;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/components/browser_ui/client_certificate/SSLClientCertificateRequest$KeyChainCertSelectionCallback;->mContext:Landroid/content/Context;

    iput-wide p2, p0, Lorg/chromium/components/browser_ui/client_certificate/SSLClientCertificateRequest$KeyChainCertSelectionCallback;->mNativePtr:J

    return-void
.end method

.method public static synthetic a(Lorg/chromium/components/browser_ui/client_certificate/SSLClientCertificateRequest$KeyChainCertSelectionCallback;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/components/browser_ui/client_certificate/SSLClientCertificateRequest$KeyChainCertSelectionCallback;->lambda$alias$1(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lorg/chromium/components/browser_ui/client_certificate/SSLClientCertificateRequest$KeyChainCertSelectionCallback;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/components/browser_ui/client_certificate/SSLClientCertificateRequest$KeyChainCertSelectionCallback;->lambda$alias$0()V

    return-void
.end method

.method private synthetic lambda$alias$0()V
    .locals 3

    invoke-static {}, Lorg/chromium/components/browser_ui/client_certificate/SSLClientCertificateRequestJni;->get()Lorg/chromium/components/browser_ui/client_certificate/SSLClientCertificateRequest$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/components/browser_ui/client_certificate/SSLClientCertificateRequest$KeyChainCertSelectionCallback;->mNativePtr:J

    const/4 p0, 0x0

    invoke-interface {v0, v1, v2, p0, p0}, Lorg/chromium/components/browser_ui/client_certificate/SSLClientCertificateRequest$Natives;->onSystemRequestCompletion(J[[BLjava/security/PrivateKey;)V

    return-void
.end method

.method private synthetic lambda$alias$1(Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    new-instance p1, Lorg/chromium/components/browser_ui/client_certificate/c;

    invoke-direct {p1, p0}, Lorg/chromium/components/browser_ui/client_certificate/c;-><init>(Lorg/chromium/components/browser_ui/client_certificate/SSLClientCertificateRequest$KeyChainCertSelectionCallback;)V

    const/4 p0, 0x7

    invoke-static {p0, p1}, Lorg/chromium/base/task/PostTask;->runOrPostTask(ILjava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/chromium/components/browser_ui/client_certificate/SSLClientCertificateRequest$CertAsyncTaskKeyChain;

    iget-object v1, p0, Lorg/chromium/components/browser_ui/client_certificate/SSLClientCertificateRequest$KeyChainCertSelectionCallback;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lorg/chromium/components/browser_ui/client_certificate/SSLClientCertificateRequest$KeyChainCertSelectionCallback;->mNativePtr:J

    invoke-direct {v0, v1, v2, v3, p1}, Lorg/chromium/components/browser_ui/client_certificate/SSLClientCertificateRequest$CertAsyncTaskKeyChain;-><init>(Landroid/content/Context;JLjava/lang/String;)V

    sget-object p0, Lorg/chromium/base/task/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, p0}, Lorg/chromium/base/task/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;)Lorg/chromium/base/task/AsyncTask;

    :goto_0
    return-void
.end method


# virtual methods
.method public alias(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lorg/chromium/components/browser_ui/client_certificate/SSLClientCertificateRequest$KeyChainCertSelectionCallback;->mAliasCalled:Z

    if-eqz v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "KeyChainCertSelectionCallback called more than once (\'"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\')"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SSLClientCertRequest"

    invoke-static {p1, p0}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/components/browser_ui/client_certificate/SSLClientCertificateRequest$KeyChainCertSelectionCallback;->mAliasCalled:Z

    new-instance v0, Lorg/chromium/components/browser_ui/client_certificate/b;

    invoke-direct {v0, p0, p1}, Lorg/chromium/components/browser_ui/client_certificate/b;-><init>(Lorg/chromium/components/browser_ui/client_certificate/SSLClientCertificateRequest$KeyChainCertSelectionCallback;Ljava/lang/String;)V

    const/4 p0, 0x7

    invoke-static {p0, v0}, Lorg/chromium/base/task/PostTask;->runOrPostTask(ILjava/lang/Runnable;)V

    return-void
.end method
