.class public Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/services/TerraceServiceBase;
.implements Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension$SuggestionType;
    }
.end annotation


# instance fields
.field private mAuthenticator:Lcom/sec/android/app/sbrowser/authentication/Authenticator;

.field private mPopupType:I

.field private mSPassActivator:Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassActivator;

.field private final mSPayAuth:Lcom/sec/android/app/sbrowser/samsungpay/SamsungPayAuthenticatorFactory;

.field private mSamsungPass:Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

.field private mUrlHost:Ljava/lang/String;

.field private final mVirtualCardBlockListHandler:Lcom/sec/android/app/sbrowser/samsungpay/VirtualCardBlockListHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/samsungpay/SamsungPayAuthenticatorFactory;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/samsungpay/SamsungPayAuthenticatorFactory;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension;->mSPayAuth:Lcom/sec/android/app/sbrowser/samsungpay/SamsungPayAuthenticatorFactory;

    new-instance v0, Lcom/sec/android/app/sbrowser/samsungpay/VirtualCardBlockListHandler;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/samsungpay/VirtualCardBlockListHandler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension;->mVirtualCardBlockListHandler:Lcom/sec/android/app/sbrowser/samsungpay/VirtualCardBlockListHandler;

    invoke-static {}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->get()Lcom/sec/android/app/sbrowser/authentication/Authenticator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension;->mAuthenticator:Lcom/sec/android/app/sbrowser/authentication/Authenticator;

    invoke-static {}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->getInstance()Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension;->mSamsungPass:Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    new-instance v0, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassActivator;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassActivator;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension;->mSPassActivator:Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassActivator;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension;Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension$OnAcceptSuggestion_Response;Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;Lcom/sec/android/app/sbrowser/authentication/Authenticator$Result;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension;->lambda$authenticateToDecryptCreditCard$4(Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension$OnAcceptSuggestion_Response;Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;Lcom/sec/android/app/sbrowser/authentication/Authenticator$Result;)V

    return-void
.end method

