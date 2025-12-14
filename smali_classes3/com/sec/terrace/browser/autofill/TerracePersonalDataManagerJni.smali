.class public Lcom/sec/terrace/browser/autofill/TerracePersonalDataManagerJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$Natives;


# annotations
.annotation build Lorg/jni_zero/CheckDiscard;
.end annotation

.annotation build Lorg/jni_zero/internal/NullUnmarked;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManagerJni;

    invoke-direct {v0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManagerJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public forceReloadData(JLcom/sec/terrace/browser/autofill/TerracePersonalDataManager;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MoYAp7YJ(JLjava/lang/Object;)V

    return-void
.end method

.method public getBasicCardIssuerNetwork(JLcom/sec/terrace/browser/autofill/TerracePersonalDataManager;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, LJ/N;->M$m432mn(JLjava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getBillingAddressLabelForPaymentRequest(JLcom/sec/terrace/browser/autofill/TerracePersonalDataManager;Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MoS0YxKU(JLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getCreditCardByGUID(JLcom/sec/terrace/browser/autofill/TerracePersonalDataManager;Ljava/lang/String;)Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->M2a0QI7Z(JLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;

    return-object p0
.end method

.method public getCreditCardForNumber(JLcom/sec/terrace/browser/autofill/TerracePersonalDataManager;Ljava/lang/String;)Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MmYFxFgQ(JLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;

    return-object p0
.end method

.method public getCreditCardGUIDsForSettings(JLcom/sec/terrace/browser/autofill/TerracePersonalDataManager;)[Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MYdqouJZ(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getCreditCardGUIDsToSuggest(JLcom/sec/terrace/browser/autofill/TerracePersonalDataManager;)[Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->M4CmVbVM(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getCreditCardUseCountForTesting(JLcom/sec/terrace/browser/autofill/TerracePersonalDataManager;Ljava/lang/String;)I
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MJAwhQH1_ForTesting(JLjava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public getFullCardForPaymentRequest(JLcom/sec/terrace/browser/autofill/TerracePersonalDataManager;Lorg/chromium/content_public/browser/WebContents;Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$FullCardRequestDelegate;)V
    .locals 0

    invoke-static/range {p1 .. p6}, LJ/N;->MOvCwbyd(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public getPref(I)Z
    .locals 0

    invoke-static {p1}, LJ/N;->MvkmiswX(I)Z

    move-result p0

    return p0
.end method

.method public getProfileByGUID(JLcom/sec/terrace/browser/autofill/TerracePersonalDataManager;Ljava/lang/String;)Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MS36KKb3(JLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

    return-object p0
.end method

.method public getProfileGUIDsForSettings(JLcom/sec/terrace/browser/autofill/TerracePersonalDataManager;)[Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MKgo9F_A(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getProfileGUIDsToSuggest(JLcom/sec/terrace/browser/autofill/TerracePersonalDataManager;)[Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MH8zC6Dw(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getProfileLabelsForSettings(JLcom/sec/terrace/browser/autofill/TerracePersonalDataManager;)[Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->M9L9uBpe(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getProfileLabelsToSuggest(JLcom/sec/terrace/browser/autofill/TerracePersonalDataManager;ZZZ)[Ljava/lang/String;
    .locals 0

    invoke-static/range {p1 .. p6}, LJ/N;->MIzbaO98(JLjava/lang/Object;ZZZ)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getProfileUseCountForTesting(JLcom/sec/terrace/browser/autofill/TerracePersonalDataManager;Ljava/lang/String;)I
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->M2_OkKUw_ForTesting(JLjava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public getShippingAddressLabelWithCountryForPaymentRequest(JLcom/sec/terrace/browser/autofill/TerracePersonalDataManager;Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MGe7oqbe(JLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getShippingAddressLabelWithoutCountryForPaymentRequest(JLcom/sec/terrace/browser/autofill/TerracePersonalDataManager;Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MQfnUDpl(JLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public init(Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;)J
    .locals 0

    invoke-static {p1}, LJ/N;->Mc5WFirm(Ljava/lang/Object;)J

    move-result-wide p0

    return-wide p0
.end method

.method public isDataLoaded(JLcom/sec/terrace/browser/autofill/TerracePersonalDataManager;)Z
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->Mg0LFxgJ(JLjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public makeSaveInfobar(JLcom/sec/terrace/browser/autofill/TerracePersonalDataManager;Lorg/chromium/content_public/browser/WebContents;Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, LJ/N;->Mnb9Byim(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public recordAndLogCreditCardUse(JLcom/sec/terrace/browser/autofill/TerracePersonalDataManager;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MpBS_wzt(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public recordAndLogProfileUse(JLcom/sec/terrace/browser/autofill/TerracePersonalDataManager;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MmcmcgNe(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public removeByGUID(JLcom/sec/terrace/browser/autofill/TerracePersonalDataManager;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->Mc5rHKMl(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public removeProfilesByGUID(JLcom/sec/terrace/browser/autofill/TerracePersonalDataManager;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MBBMUyYm(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public setCreditCard(JLcom/sec/terrace/browser/autofill/TerracePersonalDataManager;Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MP6RTC2q(JLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public setCreditCardUseStatsForTesting(JLcom/sec/terrace/browser/autofill/TerracePersonalDataManager;Ljava/lang/String;IJ)V
    .locals 0

    invoke-static/range {p1 .. p7}, LJ/N;->MaDW9_m6_ForTesting(JLjava/lang/Object;Ljava/lang/Object;IJ)V

    return-void
.end method

.method public setPref(IZ)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MEowTTt1(IZ)V

    return-void
.end method

.method public setProfile(JLcom/sec/terrace/browser/autofill/TerracePersonalDataManager;Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MksOlJkp(JLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public setProfileUseStatsForTesting(JLcom/sec/terrace/browser/autofill/TerracePersonalDataManager;Ljava/lang/String;IJ)V
    .locals 0

    invoke-static/range {p1 .. p7}, LJ/N;->MHglnbXo_ForTesting(JLjava/lang/Object;Ljava/lang/Object;IJ)V

    return-void
.end method

.method public updateCreditCardCache(JLcom/sec/terrace/browser/autofill/TerracePersonalDataManager;Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MMN2ePzk(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
