.class Lcom/sec/android/app/sbrowser/infobars/AutofillSaveCardInfoBar;
.super Lcom/sec/android/app/sbrowser/infobars/InfoBar;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;


# instance fields
.field private final mCreditCard:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;

.field private mInfoBarLayout:Lcom/sec/android/app/sbrowser/infobars/AutofillSaveCardInfoBarLayout;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/infobars/InfoBar;-><init>(Landroid/content/Context;Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;ILjava/lang/CharSequence;)V

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/infobars/AutofillSaveCardInfoBar;->mCreditCard:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;

    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/sec/terrace/browser/autofill/TerraceAutofillSaveCardInfoBarDelegate;Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;)Lcom/sec/android/app/sbrowser/infobars/InfoBar;
    .locals 2

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getInstance()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/terrace/browser/autofill/TerraceAutofillSaveCardInfoBarDelegate;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getCreditCardForNumber(Ljava/lang/String;)Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/terrace/browser/autofill/TerraceAutofillSaveCardInfoBarDelegate;->getGUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->setGUID(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/terrace/browser/autofill/TerraceAutofillSaveCardInfoBarDelegate;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->setName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/terrace/browser/autofill/TerraceAutofillSaveCardInfoBarDelegate;->getMonth()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->setMonth(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/terrace/browser/autofill/TerraceAutofillSaveCardInfoBarDelegate;->getYear()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->setYear(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/terrace/browser/autofill/TerraceAutofillSaveCardInfoBarDelegate;->getBillingAddressGUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->setBillingAddressId(Ljava/lang/String;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/infobars/AutofillSaveCardInfoBar;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/infobars/AutofillSaveCardInfoBar;-><init>(Landroid/content/Context;Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;)V

    return-object v1
.end method

.method private logForSaveInternet()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/infobars/AutofillSaveCardInfoBar;->getScreenID()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->getInstance()Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->isPersonalDataSyncSet()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    goto :goto_0

    :cond_0
    const-string v0, "0"

    :goto_0
    const-string v1, "2324"

    invoke-static {p0, v1, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private showSaveMessageToast()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBar;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f14013d

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public createView()Landroid/view/View;
    .locals 7

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0e0047

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/sec/android/app/sbrowser/infobars/AutofillSaveCardInfoBarLayout;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/infobars/AutofillSaveCardInfoBar;->mInfoBarLayout:Lcom/sec/android/app/sbrowser/infobars/AutofillSaveCardInfoBarLayout;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/AutofillSaveCardInfoBar;->mCreditCard:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->getLastFourDigits()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/AutofillSaveCardInfoBar;->mCreditCard:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->getMonth()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/AutofillSaveCardInfoBar;->mCreditCard:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->getYear()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/AutofillSaveCardInfoBar;->mCreditCard:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->getIssuerIconDrawableId()I

    move-result v6

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/infobars/AutofillSaveCardInfoBarLayout;->setResources(Lcom/sec/android/app/sbrowser/infobars/InfoBarView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/AutofillSaveCardInfoBar;->mInfoBarLayout:Lcom/sec/android/app/sbrowser/infobars/AutofillSaveCardInfoBarLayout;

    return-object p0
.end method

.method public getScreenID()Ljava/lang/String;
    .locals 0

    const-string p0, "201"

    return-object p0
.end method

.method public onPrimaryButtonClicked()V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/infobars/InfoBar;->onButtonClicked(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/AutofillSaveCardInfoBar;->mCreditCard:Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBar;->getDelegate()Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;

    move-result-object v1

    check-cast v1, Lcom/sec/terrace/browser/autofill/TerraceAutofillSaveCardInfoBarDelegate;

    invoke-virtual {v1}, Lcom/sec/terrace/browser/autofill/TerraceAutofillSaveCardInfoBarDelegate;->getGUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->setGUID(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/infobars/AutofillSaveCardInfoBar;->logForSaveInternet()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/personal_data/CreditCardUtil;->getStatusLogForAutofillData()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/infobars/AutofillSaveCardInfoBar;->showSaveMessageToast()V

    return-void
.end method

.method public onSecondaryButtonClicked()V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/infobars/InfoBar;->onButtonClicked(I)V

    return-void
.end method
