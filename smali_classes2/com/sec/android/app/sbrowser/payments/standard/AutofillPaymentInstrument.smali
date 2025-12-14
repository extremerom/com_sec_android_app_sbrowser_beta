.class public Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;
.super Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$FullCardRequestDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument$CompletionStatus;
    }
.end annotation


# instance fields
.field private mBillingAddress:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mCallback:Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp$InstrumentDetailsCallback;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mCard:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;

.field private final mContext:Landroid/content/Context;

.field private mHasValidNumberAndName:Z

.field private mIsNewCard:Z

.field private mIsWaitingForBillingNormalization:Z

.field private mMethodName:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mSecurityCode:Ljava/lang/String;

.field private final mTerrace:Lcom/sec/terrace/Terrace;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/Terrace;Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;Ljava/lang/String;)V
    .locals 5
    .param p3    # Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p2}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->getGUID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->getObfuscatedNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->getIssuerIconDrawableId()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p2}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->getIssuerIconDrawableId()I

    move-result v4

    invoke-static {v3, v4}, Lcom/sec/terrace/base/TerraceApiCompatibilityUtils;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :goto_0
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;->mTerrace:Lcom/sec/terrace/Terrace;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;->mCard:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;->mBillingAddress:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->mIsEditable:Z

    invoke-virtual {p2}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->getGUID()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;->mIsNewCard:Z

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;->mMethodName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;->checkAndUpdateCardCompleteness()V

    return-void
.end method

