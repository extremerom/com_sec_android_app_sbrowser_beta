.class public Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/services/TerraceServiceBase;
.implements Lcom/sec/terrace/services/payments/mojom/TerraceBrowserPaymentRequest;
.implements Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;
.implements Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryDelegate;
.implements Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp$PaymentRequestUpdateEventListener;
.implements Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryParams;
.implements Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp$AbortCallback;
.implements Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp$InstrumentDetailsCallback;
.implements Lcom/sec/android/app/sbrowser/payments/standard/PaymentResponseHelper$PaymentResponseRequesterDelegate;
.implements Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager$Delegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl$PaymentRequestServiceObserverForTest;
    }
.end annotation


# static fields
.field private static sIsLocalCanMakePaymentQueryQuotaEnforcedForTest:Z

.field private static sObserverForTest:Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl$PaymentRequestServiceObserverForTest;

.field private static sShowingPaymentRequest:Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;


# instance fields
.field private final mAuthenticator:Lcom/sec/android/app/sbrowser/authentication/Authenticator;

.field private mCanMakePayment:Z

.field private mCertificateChain:[[B
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mClient:Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService;

.field private mContext:Landroid/app/Activity;

.field private mDidRecordShowEvent:Z

.field private final mHandler:Landroid/os/Handler;

.field private mHasEnrolledInstrument:Z

.field private mHasNonAutofillApp:Z

.field private mHideServerAutofillCards:Z

.field private mId:Ljava/lang/String;

.field private mInvokedPaymentApp:Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;

.field private mIsCanMakePaymentResponsePending:Z

.field private mIsCurrentPaymentRequestShowing:Z

.field private mIsFinishedQueryingPaymentApps:Z

.field private mIsHasEnrolledInstrumentResponsePending:Z

.field private mIsProhibitedOriginOrInvalidSsl:Z

.field private mMerchantName:Ljava/lang/String;

.field private mMethodData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/terrace/services/payments/mojom/TerracePaymentMethodData;",
            ">;"
        }
    .end annotation
.end field

.field private mModifiers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetailsModifier;",
            ">;"
        }
    .end annotation
.end field

.field private mPaymentOptions:Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;

.field private mPaymentRequestLifecycleObserver:Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestLifecycleObserver;

.field private mPaymentRequestOrigin:Ljava/lang/String;

.field private mPaymentRequestSecurityOrigin:Lcom/sec/terrace/services/payments/mojom/TerraceOrigin;

.field private mPaymentResponseHelper:Lcom/sec/android/app/sbrowser/payments/standard/PaymentResponseHelper;

.field private mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

.field private mPendingApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;",
            ">;"
        }
    .end annotation
.end field

.field private mQueryForQuota:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/terrace/services/payments/mojom/TerracePaymentMethodData;",
            ">;"
        }
    .end annotation
.end field

.field private mRawLineItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/terrace/services/payments/mojom/TerracePaymentItem;",
            ">;"
        }
    .end annotation
.end field

.field private mRawShippingOptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/terrace/services/payments/mojom/TerracePaymentShippingOption;",
            ">;"
        }
    .end annotation
.end field

.field private mRawTotal:Lcom/sec/terrace/services/payments/mojom/TerracePaymentItem;

.field private mRejectShowErrorMessage:Ljava/lang/String;

.field private mRequestPayerEmail:Z

.field private mRequestPayerName:Z

.field private mRequestPayerPhone:Z

.field private mRequestShipping:Z

.field private mShippingType:I

.field private mShouldSkipShowingPaymentRequestUi:Z

.field private mSkipUiForNonUrlPaymentMethodIdentifiers:Z

.field private mTabManagerEventListener:Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;

.field private mTerrace:Lcom/sec/terrace/Terrace;

.field private mTopLevelOrigin:Ljava/lang/String;

.field private mURLPaymentMethodIdentifiersSupported:Z

.field private mWaitForUpdatedDetails:Z

.field private mWasRetryCalled:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mHandler:Landroid/os/Handler;

    new-instance v0, LN/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LN/A;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mModifiers:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPendingApps:Ljava/util/List;

    invoke-static {}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->get()Lcom/sec/android/app/sbrowser/authentication/Authenticator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mAuthenticator:Lcom/sec/android/app/sbrowser/authentication/Authenticator;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper;Landroid/graphics/Bitmap;Ljava/lang/String;J)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->lambda$buildUI$0(Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper;Landroid/graphics/Bitmap;Ljava/lang/String;J)V

    return-void
.end method

