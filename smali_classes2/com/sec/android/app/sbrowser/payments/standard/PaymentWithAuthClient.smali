.class public Lcom/sec/android/app/sbrowser/payments/standard/PaymentWithAuthClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/payments/standard/PaymentWithAuthClient$Delegate;,
        Lcom/sec/android/app/sbrowser/payments/standard/PaymentWithAuthClient$AuthCallback;
    }
.end annotation


# instance fields
.field private mClient:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;

.field private mDelegate:Lcom/sec/android/app/sbrowser/payments/standard/PaymentWithAuthClient$Delegate;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;Lcom/sec/android/app/sbrowser/payments/standard/PaymentWithAuthClient$Delegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentWithAuthClient;->mClient:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentWithAuthClient;->mDelegate:Lcom/sec/android/app/sbrowser/payments/standard/PaymentWithAuthClient$Delegate;

    invoke-static {}, Lcom/sec/android/app/sbrowser/crypto/SamsungPassCryptoUtil;->startSession()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/payments/standard/PaymentWithAuthClient;ILcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentWithAuthClient;->lambda$onSectionEditOptionInternal$1(ILcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;Z)V

    return-void
.end method

.method private authenticate(Lcom/sec/android/app/sbrowser/payments/standard/PaymentWithAuthClient$AuthCallback;)V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentWithAuthClient;->canUseBiometrics()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->get()Lcom/sec/android/app/sbrowser/authentication/Authenticator;

    move-result-object p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->createOption()Lcom/sec/android/app/sbrowser/authentication/Authenticator$Option;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/payments/standard/b;

    invoke-direct {v1, p1}, Lcom/sec/android/app/sbrowser/payments/standard/b;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, v0, v1}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->authenticate(Lcom/sec/android/app/sbrowser/authentication/Authenticator$Option;Lcom/sec/android/app/sbrowser/authentication/Authenticator$Callback;)V

    :cond_0
    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/payments/standard/PaymentWithAuthClient;ILcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentWithAuthClient;->lambda$onSectionOptionSelectedInternal$0(ILcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;Z)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/payments/standard/PaymentWithAuthClient$AuthCallback;Lcom/sec/android/app/sbrowser/authentication/Authenticator$Result;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentWithAuthClient;->lambda$authenticate$2(Lcom/sec/android/app/sbrowser/payments/standard/PaymentWithAuthClient$AuthCallback;Lcom/sec/android/app/sbrowser/authentication/Authenticator$Result;)V

    return-void
.end method

