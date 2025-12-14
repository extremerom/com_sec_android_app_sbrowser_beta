.class public Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier$ManifestVerifyCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder$PaymentMethod;
    }
.end annotation


# instance fields
.field private final mAppStores:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/terrace/browser/payments/TerraceGURL;",
            ">;"
        }
    .end annotation
.end field

.field private mBypassIsReadyToPayServiceInTest:Z

.field private final mDelegate:Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryDelegate;

.field private final mDownloader:Lcom/sec/terrace/browser/payments/TerracePaymentManifestDownloader;

.field private final mFactory:Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryInterface;

.field private final mIsReadyToPayServices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mMethodToSupportedAppsMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sec/terrace/browser/payments/TerraceGURL;",
            "Ljava/util/Set<",
            "Landroid/content/pm/ResolveInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mOriginToUrlDefaultMethodsMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sec/terrace/browser/payments/TerraceGURL;",
            "Ljava/util/Set<",
            "Lcom/sec/terrace/browser/payments/TerraceGURL;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mPackageManagerDelegate:Lcom/sec/android/app/sbrowser/payments/standard/PackageManagerDelegate;

.field private final mParser:Lcom/sec/terrace/browser/payments/TerracePaymentManifestParser;

.field private mPendingIsReadyToPayQueries:I

.field private mPendingResourceUsersCount:I

.field private mPendingVerifiersCount:I

.field private final mUrlPaymentMethods:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sec/terrace/browser/payments/TerraceGURL;",
            ">;"
        }
    .end annotation
.end field

.field private final mValidApps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentApp;",
            ">;"
        }
    .end annotation
.end field

.field private final mVerifiedPaymentMethods:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sec/terrace/browser/payments/TerraceGURL;",
            "Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder$PaymentMethod;",
            ">;"
        }
    .end annotation
.end field

