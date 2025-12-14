.class Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentSecureUI$SecureClickListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentSecureUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SecureClickListener"
.end annotation


# instance fields
.field mListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentSecureUI$SecureClickListener;->mListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentSecureUI$SecureClickListener;Landroid/view/View;Lcom/sec/android/app/sbrowser/authentication/Authenticator$Result;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentSecureUI$SecureClickListener;->lambda$onClick$0(Landroid/view/View;Lcom/sec/android/app/sbrowser/authentication/Authenticator$Result;)V

    return-void
.end method

.method private synthetic lambda$onClick$0(Landroid/view/View;Lcom/sec/android/app/sbrowser/authentication/Authenticator$Result;)V
    .locals 1

    iget-boolean v0, p2, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Result;->success:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/crypto/SamsungPassCryptoUtil;->startSession()V

    iget-object p2, p2, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Result;->token:[B

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/crypto/SamsungPassCryptoUtil;->updateToken([B)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentSecureUI$SecureClickListener;->mListener:Landroid/view/View$OnClickListener;

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    instance-of v0, p1, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection;->getEditButtonState()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentSecureUI$SecureClickListener;->mListener:Landroid/view/View$OnClickListener;

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->getInstance()Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->isPersonalDataSyncSet()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/crypto/SamsungPassCryptoUtil;->hasToken()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->get()Lcom/sec/android/app/sbrowser/authentication/Authenticator;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/authentication/SamsungPassAuthenticator;->createOption()Lcom/sec/android/app/sbrowser/authentication/Authenticator$Option;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/payments/standard/ui/a;

    invoke-direct {v2, p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/a;-><init>(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentSecureUI$SecureClickListener;Landroid/view/View;)V

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->authenticate(Lcom/sec/android/app/sbrowser/authentication/Authenticator$Option;Lcom/sec/android/app/sbrowser/authentication/Authenticator$Callback;)V

    return-void

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentSecureUI$SecureClickListener;->mListener:Landroid/view/View$OnClickListener;

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method
