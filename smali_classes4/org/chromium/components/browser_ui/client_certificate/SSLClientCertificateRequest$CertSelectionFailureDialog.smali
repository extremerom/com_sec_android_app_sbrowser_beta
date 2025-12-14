.class Lorg/chromium/components/browser_ui/client_certificate/SSLClientCertificateRequest$CertSelectionFailureDialog;
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
    name = "CertSelectionFailureDialog"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/components/browser_ui/client_certificate/SSLClientCertificateRequest$CertSelectionFailureDialog;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lorg/chromium/components/browser_ui/client_certificate/SSLClientCertificateRequest$CertSelectionFailureDialog;->lambda$show$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private static synthetic lambda$show$0(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method


# virtual methods
.method public show()V
    .locals 2

    new-instance v0, Lm/k;

    iget-object p0, p0, Lorg/chromium/components/browser_ui/client_certificate/SSLClientCertificateRequest$CertSelectionFailureDialog;->mContext:Landroid/content/Context;

    sget v1, Lorg/chromium/components/browser_ui/client_certificate/R$style;->ThemeOverlay_BrowserUI_AlertDialog:I

    invoke-direct {v0, p0, v1}, Lm/k;-><init>(Landroid/content/Context;I)V

    sget p0, Lorg/chromium/components/browser_ui/client_certificate/R$string;->client_cert_unsupported_title:I

    invoke-virtual {v0, p0}, Lm/k;->e(I)V

    sget p0, Lorg/chromium/components/browser_ui/client_certificate/R$string;->client_cert_unsupported_message:I

    invoke-virtual {v0, p0}, Lm/k;->a(I)V

    sget p0, Lorg/chromium/components/browser_ui/client_certificate/R$string;->close:I

    new-instance v1, Lorg/chromium/components/browser_ui/client_certificate/a;

    invoke-direct {v1}, Lorg/chromium/components/browser_ui/client_certificate/a;-><init>()V

    invoke-virtual {v0, p0, v1}, Lm/k;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    invoke-virtual {v0}, Lm/k;->f()Lm/l;

    return-void
.end method
