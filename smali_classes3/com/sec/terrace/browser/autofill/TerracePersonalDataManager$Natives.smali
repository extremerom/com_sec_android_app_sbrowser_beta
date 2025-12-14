.class public interface abstract Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$Natives;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Natives"
.end annotation


# virtual methods
.method public abstract forceReloadData(JLcom/sec/terrace/browser/autofill/TerracePersonalDataManager;)V
.end method

.method public abstract getBasicCardIssuerNetwork(JLcom/sec/terrace/browser/autofill/TerracePersonalDataManager;Ljava/lang/String;Z)Ljava/lang/String;
.end method

.method public abstract getBillingAddressLabelForPaymentRequest(JLcom/sec/terrace/browser/autofill/TerracePersonalDataManager;Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;)Ljava/lang/String;
.end method

.method public abstract getCreditCardByGUID(JLcom/sec/terrace/browser/autofill/TerracePersonalDataManager;Ljava/lang/String;)Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;
.end method

.method public abstract getCreditCardForNumber(JLcom/sec/terrace/browser/autofill/TerracePersonalDataManager;Ljava/lang/String;)Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;
.end method

.method public abstract getCreditCardGUIDsForSettings(JLcom/sec/terrace/browser/autofill/TerracePersonalDataManager;)[Ljava/lang/String;
.end method

.method public abstract getCreditCardGUIDsToSuggest(JLcom/sec/terrace/browser/autofill/TerracePersonalDataManager;)[Ljava/lang/String;
.end method

.method public abstract getCreditCardUseCountForTesting(JLcom/sec/terrace/browser/autofill/TerracePersonalDataManager;Ljava/lang/String;)I
.end method

.method public abstract getFullCardForPaymentRequest(JLcom/sec/terrace/browser/autofill/TerracePersonalDataManager;Lorg/chromium/content_public/browser/WebContents;Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$FullCardRequestDelegate;)V
.end method

.method public abstract getPref(I)Z
.end method

.method public abstract getProfileByGUID(JLcom/sec/terrace/browser/autofill/TerracePersonalDataManager;Ljava/lang/String;)Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;
.end method

.method public abstract getProfileGUIDsForSettings(JLcom/sec/terrace/browser/autofill/TerracePersonalDataManager;)[Ljava/lang/String;
.end method

.method public abstract getProfileGUIDsToSuggest(JLcom/sec/terrace/browser/autofill/TerracePersonalDataManager;)[Ljava/lang/String;
.end method

.method public abstract getProfileLabelsForSettings(JLcom/sec/terrace/browser/autofill/TerracePersonalDataManager;)[Ljava/lang/String;
.end method

.method public abstract getProfileLabelsToSuggest(JLcom/sec/terrace/browser/autofill/TerracePersonalDataManager;ZZZ)[Ljava/lang/String;
.end method

.method public abstract getProfileUseCountForTesting(JLcom/sec/terrace/browser/autofill/TerracePersonalDataManager;Ljava/lang/String;)I
.end method

.method public abstract getShippingAddressLabelWithCountryForPaymentRequest(JLcom/sec/terrace/browser/autofill/TerracePersonalDataManager;Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;)Ljava/lang/String;
.end method

.method public abstract getShippingAddressLabelWithoutCountryForPaymentRequest(JLcom/sec/terrace/browser/autofill/TerracePersonalDataManager;Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;)Ljava/lang/String;
.end method

.method public abstract init(Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;)J
.end method

.method public abstract isDataLoaded(JLcom/sec/terrace/browser/autofill/TerracePersonalDataManager;)Z
.end method

.method public abstract makeSaveInfobar(JLcom/sec/terrace/browser/autofill/TerracePersonalDataManager;Lorg/chromium/content_public/browser/WebContents;Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;)V
.end method

.method public abstract recordAndLogCreditCardUse(JLcom/sec/terrace/browser/autofill/TerracePersonalDataManager;Ljava/lang/String;)V
.end method

.method public abstract recordAndLogProfileUse(JLcom/sec/terrace/browser/autofill/TerracePersonalDataManager;Ljava/lang/String;)V
.end method

.method public abstract removeByGUID(JLcom/sec/terrace/browser/autofill/TerracePersonalDataManager;Ljava/lang/String;)V
.end method

.method public abstract removeProfilesByGUID(JLcom/sec/terrace/browser/autofill/TerracePersonalDataManager;Ljava/lang/String;)V
.end method

.method public abstract setCreditCard(JLcom/sec/terrace/browser/autofill/TerracePersonalDataManager;Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;)Ljava/lang/String;
.end method

.method public abstract setCreditCardUseStatsForTesting(JLcom/sec/terrace/browser/autofill/TerracePersonalDataManager;Ljava/lang/String;IJ)V
.end method

.method public abstract setPref(IZ)V
.end method

.method public abstract setProfile(JLcom/sec/terrace/browser/autofill/TerracePersonalDataManager;Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;)Ljava/lang/String;
.end method

.method public abstract setProfileUseStatsForTesting(JLcom/sec/terrace/browser/autofill/TerracePersonalDataManager;Ljava/lang/String;IJ)V
.end method

.method public abstract updateCreditCardCache(JLcom/sec/terrace/browser/autofill/TerracePersonalDataManager;Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;)V
.end method