.method private canUseBiometrics()Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->get()Lcom/sec/android/app/sbrowser/authentication/Authenticator;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->canUseFingerprint()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->canUseIris()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private canUsePersonalDataSync()Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->getInstance()Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->isPersonalDataSyncSet()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->getInstance()Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->isPersonalDataSyncAvailable()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$authenticate$2(Lcom/sec/android/app/sbrowser/payments/standard/PaymentWithAuthClient$AuthCallback;Lcom/sec/android/app/sbrowser/authentication/Authenticator$Result;)V
    .locals 1

    iget-boolean v0, p1, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Result;->success:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Result;->type:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/crypto/SamsungPassCryptoUtil;->updateAlias(Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;)V

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Result;->token:[B

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/crypto/SamsungPassCryptoUtil;->updateToken([B)V

    :cond_0
    iget-boolean p1, p1, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Result;->success:Z

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentWithAuthClient$AuthCallback;->onResult(Z)V

    return-void
.end method

.method private synthetic lambda$onSectionEditOptionInternal$1(ILcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;Z)V
    .locals 0

    if-eqz p4, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentWithAuthClient;->mClient:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;->onSectionEditOption(ILcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;)I

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentWithAuthClient;->mDelegate:Lcom/sec/android/app/sbrowser/payments/standard/PaymentWithAuthClient$Delegate;

    const/4 p2, 0x0

    invoke-interface {p0, p1, p3, p2}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentWithAuthClient$Delegate;->updateSection(ILcom/sec/android/app/sbrowser/payments/standard/common/Callback;Z)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onSectionOptionSelectedInternal$0(ILcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;Z)V
    .locals 0

    if-eqz p4, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentWithAuthClient;->mClient:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;->onSectionOptionSelected(ILcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;)I

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentWithAuthClient;->mDelegate:Lcom/sec/android/app/sbrowser/payments/standard/PaymentWithAuthClient$Delegate;

    const/4 p2, 0x1

    invoke-interface {p0, p1, p3, p2}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentWithAuthClient$Delegate;->updateSection(ILcom/sec/android/app/sbrowser/payments/standard/common/Callback;Z)V

    :goto_0
    return-void
.end method

.method private onSectionEditOptionInternal(ILcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;",
            "Lcom/sec/android/app/sbrowser/payments/standard/common/Callback<",
            "Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentInformation;",
            ">;)V"
        }
    .end annotation

    new-instance v6, Lcom/sec/android/app/sbrowser/payments/standard/f;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/payments/standard/f;-><init>(Lcom/sec/android/app/sbrowser/payments/standard/PaymentWithAuthClient;ILcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;I)V

    invoke-direct {p0, v6}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentWithAuthClient;->authenticate(Lcom/sec/android/app/sbrowser/payments/standard/PaymentWithAuthClient$AuthCallback;)V

    return-void
.end method

.method private onSectionOptionSelectedInternal(ILcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;",
            "Lcom/sec/android/app/sbrowser/payments/standard/common/Callback<",
            "Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentInformation;",
            ">;)V"
        }
    .end annotation

    new-instance v6, Lcom/sec/android/app/sbrowser/payments/standard/f;

    const/4 v5, 0x1

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/payments/standard/f;-><init>(Lcom/sec/android/app/sbrowser/payments/standard/PaymentWithAuthClient;ILcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;I)V

    invoke-direct {p0, v6}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentWithAuthClient;->authenticate(Lcom/sec/android/app/sbrowser/payments/standard/PaymentWithAuthClient$AuthCallback;)V

    return-void
.end method

.method private shouldAuthenticate()Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentWithAuthClient;->canUsePersonalDataSync()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/crypto/SamsungPassCryptoUtil;->hasToken()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public getDefaultPaymentInformation(Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/payments/standard/common/Callback<",
            "Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentInformation;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentWithAuthClient;->mClient:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;->getDefaultPaymentInformation(Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;)V

    return-void
.end method

.method public getSectionInformation(ILcom/sec/android/app/sbrowser/payments/standard/common/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sec/android/app/sbrowser/payments/standard/common/Callback<",
            "Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentWithAuthClient;->mClient:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;->getSectionInformation(ILcom/sec/android/app/sbrowser/payments/standard/common/Callback;)V

    return-void
.end method

.method public getShoppingCart(Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/payments/standard/common/Callback<",
            "Lcom/sec/android/app/sbrowser/payments/standard/ui/ShoppingCart;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentWithAuthClient;->mClient:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;->getShoppingCart(Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;)V

    return-void
.end method

.method public onCardAndAddressSettingsClicked()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentWithAuthClient;->mClient:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;->onCardAndAddressSettingsClicked()V

    return-void
.end method

.method public onDismiss()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentWithAuthClient;->mClient:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;->onDismiss()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/crypto/SamsungPassCryptoUtil;->stopSession()V

    return-void
.end method

.method public onPayClicked(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentWithAuthClient;->mClient:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;->onPayClicked(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;)Z

    move-result p0

    return p0
.end method

.method public onSectionAddOption(ILcom/sec/android/app/sbrowser/payments/standard/common/Callback;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sec/android/app/sbrowser/payments/standard/common/Callback<",
            "Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentInformation;",
            ">;)I"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentWithAuthClient;->mClient:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;->onSectionAddOption(ILcom/sec/android/app/sbrowser/payments/standard/common/Callback;)I

    move-result p0

    return p0
.end method

.method public onSectionEditOption(ILcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;",
            "Lcom/sec/android/app/sbrowser/payments/standard/common/Callback<",
            "Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentInformation;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentWithAuthClient;->shouldAuthenticate()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentWithAuthClient;->onSectionEditOptionInternal(ILcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;)V

    return v0

    :cond_0
    const/4 v0, 0x3

    const/4 v1, 0x2

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentWithAuthClient;->shouldAuthenticate()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentWithAuthClient;->onSectionEditOptionInternal(ILcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;)V

    return v1

    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentWithAuthClient;->canUsePersonalDataSync()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentWithAuthClient;->shouldAuthenticate()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move-object v0, p2

    check-cast v0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;->isNewCard()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentWithAuthClient;->onSectionEditOptionInternal(ILcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;)V

    return v1

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentWithAuthClient;->mClient:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;->onSectionEditOption(ILcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;)I

    move-result p0

    return p0
.end method

.method public onSectionOptionSelected(ILcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;",
            "Lcom/sec/android/app/sbrowser/payments/standard/common/Callback<",
            "Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentInformation;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentWithAuthClient;->shouldAuthenticate()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentWithAuthClient;->onSectionOptionSelectedInternal(ILcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;)V

    return v0

    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x3

    if-ne p1, v2, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentWithAuthClient;->shouldAuthenticate()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentWithAuthClient;->onSectionOptionSelectedInternal(ILcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentWithAuthClient;->mDelegate:Lcom/sec/android/app/sbrowser/payments/standard/PaymentWithAuthClient$Delegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentWithAuthClient$Delegate;->wasRetryCalled()Z

    move-result p0

    if-nez p0, :cond_2

    check-cast p2, Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;->isComplete()Z

    move-result p0

    if-eqz p0, :cond_1

    move v1, v2

    :cond_1
    return v1

    :cond_2
    return v0

    :cond_3
    const/4 v3, 0x4

    if-ne p1, v3, :cond_6

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentWithAuthClient;->canUsePersonalDataSync()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentWithAuthClient;->shouldAuthenticate()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_4
    move-object v3, p2

    check-cast v3, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;->getPaymentAppType()I

    move-result v3

    if-ne v3, v0, :cond_6

    move-object v0, p2

    check-cast v0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;->isNewCard()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentWithAuthClient;->canUseBiometrics()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentWithAuthClient;->mDelegate:Lcom/sec/android/app/sbrowser/payments/standard/PaymentWithAuthClient$Delegate;

    invoke-interface {p0, p3}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentWithAuthClient$Delegate;->registerBiometrics(Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;)V

    return v2

    :cond_5
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;->isComplete()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentWithAuthClient;->onSectionOptionSelectedInternal(ILcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;)V

    return v1

    :cond_6
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentWithAuthClient;->mClient:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;->onSectionOptionSelected(ILcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;)I

    move-result p0

    return p0
.end method

.method public shouldShowContactSection()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentWithAuthClient;->mClient:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;->shouldShowContactSection()Z

    move-result p0

    return p0
.end method

.method public shouldShowShippingSection()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentWithAuthClient;->mClient:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;->shouldShowShippingSection()Z

    move-result p0

    return p0
.end method
