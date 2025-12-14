.class public Lcom/sec/android/app/sbrowser/autofill/personal_data/CreditCardUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static decryptIfNeeded(Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;)Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassWebData;->getInstance()Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassWebData;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassWebData;->decryptIfNeeded(Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;)Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;

    move-result-object p0

    return-object p0
.end method

.method public static getStatusLogForAutofillData()V
    .locals 3

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getInstance()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getCreditCardsForSettings()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getInstance()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getProfilesForSettings()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const-string v2, "0029"

    invoke-static {v2, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;I)V

    const-string v0, "0012"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;I)V

    return-void
.end method

.method public static isCardNumberValid(Ljava/lang/CharSequence;)Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$CardNumberValidationState;
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getInstance()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;

    move-result-object v0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/CreditCardUtil;->removeSpaceAndBar(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getBasicCardIssuerNetwork(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$CardNumberValidationState;->CARD_NUMBER_NOT_VALIDATED:Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$CardNumberValidationState;

    return-object p0

    :cond_1
    sget-object p0, Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$CardNumberValidationState;->CARD_NUMBER_VALIDATED:Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$CardNumberValidationState;

    return-object p0

    :cond_2
    :goto_0
    sget-object p0, Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$CardNumberValidationState;->CARD_NUMBER_REQUIRED:Lcom/sec/android/app/sbrowser/common/constants/autofill/AutofillConstants$CardNumberValidationState;

    return-object p0
.end method

.method public static removeSpaceAndBar(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, " "

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "-"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