.method private acceptCreditCardSuggestion(Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension$OnAcceptSuggestion_Response;)V
    .locals 3

    iget v0, p1, Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;->suggestionType:I

    const/16 v1, 0x31

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension;->authenticateToDecryptCreditCardSpay(Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension$OnAcceptSuggestion_Response;Z)V

    return-void

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension$SuggestionType;->NO_REGISTRATION:Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension$SuggestionType;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension$SuggestionType;->equals(Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;)Z

    move-result v0

    const-string v1, "201"

    if-eqz v0, :cond_1

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension;->runRegistration(Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension$OnAcceptSuggestion_Response;)V

    const-string p0, "2359"

    invoke-static {v1, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    sget-object v0, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension$SuggestionType;->SAMSUNG_PASS_INACTIVATED:Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension$SuggestionType;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension$SuggestionType;->equals(Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-interface {p2, v2}, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension$OnAcceptSuggestion_Response;->call(Z)V

    return-void

    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension;->isFillableSuggestion(Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p2, v2}, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension$OnAcceptSuggestion_Response;->call(Z)V

    return-void

    :cond_3
    const-string v0, "9129"

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2, p1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension;->authenticateToDecryptCreditCard(Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension$OnAcceptSuggestion_Response;Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;)V

    return-void
.end method

.method private acceptPasswordSuggestion(Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension$OnAcceptSuggestion_Response;)V
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension$SuggestionType;->NO_REGISTRATION:Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension$SuggestionType;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension$SuggestionType;->equals(Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension;->runSamsungPassRegistration(Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension$OnAcceptSuggestion_Response;)V

    return-void

    :cond_0
    const/4 p0, 0x1

    invoke-interface {p2, p0}, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension$OnAcceptSuggestion_Response;->call(Z)V

    return-void
.end method

.method private acceptProfileSuggestion(Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension$OnAcceptSuggestion_Response;)V
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension$SuggestionType;->SAMSUNG_PASS_INACTIVATED:Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension$SuggestionType;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension$SuggestionType;->equals(Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {p2, v1}, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension$OnAcceptSuggestion_Response;->call(Z)V

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension;->isFillableSuggestion(Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension;->mSamsungPass:Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->isPersonalDataSyncSet()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension;->mSamsungPass:Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->isPersonalDataSyncSet()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension;->mSamsungPass:Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->isPersonalDataSyncAvailable()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension;->authenticateOnly(Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension$OnAcceptSuggestion_Response;)V

    return-void

    :cond_3
    :goto_1
    invoke-interface {p2, v1}, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension$OnAcceptSuggestion_Response;->call(Z)V

    return-void
.end method

.method private authenticateOnly(Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension$OnAcceptSuggestion_Response;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension;->mAuthenticator:Lcom/sec/android/app/sbrowser/authentication/Authenticator;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension;->getOptionForAuthenticator()Lcom/sec/android/app/sbrowser/authentication/Authenticator$Option;

    move-result-object p0

    new-instance v1, Lcom/sec/android/app/sbrowser/autofill/personal_data/a;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/sec/android/app/sbrowser/autofill/personal_data/a;-><init>(Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension$OnAcceptSuggestion_Response;I)V

    invoke-interface {v0, p0, v1}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->authenticate(Lcom/sec/android/app/sbrowser/authentication/Authenticator$Option;Lcom/sec/android/app/sbrowser/authentication/Authenticator$Callback;)V

    return-void
.end method

.method private authenticateToDecryptCreditCard(Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension$OnAcceptSuggestion_Response;Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;)V
    .locals 4
    .param p2    # Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension;->mAuthenticator:Lcom/sec/android/app/sbrowser/authentication/Authenticator;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension;->getOptionForAuthenticator()Lcom/sec/android/app/sbrowser/authentication/Authenticator$Option;

    move-result-object v1

    new-instance v2, LM4/a;

    const/16 v3, 0xb

    invoke-direct {v2, p0, v3, p1, p2}, LM4/a;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->authenticate(Lcom/sec/android/app/sbrowser/authentication/Authenticator$Option;Lcom/sec/android/app/sbrowser/authentication/Authenticator$Callback;)V

    return-void
.end method

.method private authenticateToDecryptCreditCardSpay(Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension$OnAcceptSuggestion_Response;Z)V
    .locals 5

    iget-object v0, p1, Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;->payload:Lcom/sec/terrace/services/autofill/mojom/TerracePayload;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    invoke-interface {p2, p0}, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension$OnAcceptSuggestion_Response;->call(Z)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sec/terrace/services/autofill/mojom/TerracePayload;->getGuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungWalletVirtualCardData;->getInstance()Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungWalletVirtualCardData;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungWalletVirtualCardData;->getDigitalCardID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension;->mSPayAuth:Lcom/sec/android/app/sbrowser/samsungpay/SamsungPayAuthenticatorFactory;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/samsungpay/SamsungPayAuthenticatorFactory;->create()Lcom/sec/android/app/sbrowser/samsungpay/SamsungPayAuthenticator;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension;->mUrlHost:Ljava/lang/String;

    new-instance v4, LEa/a;

    invoke-direct {v4, p0, p1, p2, v0}, LEa/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, p3, v3, v1, v4}, Lcom/sec/android/app/sbrowser/samsungpay/SamsungPayAuthenticator;->run(ZLjava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/samsungpay/SamsungPayAuthenticator$Callback;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension$OnAcceptSuggestion_Response;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension;->lambda$runRegistration$2(Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension$OnAcceptSuggestion_Response;Z)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension;Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension$OnAcceptSuggestion_Response;Ljava/lang/String;ZLandroid/content/Intent;Z)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension;->lambda$authenticateToDecryptCreditCardSpay$0(Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension$OnAcceptSuggestion_Response;Ljava/lang/String;ZLandroid/content/Intent;Z)V

    return-void
.end method

.method private createEmptySuggestions()[Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 p0, 0x0

    new-array p0, p0, [Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;

    return-object p0
.end method

.method private createWarningSuggestion(Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension$SuggestionType;Ljava/lang/String;)Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance p0, Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;

    invoke-direct {p0}, Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;-><init>()V

    new-instance v0, Lcom/sec/terrace/services/autofill/mojom/TerracePayload;

    invoke-direct {v0}, Lcom/sec/terrace/services/autofill/mojom/TerracePayload;-><init>()V

    iput-object v0, p0, Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;->payload:Lcom/sec/terrace/services/autofill/mojom/TerracePayload;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sec/terrace/services/autofill/mojom/TerracePayload;->setGuid(Ljava/lang/String;)V

    const/4 p1, 0x6

    iput p1, p0, Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;->suggestionType:I

    new-instance p1, Lcom/sec/terrace/services/autofill/mojom/TerraceText;

    invoke-direct {p1}, Lcom/sec/terrace/services/autofill/mojom/TerraceText;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;->mainText:Lcom/sec/terrace/services/autofill/mojom/TerraceText;

    new-instance p1, Lcom/sec/terrace/services/autofill/mojom/TerraceText;

    invoke-direct {p1}, Lcom/sec/terrace/services/autofill/mojom/TerraceText;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;->minorText:Lcom/sec/terrace/services/autofill/mojom/TerraceText;

    iget-object p1, p0, Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;->mainText:Lcom/sec/terrace/services/autofill/mojom/TerraceText;

    iput-object p2, p1, Lcom/sec/terrace/services/autofill/mojom/TerraceText;->textValue:Ljava/lang/String;

    const/4 p1, 0x2

    new-array p1, p1, [I

    const/4 p2, 0x1

    const/4 v0, 0x0

    aput v0, p1, p2

    aput v0, p1, v0

    const-class p2, Lcom/sec/terrace/services/autofill/mojom/TerraceText;

    invoke-static {p2, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[Lcom/sec/terrace/services/autofill/mojom/TerraceText;

    iput-object p1, p0, Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;->labels:[[Lcom/sec/terrace/services/autofill/mojom/TerraceText;

    return-object p0
.end method

.method public static synthetic d(Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension$OnAcceptSuggestion_Response;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension;->lambda$runSamsungPassRegistration$1(Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension$OnAcceptSuggestion_Response;Z)V

    return-void
.end method

.method public static synthetic e(Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension$OnAcceptSuggestion_Response;Lcom/sec/android/app/sbrowser/authentication/Authenticator$Result;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension;->lambda$authenticateOnly$3(Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension$OnAcceptSuggestion_Response;Lcom/sec/android/app/sbrowser/authentication/Authenticator$Result;)V

    return-void
.end method

.method private getBiometricsDisabledMessage()I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension;->mAuthenticator:Lcom/sec/android/app/sbrowser/authentication/Authenticator;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->hasDisabledBiometrics()Z

    move-result v0

    const v1, 0x7f140126

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension;->mAuthenticator:Lcom/sec/android/app/sbrowser/authentication/Authenticator;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->isFingerprintSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension;->mAuthenticator:Lcom/sec/android/app/sbrowser/authentication/Authenticator;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->isIrisSupported()Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const p0, 0x7f140125

    return p0

    :cond_2
    const p0, 0x7f140127

    return p0
.end method

.method private getBiometricsDisabledMessageForDex()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension;->mAuthenticator:Lcom/sec/android/app/sbrowser/authentication/Authenticator;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->hasDisabledBiometrics()Z

    move-result v0

    if-eqz v0, :cond_0

    const p0, 0x7f140eb9

    return p0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension;->mAuthenticator:Lcom/sec/android/app/sbrowser/authentication/Authenticator;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->isIrisSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    const p0, 0x7f140bd9

    return p0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension;->mAuthenticator:Lcom/sec/android/app/sbrowser/authentication/Authenticator;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->isFingerprintSupported()Z

    move-result p0

    if-eqz p0, :cond_2

    const p0, 0x7f140bd7

    return p0

    :cond_2
    const p0, 0x7f140bd3

    return p0
.end method

.method private getOptionForAuthenticator()Lcom/sec/android/app/sbrowser/authentication/Authenticator$Option;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension;->mSamsungPass:Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->isPersonalDataSyncSet()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/authentication/SamsungPassAuthenticator;->createOption()Lcom/sec/android/app/sbrowser/authentication/Authenticator$Option;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->createOption()Lcom/sec/android/app/sbrowser/authentication/Authenticator$Option;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private getSamsungPassDisabledMessage()I
    .locals 0

    const p0, 0x7f140197

    return p0
.end method

.method private getString(I)Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getSuggestToActivateSamsungPassMessage()Ljava/lang/String;
    .locals 2

    const v0, 0x7f14019a

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f140198

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension;->getString(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isCardNumberValid(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v1, 0x8

    if-lt p0, v1, :cond_2

    const/16 v1, 0x18

    if-le p0, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string p0, "(^[0-9]*$)"

    invoke-virtual {p1, p0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method private isFillableSuggestion(Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;)Z
    .locals 1

    iget p0, p1, Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;->suggestionType:I

    const/4 p1, 0x1

    if-eqz p0, :cond_1

    if-eq p0, p1, :cond_1

    const/16 v0, 0x31

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return p1
.end method

.method private static synthetic lambda$authenticateOnly$3(Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension$OnAcceptSuggestion_Response;Lcom/sec/android/app/sbrowser/authentication/Authenticator$Result;)V
    .locals 0

    iget-boolean p1, p1, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Result;->success:Z

    invoke-interface {p0, p1}, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension$OnAcceptSuggestion_Response;->call(Z)V

    return-void
.end method

.method private synthetic lambda$authenticateToDecryptCreditCard$4(Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension$OnAcceptSuggestion_Response;Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;Lcom/sec/android/app/sbrowser/authentication/Authenticator$Result;)V
    .locals 8

    iget-boolean v0, p3, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Result;->success:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-interface {p1, v1}, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension$OnAcceptSuggestion_Response;->call(Z)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension;->mSamsungPass:Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->isPersonalDataSyncSet()Z

    move-result p0

    const-string v0, "9139"

    const-string v2, "201"

    const/4 v3, 0x1

    if-nez p0, :cond_1

    invoke-interface {p1, v3}, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension$OnAcceptSuggestion_Response;->call(Z)V

    invoke-static {v2, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object p0, p2, Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;->payload:Lcom/sec/terrace/services/autofill/mojom/TerracePayload;

    invoke-virtual {p0}, Lcom/sec/terrace/services/autofill/mojom/TerracePayload;->getGuid()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassWebData;->getInstance()Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassWebData;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassWebData;->getEncryptedCardNumber(Ljava/lang/String;)[B

    move-result-object p2

    const-string v4, "AutofillPopupExtension"

    if-nez p2, :cond_2

    const-string p0, "not retrieved from SPass"

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1, v1}, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension$OnAcceptSuggestion_Response;->call(Z)V

    return-void

    :cond_2
    iget-object v5, p3, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Result;->type:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    sget-object v6, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;->IRIS:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    if-ne v5, v6, :cond_3

    const-string v5, "Iris"

    goto :goto_0

    :cond_3
    const-string v5, "Fingerprint"

    :goto_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->getInstance()Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    move-result-object v6

    iget-object v7, p3, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Result;->nonce:[B

    iget-object p3, p3, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Result;->token:[B

    invoke-virtual {v6, p2, v5, v7, p3}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->decrypt([BLjava/lang/String;[B[B)Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getInstance()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;

    move-result-object p3

    invoke-virtual {p3, p0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getCreditCard(Ljava/lang/String;)Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;

    move-result-object p0

    if-nez p0, :cond_4

    const-string p0, "not retrieved from PDM"

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1, v1}, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension$OnAcceptSuggestion_Response;->call(Z)V

    return-void

    :cond_4
    invoke-virtual {p0, p2}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->setNumber(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getInstance()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->updateCreditCardCache(Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;)V

    invoke-interface {p1, v3}, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension$OnAcceptSuggestion_Response;->call(Z)V

    invoke-static {v2, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$authenticateToDecryptCreditCardSpay$0(Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension$OnAcceptSuggestion_Response;Ljava/lang/String;ZLandroid/content/Intent;Z)V
    .locals 1

    if-eqz p6, :cond_0

    invoke-direct {p0, p1, p2, p6}, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension;->authenticateToDecryptCreditCardSpay(Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension$OnAcceptSuggestion_Response;Z)V

    :cond_0
    const/4 p1, 0x0

    if-eqz p4, :cond_7

    if-nez p5, :cond_1

    goto :goto_0

    :cond_1
    const-string p4, "dpan"

    invoke-virtual {p5, p4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-direct {p0, p4}, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension;->isCardNumberValid(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-interface {p2, p1}, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension$OnAcceptSuggestion_Response;->call(Z)V

    return-void

    :cond_2
    const-string p0, "dynamicCvv"

    invoke-virtual {p5, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p6, "expiryMonth"

    invoke-virtual {p5, p6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    const-string v0, "expiryYear"

    invoke-virtual {p5, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getInstance()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getCreditCard(Ljava/lang/String;)Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;

    move-result-object p3

    if-nez p3, :cond_3

    const-string p0, "AutofillPopupExtension"

    const-string p3, "not retrieved from PDM"

    invoke-static {p0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p2, p1}, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension$OnAcceptSuggestion_Response;->call(Z)V

    return-void

    :cond_3
    invoke-virtual {p3, p4}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->setNumber(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {p3, p1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->setIsVirtualCard(Z)V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_4

    invoke-virtual {p3, p0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->setCvcForVirtualCard(Ljava/lang/String;)V

    :cond_4
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_5

    invoke-virtual {p3, p6}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->setMonth(Ljava/lang/String;)V

    :cond_5
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_6

    invoke-virtual {p3, p5}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->setYear(Ljava/lang/String;)V

    :cond_6
    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getInstance()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->updateCreditCardCache(Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;)V

    invoke-interface {p2, p1}, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension$OnAcceptSuggestion_Response;->call(Z)V

    return-void

    :cond_7
    :goto_0
    invoke-interface {p2, p1}, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension$OnAcceptSuggestion_Response;->call(Z)V

    return-void
.end method

.method private static synthetic lambda$runRegistration$2(Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension$OnAcceptSuggestion_Response;Z)V
    .locals 0

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension$OnAcceptSuggestion_Response;->call(Z)V

    return-void
.end method

.method private static synthetic lambda$runSamsungPassRegistration$1(Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension$OnAcceptSuggestion_Response;Z)V
    .locals 0

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension$OnAcceptSuggestion_Response;->call(Z)V

    return-void
.end method

.method private overrideCreditCardSuggestions([Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension$OnShow_Response;)V
    .locals 5

    array-length v0, p1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension;->mAuthenticator:Lcom/sec/android/app/sbrowser/authentication/Authenticator;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->isBiometricsSupported()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension;->mAuthenticator:Lcom/sec/android/app/sbrowser/authentication/Authenticator;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->canUseFingerprintOrIris()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension$SuggestionType;->NO_REGISTRATION:Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension$SuggestionType;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension;->getBiometricsDisabledMessage()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension;->createWarningSuggestion(Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension$SuggestionType;Ljava/lang/String;)Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;

    move-result-object p0

    filled-new-array {p0}, [Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension$OnShow_Response;->call([Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension;->mSamsungPass:Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->isPersonalDataSyncSet()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension;->mSamsungPass:Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->isPersonalDataSyncAvailable()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension;->createEmptySuggestions()[Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension$OnShow_Response;->call([Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension;->mVirtualCardBlockListHandler:Lcom/sec/android/app/sbrowser/samsungpay/VirtualCardBlockListHandler;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension;->mUrlHost:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/samsungpay/VirtualCardBlockListHandler;->doesUrlBlockListVirtualCard(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    aget-object v2, p1, v1

    iget v3, v2, Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;->suggestionType:I

    const/16 v4, 0x31

    if-eq v3, v4, :cond_3

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;

    invoke-interface {p2, p0}, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension$OnShow_Response;->call([Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;)V

    :cond_5
    invoke-interface {p2, p1}, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension$OnShow_Response;->call([Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;)V

    const-string p0, "201"

    const-string p1, "9128"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6
    :goto_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension;->createEmptySuggestions()[Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension$OnShow_Response;->call([Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;)V

    return-void
.end method

.method private overridePasswordSuggestions([Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension$OnShow_Response;Z)V
    .locals 0

    if-eqz p3, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension;->appendPassActivationSuggestion([Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;)[Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;

    move-result-object p1

    :cond_0
    invoke-interface {p2, p1}, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension$OnShow_Response;->call([Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;)V

    return-void
.end method

.method private overrideProfileSuggestions([Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension$OnShow_Response;)V
    .locals 10

    array-length v0, p1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension;->createEmptySuggestions()[Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension$OnShow_Response;->call([Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension;->mSamsungPass:Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->isPersonalDataSyncSet()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension;->mSamsungPass:Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->isPersonalDataSyncAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension;->createEmptySuggestions()[Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension$OnShow_Response;->call([Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;)V

    return-void

    :cond_1
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_6

    aget-object v3, p1, v2

    invoke-direct {p0, v3}, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension;->isFillableSuggestion(Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_3

    :cond_2
    iget-object v4, v3, Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;->mainText:Lcom/sec/terrace/services/autofill/mojom/TerraceText;

    iget-object v5, v4, Lcom/sec/terrace/services/autofill/mojom/TerraceText;->textValue:Ljava/lang/String;

    const-string v6, "(.)."

    const-string v7, "$1*"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/sec/terrace/services/autofill/mojom/TerraceText;->textValue:Ljava/lang/String;

    move v4, v1

    :goto_1
    iget-object v5, v3, Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;->labels:[[Lcom/sec/terrace/services/autofill/mojom/TerraceText;

    array-length v5, v5

    if-ge v4, v5, :cond_5

    move v5, v1

    :goto_2
    iget-object v8, v3, Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;->labels:[[Lcom/sec/terrace/services/autofill/mojom/TerraceText;

    aget-object v8, v8, v4

    array-length v9, v8

    if-ge v5, v9, :cond_4

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/sec/terrace/services/autofill/mojom/TerraceText;->textValue:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    iget-object v8, v3, Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;->labels:[[Lcom/sec/terrace/services/autofill/mojom/TerraceText;

    aget-object v8, v8, v4

    aget-object v8, v8, v5

    iget-object v9, v8, Lcom/sec/terrace/services/autofill/mojom/TerraceText;->textValue:Ljava/lang/String;

    invoke-virtual {v9, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/sec/terrace/services/autofill/mojom/TerraceText;->textValue:Ljava/lang/String;

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    iget-object v4, v3, Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;->additionalLabel:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;->additionalLabel:Ljava/lang/String;

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    invoke-interface {p2, p1}, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension$OnShow_Response;->call([Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;)V

    return-void
.end method

.method private runRegistration(Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension$OnAcceptSuggestion_Response;)V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getLastTrackedFocusedActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension;->getBiometricsDisabledMessageForDex()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension;->mAuthenticator:Lcom/sec/android/app/sbrowser/authentication/Authenticator;

    new-instance v0, Lcom/sec/android/app/sbrowser/autofill/personal_data/a;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/a;-><init>(Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension$OnAcceptSuggestion_Response;I)V

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->register(Lcom/sec/android/app/sbrowser/common/model/authentication/Registration$Callback;)V

    return-void
.end method

.method private runSamsungPassRegistration(Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension$OnAcceptSuggestion_Response;)V
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension;->mSPassActivator:Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassActivator;

    new-instance v0, Lcom/sec/android/app/sbrowser/autofill/personal_data/a;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/a;-><init>(Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension$OnAcceptSuggestion_Response;I)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassActivator;->register(Lcom/sec/android/app/sbrowser/common/model/authentication/Registration$Callback;)V

    return-void
.end method


# virtual methods
.method public appendPassActivationSuggestion([Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;)[Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension$SuggestionType;->NO_REGISTRATION:Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension$SuggestionType;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension;->getSamsungPassDisabledMessage()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension;->createWarningSuggestion(Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension$SuggestionType;Ljava/lang/String;)Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;

    move-result-object v0

    const/16 v1, 0x32

    iput v1, v0, Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;->suggestionType:I

    new-instance v1, Lcom/sec/terrace/services/autofill/mojom/TerraceText;

    invoke-direct {v1}, Lcom/sec/terrace/services/autofill/mojom/TerraceText;-><init>()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension;->getSuggestToActivateSamsungPassMessage()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/sec/terrace/services/autofill/mojom/TerraceText;->textValue:Ljava/lang/String;

    const/4 p0, 0x2

    new-array p0, p0, [I

    const/4 v2, 0x1

    aput v2, p0, v2

    const/4 v3, 0x0

    aput v2, p0, v3

    const-class v2, Lcom/sec/terrace/services/autofill/mojom/TerraceText;

    invoke-static {v2, p0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[Lcom/sec/terrace/services/autofill/mojom/TerraceText;

    iput-object p0, v0, Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;->labels:[[Lcom/sec/terrace/services/autofill/mojom/TerraceText;

    aget-object p0, p0, v3

    aput-object v1, p0, v3

    array-length p0, p1

    add-int/lit8 v1, p0, 0x1

    new-array v1, v1, [Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;

    :goto_0
    if-ge v3, p0, :cond_0

    aget-object v2, p1, v3

    aput-object v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    aput-object v0, v1, p0

    return-object v1
.end method

.method public onAcceptSuggestion(Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension$OnAcceptSuggestion_Response;)V
    .locals 3

    iget v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension;->mPopupType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    invoke-interface {p2, v1}, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension$OnAcceptSuggestion_Response;->call(Z)V

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension;->acceptPasswordSuggestion(Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension$OnAcceptSuggestion_Response;)V

    return-void

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension;->acceptCreditCardSuggestion(Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension$OnAcceptSuggestion_Response;)V

    return-void

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension;->acceptProfileSuggestion(Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension$OnAcceptSuggestion_Response;)V

    return-void
.end method

.method public onShow(I[Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;ZLjava/lang/String;Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension$OnShow_Response;)V
    .locals 2

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension;->mUrlHost:Ljava/lang/String;

    array-length p4, p2

    const/4 v0, 0x4

    const/4 v1, 0x1

    if-ne p4, v1, :cond_1

    const/4 p4, 0x0

    aget-object p4, p2, p4

    invoke-direct {p0, p4}, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension;->isFillableSuggestion(Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;)Z

    move-result p4

    if-nez p4, :cond_1

    if-nez p3, :cond_1

    if-ne p1, v0, :cond_0

    const-string p0, "201"

    const-string p1, "9260"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-interface {p5, p2}, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension$OnShow_Response;->call([Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;)V

    return-void

    :cond_1
    iput p1, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension;->mPopupType:I

    if-eq p1, v1, :cond_4

    const/4 p4, 0x3

    if-eq p1, p4, :cond_3

    if-eq p1, v0, :cond_2

    invoke-interface {p5, p2}, Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension$OnShow_Response;->call([Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;)V

    return-void

    :cond_2
    invoke-direct {p0, p2, p5, p3}, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension;->overridePasswordSuggestions([Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension$OnShow_Response;Z)V

    return-void

    :cond_3
    invoke-direct {p0, p2, p5}, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension;->overrideCreditCardSuggestions([Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension$OnShow_Response;)V

    return-void

    :cond_4
    invoke-direct {p0, p2, p5}, Lcom/sec/android/app/sbrowser/autofill/personal_data/AutofillPopupExtension;->overrideProfileSuggestions([Lcom/sec/terrace/services/autofill/mojom/TerraceSuggestion;Lcom/sec/terrace/services/autofill/mojom/TerraceAutofillPopupExtension$OnShow_Response;)V

    return-void
.end method
