.class Lorg/chromium/components/browser_ui/client_certificate/SSLClientCertificateRequest$KeyChainCertSelectionWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/components/browser_ui/client_certificate/SSLClientCertificateRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyChainCertSelectionWrapper"
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mAlias:Ljava/lang/String;

.field private final mCallback:Landroid/security/KeyChainAliasCallback;

.field private final mHostName:Ljava/lang/String;

.field private final mKeyTypes:[Ljava/lang/String;

.field private final mPort:I

.field private final mPrincipalsForCallback:[Ljava/security/Principal;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/security/KeyChainAliasCallback;[Ljava/lang/String;[Ljava/security/Principal;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/components/browser_ui/client_certificate/SSLClientCertificateRequest$KeyChainCertSelectionWrapper;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lorg/chromium/components/browser_ui/client_certificate/SSLClientCertificateRequest$KeyChainCertSelectionWrapper;->mCallback:Landroid/security/KeyChainAliasCallback;

    iput-object p3, p0, Lorg/chromium/components/browser_ui/client_certificate/SSLClientCertificateRequest$KeyChainCertSelectionWrapper;->mKeyTypes:[Ljava/lang/String;

    iput-object p4, p0, Lorg/chromium/components/browser_ui/client_certificate/SSLClientCertificateRequest$KeyChainCertSelectionWrapper;->mPrincipalsForCallback:[Ljava/security/Principal;

    iput-object p5, p0, Lorg/chromium/components/browser_ui/client_certificate/SSLClientCertificateRequest$KeyChainCertSelectionWrapper;->mHostName:Ljava/lang/String;

    iput p6, p0, Lorg/chromium/components/browser_ui/client_certificate/SSLClientCertificateRequest$KeyChainCertSelectionWrapper;->mPort:I

    iput-object p7, p0, Lorg/chromium/components/browser_ui/client_certificate/SSLClientCertificateRequest$KeyChainCertSelectionWrapper;->mAlias:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public choosePrivateKeyAlias()V
    .locals 7

    iget-object v0, p0, Lorg/chromium/components/browser_ui/client_certificate/SSLClientCertificateRequest$KeyChainCertSelectionWrapper;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lorg/chromium/components/browser_ui/client_certificate/SSLClientCertificateRequest$KeyChainCertSelectionWrapper;->mCallback:Landroid/security/KeyChainAliasCallback;

    iget-object v2, p0, Lorg/chromium/components/browser_ui/client_certificate/SSLClientCertificateRequest$KeyChainCertSelectionWrapper;->mKeyTypes:[Ljava/lang/String;

    iget-object v3, p0, Lorg/chromium/components/browser_ui/client_certificate/SSLClientCertificateRequest$KeyChainCertSelectionWrapper;->mPrincipalsForCallback:[Ljava/security/Principal;

    iget-object v4, p0, Lorg/chromium/components/browser_ui/client_certificate/SSLClientCertificateRequest$KeyChainCertSelectionWrapper;->mHostName:Ljava/lang/String;

    iget v5, p0, Lorg/chromium/components/browser_ui/client_certificate/SSLClientCertificateRequest$KeyChainCertSelectionWrapper;->mPort:I

    iget-object v6, p0, Lorg/chromium/components/browser_ui/client_certificate/SSLClientCertificateRequest$KeyChainCertSelectionWrapper;->mAlias:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Landroid/security/KeyChain;->choosePrivateKeyAlias(Landroid/app/Activity;Landroid/security/KeyChainAliasCallback;[Ljava/lang/String;[Ljava/security/Principal;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