.field private final mWebDataService:Lcom/sec/terrace/browser/payments/TerracePaymentManifestWebDataService;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/payments/TerracePaymentManifestWebDataService;Lcom/sec/terrace/browser/payments/TerracePaymentManifestDownloader;Lcom/sec/terrace/browser/payments/TerracePaymentManifestParser;Lcom/sec/android/app/sbrowser/payments/standard/PackageManagerDelegate;Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryDelegate;Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryInterface;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->mUrlPaymentMethods:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->mAppStores:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->mValidApps:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->mOriginToUrlDefaultMethodsMapping:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->mMethodToSupportedAppsMapping:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->mVerifiedPaymentMethods:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->mIsReadyToPayServices:Ljava/util/Map;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->mBypassIsReadyToPayServiceInTest:Z

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->mDelegate:Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryDelegate;

    new-instance p5, Lcom/sec/terrace/browser/payments/TerraceGURL;

    const-string v1, "https://play.google.com/billing"

    invoke-direct {p5, v1}, Lcom/sec/terrace/browser/payments/TerraceGURL;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.vending"

    invoke-interface {v0, v1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p5

    invoke-interface {p5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_0
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/terrace/browser/payments/TerraceGURL;

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->mDownloader:Lcom/sec/terrace/browser/payments/TerracePaymentManifestDownloader;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->mWebDataService:Lcom/sec/terrace/browser/payments/TerracePaymentManifestWebDataService;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->mParser:Lcom/sec/terrace/browser/payments/TerracePaymentManifestParser;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->mPackageManagerDelegate:Lcom/sec/android/app/sbrowser/payments/standard/PackageManagerDelegate;

    iput-object p6, p0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->mFactory:Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryInterface;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentApp;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->onIsReadyToPayResponse(Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentApp;Z)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->mAppStores:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;)Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryDelegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->mDelegate:Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryDelegate;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;)Lcom/sec/android/app/sbrowser/payments/standard/PackageManagerDelegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->mPackageManagerDelegate:Lcom/sec/android/app/sbrowser/payments/standard/PackageManagerDelegate;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->mValidApps:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;Ljava/util/List;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->findAppWithPackageName(Ljava/util/List;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    return-object p0
.end method

.method private static filterMethodDataForApp(Ljava/util/Map;Ljava/util/Set;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/terrace/services/payments/mojom/TerracePaymentMethodData;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/terrace/services/payments/mojom/TerracePaymentMethodData;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/terrace/services/payments/mojom/TerracePaymentMethodData;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static filterModifiersForApp(Ljava/util/Map;Ljava/util/Set;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetailsModifier;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetailsModifier;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetailsModifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private findAppStoreBillingApp(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->mDelegate:Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryDelegate;->getParams()Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryParams;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder$1;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder$1;-><init>(Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;Ljava/util/List;)V

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryParams;->getTwaPackageName(Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;)V

    return-void
.end method

.method private findAppWithPackageName(Ljava/util/List;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    const/4 p0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p0, v0, :cond_1

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;Landroid/content/pm/ResolveInfo;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->onValidPaymentAppForPaymentMethodName(Landroid/content/pm/ResolveInfo;Ljava/lang/String;)V

    return-void
.end method

.method private getOrCreateVerifiedPaymentMethod(Lcom/sec/terrace/browser/payments/TerraceGURL;)Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder$PaymentMethod;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->mVerifiedPaymentMethods:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder$PaymentMethod;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder$PaymentMethod;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder$PaymentMethod;-><init>(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->mVerifiedPaymentMethods:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private getSupportedPaymentMethods(Landroid/content/pm/ActivityInfo;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ActivityInfo;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const-string v2, "org.chromium.payment_method_names"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->mPackageManagerDelegate:Lcom/sec/android/app/sbrowser/payments/standard/PackageManagerDelegate;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, p1, v1}, Lcom/sec/android/app/sbrowser/payments/standard/PackageManagerDelegate;->getStringArrayResourceForApplication(Landroid/content/pm/ApplicationInfo;I)[Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    return-object v0

    :cond_2
    array-length p1, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_4

    aget-object v2, p0, v1

    new-instance v3, Lcom/sec/terrace/browser/payments/TerraceGURL;

    invoke-direct {v3, v2}, Lcom/sec/terrace/browser/payments/TerraceGURL;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/payments/standard/UrlUtils;->isURLValid(Lcom/sec/terrace/browser/payments/TerraceGURL;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->urlToStringWithoutTrailingSlash(Lcom/sec/terrace/browser/payments/TerraceGURL;)Ljava/lang/String;

    move-result-object v2

    :cond_3
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;Landroid/content/pm/ResolveInfo;Lcom/sec/terrace/browser/payments/TerraceGURL;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->paymentAppSupportsUriMethod(Landroid/content/pm/ResolveInfo;Lcom/sec/terrace/browser/payments/TerraceGURL;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic i(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->removeTrailingSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private onAllAppsFoundAndValidated()V
    .locals 9

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->mDelegate:Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryDelegate;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->mValidApps:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryDelegate;->onCanMakePaymentCalculated(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->mValidApps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->mDelegate:Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryDelegate;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->mFactory:Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryInterface;

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryDelegate;->onDoneCreatingPaymentApps(Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryInterface;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->mValidApps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->mPendingIsReadyToPayQueries:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->mValidApps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentApp;

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->mBypassIsReadyToPayServiceInTest:Z

    if-eqz v1, :cond_2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentApp;->bypassIsReadyToPayServiceInTest()V

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->mDelegate:Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryDelegate;->getParams()Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryParams;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestParams;->getMethodData()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentApp;->getInstrumentMethodNames()Ljava/util/Set;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->filterMethodDataForApp(Ljava/util/Map;Ljava/util/Set;)Ljava/util/Map;

    move-result-object v3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->mDelegate:Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryDelegate;->getParams()Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryParams;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryParams;->getTopLevelOrigin()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->mDelegate:Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryDelegate;->getParams()Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryParams;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryParams;->getPaymentRequestOrigin()Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->mDelegate:Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryDelegate;->getParams()Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryParams;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryParams;->getCertificateChain()[[B

    move-result-object v6

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->mDelegate:Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryDelegate;->getParams()Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryParams;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestParams;->getUnmodifiableModifiers()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentApp;->getInstrumentMethodNames()Ljava/util/Set;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->filterModifiersForApp(Ljava/util/Map;Ljava/util/Set;)Ljava/util/Map;

    move-result-object v7

    new-instance v8, Lcom/sec/android/app/sbrowser/payments/standard/b;

    invoke-direct {v8, p0}, Lcom/sec/android/app/sbrowser/payments/standard/b;-><init>(Ljava/lang/Object;)V

    invoke-virtual/range {v2 .. v8}, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentApp;->maybeQueryIsReadyToPayService(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;[[BLjava/util/Map;Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentApp$IsReadyToPayCallback;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method private onIsReadyToPayResponse(Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentApp;Z)V
    .locals 0

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->mDelegate:Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryDelegate;

    invoke-interface {p2, p1}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryDelegate;->onPaymentAppCreated(Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;)V

    :cond_0
    iget p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->mPendingIsReadyToPayQueries:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->mPendingIsReadyToPayQueries:I

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->mDelegate:Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryDelegate;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->mFactory:Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryInterface;

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryDelegate;->onDoneCreatingPaymentApps(Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryInterface;)V

    :cond_1
    return-void
.end method

.method private onValidPaymentAppForPaymentMethodName(Landroid/content/pm/ResolveInfo;Ljava/lang/String;)V
    .locals 11

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->mValidApps:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentApp;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->mPackageManagerDelegate:Lcom/sec/android/app/sbrowser/payments/standard/PackageManagerDelegate;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/sbrowser/payments/standard/PackageManagerDelegate;->getAppLabel(Landroid/content/pm/ResolveInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p0, "Skipping \""

    const-string p1, "\" because of empty label."

    const-string p2, "PaymentAppFinder"

    invoke-static {p0, v0, p1, p2}, LB/e;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppUtil;->getIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->mPackageManagerDelegate:Lcom/sec/android/app/sbrowser/payments/standard/PackageManagerDelegate;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/sbrowser/payments/standard/PackageManagerDelegate;->getAppIcon(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :cond_1
    move-object v7, v2

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    :goto_0
    move-object v9, v2

    goto :goto_1

    :cond_2
    const-string v3, "org.chromium.default_payment_method_name"

    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :goto_1
    new-instance v10, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentApp;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->mDelegate:Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryDelegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryDelegate;->getParams()Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryParams;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryParams;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v2

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->mIsReadyToPayServices:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Ljava/lang/String;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    move-object v1, v10

    move-object v3, v0

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentApp;-><init>(Lcom/sec/terrace/Terrace;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/String;)V

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppUtil;->getImageInsteadOfLabel(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v10, p1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->updateDrawableImageForLabel(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->mValidApps:Ljava/util/Map;

    invoke-interface {p0, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {v1, p2}, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentApp;->addMethodName(Ljava/lang/String;)V

    return-void
.end method

.method private paymentAppSupportsUriMethod(Landroid/content/pm/ResolveInfo;Lcom/sec/terrace/browser/payments/TerraceGURL;)Z
    .locals 2

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-string v1, "org.chromium.default_payment_method_name"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Lcom/sec/terrace/browser/payments/TerraceGURL;

    invoke-direct {v1, v0}, Lcom/sec/terrace/browser/payments/TerraceGURL;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->getSupportedPaymentMethods(Landroid/content/pm/ActivityInfo;)Ljava/util/Set;

    move-result-object p0

    invoke-virtual {p2}, Lcom/sec/terrace/browser/payments/TerraceGURL;->getSpec()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-virtual {p2, v1}, Lcom/sec/terrace/browser/payments/TerraceGURL;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p0, 0x1

    :goto_2
    return p0
.end method

.method private static removeTrailingSlash(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, LB/e;->n(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method private static urlToStringWithoutTrailingSlash(Lcom/sec/terrace/browser/payments/TerraceGURL;)Ljava/lang/String;
    .locals 2
    .param p0    # Lcom/sec/terrace/browser/payments/TerraceGURL;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/browser/payments/TerraceGURL;->getSpec()Ljava/lang/String;

    move-result-object p0

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, LB/e;->n(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public findAndroidPaymentApps()V
    .locals 17

    move-object/from16 v10, p0

    iget-object v0, v10, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->mDelegate:Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryDelegate;->getParams()Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryParams;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestParams;->getMethodData()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Lcom/sec/terrace/browser/payments/TerraceGURL;

    invoke-direct {v2, v1}, Lcom/sec/terrace/browser/payments/TerraceGURL;-><init>(Ljava/lang/String;)V

    iget-object v3, v10, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->mAppStores:Ljava/util/Map;

    new-instance v4, Lcom/sec/terrace/browser/payments/TerraceGURL;

    invoke-direct {v4, v1}, Lcom/sec/terrace/browser/payments/TerraceGURL;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lcom/sec/terrace/browser/payments/TerracePaymentUrlUtil;->isValidUrlBasedPaymentMethodIdentifier(Lcom/sec/terrace/browser/payments/TerraceGURL;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v10, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->mUrlPaymentMethods:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v0, v10, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->mPackageManagerDelegate:Lcom/sec/android/app/sbrowser/payments/standard/PackageManagerDelegate;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "org.chromium.intent.action.PAY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/payments/standard/PackageManagerDelegate;->getActivitiesThatCanRespondToIntentWithMetaData(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->onAllAppsFoundAndValidated()V

    return-void

    :cond_3
    iget-object v1, v10, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->mPackageManagerDelegate:Lcom/sec/android/app/sbrowser/payments/standard/PackageManagerDelegate;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "org.chromium.intent.action.IS_READY_TO_PAY"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/payments/standard/PackageManagerDelegate;->getServicesThatCanRespondToIntent(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_4

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v10, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->mIsReadyToPayServices:Ljava/util/Map;

    iget-object v7, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    iget-object v1, v10, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->mDelegate:Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryDelegate;->getParams()Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryParams;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestParams;->getPaymentOptions()Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentOptionsUtils;->requestAnyInformation(Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "AppStoreBilling"

    invoke-static {v1}, Lcom/sec/terrace/browser/payments/TerracePaymentFeatureList;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {v10, v0}, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->findAppStoreBillingApp(Ljava/util/List;)V

    :cond_5
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, v10, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->mUrlPaymentMethods:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_14

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const/4 v5, 0x0

    if-nez v4, :cond_6

    move-object v4, v5

    goto :goto_3

    :cond_6
    const-string v6, "org.chromium.default_payment_method_name"

    invoke-virtual {v4, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_b

    new-instance v6, Lcom/sec/terrace/browser/payments/TerraceGURL;

    invoke-direct {v6, v4}, Lcom/sec/terrace/browser/payments/TerraceGURL;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/sec/android/app/sbrowser/payments/standard/UrlUtils;->isURLValid(Lcom/sec/terrace/browser/payments/TerraceGURL;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-static {v6}, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->urlToStringWithoutTrailingSlash(Lcom/sec/terrace/browser/payments/TerraceGURL;)Ljava/lang/String;

    move-result-object v4

    :cond_7
    invoke-virtual {v11, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v11, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    invoke-virtual {v11, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v12, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v12, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    invoke-virtual {v12, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Lcom/sec/terrace/browser/payments/TerraceGURL;->getOrigin()Lcom/sec/terrace/browser/payments/TerraceGURL;

    move-result-object v4

    iget-object v7, v10, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->mOriginToUrlDefaultMethodsMapping:Ljava/util/Map;

    invoke-interface {v7, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    iget-object v7, v10, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->mOriginToUrlDefaultMethodsMapping:Ljava/util/Map;

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v7, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    iget-object v7, v10, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->mOriginToUrlDefaultMethodsMapping:Ljava/util/Map;

    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    invoke-interface {v7, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_b
    move-object v4, v5

    move-object v6, v4

    :goto_4
    iget-object v7, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-direct {v10, v7}, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->getSupportedPaymentMethods(Landroid/content/pm/ActivityInfo;)Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_13

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    new-instance v9, Lcom/sec/terrace/browser/payments/TerraceGURL;

    invoke-direct {v9, v8}, Lcom/sec/terrace/browser/payments/TerraceGURL;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Lcom/sec/android/app/sbrowser/payments/standard/UrlUtils;->isURLValid(Lcom/sec/terrace/browser/payments/TerraceGURL;)Z

    move-result v14

    if-nez v14, :cond_c

    move-object v9, v5

    :cond_c
    if-eqz v9, :cond_d

    invoke-virtual {v9, v6}, Lcom/sec/terrace/browser/payments/TerraceGURL;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    goto :goto_5

    :cond_d
    invoke-virtual {v11, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_e

    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v11, v8, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    invoke-virtual {v11, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    invoke-interface {v8, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-nez v9, :cond_f

    goto :goto_5

    :cond_f
    iget-object v8, v10, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->mMethodToSupportedAppsMapping:Ljava/util/Map;

    invoke-interface {v8, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_10

    iget-object v8, v10, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->mMethodToSupportedAppsMapping:Ljava/util/Map;

    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v8, v9, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    iget-object v8, v10, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->mMethodToSupportedAppsMapping:Ljava/util/Map;

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    invoke-interface {v8, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-nez v4, :cond_11

    goto :goto_5

    :cond_11
    invoke-virtual {v13, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_12

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v13, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    invoke-virtual {v13, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    invoke-interface {v8, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    :cond_14
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_6
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/sec/terrace/browser/payments/TerraceGURL;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->urlToStringWithoutTrailingSlash(Lcom/sec/terrace/browser/payments/TerraceGURL;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_6

    :cond_15
    iget-object v0, v10, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->mParser:Lcom/sec/terrace/browser/payments/TerracePaymentManifestParser;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/payments/TerracePaymentManifestParser;->isNativeInitialized()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, v10, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->mParser:Lcom/sec/terrace/browser/payments/TerracePaymentManifestParser;

    iget-object v1, v10, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->mDelegate:Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryDelegate;->getParams()Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryParams;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryParams;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/terrace/browser/payments/TerracePaymentManifestParser;->createNative(Lcom/sec/terrace/Terrace;)V

    :cond_16
    iget-object v0, v10, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->mDownloader:Lcom/sec/terrace/browser/payments/TerracePaymentManifestDownloader;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/payments/TerracePaymentManifestDownloader;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, v10, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->mDownloader:Lcom/sec/terrace/browser/payments/TerracePaymentManifestDownloader;

    iget-object v1, v10, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->mDelegate:Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryDelegate;->getParams()Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryParams;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryParams;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/terrace/browser/payments/TerracePaymentManifestDownloader;->initialize(Lcom/sec/terrace/Terrace;)V

    :cond_17
    new-instance v9, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;

    iget-object v0, v10, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->mDelegate:Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryDelegate;->getParams()Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryParams;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryParams;->getPaymentRequestSecurityOrigin()Lcom/sec/terrace/services/payments/mojom/TerraceOrigin;

    move-result-object v1

    invoke-virtual {v12, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/util/Set;

    invoke-virtual {v13, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/util/Set;

    iget-object v5, v10, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->mWebDataService:Lcom/sec/terrace/browser/payments/TerracePaymentManifestWebDataService;

    iget-object v6, v10, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->mDownloader:Lcom/sec/terrace/browser/payments/TerracePaymentManifestDownloader;

    iget-object v7, v10, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->mParser:Lcom/sec/terrace/browser/payments/TerracePaymentManifestParser;

    iget-object v8, v10, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->mPackageManagerDelegate:Lcom/sec/android/app/sbrowser/payments/standard/PackageManagerDelegate;

    move-object v0, v9

    move-object/from16 v16, v11

    move-object v11, v9

    move-object/from16 v9, p0

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;-><init>(Lcom/sec/terrace/services/payments/mojom/TerraceOrigin;Lcom/sec/terrace/browser/payments/TerraceGURL;Ljava/util/Set;Ljava/util/Set;Lcom/sec/terrace/browser/payments/TerracePaymentManifestWebDataService;Lcom/sec/terrace/browser/payments/TerracePaymentManifestDownloader;Lcom/sec/terrace/browser/payments/TerracePaymentManifestParser;Lcom/sec/android/app/sbrowser/payments/standard/PackageManagerDelegate;Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier$ManifestVerifyCallback;)V

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_18

    const-string v0, "PaymentAppFinder"

    const-string v1, "Reached maximum number of allowed payment app manifests."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_18
    move-object/from16 v11, v16

    goto/16 :goto_6

    :cond_19
    :goto_7
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->onAllAppsFoundAndValidated()V

    return-void

    :cond_1a
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, v10, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->mPendingResourceUsersCount:I

    iput v0, v10, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->mPendingVerifiersCount:I

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentManifestVerifier;->verify()V

    goto :goto_8

    :cond_1b
    return-void
.end method

.method public onFinishedUsingResources()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->mPendingResourceUsersCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->mPendingResourceUsersCount:I

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->mWebDataService:Lcom/sec/terrace/browser/payments/TerracePaymentManifestWebDataService;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/payments/TerracePaymentManifestWebDataService;->destroy()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->mDownloader:Lcom/sec/terrace/browser/payments/TerracePaymentManifestDownloader;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/payments/TerracePaymentManifestDownloader;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->mDownloader:Lcom/sec/terrace/browser/payments/TerracePaymentManifestDownloader;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/payments/TerracePaymentManifestDownloader;->destroy()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->mParser:Lcom/sec/terrace/browser/payments/TerracePaymentManifestParser;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/payments/TerracePaymentManifestParser;->isNativeInitialized()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->mParser:Lcom/sec/terrace/browser/payments/TerracePaymentManifestParser;

    invoke-virtual {p0}, Lcom/sec/terrace/browser/payments/TerracePaymentManifestParser;->destroyNative()V

    :cond_2
    return-void
.end method

.method public onFinishedVerification()V
    .locals 6

    iget v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->mPendingVerifiersCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->mPendingVerifiersCount:I

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->mVerifiedPaymentMethods:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/terrace/browser/payments/TerraceGURL;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->mUrlPaymentMethods:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder$PaymentMethod;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->urlToStringWithoutTrailingSlash(Lcom/sec/terrace/browser/payments/TerraceGURL;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder$PaymentMethod;->defaultApplications:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    invoke-direct {p0, v4, v2}, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->onValidPaymentAppForPaymentMethodName(Landroid/content/pm/ResolveInfo;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v1, v1, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder$PaymentMethod;->supportedOrigins:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/terrace/browser/payments/TerraceGURL;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->mOriginToUrlDefaultMethodsMapping:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    if-nez v3, :cond_5

    goto :goto_2

    :cond_5
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/terrace/browser/payments/TerraceGURL;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->mVerifiedPaymentMethods:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder$PaymentMethod;

    if-nez v4, :cond_7

    goto :goto_3

    :cond_7
    iget-object v4, v4, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder$PaymentMethod;->defaultApplications:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    invoke-direct {p0, v5, v2}, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->onValidPaymentAppForPaymentMethodName(Landroid/content/pm/ResolveInfo;Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->onAllAppsFoundAndValidated()V

    return-void
.end method

.method public onValidDefaultPaymentApp(Lcom/sec/terrace/browser/payments/TerraceGURL;Landroid/content/pm/ResolveInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->getOrCreateVerifiedPaymentMethod(Lcom/sec/terrace/browser/payments/TerraceGURL;)Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder$PaymentMethod;

    move-result-object p0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder$PaymentMethod;->defaultApplications:Ljava/util/Set;

    invoke-interface {p0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onValidSupportedOrigin(Lcom/sec/terrace/browser/payments/TerraceGURL;Lcom/sec/terrace/browser/payments/TerraceGURL;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->getOrCreateVerifiedPaymentMethod(Lcom/sec/terrace/browser/payments/TerraceGURL;)Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder$PaymentMethod;

    move-result-object p0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder$PaymentMethod;->supportedOrigins:Ljava/util/Set;

    invoke-interface {p0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onVerificationError(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->mDelegate:Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryDelegate;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryDelegate;->onPaymentAppCreationError(Ljava/lang/String;)V

    return-void
.end method
