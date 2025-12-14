.class public Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/TerraceApplicationStatus$TerraceActivityStateListener;
.implements Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestLifecycleObserver;
.implements Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$FocusChangedObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager$Delegate;
    }
.end annotation


# static fields
.field private static final COMPLETENESS_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/Completable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAddressEditor:Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;

.field private final mAuthenticator:Lcom/sec/android/app/sbrowser/authentication/Authenticator;

.field private mAutofillProfiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mCanUserAddCreditCard:Ljava/lang/Boolean;

.field private final mCardEditor:Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;

.field private mContactEditor:Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor;

.field private mContactSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/ContactDetailsSection;

.field private final mCurrencyFormatterMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/terrace/browser/payments/TerraceCurrencyFormatter;",
            ">;"
        }
    .end annotation
.end field

.field private final mDelegate:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager$Delegate;

.field private final mHandler:Landroid/os/Handler;

.field private mHaveRequestedAutofillData:Z

.field private final mIsOffTheRecord:Z

.field private mMerchantSupportsAutofillCards:Ljava/lang/Boolean;

.field private final mParams:Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestParams;

.field private final mPaymentAppComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;",
            ">;"
        }
    .end annotation
.end field

.field private mPaymentInformationCallback:Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/android/app/sbrowser/payments/standard/common/Callback<",
            "Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentInformation;",
            ">;"
        }
    .end annotation
.end field

.field private mPaymentMethodsSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

.field private mPaymentRequestUI:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

.field private final mRetryQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mShippingAddressesSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

.field private mUiShippingOptions:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

.field private mUiShoppingCart:Lcom/sec/android/app/sbrowser/payments/standard/ui/ShoppingCart;

.field private mWasBiometricsRegistered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LB0/r;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, LB0/r;-><init>(I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->COMPLETENESS_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager$Delegate;Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestParams;Lcom/sec/terrace/Terrace;Z)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mRetryQueue:Ljava/util/Queue;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mHaveRequestedAutofillData:Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->get()Lcom/sec/android/app/sbrowser/authentication/Authenticator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mAuthenticator:Lcom/sec/android/app/sbrowser/authentication/Authenticator;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mWasBiometricsRegistered:Z

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mDelegate:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager$Delegate;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mParams:Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestParams;

    new-instance v3, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;

    xor-int/lit8 p1, p4, 0x1

    invoke-direct {v3, p1}, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;-><init>(Z)V

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mAddressEditor:Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;

    new-instance p1, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;-><init>(Lcom/sec/terrace/Terrace;Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;ZLcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl$PaymentRequestServiceObserverForTest;Z)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mCardEditor:Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mCurrencyFormatterMap:Ljava/util/Map;

    iput-boolean p4, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mIsOffTheRecord:Z

    new-instance p1, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentAppComparator;

    invoke-direct {p1, p2}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentAppComparator;-><init>(Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestParams;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mPaymentAppComparator:Ljava/util/Comparator;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/Completable;Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/Completable;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->lambda$static$0(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/Completable;Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/Completable;)I

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->lambda$editCard$1()V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->lambda$registerBioAuth$2(Z)V

    return-void
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;)Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mAddressEditor:Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;)Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mCardEditor:Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;)Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mContactEditor:Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;)Lcom/sec/android/app/sbrowser/payments/standard/ui/ContactDetailsSection;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mContactSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/ContactDetailsSection;

    return-object p0
.end method

