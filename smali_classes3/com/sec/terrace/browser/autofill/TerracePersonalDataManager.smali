.class public Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$Natives;,
        Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$TerracePersonalDataManagerObserver;,
        Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;,
        Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;,
        Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$FullCardRequestDelegate;
    }
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field private static sManager:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;


# instance fields
.field private final mDataObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$TerracePersonalDataManagerObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mNativeManager:J


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->mDataObservers:Ljava/util/List;

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManagerJni;->get()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$Natives;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$Natives;->init(Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->mNativeManager:J

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->mDataObservers:Ljava/util/List;

    return-object p0
.end method

.method private getCreditCards([Ljava/lang/String;Z)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManagerJni;->get()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$Natives;

    move-result-object v2

    iget-wide v3, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->mNativeManager:J

    aget-object v5, p1, v1

    invoke-interface {v2, v3, v4, p0, v5}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$Natives;->getCreditCardByGUID(JLcom/sec/terrace/browser/autofill/TerracePersonalDataManager;Ljava/lang/String;)Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;

    move-result-object v2

    if-eqz p2, :cond_0

    invoke-virtual {v2}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->getIsVirtualCard()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getInstance()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;
    .locals 1

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    sget-object v0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->sManager:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;

    invoke-direct {v0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;-><init>()V

    sput-object v0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->sManager:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;

    :cond_0
    sget-object v0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->sManager:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;

    return-object v0
.end method

.method private getProfilesWithLabels([Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManagerJni;->get()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$Natives;

    move-result-object v2

    iget-wide v3, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->mNativeManager:J

    aget-object v5, p2, v1

    invoke-interface {v2, v3, v4, p0, v5}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$Natives;->getProfileByGUID(JLcom/sec/terrace/browser/autofill/TerracePersonalDataManager;Ljava/lang/String;)Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

    move-result-object v2

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->setLabel(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static isAutofillCreditCardEnabled()Z
    .locals 2

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManagerJni;->get()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$Natives;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$Natives;->getPref(I)Z

    move-result v0

    return v0
.end method

.method public static isAutofillProfileEnabled()Z
    .locals 2

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManagerJni;->get()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$Natives;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$Natives;->getPref(I)Z

    move-result v0

    return v0
.end method

.method private personalDataChanged()V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    iget-object p0, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->mDataObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$TerracePersonalDataManagerObserver;

    invoke-interface {v0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$TerracePersonalDataManagerObserver;->onPersonalDataChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static setAutofillCreditCardEnabled(Z)V
    .locals 2

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManagerJni;->get()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$Natives;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1, p0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$Natives;->setPref(IZ)V

    return-void
.end method

.method public static setAutofillProfileEnabled(Z)V
    .locals 2

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManagerJni;->get()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$Natives;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1, p0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$Natives;->setPref(IZ)V

    return-void
.end method


# virtual methods
.method public deleteCreditCard(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManagerJni;->get()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->mNativeManager:J

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$Natives;->removeByGUID(JLcom/sec/terrace/browser/autofill/TerracePersonalDataManager;Ljava/lang/String;)V

    return-void
.end method

.method public deleteProfile(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManagerJni;->get()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->mNativeManager:J

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$Natives;->removeProfilesByGUID(JLcom/sec/terrace/browser/autofill/TerracePersonalDataManager;Ljava/lang/String;)V

    return-void
.end method

.method public forceReloadData()V
    .locals 3

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManagerJni;->get()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->mNativeManager:J

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$Natives;->forceReloadData(JLcom/sec/terrace/browser/autofill/TerracePersonalDataManager;)V

    return-void
.end method

.method public getBasicCardIssuerNetwork(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManagerJni;->get()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->mNativeManager:J

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    invoke-interface/range {v0 .. v5}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$Natives;->getBasicCardIssuerNetwork(JLcom/sec/terrace/browser/autofill/TerracePersonalDataManager;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBillingAddressLabelForPaymentRequest(Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManagerJni;->get()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->mNativeManager:J

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$Natives;->getBillingAddressLabelForPaymentRequest(JLcom/sec/terrace/browser/autofill/TerracePersonalDataManager;Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBillingAddressesToSuggest(Z)Ljava/util/List;
    .locals 7
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManagerJni;->get()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->mNativeManager:J

    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v3, p0

    move v5, p1

    invoke-interface/range {v0 .. v6}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$Natives;->getProfileLabelsToSuggest(JLcom/sec/terrace/browser/autofill/TerracePersonalDataManager;ZZZ)[Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManagerJni;->get()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->mNativeManager:J

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$Natives;->getProfileGUIDsToSuggest(JLcom/sec/terrace/browser/autofill/TerracePersonalDataManager;)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getProfilesWithLabels([Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getCreditCard(Ljava/lang/String;)Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;
    .locals 3

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManagerJni;->get()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->mNativeManager:J

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$Natives;->getCreditCardByGUID(JLcom/sec/terrace/browser/autofill/TerracePersonalDataManager;Ljava/lang/String;)Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;

    move-result-object p0

    return-object p0
.end method

.method public getCreditCardForNumber(Ljava/lang/String;)Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;
    .locals 3

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManagerJni;->get()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->mNativeManager:J

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$Natives;->getCreditCardForNumber(JLcom/sec/terrace/browser/autofill/TerracePersonalDataManager;Ljava/lang/String;)Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;

    move-result-object p0

    return-object p0
.end method

.method public getCreditCardUseCountForTesting(Ljava/lang/String;)I
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManagerJni;->get()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->mNativeManager:J

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$Natives;->getCreditCardUseCountForTesting(JLcom/sec/terrace/browser/autofill/TerracePersonalDataManager;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getCreditCardsForSettings()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManagerJni;->get()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->mNativeManager:J

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$Natives;->getCreditCardGUIDsForSettings(JLcom/sec/terrace/browser/autofill/TerracePersonalDataManager;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getCreditCards([Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getCreditCardsToSuggest()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManagerJni;->get()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->mNativeManager:J

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$Natives;->getCreditCardGUIDsToSuggest(JLcom/sec/terrace/browser/autofill/TerracePersonalDataManager;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getCreditCards([Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getFullCard(Lcom/sec/terrace/Terrace;Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$FullCardRequestDelegate;)V
    .locals 7

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManagerJni;->get()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->mNativeManager:J

    invoke-static {p1}, Lcom/sec/terrace/TinWebContentsHelper;->getWebContents(Lcom/sec/terrace/Terrace;)Lorg/chromium/content_public/browser/WebContents;

    move-result-object v4

    move-object v3, p0

    move-object v5, p2

    move-object v6, p3

    invoke-interface/range {v0 .. v6}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$Natives;->getFullCardForPaymentRequest(JLcom/sec/terrace/browser/autofill/TerracePersonalDataManager;Lorg/chromium/content_public/browser/WebContents;Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$FullCardRequestDelegate;)V

    return-void
.end method

.method public getProfile(Ljava/lang/String;)Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;
    .locals 3

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManagerJni;->get()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->mNativeManager:J

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$Natives;->getProfileByGUID(JLcom/sec/terrace/browser/autofill/TerracePersonalDataManager;Ljava/lang/String;)Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

    move-result-object p0

    return-object p0
.end method

.method public getProfileUseCountForTesting(Ljava/lang/String;)I
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManagerJni;->get()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->mNativeManager:J

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$Natives;->getProfileUseCountForTesting(JLcom/sec/terrace/browser/autofill/TerracePersonalDataManager;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getProfiles()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManagerJni;->get()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->mNativeManager:J

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$Natives;->getProfileGUIDsForSettings(JLcom/sec/terrace/browser/autofill/TerracePersonalDataManager;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManagerJni;->get()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$Natives;

    move-result-object v4

    iget-wide v5, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->mNativeManager:J

    aget-object v7, v0, v3

    invoke-interface {v4, v5, v6, p0, v7}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$Natives;->getProfileByGUID(JLcom/sec/terrace/browser/autofill/TerracePersonalDataManager;Ljava/lang/String;)Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public getProfilesForSettings()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManagerJni;->get()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->mNativeManager:J

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$Natives;->getProfileLabelsForSettings(JLcom/sec/terrace/browser/autofill/TerracePersonalDataManager;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManagerJni;->get()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$Natives;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->mNativeManager:J

    invoke-interface {v1, v2, v3, p0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$Natives;->getProfileGUIDsForSettings(JLcom/sec/terrace/browser/autofill/TerracePersonalDataManager;)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getProfilesWithLabels([Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getProfilesToSuggest(Z)Ljava/util/List;
    .locals 7
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManagerJni;->get()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->mNativeManager:J

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v3, p0

    move v4, p1

    invoke-interface/range {v0 .. v6}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$Natives;->getProfileLabelsToSuggest(JLcom/sec/terrace/browser/autofill/TerracePersonalDataManager;ZZZ)[Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManagerJni;->get()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->mNativeManager:J

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$Natives;->getProfileGUIDsToSuggest(JLcom/sec/terrace/browser/autofill/TerracePersonalDataManager;)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getProfilesWithLabels([Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getShippingAddressLabelWithCountryForPaymentRequest(Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManagerJni;->get()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->mNativeManager:J

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$Natives;->getShippingAddressLabelWithCountryForPaymentRequest(JLcom/sec/terrace/browser/autofill/TerracePersonalDataManager;Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getShippingAddressLabelWithoutCountryForPaymentRequest(Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManagerJni;->get()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->mNativeManager:J

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$Natives;->getShippingAddressLabelWithoutCountryForPaymentRequest(JLcom/sec/terrace/browser/autofill/TerracePersonalDataManager;Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public makeSaveInfobar(Lcom/sec/terrace/Terrace;Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;)V
    .locals 6

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManagerJni;->get()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->mNativeManager:J

    invoke-static {p1}, Lcom/sec/terrace/TinWebContentsHelper;->getWebContents(Lcom/sec/terrace/Terrace;)Lorg/chromium/content_public/browser/WebContents;

    move-result-object v4

    move-object v3, p0

    move-object v5, p2

    invoke-interface/range {v0 .. v5}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$Natives;->makeSaveInfobar(JLcom/sec/terrace/browser/autofill/TerracePersonalDataManager;Lorg/chromium/content_public/browser/WebContents;Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;)V

    return-void
.end method

.method public recordAndLogCreditCardUse(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManagerJni;->get()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->mNativeManager:J

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$Natives;->recordAndLogCreditCardUse(JLcom/sec/terrace/browser/autofill/TerracePersonalDataManager;Ljava/lang/String;)V

    return-void
.end method

.method public recordAndLogProfileUse(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManagerJni;->get()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->mNativeManager:J

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$Natives;->recordAndLogProfileUse(JLcom/sec/terrace/browser/autofill/TerracePersonalDataManager;Ljava/lang/String;)V

    return-void
.end method

.method public registerDataObserver(Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$TerracePersonalDataManagerObserver;)Z
    .locals 2

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    iget-object v0, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->mDataObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    iget-object v0, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->mDataObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManagerJni;->get()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$Natives;

    move-result-object p1

    iget-wide v0, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->mNativeManager:J

    invoke-interface {p1, v0, v1, p0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$Natives;->isDataLoaded(JLcom/sec/terrace/browser/autofill/TerracePersonalDataManager;)Z

    move-result p0

    return p0
.end method

.method public setCreditCard(Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManagerJni;->get()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->mNativeManager:J

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$Natives;->setCreditCard(JLcom/sec/terrace/browser/autofill/TerracePersonalDataManager;Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setCreditCardUseStatsForTesting(Ljava/lang/String;IJ)V
    .locals 8
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManagerJni;->get()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->mNativeManager:J

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-wide v6, p3

    invoke-interface/range {v0 .. v7}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$Natives;->setCreditCardUseStatsForTesting(JLcom/sec/terrace/browser/autofill/TerracePersonalDataManager;Ljava/lang/String;IJ)V

    return-void
.end method

.method public setProfile(Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManagerJni;->get()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->mNativeManager:J

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$Natives;->setProfile(JLcom/sec/terrace/browser/autofill/TerracePersonalDataManager;Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setProfileUseStatsForTesting(Ljava/lang/String;IJ)V
    .locals 8
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManagerJni;->get()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->mNativeManager:J

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-wide v6, p3

    invoke-interface/range {v0 .. v7}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$Natives;->setProfileUseStatsForTesting(JLcom/sec/terrace/browser/autofill/TerracePersonalDataManager;Ljava/lang/String;IJ)V

    return-void
.end method

.method public unregisterDataObserver(Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$TerracePersonalDataManagerObserver;)V
    .locals 2

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$1;

    invoke-direct {v1, p0, p1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$1;-><init>(Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$TerracePersonalDataManagerObserver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateCreditCardCache(Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;)V
    .locals 3

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManagerJni;->get()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->mNativeManager:J

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$Natives;->updateCreditCardCache(JLcom/sec/terrace/browser/autofill/TerracePersonalDataManager;Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;)V

    return-void
.end method