.method private addTabManagerEventListener()V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mContext:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getTabManager(Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mTabManagerEventListener:Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/sec/android/app/sbrowser/payments/standard/PaymentTabManagerEventListener;

    new-instance v2, Lcom/sec/android/app/sbrowser/payments/standard/b;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/payments/standard/b;-><init>(Ljava/lang/Object;)V

    invoke-direct {v1, v2}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentTabManagerEventListener;-><init>(Lcom/sec/android/app/sbrowser/payments/standard/PaymentTabManagerEventListener$TabManagerCallback;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mTabManagerEventListener:Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->addListener(Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->lambda$getDefaultPaymentInformation$3()V

    return-void
.end method

.method private buildUI()Z
    .locals 12

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->addTabManagerEventListener()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->shouldShowShippingSection()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mWaitForUpdatedDetails:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mContext:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->createShippingSectionForPaymentRequestUI(Landroid/content/Context;)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->shouldShowContactSection()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    new-instance v1, Lcom/sec/android/app/sbrowser/payments/standard/ui/ContactDetailsSection;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getAutofillProfiles()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getContactEditor()Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/android/app/sbrowser/payments/standard/ui/ContactDetailsSection;-><init>(Landroid/content/Context;Ljava/util/Collection;Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->setContactSection(Lcom/sec/android/app/sbrowser/payments/standard/ui/ContactDetailsSection;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    new-instance v10, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mContext:Landroid/app/Activity;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->createUiClient(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;)Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;

    move-result-object v3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->merchantSupportsAutofillCards()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentPreferencesUtil;->isPaymentCompleteOnce()Z

    move-result v1

    const/4 v11, 0x1

    xor-int/lit8 v5, v1, 0x1

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mMerchantName:Ljava/lang/String;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mTopLevelOrigin:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-static {v1}, Lcom/sec/terrace/TerraceSecurityStateModel;->getSecurityLevelForWebContents(Lcom/sec/terrace/Terrace;)I

    move-result v8

    new-instance v9, Lcom/sec/android/app/sbrowser/payments/standard/ShippingStrings;

    iget v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mShippingType:I

    invoke-direct {v9, v1}, Lcom/sec/android/app/sbrowser/payments/standard/ShippingStrings;-><init>(I)V

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;-><init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$Client;ZZLjava/lang/String;Ljava/lang/String;ILcom/sec/android/app/sbrowser/payments/standard/ShippingStrings;)V

    invoke-virtual {v0, v10}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->setPaymentRequestUI(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;)V

    new-instance v0, Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper;

    invoke-direct {v0}, Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mTopLevelOrigin:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mContext:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070c08

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    new-instance v3, LHa/a;

    const/16 v4, 0x12

    invoke-direct {v3, v4, p0, v0}, LHa/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper;->getLocalFaviconImageForURL(Ljava/lang/String;ILcom/sec/terrace/browser/favicon/TerraceFaviconHelper$FaviconImageCallback;)Z

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mRequestShipping:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->setShippingAddressSectionFocusChangedObserverForPaymentRequestUI()V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getAddressEditor()Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getPaymentRequestUI()Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->getEditorDialog()Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorBase;->setEditorDialog(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getCardEditor()Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getPaymentRequestUI()Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->getCardEditorDialog()Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorBase;->setEditorDialog(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getContactEditor()Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getContactEditor()Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getPaymentRequestUI()Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->getEditorDialog()Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorBase;->setEditorDialog(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;)V

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-static {p0}, Lcom/sec/terrace/TerraceApplicationStatus;->registerStateListenerForAllActivities(Lcom/sec/terrace/TerraceApplicationStatus$TerraceActivityStateListener;)V

    return v11
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;Lcom/sec/terrace/services/payments/mojom/TerracePaymentValidationErrors;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->lambda$retry$5(Lcom/sec/terrace/services/payments/mojom/TerracePaymentValidationErrors;)V

    return-void
.end method

.method private calculateWhetherShouldSkipShowingPaymentRequestUi()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getPaymentMethodsSection()Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->getSelectedItem()Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mURLPaymentMethodIdentifiersSupported:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mSkipUiForNonUrlPaymentMethodIdentifiers:Z

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getPaymentMethodsSection()Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->getSize()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->onlySingleAppCanProvideAllRequiredInformation()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mShouldSkipShowingPaymentRequestUi:Z

    return-void
.end method

.method private closeClient()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mClient:Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService;->close()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mClient:Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService;

    return-void
.end method

.method private closeUIAndDestroyNativeObjects(Z)V
    .locals 4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->removeTabManagerEventListener()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getPaymentRequestUI()Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getPaymentRequestUI()Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    move-result-object v0

    new-instance v2, Lcom/sec/android/app/sbrowser/payments/standard/d;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/payments/standard/d;-><init>(Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp$AbortCallback;I)V

    invoke-virtual {v0, p1, v2}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->close(ZLjava/lang/Runnable;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {p1, v1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->setPaymentRequestUI(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;)V

    :cond_1
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->setShowingPaymentRequest(Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mIsCurrentPaymentRequestShowing:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getPaymentMethodsSection()Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    move-result-object v0

    if-eqz v0, :cond_3

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getPaymentMethodsSection()Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->getSize()I

    move-result v0

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getPaymentMethodsSection()Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->getItem(I)Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;->dismissInstrument()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {p1, v1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->setPaymentMethodsSection(Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;)V

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-static {p1}, Lcom/sec/terrace/TerraceApplicationStatus;->unregisterActivityStateListener(Lcom/sec/terrace/TerraceApplicationStatus$TerraceActivityStateListener;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->destroyCurrencyFormatters()V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;Lcom/sec/terrace/services/payments/mojom/TerracePaymentValidationErrors;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->lambda$retry$4(Lcom/sec/terrace/services/payments/mojom/TerracePaymentValidationErrors;)V

    return-void
.end method

.method private dimBackgroundIfNotBottomSheetPaymentHandler(Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;->getPaymentAppType()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getPaymentRequestUI()Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->dimBackground()V

    return-void
.end method

.method private disconnectForStrictShow()Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mMethodData:Ljava/util/Map;

    const-string v0, "basic-card"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    return p0
.end method

.method private disconnectFromClientWithDebugMessage(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->disconnectFromClientWithDebugMessage(Ljava/lang/String;I)V

    return-void
.end method

.method private disconnectIfNoPaymentMethodsSupported()Z
    .locals 5

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mIsFinishedQueryingPaymentApps:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mIsCurrentPaymentRequestShowing:Z

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPendingApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getPaymentMethodsSection()Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getPaymentMethodsSection()Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mCanMakePayment:Z

    if-eqz v0, :cond_4

    if-nez v1, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->merchantSupportsAutofillCards()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->disconnectForStrictShow()Z

    move-result p0

    return p0

    :cond_4
    :goto_0
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mIsProhibitedOriginOrInvalidSsl:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mRejectShowErrorMessage:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->disconnectFromClientWithDebugMessage(Ljava/lang/String;I)V

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mMethodData:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->getNotSupportedErrorMessage(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mRejectShowErrorMessage:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, ""

    goto :goto_1

    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mRejectShowErrorMessage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->disconnectFromClientWithDebugMessage(Ljava/lang/String;I)V

    :goto_2
    sget-object p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->sObserverForTest:Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl$PaymentRequestServiceObserverForTest;

    if-eqz p0, :cond_7

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl$PaymentRequestServiceObserverForTest;->onPaymentRequestServiceShowFailed()V

    :cond_7
    return v2

    :cond_8
    :goto_3
    return v1
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->lambda$addTabManagerEventListener$1()V

    return-void
.end method

.method public static synthetic f(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->lambda$removeTabManagerEventListener$2(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;)V

    return-void
.end method

.method private getCurrentPaymentOption()Lcom/sec/android/app/sbrowser/payments/events/EventDetails;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getPaymentMethodsSection()Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/sec/android/app/sbrowser/payments/events/PaymentMethod;->UNKNOWN:Lcom/sec/android/app/sbrowser/payments/events/PaymentMethod;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getSelectedPaymentAppType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    sget-object p0, Lcom/sec/android/app/sbrowser/payments/events/PaymentMethod;->BASIC_CARD:Lcom/sec/android/app/sbrowser/payments/events/PaymentMethod;

    return-object p0

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getPaymentMethodsSection()Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->getSelectedItem()Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getPaymentMethodsSection()Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->getSelectedItem()Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->getIdentifier()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/sec/terrace/browser/samsungpay/TerraceSPayStatus;->getSpayPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/sec/android/app/sbrowser/payments/events/PaymentMethod;->SPAY:Lcom/sec/android/app/sbrowser/payments/events/PaymentMethod;

    return-object p0

    :cond_2
    sget-object p0, Lcom/sec/android/app/sbrowser/payments/events/PaymentMethod;->OTHERS:Lcom/sec/android/app/sbrowser/payments/events/PaymentMethod;

    return-object p0
.end method

.method private static getIsAnyPaymentRequestShowing()Z
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->sShowingPaymentRequest:Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getNotSupportedErrorMessage(Ljava/util/Set;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Payment method not supported"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, " :"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, " "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getSubInformationsForSPay()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/payments/events/EventDetails;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mMethodData:Ljava/util/Map;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->containsSpayPaymentMethod(Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/android/app/sbrowser/payments/events/SPaySubInformations;->IN_SUPPORTED_METHODS:Lcom/sec/android/app/sbrowser/payments/events/SPaySubInformations;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getPaymentMethodsSection()Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->getSize()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getPaymentMethodsSection()Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->getItem(I)Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;->getPaymentAppType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/sec/terrace/browser/samsungpay/TerraceSPayStatus;->getSpayPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v1, Lcom/sec/android/app/sbrowser/payments/events/SPaySubInformations;->IN_PAYMENT_INSTRUMENTS:Lcom/sec/android/app/sbrowser/payments/events/SPaySubInformations;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->getCurrentPaymentOption()Lcom/sec/android/app/sbrowser/payments/events/EventDetails;

    move-result-object p0

    sget-object v1, Lcom/sec/android/app/sbrowser/payments/events/PaymentMethod;->SPAY:Lcom/sec/android/app/sbrowser/payments/events/PaymentMethod;

    if-ne p0, v1, :cond_3

    sget-object p0, Lcom/sec/android/app/sbrowser/payments/events/SPaySubInformations;->IS_DEFAULT_OPTION:Lcom/sec/android/app/sbrowser/payments/events/SPaySubInformations;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object v0
.end method

.method private static getValidatedMethodData([Lcom/sec/terrace/services/payments/mojom/TerracePaymentMethodData;Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/sec/terrace/services/payments/mojom/TerracePaymentMethodData;",
            "Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/terrace/services/payments/mojom/TerracePaymentMethodData;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v1, LN/f;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, LN/A;-><init>(I)V

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    aget-object v3, p0, v2

    iget-object v3, v3, Lcom/sec/terrace/services/payments/mojom/TerracePaymentMethodData;->supportedMethod:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v0

    :cond_1
    aget-object v4, p0, v2

    invoke-virtual {v1, v3, v4}, LN/A;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aget-object v3, p0, v2

    invoke-virtual {p1, v3}, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;->addAcceptedPaymentMethodIfRecognized(Lcom/sec/terrace/services/payments/mojom/TerracePaymentMethodData;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public static synthetic h(Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->lambda$getTwaPackageName$6(Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;Ljava/lang/String;)V

    return-void
.end method

.method private hasPayerError(Lcom/sec/terrace/services/payments/mojom/TerracePayerErrors;)Z
    .locals 0

    iget-object p0, p1, Lcom/sec/terrace/services/payments/mojom/TerracePayerErrors;->name:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    iget-object p0, p1, Lcom/sec/terrace/services/payments/mojom/TerracePayerErrors;->phone:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    iget-object p0, p1, Lcom/sec/terrace/services/payments/mojom/TerracePayerErrors;->email:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

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

.method private hasShippingAddressError(Lcom/sec/terrace/services/payments/mojom/TerraceAddressErrors;)Z
    .locals 0

    iget-object p0, p1, Lcom/sec/terrace/services/payments/mojom/TerraceAddressErrors;->addressLine:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    iget-object p0, p1, Lcom/sec/terrace/services/payments/mojom/TerraceAddressErrors;->city:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    iget-object p0, p1, Lcom/sec/terrace/services/payments/mojom/TerraceAddressErrors;->country:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    iget-object p0, p1, Lcom/sec/terrace/services/payments/mojom/TerraceAddressErrors;->dependentLocality:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    iget-object p0, p1, Lcom/sec/terrace/services/payments/mojom/TerraceAddressErrors;->organization:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    iget-object p0, p1, Lcom/sec/terrace/services/payments/mojom/TerraceAddressErrors;->phone:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    iget-object p0, p1, Lcom/sec/terrace/services/payments/mojom/TerraceAddressErrors;->postalCode:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    iget-object p0, p1, Lcom/sec/terrace/services/payments/mojom/TerraceAddressErrors;->recipient:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    iget-object p0, p1, Lcom/sec/terrace/services/payments/mojom/TerraceAddressErrors;->region:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    iget-object p0, p1, Lcom/sec/terrace/services/payments/mojom/TerraceAddressErrors;->sortingCode:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

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

.method private initPaymentRequestServiceData(Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService;Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestServiceData;)Z
    .locals 2

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/TerraceHelper;->getCurrentTerraceActivity()Lcom/sec/terrace/TerraceActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mContext:Landroid/app/Activity;

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/TerraceHelper;->getCurrentTerraceActivity()Lcom/sec/terrace/TerraceActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/sec/terrace/TerraceActivity;->getActiveTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mTerrace:Lcom/sec/terrace/Terrace;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/terrace/Terrace;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mClient:Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService;

    iget-object p1, p2, Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestServiceData;->paymentRequestOrigin:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentRequestOrigin:Ljava/lang/String;

    iget-object p1, p2, Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestServiceData;->paymentRequestSecurityOrigin:Lcom/sec/terrace/services/payments/mojom/TerraceOrigin;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentRequestSecurityOrigin:Lcom/sec/terrace/services/payments/mojom/TerraceOrigin;

    iget-object p1, p2, Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestServiceData;->topLevelOrigin:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mTopLevelOrigin:Ljava/lang/String;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-static {p1}, Lcom/sec/terrace/TerraceCertificateChainHelper;->getCertificateChain(Lcom/sec/terrace/Terrace;)[[B

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mCertificateChain:[[B

    iget-object p1, p2, Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestServiceData;->merchantName:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mMerchantName:Ljava/lang/String;

    iget-object p1, p2, Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestServiceData;->paymentOptions:Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentOptions:Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;

    iget-boolean p2, p1, Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;->requestShipping:Z

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mRequestShipping:Z

    iget-boolean p2, p1, Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;->requestPayerName:Z

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mRequestPayerName:Z

    iget-boolean p2, p1, Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;->requestPayerPhone:Z

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mRequestPayerPhone:Z

    iget-boolean p2, p1, Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;->requestPayerEmail:Z

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mRequestPayerEmail:Z

    iget p1, p1, Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;->shippingType:I

    iput p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mShippingType:I

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mSkipUiForNonUrlPaymentMethodIdentifiers:Z

    new-instance p1, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mTerrace:Lcom/sec/terrace/Terrace;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result v0

    invoke-direct {p1, p0, p0, p2, v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;-><init>(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager$Delegate;Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestParams;Lcom/sec/terrace/Terrace;Z)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->registerPaymentRequestLifecycleObserver(Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestLifecycleObserver;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/payments/logging/PaymentSheetLogger;->enable()V

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method private initializeWithUpdatedDetails(Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetails;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mContext:Landroid/app/Activity;

    if-nez v0, :cond_0

    const-string p1, "Unable to find Chrome activity."

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->disconnectFromClientWithDebugMessage(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->parseAndValidateDetailsOrDisconnectFromClient(Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetails;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object p1, p1, Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetails;->error:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "Invalid state."

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->disconnectFromClientWithDebugMessage(Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getPaymentRequestUI()Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->shouldShowShippingSection()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mContext:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->createShippingSectionForPaymentRequestUI(Landroid/content/Context;)V

    :cond_3
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mWaitForUpdatedDetails:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->triggerPaymentAppUiSkipIfApplicable()V

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mIsFinishedQueryingPaymentApps:Z

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mShouldSkipShowingPaymentRequestUi:Z

    if-nez p1, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->enableAndUpdatePaymentRequestUIWithPaymentInfo()Z

    :cond_4
    return-void
.end method

.method private isMicrotransactionUiApplicable()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getPaymentMethodsSection()Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getPaymentMethodsSection()Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->getSize()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getPaymentMethodsSection()Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->getSelectedItem()Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;->isReadyForMicrotransaction()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;->accountBalance()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    :cond_1
    :goto_0
    return v1
.end method

.method public static synthetic j(Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->lambda$closeUIAndDestroyNativeObjects$7()V

    return-void
.end method

.method private synthetic lambda$addTabManagerEventListener$1()V
    .locals 1

    const-string v0, "Cannot show PaymentRequest UI in a preview page or a background tab."

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->disconnectFromClientWithDebugMessage(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$buildUI$0(Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper;Landroid/graphics/Bitmap;Ljava/lang/String;J)V
    .locals 0

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mClient:Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService;

    if-eqz p3, :cond_0

    if-nez p2, :cond_0

    invoke-interface {p3}, Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService;->warnNoFavicon()V

    :cond_0
    iget-object p3, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getPaymentRequestUI()Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    move-result-object p3

    if-eqz p3, :cond_3

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getPaymentRequestUI()Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->setTitleBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getPaymentRequestUI()Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    move-result-object p2

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mMerchantName:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_2

    const-string p0, ""

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mMerchantName:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    const/4 p3, 0x0

    invoke-virtual {p0, p3}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {p2, p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->setAutoGeneratedIcon(Ljava/lang/String;)V

    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper;->destroy()V

    return-void
.end method

.method private synthetic lambda$closeUIAndDestroyNativeObjects$7()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mClient:Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService;->onComplete()V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->closeClient()V

    return-void
.end method

.method private synthetic lambda$getDefaultPaymentInformation$3()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getPaymentRequestUI()Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->providePaymentInformationToPaymentRequestUI()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$getTwaPackageName$6(Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, p2}, Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;->bind(Ljava/lang/Object;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static synthetic lambda$removeTabManagerEventListener$2(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getTabManager(Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->removeListener(Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$retry$4(Lcom/sec/terrace/services/payments/mojom/TerracePaymentValidationErrors;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getAddressEditor()Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;

    move-result-object v0

    iget-object p1, p1, Lcom/sec/terrace/services/payments/mojom/TerracePaymentValidationErrors;->shippingAddress:Lcom/sec/terrace/services/payments/mojom/TerraceAddressErrors;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;->setAddressErrors(Lcom/sec/terrace/services/payments/mojom/TerraceAddressErrors;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getShippingAddressesSection()Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->getSelectedItem()Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->editAddress(Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;)V

    return-void
.end method

.method private synthetic lambda$retry$5(Lcom/sec/terrace/services/payments/mojom/TerracePaymentValidationErrors;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getContactEditor()Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor;

    move-result-object v0

    iget-object p1, p1, Lcom/sec/terrace/services/payments/mojom/TerracePaymentValidationErrors;->payer:Lcom/sec/terrace/services/payments/mojom/TerracePayerErrors;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor;->setPayerErrors(Lcom/sec/terrace/services/payments/mojom/TerracePayerErrors;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getContactSection()Lcom/sec/android/app/sbrowser/payments/standard/ui/ContactDetailsSection;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->getSelectedItem()Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->editContactOnPaymentRequestUI(Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;)V

    return-void
.end method

.method private onlySingleAppCanProvideAllRequiredInformation()Z
    .locals 7

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mRequestShipping:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mRequestPayerName:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mRequestPayerPhone:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mRequestPayerEmail:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getPaymentMethodsSection()Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->getSize()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getPaymentMethodsSection()Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->getItem(I)Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;->isAutofillInstrument()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getPaymentMethodsSection()Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->getSize()I

    move-result v0

    move v3, v2

    move v4, v3

    :goto_1
    if-ge v3, v0, :cond_8

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getPaymentMethodsSection()Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->getItem(I)Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;

    iget-boolean v6, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mRequestShipping:Z

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;->handlesShippingAddress()Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_2
    iget-boolean v6, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mRequestPayerName:Z

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;->handlesPayerName()Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_3
    iget-boolean v6, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mRequestPayerPhone:Z

    if-eqz v6, :cond_4

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;->handlesPayerPhone()Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_4
    iget-boolean v6, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mRequestPayerEmail:Z

    if-eqz v6, :cond_5

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;->handlesPayerEmail()Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_5
    if-eqz v4, :cond_6

    return v2

    :cond_6
    move v4, v1

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_8
    return v4
.end method

.method private parseAndValidateDetailsOrDisconnectFromClient(Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetails;)Z
    .locals 6

    invoke-static {p1}, Lcom/sec/terrace/browser/payments/TerracePaymentValidator;->validatePaymentDetails(Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetails;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "Invalid payment details."

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->disconnectFromClientWithDebugMessage(Ljava/lang/String;)V

    return v1

    :cond_0
    iget-object v0, p1, Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetails;->total:Lcom/sec/terrace/services/payments/mojom/TerracePaymentItem;

    if-eqz v0, :cond_1

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mRawTotal:Lcom/sec/terrace/services/payments/mojom/TerracePaymentItem;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mRawLineItems:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetails;->displayItems:[Lcom/sec/terrace/services/payments/mojom/TerracePaymentItem;

    if-eqz v0, :cond_4

    :cond_2
    iget-object v0, p1, Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetails;->displayItems:[Lcom/sec/terrace/services/payments/mojom/TerracePaymentItem;

    if-eqz v0, :cond_3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mRawLineItems:Ljava/util/List;

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->loadCurrencyFormattersForPaymentDetails(Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetails;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mRawTotal:Lcom/sec/terrace/services/payments/mojom/TerracePaymentItem;

    iget-object v2, v2, Lcom/sec/terrace/services/payments/mojom/TerracePaymentItem;->amount:Lcom/sec/terrace/services/payments/mojom/TerracePaymentCurrencyAmount;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getOrCreateCurrencyFormatter(Lcom/sec/terrace/services/payments/mojom/TerracePaymentCurrencyAmount;)Lcom/sec/terrace/browser/payments/TerraceCurrencyFormatter;

    move-result-object v0

    new-instance v2, Lcom/sec/android/app/sbrowser/payments/standard/ui/LineItem;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mRawTotal:Lcom/sec/terrace/services/payments/mojom/TerracePaymentItem;

    iget-object v3, v3, Lcom/sec/terrace/services/payments/mojom/TerracePaymentItem;->label:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/payments/TerraceCurrencyFormatter;->getFormattedCurrencyCode()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mRawTotal:Lcom/sec/terrace/services/payments/mojom/TerracePaymentItem;

    iget-object v5, v5, Lcom/sec/terrace/services/payments/mojom/TerracePaymentItem;->amount:Lcom/sec/terrace/services/payments/mojom/TerracePaymentCurrencyAmount;

    iget-object v5, v5, Lcom/sec/terrace/services/payments/mojom/TerracePaymentCurrencyAmount;->value:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/sec/terrace/browser/payments/TerraceCurrencyFormatter;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v4, v0, v1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/LineItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mRawLineItems:Ljava/util/List;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getLineItems(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    new-instance v4, Lcom/sec/android/app/sbrowser/payments/standard/ui/ShoppingCart;

    invoke-direct {v4, v2, v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/ShoppingCart;-><init>(Lcom/sec/android/app/sbrowser/payments/standard/ui/LineItem;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->setUiShoppingCart(Lcom/sec/android/app/sbrowser/payments/standard/ui/ShoppingCart;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getUiShippingOptions()Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetails;->shippingOptions:[Lcom/sec/terrace/services/payments/mojom/TerracePaymentShippingOption;

    if-eqz v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    iget-object v2, p1, Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetails;->shippingOptions:[Lcom/sec/terrace/services/payments/mojom/TerracePaymentShippingOption;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getShippingOptions([Lcom/sec/terrace/services/payments/mojom/TerracePaymentShippingOption;)Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->setUiShippingOptions(Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;)V

    :cond_6
    iget-object v0, p1, Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetails;->modifiers:[Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetailsModifier;

    if-eqz v0, :cond_8

    array-length v0, v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mModifiers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_7
    :goto_1
    iget-object v0, p1, Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetails;->modifiers:[Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetailsModifier;

    array-length v2, v0

    if-ge v1, v2, :cond_8

    aget-object v0, v0, v1

    iget-object v2, v0, Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetailsModifier;->methodData:Lcom/sec/terrace/services/payments/mojom/TerracePaymentMethodData;

    iget-object v2, v2, Lcom/sec/terrace/services/payments/mojom/TerracePaymentMethodData;->supportedMethod:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mModifiers:Ljava/util/Map;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_8
    iget-object p1, p1, Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetails;->shippingOptions:[Lcom/sec/terrace/services/payments/mojom/TerracePaymentShippingOption;

    if-eqz p1, :cond_9

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mRawShippingOptions:Ljava/util/List;

    goto :goto_2

    :cond_9
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mRawShippingOptions:Ljava/util/List;

    if-nez p1, :cond_a

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mRawShippingOptions:Ljava/util/List;

    :cond_a
    :goto_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->updateAppModifiedTotals()V

    const/4 p0, 0x1

    return p0
.end method

.method private removeTabManagerEventListener()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mTabManagerEventListener:Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mContext:Landroid/app/Activity;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/sec/android/app/sbrowser/main_activity/a;

    const/16 v4, 0x8

    invoke-direct {v3, v4, v1, v0}, Lcom/sec/android/app/sbrowser/main_activity/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mTabManagerEventListener:Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;

    return-void
.end method

.method private respondCanMakePaymentQuery()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mClient:Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mIsCanMakePaymentResponsePending:Z

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mCanMakePayment:Z

    xor-int/lit8 p0, p0, 0x1

    invoke-interface {v0, p0}, Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService;->onCanMakePayment(I)V

    sget-object p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->sObserverForTest:Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl$PaymentRequestServiceObserverForTest;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl$PaymentRequestServiceObserverForTest;->onPaymentRequestServiceCanMakePaymentQueryResponded()V

    :cond_1
    return-void
.end method

.method private respondHasEnrolledInstrumentQuery(Z)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mClient:Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mIsHasEnrolledInstrumentResponsePending:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mTerrace:Lcom/sec/terrace/Terrace;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mTopLevelOrigin:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentRequestOrigin:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mMethodData:Ljava/util/Map;

    invoke-static {v0, v1, v2, v3}, Lcom/sec/terrace/browser/payments/TerraceCanMakePaymentQuery;->canQuery(Lcom/sec/terrace/Terrace;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mClient:Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService;

    xor-int/lit8 p1, p1, 0x1

    invoke-interface {p0, p1}, Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService;->onHasEnrolledInstrument(I)V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->shouldEnforceCanMakePaymentQueryQuota()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mClient:Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService;

    const/4 p1, 0x2

    invoke-interface {p0, p1}, Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService;->onHasEnrolledInstrument(I)V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mClient:Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService;

    if-eqz p1, :cond_3

    const/4 p1, 0x3

    goto :goto_0

    :cond_3
    const/4 p1, 0x4

    :goto_0
    invoke-interface {p0, p1}, Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService;->onHasEnrolledInstrument(I)V

    :goto_1
    sget-object p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->sObserverForTest:Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl$PaymentRequestServiceObserverForTest;

    if-eqz p0, :cond_4

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl$PaymentRequestServiceObserverForTest;->onPaymentRequestServiceHasEnrolledInstrumentQueryResponded()V

    :cond_4
    return-void
.end method

.method public static setIsLocalCanMakePaymentQueryQuotaEnforcedForTest()V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->sIsLocalCanMakePaymentQueryQuotaEnforcedForTest:Z

    return-void
.end method

.method public static setObserverForTest(Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl$PaymentRequestServiceObserverForTest;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    sput-object p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->sObserverForTest:Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl$PaymentRequestServiceObserverForTest;

    return-void
.end method

.method private static setShowingPaymentRequest(Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;)V
    .locals 0

    sput-object p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->sShowingPaymentRequest:Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;

    return-void
.end method

.method private shouldEnforceCanMakePaymentQueryQuota()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getUrl()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/terrace/browser/TerraceUrlUtilities;->isOriginLocalhostOrFile(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-boolean p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->sIsLocalCanMakePaymentQueryQuotaEnforcedForTest:Z

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

.method private triggerMicrotransactionUi(Landroid/app/Activity;)V
    .locals 0

    const-string p1, "Microtransaction UI suppressed."

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->disconnectFromClientWithDebugMessage(Ljava/lang/String;)V

    return-void
.end method

.method private triggerPaymentAppUiSkipIfApplicable()V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mShouldSkipShowingPaymentRequestUi:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mIsFinishedQueryingPaymentApps:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mIsCurrentPaymentRequestShowing:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mWaitForUpdatedDetails:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->isMicrotransactionUiApplicable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mContext:Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->triggerMicrotransactionUi(Landroid/app/Activity;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getPaymentMethodsSection()Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->getSelectedItem()Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->dimBackgroundIfNotBottomSheetPaymentHandler(Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mDidRecordShowEvent:Z

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, v0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->onPayClicked(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mClient:Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mInvokedPaymentApp:Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;->abortPaymentApp(Ljava/lang/String;Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp$AbortCallback;)V

    return-void

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->onInstrumentAbortResult(Z)V

    sget-object p0, Lcom/sec/android/app/sbrowser/payments/events/PaymentEventType;->ABORTED_BY_MERCHANT:Lcom/sec/android/app/sbrowser/payments/events/PaymentEventType;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/payments/events/EventEmitter;->emit(Lcom/sec/android/app/sbrowser/payments/events/EventType;)V

    return-void
.end method

.method public canMakePayment()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mClient:Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mIsFinishedQueryingPaymentApps:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->respondCanMakePaymentQuery()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mIsCanMakePaymentResponsePending:Z

    :goto_0
    return-void
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mClient:Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->closeClient()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->closeUIAndDestroyNativeObjects(Z)V

    return-void
.end method

.method public complete(I)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mClient:Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentPreferencesUtil;->isPaymentCompleteOnce()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentPreferencesUtil;->setPaymentCompleteOnce()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getPaymentMethodsSection()Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->getSelectedItem()Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentPreferencesUtil;->increasePaymentAppUseCount(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentPreferencesUtil;->setPaymentAppLastUseDate(Ljava/lang/String;J)V

    :cond_2
    const/4 v1, 0x1

    if-ne v1, p1, :cond_3

    sget-object v2, Lcom/sec/android/app/sbrowser/payments/events/PaymentEventType;->COMPLETED_WITH_SUCCESS:Lcom/sec/android/app/sbrowser/payments/events/PaymentEventType;

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/sec/android/app/sbrowser/payments/events/PaymentEventType;->COMPLETED_WITH_FAIL:Lcom/sec/android/app/sbrowser/payments/events/PaymentEventType;

    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->getCurrentPaymentOption()Lcom/sec/android/app/sbrowser/payments/events/EventDetails;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/app/sbrowser/payments/events/EventEmitter;->emit(Lcom/sec/android/app/sbrowser/payments/events/EventType;Lcom/sec/android/app/sbrowser/payments/events/EventDetails;)V

    if-eqz v0, :cond_4

    move-object v2, v0

    check-cast v2, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;->getPaymentAppType()I

    move-result v2

    if-ne v2, v1, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mContext:Landroid/app/Activity;

    if-eqz v2, :cond_4

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result v2

    if-nez v2, :cond_4

    :try_start_0
    check-cast v0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;->getCard()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v0, "cr_PaymentRequest"

    const-string v2, "Failed to get card information"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 v0, 0x0

    :goto_1
    if-eqz p1, :cond_5

    move v2, v1

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    :goto_2
    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->closeUIAndDestroyNativeObjects(Z)V

    if-ne v1, p1, :cond_7

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/GEDUtils;->isGED()Z

    move-result p1

    if-nez p1, :cond_7

    if-eqz v0, :cond_7

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mAuthenticator:Lcom/sec/android/app/sbrowser/authentication/Authenticator;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/authentication/Authenticator;->isBiometricsSupported()Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_3

    :cond_6
    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getInstance()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;

    move-result-object p1

    invoke-virtual {v0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->getGUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getCreditCard(Ljava/lang/String;)Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;

    move-result-object p1

    if-nez p1, :cond_7

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getInstance()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p1, p0, v0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->makeSaveInfobar(Lcom/sec/terrace/Terrace;Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;)V

    nop

    :cond_7
    :goto_3
    return-void
.end method

.method public containsSpayPaymentMethod(Ljava/util/Map;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/terrace/services/payments/mojom/TerracePaymentMethodData;",
            ">;)Z"
        }
    .end annotation

    const-string p0, "https://spay.samsung.com"

    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public disconnectFromClientWithDebugMessage(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "cr_PaymentRequest"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mClient:Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService;

    if-eqz v0, :cond_0

    invoke-interface {v0, p2, p1}, Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService;->onError(ILjava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->closeClient()V

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->closeUIAndDestroyNativeObjects(Z)V

    return-void
.end method

.method public dismissOnLauncherActivityIntent()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->onDismiss()V

    return-void
.end method

.method public dispatchPayerDetailChangeEventIfNeeded(Lcom/sec/terrace/services/payments/mojom/TerracePayerDetail;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mClient:Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService;

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mWasRetryCalled:Z

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService;->onPayerDetailChange(Lcom/sec/terrace/services/payments/mojom/TerracePayerDetail;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public finalize()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->closeClient()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getCertificateChain()[[B
    .locals 0
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mCertificateChain:[[B

    return-object p0
.end method

.method public getDefaultPaymentInformation(Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/payments/standard/common/Callback<",
            "Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentInformation;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->setPaymentInformationCallback(Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;)V

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mWaitForUpdatedDetails:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/android/app/sbrowser/payments/standard/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/payments/standard/d;-><init>(Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp$AbortCallback;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getMethodData()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/terrace/services/payments/mojom/TerracePaymentMethodData;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mMethodData:Ljava/util/Map;

    return-object p0
.end method

.method public getParams()Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryParams;
    .locals 0

    return-object p0
.end method

.method public getPaymentOptions()Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentOptions:Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;

    return-object p0
.end method

.method public getPaymentRequestLifecycleObserver()Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestLifecycleObserver;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentRequestLifecycleObserver:Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestLifecycleObserver;

    return-object p0
.end method

.method public getPaymentRequestOrigin()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentRequestOrigin:Ljava/lang/String;

    return-object p0
.end method

.method public getPaymentRequestSecurityOrigin()Lcom/sec/terrace/services/payments/mojom/TerraceOrigin;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentRequestSecurityOrigin:Lcom/sec/terrace/services/payments/mojom/TerraceOrigin;

    return-object p0
.end method

.method public getRawTotal()Lcom/sec/terrace/services/payments/mojom/TerracePaymentItem;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mRawTotal:Lcom/sec/terrace/services/payments/mojom/TerracePaymentItem;

    return-object p0
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

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getSectionInformation(ILcom/sec/android/app/sbrowser/payments/standard/common/Callback;)V

    return-void
.end method

.method public getShoppingCart(Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/payments/standard/common/Callback<",
            "Lcom/sec/android/app/sbrowser/payments/standard/ui/ShoppingCart;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getUiShoppingCart()Lcom/sec/android/app/sbrowser/payments/standard/ui/ShoppingCart;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;->bind(Ljava/lang/Object;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getTerrace()Lcom/sec/terrace/Terrace;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mTerrace:Lcom/sec/terrace/Terrace;

    return-object p0
.end method

.method public getTopLevelOrigin()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mTopLevelOrigin:Ljava/lang/String;

    return-object p0
.end method

.method public getTwaPackageName(Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/payments/standard/common/Callback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mClient:Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, LHa/a;

    const/16 v2, 0x13

    invoke-direct {v1, v2, p0, p1}, LHa/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService;->getTwaPackageName(Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService$GetTwaPackageName_Response;)V

    return-void
.end method

.method public getUnmodifiableModifiers()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetailsModifier;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mModifiers:Ljava/util/Map;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public hasEnrolledInstrument()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mClient:Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mIsFinishedQueryingPaymentApps:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mHasEnrolledInstrument:Z

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->respondHasEnrolledInstrumentQuery(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mIsHasEnrolledInstrumentResponsePending:Z

    :goto_0
    return-void
.end method

.method public initAndValidate(Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService;Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestServiceData;[Lcom/sec/terrace/services/payments/mojom/TerracePaymentMethodData;Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetails;)V
    .locals 5

    const-string v0, "basic-card"

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mClient:Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const-string p1, "Attempted initialization twice."

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->disconnectFromClientWithDebugMessage(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->initPaymentRequestServiceData(Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService;Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestServiceData;)Z

    move-result p2

    const-string v2, "Invalid state."

    if-nez p2, :cond_1

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->disconnectFromClientWithDebugMessage(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    return-void

    :cond_1
    if-nez p1, :cond_2

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->disconnectFromClientWithDebugMessage(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    return-void

    :cond_2
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mMethodData:Ljava/util/Map;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p1}, Lcom/sec/terrace/Terrace;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/terrace/browser/TerraceUrlUtilities;->isOriginSecure(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "Not in a secure origin."

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->disconnectFromClientWithDebugMessage(Ljava/lang/String;)V

    return-void

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p1}, Lcom/sec/terrace/Terrace;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/terrace/browser/TerraceUrlUtilities;->isSchemeCryptographic(Ljava/lang/String;)Z

    move-result p1

    const/4 p2, 0x0

    const-string v2, "No UI will be shown. CanMakePayment and hasEnrolledInstrument will always return false. Show will be rejected with NotSupportedError."

    const-string v4, "cr_PaymentRequest"

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p1}, Lcom/sec/terrace/Terrace;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/terrace/browser/TerraceUrlUtilities;->isOriginLocalhostOrFile(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mIsProhibitedOriginOrInvalidSsl:Z

    const-string p1, "Only localhost, file://, and cryptographic scheme origins allowed."

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mRejectShowErrorMessage:Ljava/lang/String;

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mQueryForQuota:Ljava/util/Map;

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->onDoneCreatingPaymentApps(Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryInterface;)V

    return-void

    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p1}, Lcom/sec/terrace/Terrace;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/terrace/browser/TerraceUrlUtilities;->isSchemeCryptographic(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p1}, Lcom/sec/terrace/Terrace;->isSslCertificateValid()Z

    move-result p1

    if-nez p1, :cond_5

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mIsProhibitedOriginOrInvalidSsl:Z

    const-string p1, "SSL certificate is not valid"

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mRejectShowErrorMessage:Ljava/lang/String;

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mQueryForQuota:Ljava/util/Map;

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->onDoneCreatingPaymentApps(Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryInterface;)V

    return-void

    :cond_5
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getCardEditor()Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->getValidatedMethodData([Lcom/sec/terrace/services/payments/mojom/TerracePaymentMethodData;Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mMethodData:Ljava/util/Map;

    if-nez p1, :cond_6

    const-string p1, "Invalid payment methods or data."

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->disconnectFromClientWithDebugMessage(Ljava/lang/String;)V

    return-void

    :cond_6
    new-instance p1, Ljava/util/HashMap;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mMethodData:Ljava/util/Map;

    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mQueryForQuota:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    invoke-direct {p0, p4}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->parseAndValidateDetailsOrDisconnectFromClient(Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetails;)Z

    move-result p1

    if-nez p1, :cond_7

    return-void

    :cond_7
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mRawTotal:Lcom/sec/terrace/services/payments/mojom/TerracePaymentItem;

    if-nez p1, :cond_8

    const-string p1, "Total required."

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->disconnectFromClientWithDebugMessage(Ljava/lang/String;)V

    return-void

    :cond_8
    iget-object p1, p4, Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetails;->id:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->getPaymentRequestLifecycleObserver()Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestLifecycleObserver;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestLifecycleObserver;->onPaymentRequestParamsInitiated(Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestParams;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppService;->getInstance()Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppService;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppService;->create(Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryDelegate;)V

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mURLPaymentMethodIdentifiersSupported:Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mMethodData:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_0
    :pswitch_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p3, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p4

    sparse-switch p4, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string p4, "https://google.com/pay"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_a

    goto :goto_1

    :cond_a
    const/4 p3, 0x2

    goto :goto_1

    :sswitch_1
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_b

    goto :goto_1

    :cond_b
    move p3, v1

    goto :goto_1

    :sswitch_2
    const-string p4, "https://android.com/pay"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_c

    goto :goto_1

    :cond_c
    move p3, v3

    :goto_1
    packed-switch p3, :pswitch_data_0

    const-string p3, "https://"

    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_d

    const-string p3, "http://"

    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_9

    :cond_d
    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mURLPaymentMethodIdentifiersSupported:Z

    goto :goto_0

    :pswitch_1
    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mURLPaymentMethodIdentifiersSupported:Z

    goto :goto_0

    :cond_e
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x74d73414 -> :sswitch_2
        -0x45c6cab1 -> :sswitch_1
        -0x3d55df0c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCanMakePaymentCalculated(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mClient:Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mCanMakePayment:Z

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mIsCanMakePaymentResponsePending:Z

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->respondCanMakePaymentQuery()V

    return-void
.end method

.method public onCardAndAddressSettingsClicked()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mContext:Landroid/app/Activity;

    if-nez v0, :cond_0

    const-string v0, "Unable to find Chrome activity."

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->disconnectFromClientWithDebugMessage(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mContext:Landroid/app/Activity;

    const-class v2, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-class v1, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sbrowser.settings.show_fragment"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mContext:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->onDismiss()V

    return-void
.end method

.method public onDismiss()V
    .locals 1

    const-string v0, "User closed the Payment Request UI."

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->disconnectFromClientWithDebugMessage(Ljava/lang/String;)V

    return-void
.end method

.method public onDoneCreatingPaymentApps(Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryInterface;)V
    .locals 4

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mIsFinishedQueryingPaymentApps:Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mClient:Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService;

    if-eqz p1, :cond_d

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->disconnectIfNoPaymentMethodsSupported()Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mHideServerAutofillCards:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPendingApps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPendingApps:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;->isServerAutofillInstrument()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPendingApps:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPendingApps:Ljava/util/List;

    :cond_3
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    move v1, v0

    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPendingApps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPendingApps:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPendingApps:Ljava/util/List;

    invoke-virtual {p1, v1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->rankPaymentAppsForPaymentRequestUI(Ljava/util/List;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPendingApps:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPendingApps:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;->canPreselect()Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_2

    :cond_6
    const/4 v0, -0x1

    :goto_2
    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mIsCanMakePaymentResponsePending:Z

    if-eqz p1, :cond_7

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->respondCanMakePaymentQuery()V

    :cond_7
    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mIsHasEnrolledInstrumentResponsePending:Z

    if-eqz p1, :cond_8

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mHasEnrolledInstrument:Z

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->respondHasEnrolledInstrumentQuery(Z)V

    :cond_8
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mContext:Landroid/app/Activity;

    if-nez p1, :cond_a

    const-string p1, "Unable to find Chrome activity."

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->disconnectFromClientWithDebugMessage(Ljava/lang/String;)V

    sget-object p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->sObserverForTest:Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl$PaymentRequestServiceObserverForTest;

    if-eqz p0, :cond_9

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl$PaymentRequestServiceObserverForTest;->onPaymentRequestServiceShowFailed()V

    :cond_9
    return-void

    :cond_a
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    new-instance v1, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPendingApps:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v3, 0x4

    invoke-direct {v1, v3, v0, v2}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;-><init>(IILjava/util/Collection;)V

    invoke-virtual {p1, v1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->setPaymentMethodsSection(Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPendingApps:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->updateAppModifiedTotals()V

    sget-object p1, Lcom/sec/android/app/sbrowser/payments/events/PaymentEventType;->SPAY_SUB_INFORMATIONS_READY:Lcom/sec/android/app/sbrowser/payments/events/PaymentEventType;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->getSubInformationsForSPay()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/payments/events/EventEmitter;->emit(Lcom/sec/android/app/sbrowser/payments/events/EventType;Ljava/util/List;)V

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mIsCurrentPaymentRequestShowing:Z

    if-eqz p1, :cond_c

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->calculateWhetherShouldSkipShowingPaymentRequestUi()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->buildUI()Z

    move-result p1

    if-nez p1, :cond_b

    return-void

    :cond_b
    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mShouldSkipShowingPaymentRequestUi:Z

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getPaymentRequestUI()Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->show()V

    :cond_c
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->triggerPaymentAppUiSkipIfApplicable()V

    :cond_d
    :goto_3
    return-void
.end method

.method public onInstrumentAbortResult(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mClient:Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService;

    invoke-interface {v0, p1}, Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService;->onAbort(Z)V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->closeClient()V

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->closeUIAndDestroyNativeObjects(Z)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->sObserverForTest:Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl$PaymentRequestServiceObserverForTest;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl$PaymentRequestServiceObserverForTest;->onPaymentRequestServiceUnableToAbort()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onInstrumentDetailsError(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mClient:Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mInvokedPaymentApp:Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mShouldSkipShowingPaymentRequestUi:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->disconnectFromClientWithDebugMessage(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getPaymentRequestUI()Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->onPayButtonProcessingCancelled()V

    :goto_0
    sget-object p1, Lcom/sec/android/app/sbrowser/payments/events/PaymentEventType;->INSTRUMENT_DETAILS_ERROR:Lcom/sec/android/app/sbrowser/payments/events/PaymentEventType;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->getCurrentPaymentOption()Lcom/sec/android/app/sbrowser/payments/events/EventDetails;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/payments/events/EventEmitter;->emit(Lcom/sec/android/app/sbrowser/payments/events/EventType;Lcom/sec/android/app/sbrowser/payments/events/EventDetails;)V

    return-void
.end method

.method public onInstrumentDetailsLoadingWithoutUI()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mClient:Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getPaymentRequestUI()Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentResponseHelper:Lcom/sec/android/app/sbrowser/payments/standard/PaymentResponseHelper;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getPaymentRequestUI()Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->showProcessingMessage()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onInstrumentDetailsReady(Ljava/lang/String;Ljava/lang/String;Lcom/sec/terrace/browser/payments/TerracePayerData;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mClient:Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentResponseHelper:Lcom/sec/android/app/sbrowser/payments/standard/PaymentResponseHelper;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getPaymentMethodsSection()Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->getSelectedItem()Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;->getPaymentAppType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getInstance()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->recordAndLogCreditCardUse(Ljava/lang/String;)V

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mShouldSkipShowingPaymentRequestUi:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getPaymentRequestUI()Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getPaymentRequestUI()Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->showProcessingMessageAfterUiSkip()V

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentResponseHelper:Lcom/sec/android/app/sbrowser/payments/standard/PaymentResponseHelper;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentResponseHelper;->onPaymentDetailsReceived(Ljava/lang/String;Ljava/lang/String;Lcom/sec/terrace/browser/payments/TerracePayerData;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onPayClicked(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;)Z
    .locals 16

    move-object/from16 v13, p0

    move-object/from16 v0, p3

    check-cast v0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;

    iput-object v0, v13, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mInvokedPaymentApp:Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;

    iget-object v0, v13, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getContactSection()Lcom/sec/android/app/sbrowser/payments/standard/ui/ContactDetailsSection;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v13, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getContactSection()Lcom/sec/android/app/sbrowser/payments/standard/ui/ContactDetailsSection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->getSelectedItem()Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;

    move-result-object v0

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    new-instance v8, Lcom/sec/android/app/sbrowser/payments/standard/PaymentResponseHelper;

    iget-object v4, v13, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mInvokedPaymentApp:Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;

    iget-object v5, v13, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentOptions:Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;

    const/4 v6, 0x0

    move-object v0, v8

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentResponseHelper;-><init>(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;ZLcom/sec/android/app/sbrowser/payments/standard/PaymentResponseHelper$PaymentResponseRequesterDelegate;)V

    iput-object v8, v13, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentResponseHelper:Lcom/sec/android/app/sbrowser/payments/standard/PaymentResponseHelper;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, v13, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mInvokedPaymentApp:Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;->getInstrumentMethodNames()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, v13, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mMethodData:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v13, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mMethodData:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/terrace/services/payments/mojom/TerracePaymentMethodData;

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v4, v13, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mModifiers:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v13, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mModifiers:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetailsModifier;

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string v4, "https://android.com/pay"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "https://google.com/pay"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_2

    :cond_4
    new-instance v10, Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;

    invoke-direct {v10}, Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;-><init>()V

    iget-boolean v2, v13, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mRequestShipping:Z

    const/4 v3, 0x0

    const/4 v14, 0x1

    if-eqz v2, :cond_5

    iget-object v2, v13, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mInvokedPaymentApp:Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;->handlesShippingAddress()Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v14

    goto :goto_3

    :cond_5
    move v2, v3

    :goto_3
    iput-boolean v2, v10, Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;->requestShipping:Z

    iget-boolean v2, v13, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mRequestPayerName:Z

    if-eqz v2, :cond_6

    iget-object v2, v13, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mInvokedPaymentApp:Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;->handlesPayerName()Z

    move-result v2

    if-eqz v2, :cond_6

    move v2, v14

    goto :goto_4

    :cond_6
    move v2, v3

    :goto_4
    iput-boolean v2, v10, Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;->requestPayerName:Z

    iget-boolean v2, v13, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mRequestPayerPhone:Z

    if-eqz v2, :cond_7

    iget-object v2, v13, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mInvokedPaymentApp:Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;->handlesPayerPhone()Z

    move-result v2

    if-eqz v2, :cond_7

    move v2, v14

    goto :goto_5

    :cond_7
    move v2, v3

    :goto_5
    iput-boolean v2, v10, Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;->requestPayerPhone:Z

    iget-boolean v2, v13, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mRequestPayerEmail:Z

    if-eqz v2, :cond_8

    iget-object v2, v13, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mInvokedPaymentApp:Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;->handlesPayerEmail()Z

    move-result v2

    if-eqz v2, :cond_8

    move v2, v14

    goto :goto_6

    :cond_8
    move v2, v3

    :goto_6
    iput-boolean v2, v10, Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;->requestPayerEmail:Z

    iget-boolean v2, v13, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mRequestShipping:Z

    if-eqz v2, :cond_9

    iget-object v2, v13, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mInvokedPaymentApp:Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;->handlesShippingAddress()Z

    move-result v2

    if-eqz v2, :cond_9

    iget v3, v13, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mShippingType:I

    :cond_9
    iput v3, v10, Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;->shippingType:I

    iget-object v2, v13, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mInvokedPaymentApp:Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;->handlesShippingAddress()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, v13, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mRawShippingOptions:Ljava/util/List;

    :goto_7
    move-object v11, v2

    goto :goto_8

    :cond_a
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    goto :goto_7

    :goto_8
    iget-object v2, v13, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mInvokedPaymentApp:Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;

    iget-object v3, v13, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mId:Ljava/lang/String;

    iget-object v4, v13, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mMerchantName:Ljava/lang/String;

    iget-object v5, v13, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mTopLevelOrigin:Ljava/lang/String;

    iget-object v6, v13, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentRequestOrigin:Ljava/lang/String;

    iget-object v7, v13, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mCertificateChain:[[B

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v8

    iget-object v9, v13, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mRawTotal:Lcom/sec/terrace/services/payments/mojom/TerracePaymentItem;

    iget-object v12, v13, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mRawLineItems:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v15

    move-object v0, v2

    move-object v1, v3

    move-object v2, v4

    move-object v3, v5

    move-object v4, v6

    move-object v5, v7

    move-object v6, v8

    move-object v7, v9

    move-object v8, v12

    move-object v9, v15

    move-object/from16 v12, p0

    invoke-virtual/range {v0 .. v12}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;->invokePaymentApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[[BLjava/util/Map;Lcom/sec/terrace/services/payments/mojom/TerracePaymentItem;Ljava/util/List;Ljava/util/Map;Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;Ljava/util/List;Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp$InstrumentDetailsCallback;)V

    sget-object v0, Lcom/sec/android/app/sbrowser/payments/events/PaymentEventType;->PAY_CLICKED:Lcom/sec/android/app/sbrowser/payments/events/PaymentEventType;

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->getCurrentPaymentOption()Lcom/sec/android/app/sbrowser/payments/events/EventDetails;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/payments/events/EventEmitter;->emit(Lcom/sec/android/app/sbrowser/payments/events/EventType;Lcom/sec/android/app/sbrowser/payments/events/EventDetails;)V

    iget-object v0, v13, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mInvokedPaymentApp:Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;->isAutofillInstrument()Z

    move-result v0

    xor-int/2addr v0, v14

    return v0
.end method

.method public onPaymentAppCreated(Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mClient:Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mHideServerAutofillCards:Z

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;->isServerAutofillInstrumentReplacement()Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mHideServerAutofillCards:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->haveRequestedAutofillData()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;->setHaveRequestedAutofillData(Z)V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mHasEnrolledInstrument:Z

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;->canMakePayment()Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mHasEnrolledInstrument:Z

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mHasNonAutofillApp:Z

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;->isAutofillInstrument()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mHasNonAutofillApp:Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPendingApps:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onPaymentAppCreationError(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mRejectShowErrorMessage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mRejectShowErrorMessage:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onPaymentDetailsNotUpdated()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mClient:Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getPaymentRequestUI()Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "Attempted updateWith without show."

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->disconnectFromClientWithDebugMessage(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mInvokedPaymentApp:Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;->isWaitingForPaymentDetailsUpdate()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mInvokedPaymentApp:Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;->onPaymentDetailsNotUpdated()V

    return-void

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->enableAndUpdatePaymentRequestUIWithPaymentInfo()Z

    return-void
.end method

.method public onPaymentResponseReady(Lcom/sec/terrace/services/payments/mojom/TerracePaymentResponse;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mClient:Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService;

    invoke-interface {v0, p1}, Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService;->onPaymentResponse(Lcom/sec/terrace/services/payments/mojom/TerracePaymentResponse;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentResponseHelper:Lcom/sec/android/app/sbrowser/payments/standard/PaymentResponseHelper;

    sget-object p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->sObserverForTest:Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl$PaymentRequestServiceObserverForTest;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl$PaymentRequestServiceObserverForTest;->onPaymentResponseReady()V

    :cond_0
    return-void
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

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->onSectionAddOption(ILcom/sec/android/app/sbrowser/payments/standard/common/Callback;)I

    move-result p0

    return p0
.end method

.method public onSectionEditOption(ILcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;",
            "Lcom/sec/android/app/sbrowser/payments/standard/common/Callback<",
            "Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentInformation;",
            ">;)I"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->onSectionEditOption(ILcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;)I

    move-result p0

    return p0
.end method

.method public onSectionOptionSelected(ILcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;)I
    .locals 6
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

    if-ne p1, v0, :cond_1

    move-object p1, p2

    check-cast p1, Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->isComplete()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getShippingAddressesSection()Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->setSelectedItem(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->startShippingAddressChangeNormalization(Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {p2, p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->editAddress(Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;)V

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {p0, p3}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->setPaymentInformationCallback(Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;)V

    return v0

    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getUiShippingOptions()Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->setSelectedItem(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mClient:Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->getIdentifier()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService;->onShippingOptionChange(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {p0, p3}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->setPaymentInformationCallback(Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;)V

    return v0

    :cond_2
    const/4 v2, 0x3

    if-ne p1, v2, :cond_6

    move-object p1, p2

    check-cast p1, Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;->isComplete()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getContactSection()Lcom/sec/android/app/sbrowser/payments/standard/ui/ContactDetailsSection;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->setSelectedItem(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;)V

    iget-boolean p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mWasRetryCalled:Z

    if-nez p2, :cond_3

    return v2

    :cond_3
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;->toPayerDetail()Lcom/sec/terrace/services/payments/mojom/TerracePayerDetail;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->dispatchPayerDetailChangeEventIfNeeded(Lcom/sec/terrace/services/payments/mojom/TerracePayerDetail;)V

    goto :goto_1

    :cond_4
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {p2, p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->editContactOnPaymentRequestUI(Lcom/sec/android/app/sbrowser/payments/standard/AutofillContact;)V

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mWasRetryCalled:Z

    if-nez p1, :cond_5

    return v1

    :cond_5
    :goto_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {p0, p3}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->setPaymentInformationCallback(Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;)V

    return v0

    :cond_6
    const/4 p3, 0x4

    if-ne p1, p3, :cond_a

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->shouldShowShippingSection()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getShippingAddressesSection()Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    move-result-object p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mContext:Landroid/app/Activity;

    invoke-virtual {p1, p3}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->createShippingSectionForPaymentRequestUI(Landroid/content/Context;)V

    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->shouldShowContactSection()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getContactSection()Lcom/sec/android/app/sbrowser/payments/standard/ui/ContactDetailsSection;

    move-result-object p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    new-instance p3, Lcom/sec/android/app/sbrowser/payments/standard/ui/ContactDetailsSection;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mContext:Landroid/app/Activity;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getAutofillProfiles()Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getContactEditor()Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor;

    move-result-object v5

    invoke-direct {p3, v3, v4, v5}, Lcom/sec/android/app/sbrowser/payments/standard/ui/ContactDetailsSection;-><init>(Landroid/content/Context;Ljava/util/Collection;Lcom/sec/android/app/sbrowser/payments/standard/ContactEditor;)V

    invoke-virtual {p1, p3}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->setContactSection(Lcom/sec/android/app/sbrowser/payments/standard/ui/ContactDetailsSection;)V

    :cond_8
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->onSelectedPaymentMethodUpdated()V

    move-object p1, p2

    check-cast p1, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;->getPaymentAppType()I

    move-result p3

    if-ne p3, v0, :cond_9

    move-object p3, p1

    check-cast p3, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;->isComplete()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {p0, p3}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->editCard(Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentInstrument;)V

    return v1

    :cond_9
    iget-object p3, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {p3, p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->updateOrderSummary(Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getPaymentMethodsSection()Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->setSelectedItem(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;)V

    :cond_a
    return v2
.end method

.method public registerPaymentRequestLifecycleObserver(Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestLifecycleObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentRequestLifecycleObserver:Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestLifecycleObserver;

    return-void
.end method

.method public retry(Lcom/sec/terrace/services/payments/mojom/TerracePaymentValidationErrors;)V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mClient:Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/sec/terrace/browser/payments/TerracePaymentValidator;->validatePaymentValidationErrors(Lcom/sec/terrace/services/payments/mojom/TerracePaymentValidationErrors;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "Invalid payment validation errors."

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->disconnectFromClientWithDebugMessage(Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mWasRetryCalled:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getPaymentMethodsSection()Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->getSelectedItem()Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    new-instance v2, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    new-instance v3, Ljava/util/ArrayList;

    filled-new-array {v0}, [Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v0, 0x0

    const/4 v4, 0x4

    invoke-direct {v2, v4, v0, v3}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;-><init>(IILjava/util/Collection;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->setPaymentMethodsSection(Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getPaymentRequestUI()Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getPaymentMethodsSection()Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->updateSection(ILcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getPaymentRequestUI()Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->disableAddingNewCardsDuringRetry()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getPaymentRequestUI()Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->onPayButtonProcessingCancelled()V

    iget-object v0, p1, Lcom/sec/terrace/services/payments/mojom/TerracePaymentValidationErrors;->error:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getPaymentRequestUI()Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/terrace/services/payments/mojom/TerracePaymentValidationErrors;->error:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->setRetryErrorMessage(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getPaymentRequestUI()Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mContext:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1408df

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->setRetryErrorMessage(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->shouldShowShippingSection()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/sec/terrace/services/payments/mojom/TerracePaymentValidationErrors;->shippingAddress:Lcom/sec/terrace/services/payments/mojom/TerraceAddressErrors;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->hasShippingAddressError(Lcom/sec/terrace/services/payments/mojom/TerraceAddressErrors;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getRetryQueue()Ljava/util/Queue;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/payments/standard/e;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/sec/android/app/sbrowser/payments/standard/e;-><init>(Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;Lcom/sec/terrace/services/payments/mojom/TerracePaymentValidationErrors;I)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->shouldShowContactSection()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/sec/terrace/services/payments/mojom/TerracePaymentValidationErrors;->payer:Lcom/sec/terrace/services/payments/mojom/TerracePayerErrors;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->hasPayerError(Lcom/sec/terrace/services/payments/mojom/TerracePayerErrors;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getRetryQueue()Ljava/util/Queue;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/payments/standard/e;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/sec/android/app/sbrowser/payments/standard/e;-><init>(Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;Lcom/sec/terrace/services/payments/mojom/TerracePaymentValidationErrors;I)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getRetryQueue()Ljava/util/Queue;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getRetryQueue()Ljava/util/Queue;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5
    return-void
.end method

.method public setSkipUIForNonURLPaymentMethodIdentifiersForTest()V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mSkipUiForNonUrlPaymentMethodIdentifiers:Z

    return-void
.end method

.method public shouldShowContactSection()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->shouldShowContactSection()Z

    move-result p0

    return p0
.end method

.method public shouldShowShippingSection()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->shouldShowShippingSection()Z

    move-result p0

    return p0
.end method

.method public show(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mClient:Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getPaymentRequestUI()Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string p1, "Attempted show twice."

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->disconnectFromClientWithDebugMessage(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->getIsAnyPaymentRequestShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "Another PaymentRequest UI is already showing in a different tab or window."

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->disconnectFromClientWithDebugMessage(Ljava/lang/String;I)V

    sget-object p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->sObserverForTest:Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl$PaymentRequestServiceObserverForTest;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl$PaymentRequestServiceObserverForTest;->onPaymentRequestServiceShowFailed()V

    :cond_2
    return-void

    :cond_3
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->setShowingPaymentRequest(Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mIsCurrentPaymentRequestShowing:Z

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mWaitForUpdatedDetails:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->disconnectIfNoPaymentMethodsSupported()Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mContext:Landroid/app/Activity;

    if-nez p1, :cond_6

    const-string p1, "Unable to find Chrome activity."

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->disconnectFromClientWithDebugMessage(Ljava/lang/String;)V

    sget-object p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->sObserverForTest:Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl$PaymentRequestServiceObserverForTest;

    if-eqz p0, :cond_5

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl$PaymentRequestServiceObserverForTest;->onPaymentRequestServiceShowFailed()V

    :cond_5
    return-void

    :cond_6
    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mIsFinishedQueryingPaymentApps:Z

    if-eqz p1, :cond_8

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->calculateWhetherShouldSkipShowingPaymentRequestUi()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->buildUI()Z

    move-result p1

    if-nez p1, :cond_7

    return-void

    :cond_7
    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mShouldSkipShowingPaymentRequestUi:Z

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getPaymentRequestUI()Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;->show()V

    :cond_8
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->triggerPaymentAppUiSkipIfApplicable()V

    return-void
.end method

.method public startShippingAddressChangeNormalization(Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;)V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mContext:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;->getProfile()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;-><init>(Landroid/content/Context;Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;->toPaymentAddress()Lcom/sec/terrace/services/payments/mojom/TerracePaymentAddress;

    move-result-object p1

    const-string v0, ""

    iput-object v0, p1, Lcom/sec/terrace/services/payments/mojom/TerracePaymentAddress;->organization:Ljava/lang/String;

    iput-object v0, p1, Lcom/sec/terrace/services/payments/mojom/TerracePaymentAddress;->phone:Ljava/lang/String;

    iput-object v0, p1, Lcom/sec/terrace/services/payments/mojom/TerracePaymentAddress;->recipient:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p1, Lcom/sec/terrace/services/payments/mojom/TerracePaymentAddress;->addressLine:[Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mClient:Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService;

    invoke-interface {p0, p1}, Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService;->onShippingAddressChange(Lcom/sec/terrace/services/payments/mojom/TerracePaymentAddress;)V

    return-void
.end method

.method public updateWith(Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetails;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mClient:Lcom/sec/terrace/services/payments/mojom/TerracePaymentRequestService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mWaitForUpdatedDetails:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->initializeWithUpdatedDetails(Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetails;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getPaymentRequestUI()Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI;

    move-result-object v0

    if-nez v0, :cond_2

    const-string p1, "Attempted updateWith without show."

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->disconnectFromClientWithDebugMessage(Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentOptions:Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentOptionsUtils;->requestAnyInformation(Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mInvokedPaymentApp:Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;->isWaitingForPaymentDetailsUpdate()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    const-string p1, "Invalid state."

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->disconnectFromClientWithDebugMessage(Ljava/lang/String;)V

    return-void

    :cond_4
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->parseAndValidateDetailsOrDisconnectFromClient(Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetails;)Z

    move-result v0

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mInvokedPaymentApp:Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;->isWaitingForPaymentDetailsUpdate()Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->shouldShowShippingSection()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getUiShippingOptions()Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p1, Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetails;->error:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getShippingAddressesSection()Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->getSelectedItem()Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getShippingAddressesSection()Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->getSelectedItem()Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->setInvalid()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getShippingAddressesSection()Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    move-result-object v0

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->setSelectedItemIndex(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->getShippingAddressesSection()Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;

    move-result-object v0

    iget-object p1, p1, Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetails;->error:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/SectionInformation;->setErrorMessage(Ljava/lang/String;)V

    :cond_8
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mPaymentUIsManager:Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->enableAndUpdatePaymentRequestUIWithPaymentInfo()Z

    return-void
.end method

.method public wasRetryCalled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->mWasRetryCalled:Z

    return p0
.end method