.method private getModifier(Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;)Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetailsModifier;
    .locals 5
    .param p1    # Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mParams:Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestParams;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestParams;->getUnmodifiableModifiers()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;->getInstrumentMethodNames()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetailsModifier;

    iget-object v4, v3, Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetailsModifier;->methodData:Lcom/sec/terrace/services/payments/mojom/TerracePaymentMethodData;

    invoke-virtual {p1, v2, v4}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;->isValidForPaymentMethodData(Ljava/lang/String;Lcom/sec/terrace/services/payments/mojom/TerracePaymentMethodData;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v3

    :cond_3
    :goto_0
    return-object v1
.end method

.method private getToastMsgResIdBySupportBioTypeForDex()I
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->shouldUseTabletDid(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mAuthenticator:Lcom/sec/android/app/sbrowser/authentication/Authenticator;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->hasDisabledBiometrics()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    const p0, 0x7f140eba

    goto :goto_0

    :cond_0
    const p0, 0x7f140eb9

    :goto_0
    return p0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mAuthenticator:Lcom/sec/android/app/sbrowser/authentication/Authenticator;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->isIrisSupported()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_2

    const p0, 0x7f140bda

    goto :goto_1

    :cond_2
    const p0, 0x7f140bd9

    :goto_1
    return p0

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mAuthenticator:Lcom/sec/android/app/sbrowser/authentication/Authenticator;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->isFingerprintSupported()Z

    move-result p0

    if-eqz p0, :cond_5

    if-eqz v0, :cond_4

    const p0, 0x7f140bd8

    goto :goto_2

    :cond_4
    const p0, 0x7f140bd7

    :goto_2
    return p0

    :cond_5
    if-eqz v0, :cond_6

    const p0, 0x7f140bd4

    goto :goto_3

    :cond_6
    const p0, 0x7f140bd3

    :goto_3
    return p0
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;)Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager$Delegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mDelegate:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager$Delegate;

    return-object p0
.end method

.method public static bridge synthetic i(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private isMixedOrChangedCurrency()Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mCurrencyFormatterMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static bridge synthetic j(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;)Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mPaymentMethodsSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    return-object p0
.end method

.method public static bridge synthetic k(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;)Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mPaymentRequestUI:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    return-object p0
.end method

.method public static bridge synthetic l(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;)Ljava/util/Queue;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mRetryQueue:Ljava/util/Queue;

    return-object p0
.end method

.method private synthetic lambda$editCard$1()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mPaymentMethodsSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->setSelectedItemIndex(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->updateAppModifiedTotals()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mPaymentRequestUI:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    const/4 v1, 0x4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mPaymentMethodsSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    invoke-virtual {v0, v1, p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->updateSection(ILcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;)V

    return-void
.end method

.method private synthetic lambda$registerBioAuth$2(Z)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mPaymentRequestUI:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mPaymentMethodsSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, -0x1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mPaymentMethodsSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->getSize()I

    move-result v0

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mPaymentMethodsSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->getItem(I)Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;->getPaymentAppType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    check-cast v0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;->checkAndUpdateCardCompleteness()V

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mPaymentMethodsSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->getSelectedItem()Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mPaymentMethodsSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->getSelectedItem()Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->isComplete()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mPaymentMethodsSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    invoke-virtual {p1, v1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->setSelectedItemIndex(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->setSelectedItemIndex(I)V

    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mPaymentRequestUI:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mPaymentMethodsSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->updateSection(ILcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->updateAppModifiedTotals()V

    :cond_5
    :goto_2
    return-void
.end method

.method private static synthetic lambda$static$0(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/Completable;Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/Completable;)I
    .locals 0

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentAppComparator;->compareCompletablesByCompleteness(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/Completable;Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/Completable;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;)Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mShippingAddressesSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    return-object p0
.end method


# virtual methods
.method public createShippingSectionForPaymentRequestUI(Landroid/content/Context;)V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mAutofillProfiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mAutofillProfiles:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mAddressEditor:Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;

    invoke-virtual {v3}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getPhoneNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;->addPhoneNumberIfValid(Ljava/lang/CharSequence;)V

    invoke-virtual {v3}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getStreetAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;

    invoke-direct {v4, p1, v3}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;-><init>(Landroid/content/Context;Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->COMPLETENESS_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v2, 0x4

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mUiShippingOptions:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->getSelectedItem()Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;

    move-result-object v3

    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;->setShippingAddressLabelWithoutCountry()V

    goto :goto_2

    :cond_3
    const/4 v1, -0x1

    :goto_2
    new-instance v0, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    invoke-direct {v0, v2, v1, p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;-><init>(IILjava/util/Collection;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mShippingAddressesSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    return-void
.end method

.method public createUiClient(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;)Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->useTouchDetectorView()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->getInstance()Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->isPersonalDataSyncSet()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->getInstance()Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->isPersonalDataSyncAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentWithAuthClient;

    new-instance v1, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager$4;-><init>(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;)V

    invoke-direct {v0, p1, v1}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentWithAuthClient;-><init>(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;Lcom/sec/android/app/sbrowser/payments/standard/PaymentWithAuthClient$Delegate;)V

    return-object v0

    :cond_1
    :goto_0
    return-object p1
.end method

.method public destroyCurrencyFormatters()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mCurrencyFormatterMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/terrace/browser/payments/TerraceCurrencyFormatter;

    invoke-virtual {v1}, Lcom/sec/terrace/browser/payments/TerraceCurrencyFormatter;->destroy()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mCurrencyFormatterMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public editAddress(Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;)V
    .locals 2
    .param p1    # Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mAddressEditor:Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;

    new-instance v1, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager$2;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager$2;-><init>(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;)V

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;->edit(Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;)V

    return-void
.end method

.method public editCard(Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;)V
    .locals 2
    .param p1    # Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/TerraceHelper;->getCurrentTerraceActivity()Lcom/sec/terrace/TerraceActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isRunningInDexOnPc(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const p1, 0x7f140454

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/android/app/sbrowser/download/b;

    const/16 v1, 0xc

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/download/b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mCardEditor:Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;

    new-instance v1, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager$3;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager$3;-><init>(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;)V

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->edit(Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;)V

    return-void
.end method

.method public editContactOnPaymentRequestUI(Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;)V
    .locals 2
    .param p1    # Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mContactEditor:Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor;

    new-instance v1, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager$1;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager$1;-><init>(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;)V

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor;->edit(Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;)V

    return-void
.end method

.method public enableAndUpdatePaymentRequestUIWithPaymentInfo()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mPaymentInformationCallback:Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mPaymentMethodsSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->providePaymentInformationToPaymentRequestUI()V

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mPaymentRequestUI:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mUiShoppingCart:Lcom/sec/android/app/sbrowser/payments/standard/ui/ShoppingCart;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->updateOrderSummarySection(Lcom/sec/android/app/sbrowser/payments/standard/ui/ShoppingCart;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->shouldShowShippingSection()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mPaymentRequestUI:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    const/4 v1, 0x2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mUiShippingOptions:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    invoke-virtual {v0, v1, p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->updateSection(ILcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;)V

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getAddressEditor()Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mAddressEditor:Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;

    return-object p0
.end method

.method public getAutofillProfiles()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mAutofillProfiles:Ljava/util/List;

    return-object p0
.end method

.method public getCardEditor()Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mCardEditor:Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;

    return-object p0
.end method

.method public getContactEditor()Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mContactEditor:Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor;

    return-object p0
.end method

.method public getContactSection()Lcom/sec/android/app/sbrowser/payments/standard/ui/ContactDetailsSection;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mContactSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/ContactDetailsSection;

    return-object p0
.end method

.method public getLineItems(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/terrace/services/payments/mojom/TerracePaymentItem;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/payments/standard/ui/LineItem;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/terrace/services/payments/mojom/TerracePaymentItem;

    iget-object v3, v2, Lcom/sec/terrace/services/payments/mojom/TerracePaymentItem;->amount:Lcom/sec/terrace/services/payments/mojom/TerracePaymentCurrencyAmount;

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getOrCreateCurrencyFormatter(Lcom/sec/terrace/services/payments/mojom/TerracePaymentCurrencyAmount;)Lcom/sec/terrace/browser/payments/TerraceCurrencyFormatter;

    move-result-object v3

    new-instance v4, Lcom/sec/android/app/sbrowser/payments/standard/ui/LineItem;

    iget-object v5, v2, Lcom/sec/terrace/services/payments/mojom/TerracePaymentItem;->label:Ljava/lang/String;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->isMixedOrChangedCurrency()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v3}, Lcom/sec/terrace/browser/payments/TerraceCurrencyFormatter;->getFormattedCurrencyCode()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_1
    const-string v6, ""

    :goto_1
    iget-object v7, v2, Lcom/sec/terrace/services/payments/mojom/TerracePaymentItem;->amount:Lcom/sec/terrace/services/payments/mojom/TerracePaymentCurrencyAmount;

    iget-object v7, v7, Lcom/sec/terrace/services/payments/mojom/TerracePaymentCurrencyAmount;->value:Ljava/lang/String;

    invoke-virtual {v3, v7}, Lcom/sec/terrace/browser/payments/TerraceCurrencyFormatter;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-boolean v2, v2, Lcom/sec/terrace/services/payments/mojom/TerracePaymentItem;->pending:Z

    invoke-direct {v4, v5, v6, v3, v2}, Lcom/sec/android/app/sbrowser/payments/standard/ui/LineItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getOrCreateCurrencyFormatter(Lcom/sec/terrace/services/payments/mojom/TerracePaymentCurrencyAmount;)Lcom/sec/terrace/browser/payments/TerraceCurrencyFormatter;
    .locals 3

    iget-object v0, p1, Lcom/sec/terrace/services/payments/mojom/TerracePaymentCurrencyAmount;->currency:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mCurrencyFormatterMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/terrace/browser/payments/TerraceCurrencyFormatter;

    if-nez v1, :cond_0

    new-instance v1, Lcom/sec/terrace/browser/payments/TerraceCurrencyFormatter;

    iget-object p1, p1, Lcom/sec/terrace/services/payments/mojom/TerracePaymentCurrencyAmount;->currency:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/sec/terrace/browser/payments/TerraceCurrencyFormatter;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mCurrencyFormatterMap:Ljava/util/Map;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1
.end method

.method public getPaymentMethodsSection()Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mPaymentMethodsSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    return-object p0
.end method

.method public getPaymentRequestUI()Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mPaymentRequestUI:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    return-object p0
.end method

.method public getRetryQueue()Ljava/util/Queue;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mRetryQueue:Ljava/util/Queue;

    return-object p0
.end method

.method public getSectionInformation(ILcom/sec/android/app/sbrowser/payments/standard/common/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sec/android/app/sbrowser/payments/standard/common/Callback<",
            "Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mPaymentMethodsSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mContactSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/ContactDetailsSection;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mUiShippingOptions:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mShippingAddressesSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p2, p1}, Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;->bind(Ljava/lang/Object;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getSelectedPaymentAppType()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mPaymentMethodsSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->getSelectedItem()Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mPaymentMethodsSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->getSelectedItem()Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;->getPaymentAppType()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getShippingAddressesSection()Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mShippingAddressesSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    return-object p0
.end method

.method public getShippingOptions([Lcom/sec/terrace/services/payments/mojom/TerracePaymentShippingOption;)Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;
    .locals 11
    .param p1    # [Lcom/sec/terrace/services/payments/mojom/TerracePaymentShippingOption;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x2

    if-eqz p1, :cond_4

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, -0x1

    const/4 v3, 0x0

    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_3

    aget-object v4, p1, v3

    iget-object v5, v4, Lcom/sec/terrace/services/payments/mojom/TerracePaymentShippingOption;->amount:Lcom/sec/terrace/services/payments/mojom/TerracePaymentCurrencyAmount;

    invoke-virtual {p0, v5}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getOrCreateCurrencyFormatter(Lcom/sec/terrace/services/payments/mojom/TerracePaymentCurrencyAmount;)Lcom/sec/terrace/browser/payments/TerraceCurrencyFormatter;

    move-result-object v5

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->isMixedOrChangedCurrency()Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/sec/terrace/browser/payments/TerraceCurrencyFormatter;->getFormattedCurrencyCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_1
    const-string v6, ""

    :goto_1
    new-instance v7, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;

    iget-object v8, v4, Lcom/sec/terrace/services/payments/mojom/TerracePaymentShippingOption;->id:Ljava/lang/String;

    iget-object v9, v4, Lcom/sec/terrace/services/payments/mojom/TerracePaymentShippingOption;->label:Ljava/lang/String;

    invoke-static {v6}, LB/e;->r(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v10, v4, Lcom/sec/terrace/services/payments/mojom/TerracePaymentShippingOption;->amount:Lcom/sec/terrace/services/payments/mojom/TerracePaymentCurrencyAmount;

    iget-object v10, v10, Lcom/sec/terrace/services/payments/mojom/TerracePaymentCurrencyAmount;->value:Ljava/lang/String;

    invoke-virtual {v5, v10}, Lcom/sec/terrace/browser/payments/TerraceCurrencyFormatter;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v7, v8, v9, v5, v6}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v4, v4, Lcom/sec/terrace/services/payments/mojom/TerracePaymentShippingOption;->selected:Z

    if-eqz v4, :cond_2

    move v2, v3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    new-instance p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, v0, v2, p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;-><init>(IILjava/util/Collection;)V

    return-object p0

    :cond_4
    :goto_2
    new-instance p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;-><init>(I)V

    return-object p0
.end method

.method public getUiShippingOptions()Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mUiShippingOptions:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    return-object p0
.end method

.method public getUiShoppingCart()Lcom/sec/android/app/sbrowser/payments/standard/ui/ShoppingCart;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mUiShoppingCart:Lcom/sec/android/app/sbrowser/payments/standard/ui/ShoppingCart;

    return-object p0
.end method

.method public haveRequestedAutofillData()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mHaveRequestedAutofillData:Z

    return p0
.end method

.method public loadCurrencyFormattersForPaymentDetails(Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetails;)V
    .locals 7

    iget-object v0, p1, Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetails;->total:Lcom/sec/terrace/services/payments/mojom/TerracePaymentItem;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentItem;->amount:Lcom/sec/terrace/services/payments/mojom/TerracePaymentCurrencyAmount;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getOrCreateCurrencyFormatter(Lcom/sec/terrace/services/payments/mojom/TerracePaymentCurrencyAmount;)Lcom/sec/terrace/browser/payments/TerraceCurrencyFormatter;

    :cond_0
    iget-object v0, p1, Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetails;->displayItems:[Lcom/sec/terrace/services/payments/mojom/TerracePaymentItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    iget-object v4, v4, Lcom/sec/terrace/services/payments/mojom/TerracePaymentItem;->amount:Lcom/sec/terrace/services/payments/mojom/TerracePaymentCurrencyAmount;

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getOrCreateCurrencyFormatter(Lcom/sec/terrace/services/payments/mojom/TerracePaymentCurrencyAmount;)Lcom/sec/terrace/browser/payments/TerraceCurrencyFormatter;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetails;->shippingOptions:[Lcom/sec/terrace/services/payments/mojom/TerracePaymentShippingOption;

    if-eqz v0, :cond_2

    array-length v2, v0

    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    iget-object v4, v4, Lcom/sec/terrace/services/payments/mojom/TerracePaymentShippingOption;->amount:Lcom/sec/terrace/services/payments/mojom/TerracePaymentCurrencyAmount;

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getOrCreateCurrencyFormatter(Lcom/sec/terrace/services/payments/mojom/TerracePaymentCurrencyAmount;)Lcom/sec/terrace/browser/payments/TerraceCurrencyFormatter;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iget-object p1, p1, Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetails;->modifiers:[Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetailsModifier;

    if-eqz p1, :cond_5

    array-length v0, p1

    move v2, v1

    :goto_2
    if-ge v2, v0, :cond_5

    aget-object v3, p1, v2

    iget-object v4, v3, Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetailsModifier;->total:Lcom/sec/terrace/services/payments/mojom/TerracePaymentItem;

    if-eqz v4, :cond_3

    iget-object v4, v4, Lcom/sec/terrace/services/payments/mojom/TerracePaymentItem;->amount:Lcom/sec/terrace/services/payments/mojom/TerracePaymentCurrencyAmount;

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getOrCreateCurrencyFormatter(Lcom/sec/terrace/services/payments/mojom/TerracePaymentCurrencyAmount;)Lcom/sec/terrace/browser/payments/TerraceCurrencyFormatter;

    :cond_3
    iget-object v3, v3, Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetailsModifier;->additionalDisplayItems:[Lcom/sec/terrace/services/payments/mojom/TerracePaymentItem;

    array-length v4, v3

    move v5, v1

    :goto_3
    if-ge v5, v4, :cond_4

    aget-object v6, v3, v5

    iget-object v6, v6, Lcom/sec/terrace/services/payments/mojom/TerracePaymentItem;->amount:Lcom/sec/terrace/services/payments/mojom/TerracePaymentCurrencyAmount;

    invoke-virtual {p0, v6}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getOrCreateCurrencyFormatter(Lcom/sec/terrace/services/payments/mojom/TerracePaymentCurrencyAmount;)Lcom/sec/terrace/browser/payments/TerraceCurrencyFormatter;

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method public merchantSupportsAutofillCards()Ljava/lang/Boolean;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mMerchantSupportsAutofillCards:Ljava/lang/Boolean;

    return-object p0
.end method

.method public onActivityStateChange(Landroid/app/Activity;I)V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mPaymentRequestUI:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mPaymentMethodsSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    instance-of v1, p1, Lcom/sec/android/app/sbrowser/common/model/main_activity/IMainActivity;

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    const/4 p1, 0x3

    const/4 v1, 0x4

    if-ne p2, p1, :cond_4

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mWasBiometricsRegistered:Z

    if-eqz p1, :cond_6

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mAuthenticator:Lcom/sec/android/app/sbrowser/authentication/Authenticator;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->canUseFingerprintOrIris()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getPaymentRequestUI()Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->isProcessingPayClicked()Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "Biometrics were removed"

    const-string p2, "PaymentUIsManager"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mPaymentMethodsSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->getSize()I

    move-result v4

    if-ge v0, v4, :cond_3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mPaymentMethodsSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    invoke-virtual {v4, v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->getItem(I)Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;->getPaymentAppType()I

    move-result v5

    if-ne v5, v2, :cond_2

    move-object v5, v4

    check-cast v5, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;->isNewCard()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move v3, v2

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_6

    const-string v0, "PaymentMethods should be updated! : remove saved basic cards"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    const/4 v0, -0x1

    invoke-direct {p2, v1, v0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;-><init>(IILjava/util/Collection;)V

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->setPaymentMethodsSection(Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mPaymentRequestUI:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mPaymentMethodsSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    invoke-virtual {p1, v1, p2}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->updateSection(ILcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->updateAppModifiedTotals()V

    goto :goto_2

    :cond_4
    if-ne p2, v1, :cond_6

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mAuthenticator:Lcom/sec/android/app/sbrowser/authentication/Authenticator;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->canUseFingerprintOrIris()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mWasBiometricsRegistered:Z

    goto :goto_2

    :cond_5
    instance-of p1, p1, Lcom/sec/android/app/sbrowser/SBrowserLauncherActivity;

    if-eqz p1, :cond_6

    if-ne p2, v2, :cond_6

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mDelegate:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager$Delegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager$Delegate;->dismissOnLauncherActivityIntent()V

    :cond_6
    :goto_2
    return-void
.end method

.method public onFocusChanged(IZ)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mShippingAddressesSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->getSelectedItem()Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mShippingAddressesSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->getSelectedItem()Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;->setShippingAddressLabelWithCountry()V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;->setShippingAddressLabelWithoutCountry()V

    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mPaymentRequestUI:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    const/4 p2, 0x1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mShippingAddressesSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    invoke-virtual {p1, p2, p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->updateSection(ILcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;)V

    return-void
.end method

.method public onPaymentRequestParamsInitiated(Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestParams;)V
    .locals 6

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestParams;->getMethodData()Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentAppFactory;->merchantSupportsBasicCard(Ljava/util/Map;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mMerchantSupportsAutofillCards:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mCanUserAddCreditCard:Ljava/lang/Boolean;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mParams:Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestParams;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestParams;->getPaymentOptions()Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentOptionsUtils;->requestAnyInformation(Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getInstance()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getProfilesToSuggest(Z)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mAutofillProfiles:Ljava/util/List;

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mParams:Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestParams;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestParams;->getPaymentOptions()Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentOptionsUtils;->requestShipping(Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    move p1, v0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mAutofillProfiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mAutofillProfiles:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

    invoke-static {v2, v0}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;->checkAddressCompletionStatus(Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;I)I

    move-result v2

    if-nez v2, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    move p1, v0

    :goto_1
    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mHaveRequestedAutofillData:Z

    and-int/2addr p1, v2

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mHaveRequestedAutofillData:Z

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mParams:Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestParams;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestParams;->getPaymentOptions()Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;

    move-result-object p1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mParams:Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestParams;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestParams;->getPaymentOptions()Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentOptionsUtils;->requestAnyContactInformation(Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentOptionsUtils;->requestPayerName(Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;)Z

    move-result v3

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentOptionsUtils;->requestPayerPhone(Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;)Z

    move-result v4

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentOptionsUtils;->requestPayerEmail(Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;)Z

    move-result p1

    iget-boolean v5, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mIsOffTheRecord:Z

    xor-int/2addr v5, v1

    invoke-direct {v2, v3, v4, p1, v5}, Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor;-><init>(ZZZZ)V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mContactEditor:Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor;

    move p1, v0

    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getAutofillProfiles()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getAutofillProfiles()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getContactEditor()Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getFullName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getPhoneNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getEmailAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v5, v2}, Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor;->checkContactCompletionStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_3

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mHaveRequestedAutofillData:Z

    and-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mHaveRequestedAutofillData:Z

    :cond_6
    return-void
.end method

.method public onSectionAddOption(ILcom/sec/android/app/sbrowser/payments/standard/common/Callback;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sec/android/app/sbrowser/payments/standard/common/Callback<",
            "Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentInformation;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->editAddress(Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mPaymentInformationCallback:Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;

    return v1

    :cond_0
    const/4 p2, 0x2

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->editContactOnPaymentRequestUI(Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;)V

    return p2

    :cond_1
    const/4 v2, 0x4

    if-ne p1, v2, :cond_2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->editCard(Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;)V

    return p2

    :cond_2
    return v1
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

    check-cast p2, Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->editAddress(Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;)V

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mPaymentInformationCallback:Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;

    return v0

    :cond_0
    const/4 p3, 0x2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    check-cast p2, Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->editContactOnPaymentRequestUI(Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;)V

    return p3

    :cond_1
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    check-cast p2, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->editCard(Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;)V

    return p3

    :cond_2
    return v0
.end method

.method public onSelectedPaymentMethodUpdated()V
    .locals 8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mPaymentRequestUI:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    new-instance v7, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentInformation;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mUiShoppingCart:Lcom/sec/android/app/sbrowser/payments/standard/ui/ShoppingCart;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mShippingAddressesSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mUiShippingOptions:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mContactSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/ContactDetailsSection;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mPaymentMethodsSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentInformation;-><init>(Lcom/sec/android/app/sbrowser/payments/standard/ui/ShoppingCart;Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;)V

    invoke-virtual {v0, v7}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->selectedPaymentMethodUpdated(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentInformation;)V

    return-void
.end method

.method public providePaymentInformationToPaymentRequestUI()V
    .locals 8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mPaymentMethodsSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getSelectedPaymentAppType()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->setDisplaySelectedItemSummaryInSingleLineInNormalMode(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mPaymentInformationCallback:Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;

    new-instance v7, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentInformation;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mUiShoppingCart:Lcom/sec/android/app/sbrowser/payments/standard/ui/ShoppingCart;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mShippingAddressesSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mUiShippingOptions:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mContactSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/ContactDetailsSection;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mPaymentMethodsSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentInformation;-><init>(Lcom/sec/android/app/sbrowser/payments/standard/ui/ShoppingCart;Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;)V

    invoke-interface {v0, v7}, Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;->onResult(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mPaymentInformationCallback:Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;

    return-void
.end method

.method public rankPaymentAppsForPaymentRequestUI(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mPaymentAppComparator:Ljava/util/Comparator;

    invoke-static {p1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public registerBioAuth(Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/payments/standard/common/Callback<",
            "Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentInformation;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/terrace/TerraceHelper;->getCurrentTerraceActivity()Lcom/sec/terrace/TerraceActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getToastMsgResIdBySupportBioTypeForDex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mPaymentMethodsSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->setSelectedItemIndex(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mPaymentRequestUI:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mPaymentMethodsSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->updateSection(ILcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->updateAppModifiedTotals()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mAuthenticator:Lcom/sec/android/app/sbrowser/authentication/Authenticator;

    new-instance v0, Lcom/google/firebase/messaging/z;

    const/16 v1, 0x1a

    invoke-direct {v0, v1, p0}, Lcom/google/firebase/messaging/z;-><init>(ILjava/lang/Object;)V

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->register(Lcom/sec/android/app/sbrowser/common/model/authentication/Registration$Callback;)V

    return-void
.end method

.method public setContactSection(Lcom/sec/android/app/sbrowser/payments/standard/ui/ContactDetailsSection;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mContactSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/ContactDetailsSection;

    return-void
.end method

.method public setPaymentInformationCallback(Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/payments/standard/common/Callback<",
            "Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentInformation;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mPaymentInformationCallback:Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;

    return-void
.end method

.method public setPaymentMethodsSection(Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mPaymentMethodsSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    return-void
.end method

.method public setPaymentRequestUI(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mPaymentRequestUI:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    return-void
.end method

.method public setShippingAddressSectionFocusChangedObserverForPaymentRequestUI()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mPaymentRequestUI:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->setShippingAddressSectionFocusChangedObserver(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestSection$OptionSection$FocusChangedObserver;)V

    return-void
.end method

.method public setUiShippingOptions(Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mUiShippingOptions:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    return-void
.end method

.method public setUiShoppingCart(Lcom/sec/android/app/sbrowser/payments/standard/ui/ShoppingCart;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mUiShoppingCart:Lcom/sec/android/app/sbrowser/payments/standard/ui/ShoppingCart;

    return-void
.end method

.method public shouldShowContactSection()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mPaymentMethodsSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->getSelectedItem()Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mParams:Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestParams;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestParams;->getPaymentOptions()Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentOptionsUtils;->requestPayerName(Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;->handlesPayerName()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    return v2

    :cond_2
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentOptionsUtils;->requestPayerPhone(Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;->handlesPayerPhone()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    return v2

    :cond_4
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentOptionsUtils;->requestPayerEmail(Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;)Z

    move-result p0

    if-eqz p0, :cond_6

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;->handlesPayerEmail()Z

    move-result p0

    if-nez p0, :cond_6

    :cond_5
    return v2

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public shouldShowShippingSection()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mParams:Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestParams;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestParams;->getPaymentOptions()Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentOptionsUtils;->requestShipping(Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mPaymentMethodsSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    const/4 v0, 0x1

    if-nez p0, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->getSelectedItem()Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;->handlesShippingAddress()Z

    move-result p0

    if-nez p0, :cond_3

    :cond_2
    move v1, v0

    :cond_3
    return v1
.end method

.method public updateAppModifiedTotals()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mParams:Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestParams;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestParams;->getMethodData()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mPaymentMethodsSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mPaymentMethodsSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->getSize()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mPaymentMethodsSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->getItem(I)Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getModifier(Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;)Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetailsModifier;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v3, v2, Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetailsModifier;->total:Lcom/sec/terrace/services/payments/mojom/TerracePaymentItem;

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    iget-object v3, v3, Lcom/sec/terrace/services/payments/mojom/TerracePaymentItem;->amount:Lcom/sec/terrace/services/payments/mojom/TerracePaymentCurrencyAmount;

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getOrCreateCurrencyFormatter(Lcom/sec/terrace/services/payments/mojom/TerracePaymentCurrencyAmount;)Lcom/sec/terrace/browser/payments/TerraceCurrencyFormatter;

    move-result-object v3

    iget-object v2, v2, Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetailsModifier;->total:Lcom/sec/terrace/services/payments/mojom/TerracePaymentItem;

    iget-object v2, v2, Lcom/sec/terrace/services/payments/mojom/TerracePaymentItem;->amount:Lcom/sec/terrace/services/payments/mojom/TerracePaymentCurrencyAmount;

    iget-object v2, v2, Lcom/sec/terrace/services/payments/mojom/TerracePaymentCurrencyAmount;->value:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/sec/terrace/browser/payments/TerraceCurrencyFormatter;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;->setModifiedTotal(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mPaymentMethodsSection:Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->getSelectedItem()Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->updateOrderSummary(Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;)V

    return-void
.end method

.method public updateOrderSummary(Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;)V
    .locals 7
    .param p1    # Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getModifier(Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;)Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetailsModifier;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetailsModifier;->total:Lcom/sec/terrace/services/payments/mojom/TerracePaymentItem;

    :goto_0
    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mParams:Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestParams;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestParams;->getRawTotal()Lcom/sec/terrace/services/payments/mojom/TerracePaymentItem;

    move-result-object v1

    :cond_1
    iget-object v2, v1, Lcom/sec/terrace/services/payments/mojom/TerracePaymentItem;->amount:Lcom/sec/terrace/services/payments/mojom/TerracePaymentCurrencyAmount;

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getOrCreateCurrencyFormatter(Lcom/sec/terrace/services/payments/mojom/TerracePaymentCurrencyAmount;)Lcom/sec/terrace/browser/payments/TerraceCurrencyFormatter;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mUiShoppingCart:Lcom/sec/android/app/sbrowser/payments/standard/ui/ShoppingCart;

    new-instance v4, Lcom/sec/android/app/sbrowser/payments/standard/ui/LineItem;

    iget-object v5, v1, Lcom/sec/terrace/services/payments/mojom/TerracePaymentItem;->label:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/sec/terrace/browser/payments/TerraceCurrencyFormatter;->getFormattedCurrencyCode()Ljava/lang/String;

    move-result-object v6

    iget-object v1, v1, Lcom/sec/terrace/services/payments/mojom/TerracePaymentItem;->amount:Lcom/sec/terrace/services/payments/mojom/TerracePaymentCurrencyAmount;

    iget-object v1, v1, Lcom/sec/terrace/services/payments/mojom/TerracePaymentCurrencyAmount;->value:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/sec/terrace/browser/payments/TerraceCurrencyFormatter;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v4, v5, v6, v1, v2}, Lcom/sec/android/app/sbrowser/payments/standard/ui/LineItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/payments/standard/ui/ShoppingCart;->setTotal(Lcom/sec/android/app/sbrowser/payments/standard/ui/LineItem;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mUiShoppingCart:Lcom/sec/android/app/sbrowser/payments/standard/ui/ShoppingCart;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    iget-object p1, p1, Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetailsModifier;->additionalDisplayItems:[Lcom/sec/terrace/services/payments/mojom/TerracePaymentItem;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getLineItems(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/ShoppingCart;->setAdditionalContents(Ljava/util/List;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mPaymentRequestUI:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->mUiShoppingCart:Lcom/sec/android/app/sbrowser/payments/standard/ui/ShoppingCart;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->updateOrderSummarySection(Lcom/sec/android/app/sbrowser/payments/standard/ui/ShoppingCart;)V

    :cond_3
    return-void
.end method