.method private static ensureNotNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method private isCanNotUseAnyBioAuth()Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->get()Lcom/sec/android/app/sbrowser/authentication/Authenticator;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->canUseFingerprint()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->canUseIris()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private sendInstrumentDetails()V
    .locals 6

    const-string v0, ""

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    new-instance v2, Landroid/util/JsonWriter;

    invoke-direct {v2, v1}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V

    :try_start_0
    invoke-virtual {v2}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    const-string v3, "cardholderName"

    invoke-virtual {v2, v3}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;->mCard:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;

    invoke-virtual {v4}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    const-string v3, "cardNumber"

    invoke-virtual {v2, v3}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;->mCard:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;

    invoke-virtual {v4}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    const-string v3, "expiryMonth"

    invoke-virtual {v2, v3}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;->mCard:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;

    invoke-virtual {v4}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->getMonth()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    const-string v3, "expiryYear"

    invoke-virtual {v2, v3}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;->mCard:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;

    invoke-virtual {v4}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->getYear()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    const-string v3, "cardSecurityCode"

    invoke-virtual {v2, v3}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;->mSecurityCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    const-string v3, "billingAddress"

    invoke-virtual {v2, v3}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    const-string v3, "country"

    invoke-virtual {v2, v3}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;->mBillingAddress:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

    invoke-virtual {v4}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getCountryCode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    const-string v3, "region"

    invoke-virtual {v2, v3}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;->mBillingAddress:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

    invoke-virtual {v4}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getRegion()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    const-string v3, "city"

    invoke-virtual {v2, v3}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;->mBillingAddress:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

    invoke-virtual {v4}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getLocality()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    const-string v3, "dependentLocality"

    invoke-virtual {v2, v3}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;->mBillingAddress:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

    invoke-virtual {v4}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getDependentLocality()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    const-string v3, "addressLine"

    invoke-virtual {v2, v3}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;->mBillingAddress:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

    invoke-virtual {v3}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getStreetAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_0

    aget-object v5, v3, v4

    invoke-virtual {v2, v5}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto/16 :goto_1

    :cond_0
    invoke-virtual {v2}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    const-string v3, "postalCode"

    invoke-virtual {v2, v3}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;->mBillingAddress:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

    invoke-virtual {v4}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getPostalCode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    const-string v3, "sortingCode"

    invoke-virtual {v2, v3}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;->mBillingAddress:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

    invoke-virtual {v4}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getSortingCode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    const-string v3, "languageCode"

    invoke-virtual {v2, v3}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;->mBillingAddress:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

    invoke-virtual {v4}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getLanguageCode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    const-string v3, "organization"

    invoke-virtual {v2, v3}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;->mBillingAddress:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

    invoke-virtual {v4}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getCompanyName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    const-string v3, "recipient"

    invoke-virtual {v2, v3}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;->mBillingAddress:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

    invoke-virtual {v4}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getFullName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;->mBillingAddress:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

    invoke-virtual {v4}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getPhoneNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    invoke-virtual {v2}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    invoke-virtual {v2}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;->mSecurityCode:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;->mCallback:Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp$InstrumentDetailsCallback;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;->mMethodName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/sec/terrace/browser/payments/TerracePayerData;

    invoke-direct {v3}, Lcom/sec/terrace/browser/payments/TerracePayerData;-><init>()V

    invoke-interface {v0, v2, v1, v3}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp$InstrumentDetailsCallback;->onInstrumentDetailsReady(Ljava/lang/String;Ljava/lang/String;Lcom/sec/terrace/browser/payments/TerracePayerData;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;->mCallback:Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp$InstrumentDetailsCallback;

    return-void

    :catch_0
    :try_start_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;->onFullCardError()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;->mSecurityCode:Ljava/lang/String;

    return-void

    :goto_1
    iput-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;->mSecurityCode:Ljava/lang/String;

    throw v1
.end method

.method private setBioAuthEditMessage()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->get()Lcom/sec/android/app/sbrowser/authentication/Authenticator;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->canUseFingerprintOrIris()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->hasDisabledBiometrics()Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x7f1408f9

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->isFingerprintSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->isIrisSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    const v0, 0x7f1408cb

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->isIrisSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    const v0, 0x7f1408e2

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->isFingerprintSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f1408e0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->mEditMessage:Ljava/lang/String;

    :cond_4
    return-void
.end method


# virtual methods
.method public canMakePayment()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;->mHasValidNumberAndName:Z

    return p0
.end method

.method public canPreselect()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;->isNewCard()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;->isCanNotUseAnyBioAuth()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->mIsComplete:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->isValid()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public checkAndUpdateCardCompleteness()V
    .locals 7

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->mCompletenessScore:I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;->getMissingFields()I

    move-result v1

    and-int/lit8 v2, v1, 0x1

    if-nez v2, :cond_0

    iget v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->mCompletenessScore:I

    add-int/lit8 v2, v2, 0x6

    iput v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->mCompletenessScore:I

    :cond_0
    and-int/lit8 v2, v1, 0x8

    const v3, 0x7f1408ca

    const/4 v4, 0x1

    if-nez v2, :cond_1

    iget v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->mCompletenessScore:I

    add-int/lit8 v2, v2, 0xa

    iput v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->mCompletenessScore:I

    move v2, v0

    move v5, v2

    goto :goto_0

    :cond_1
    move v5, v3

    move v2, v4

    :goto_0
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;->mBillingAddress:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

    if-nez v6, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move v3, v5

    :goto_1
    iput-boolean v4, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;->mHasValidNumberAndName:Z

    and-int/lit8 v5, v1, 0x2

    if-nez v5, :cond_3

    iget v5, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->mCompletenessScore:I

    add-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->mCompletenessScore:I

    goto :goto_2

    :cond_3
    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;->mHasValidNumberAndName:Z

    add-int/lit8 v2, v2, 0x1

    const v3, 0x7f1408ec

    :goto_2
    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_4

    iget v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->mCompletenessScore:I

    add-int/lit8 v1, v1, 0xd

    iput v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->mCompletenessScore:I

    goto :goto_3

    :cond_4
    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;->mHasValidNumberAndName:Z

    add-int/lit8 v2, v2, 0x1

    const v3, 0x7f1408d0

    :goto_3
    if-le v2, v4, :cond_5

    const v3, 0x7f1408ea

    :cond_5
    if-nez v3, :cond_6

    const/4 v1, 0x0

    goto :goto_4

    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_4
    iput-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->mEditMessage:Ljava/lang/String;

    if-nez v1, :cond_7

    move v0, v4

    :cond_7
    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->mIsComplete:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;->isNewCard()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;->setBioAuthEditMessage()V

    :cond_8
    return-void
.end method

.method public completeInstrument(Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;Ljava/lang/String;Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;)V
    .locals 6

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;->mCard:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;->mBillingAddress:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;->mMethodName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->getGUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->getObfuscatedNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->getIssuerIconDrawableId()I

    move-result p1

    invoke-static {p2, p1}, Lcom/sec/terrace/base/TerraceApiCompatibilityUtils;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->updateIdentifierLabelsAndIcon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;->checkAndUpdateCardCompleteness()V

    return-void
.end method

.method public dismissInstrument()V
    .locals 0

    return-void
.end method

.method public getCard()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;->mCard:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/CreditCardUtil;->decryptIfNeeded(Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;)Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;

    move-result-object p0

    return-object p0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 0
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;->mBillingAddress:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;->getCountryCode(Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getInstrumentMethodNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;->mMethodName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getMissingFields()I
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;->mBillingAddress:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

    if-nez v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;->mCard:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;

    invoke-virtual {v1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->hasValidCreditCardExpirationDate()Z

    move-result v1

    if-nez v1, :cond_1

    or-int/lit8 v0, v0, 0x1

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;->mCard:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;

    invoke-virtual {v1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->getIsLocal()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;->mCard:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;

    invoke-virtual {v1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x2

    :cond_2
    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getInstance()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;->mCard:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;

    invoke-virtual {p0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->getNumber()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getBasicCardIssuerNetwork(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_3

    or-int/lit8 v0, v0, 0x4

    :cond_3
    return v0
.end method

.method public getPaymentAppType()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getPreviewString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->getLabel()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-gez p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, " "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {p1, p0, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-ge p0, p2, :cond_2

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    div-int/lit8 p2, p2, 0x2

    const/4 p0, 0x0

    invoke-virtual {p1, p0, p2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public invokePaymentApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[[BLjava/util/Map;Lcom/sec/terrace/services/payments/mojom/TerracePaymentItem;Ljava/util/List;Ljava/util/Map;Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;Ljava/util/List;Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp$InstrumentDetailsCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/terrace/services/payments/mojom/TerracePaymentMethodData;",
            ">;",
            "Lcom/sec/terrace/services/payments/mojom/TerracePaymentItem;",
            "Ljava/util/List<",
            "Lcom/sec/terrace/services/payments/mojom/TerracePaymentItem;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetailsModifier;",
            ">;",
            "Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;",
            "Ljava/util/List<",
            "Lcom/sec/terrace/services/payments/mojom/TerracePaymentShippingOption;",
            ">;",
            "Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp$InstrumentDetailsCallback;",
            ")V"
        }
    .end annotation

    iput-object p12, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;->mCallback:Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp$InstrumentDetailsCallback;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;->mIsWaitingForBillingNormalization:Z

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getInstance()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;->mTerrace:Lcom/sec/terrace/Terrace;

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;->mCard:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;

    invoke-virtual {p1, p2, p3, p0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getFullCard(Lcom/sec/terrace/Terrace;Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$FullCardRequestDelegate;)V

    return-void
.end method

.method public isAutofillInstrument()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isComplete()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->mIsComplete:Z

    return p0
.end method

.method public isEditable()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;->isNewCard()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;->isCanNotUseAnyBioAuth()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->mIsEditable:Z

    return p0
.end method

.method public isNewCard()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;->mIsNewCard:Z

    return p0
.end method

.method public isServerAutofillInstrument()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;->mCard:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;

    invoke-virtual {p0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->getIsLocal()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isValidForPaymentMethodData(Ljava/lang/String;Lcom/sec/terrace/services/payments/mojom/TerracePaymentMethodData;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;->isValidForPaymentMethodData(Ljava/lang/String;Lcom/sec/terrace/services/payments/mojom/TerracePaymentMethodData;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-static {p2}, Lcom/sec/android/app/sbrowser/payments/standard/BasicCardUtils;->isBasicCardNetworkSpecified(Lcom/sec/terrace/services/payments/mojom/TerracePaymentMethodData;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/payments/standard/BasicCardUtils;->convertBasicCardToNetworks(Lcom/sec/terrace/services/payments/mojom/TerracePaymentMethodData;)Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;->getCard()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->getBasicCardIssuerNetwork()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public onFullCardDetails(Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;Ljava/lang/String;)V
    .locals 1

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;->mSecurityCode:Ljava/lang/String;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;->mCard:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;

    invoke-virtual {p1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->setNumber(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;->mCard:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;

    invoke-virtual {p1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->getMonth()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->setMonth(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;->mCard:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;

    invoke-virtual {p1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->getYear()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->setYear(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;->mCallback:Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp$InstrumentDetailsCallback;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp$InstrumentDetailsCallback;->onInstrumentDetailsLoadingWithoutUI()V

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;->mIsWaitingForBillingNormalization:Z

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;->sendInstrumentDetails()V

    :cond_0
    return-void
.end method

.method public onFullCardError()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;->mCallback:Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp$InstrumentDetailsCallback;

    const-string v1, "User closed the Payment Request UI."

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp$InstrumentDetailsCallback;->onInstrumentDetailsError(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;->mCallback:Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp$InstrumentDetailsCallback;

    return-void
.end method

.method public strictCanMakePayment()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;->getMissingFields()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;->mHaveRequestedAutofillData:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
