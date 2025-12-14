.class public Lorg/chromium/components/search_engines/SearchEngineChoiceService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/search_engines/SearchEngineChoiceService$RefreshReason;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static sInstance:Lorg/chromium/components/search_engines/SearchEngineChoiceService;


# instance fields
.field private mDelegate:Lorg/chromium/components/search_engines/SearchEngineCountryDelegate;

.field private final mDeviceCountryPromise:Lorg/chromium/base/Promise;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/Promise<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsDefaultBrowserPromoSuppressed:Ljava/lang/Boolean;

.field private final mIsDeviceChoiceRequiredSupplier:Lorg/chromium/base/supplier/ObservableSupplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/supplier/ObservableSupplier<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/chromium/components/search_engines/SearchEngineCountryDelegate;)V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->checkUiThread()V

    iput-object p1, p0, Lorg/chromium/components/search_engines/SearchEngineChoiceService;->mDelegate:Lorg/chromium/components/search_engines/SearchEngineCountryDelegate;

    invoke-virtual {p1}, Lorg/chromium/components/search_engines/SearchEngineCountryDelegate;->getDeviceCountry()Lorg/chromium/base/Promise;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/components/search_engines/SearchEngineChoiceService;->mDeviceCountryPromise:Lorg/chromium/base/Promise;

    new-instance v0, Lcom/sec/android/app/sbrowser/tab_sync/o;

    const/16 v1, 0x10

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/tab_sync/o;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Lorg/chromium/base/Promise;->andFinally(Ljava/lang/Runnable;)Lorg/chromium/base/Promise;

    iget-object p1, p0, Lorg/chromium/components/search_engines/SearchEngineChoiceService;->mDelegate:Lorg/chromium/components/search_engines/SearchEngineCountryDelegate;

    invoke-static {p1}, Lorg/chromium/components/search_engines/SearchEngineChoiceService;->createIsDeviceChoiceRequiredSupplier(Lorg/chromium/components/search_engines/SearchEngineCountryDelegate;)Lorg/chromium/base/supplier/ObservableSupplier;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/components/search_engines/SearchEngineChoiceService;->mIsDeviceChoiceRequiredSupplier:Lorg/chromium/base/supplier/ObservableSupplier;

    return-void
.end method

.method public static synthetic a(Lorg/chromium/base/supplier/ObservableSupplierImpl;Ljava/lang/Boolean;)Lorg/chromium/base/supplier/ObservableSupplier;
    .locals 0

    invoke-static {p0, p1}, Lorg/chromium/components/search_engines/SearchEngineChoiceService;->lambda$createIsDeviceChoiceRequiredSupplier$1(Lorg/chromium/base/supplier/ObservableSupplierImpl;Ljava/lang/Boolean;)Lorg/chromium/base/supplier/ObservableSupplier;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b()V
    .locals 0

    invoke-static {}, Lorg/chromium/components/search_engines/SearchEngineChoiceService;->lambda$setInstanceForTests$0()V

    return-void
.end method

.method public static synthetic c(Lorg/chromium/components/search_engines/SearchEngineChoiceService;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/components/search_engines/SearchEngineChoiceService;->maybeDestroyDelegate()V

    return-void
.end method

.method private static createIsDeviceChoiceRequiredSupplier(Lorg/chromium/components/search_engines/SearchEngineCountryDelegate;)Lorg/chromium/base/supplier/ObservableSupplier;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/components/search_engines/SearchEngineCountryDelegate;",
            ")",
            "Lorg/chromium/base/supplier/ObservableSupplier<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/chromium/base/supplier/ObservableSupplierImpl;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Lorg/chromium/base/supplier/ObservableSupplierImpl;-><init>(Ljava/lang/Object;)V

    const-string v1, "ClayBlocking"

    invoke-static {v1}, Lorg/chromium/components/search_engines/SearchEnginesFeatures;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/components/search_engines/SearchEngineCountryDelegate;->getIsDeviceChoiceRequiredSupplier()Lorg/chromium/base/supplier/ObservableSupplier;

    move-result-object p0

    invoke-static {}, Lorg/chromium/components/search_engines/SearchEnginesFeatureUtils;->clayBlockingIsDarkLaunch()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lorg/chromium/base/supplier/TransitiveObservableSupplier;

    new-instance v2, Lcom/samsung/android/sdk/pen/ocr/a;

    const/4 v3, 0x6

    invoke-direct {v2, v3, v0}, Lcom/samsung/android/sdk/pen/ocr/a;-><init>(ILjava/lang/Object;)V

    invoke-direct {v1, p0, v2}, Lorg/chromium/base/supplier/TransitiveObservableSupplier;-><init>(Lorg/chromium/base/supplier/ObservableSupplier;Ljava/util/function/Function;)V

    move-object p0, v1

    :cond_1
    return-object p0
.end method

.method private isDefaultBrowserPromoSuppressedInternal()Z
    .locals 6

    const-string v0, "ClayBlocking"

    invoke-static {v0}, Lorg/chromium/components/search_engines/SearchEnginesFeatures;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lorg/chromium/components/search_engines/SearchEnginesFeatureUtils;->clayBlockingDialogDefaultBrowserPromoSuppressedMillis()I

    move-result v0

    int-to-long v2, v0

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_1

    return v1

    :cond_1
    iget-object p0, p0, Lorg/chromium/components/search_engines/SearchEngineChoiceService;->mDelegate:Lorg/chromium/components/search_engines/SearchEngineCountryDelegate;

    if-nez p0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Lorg/chromium/components/search_engines/SearchEngineCountryDelegate;->getDeviceBrowserSelectedTimestamp()Ljava/time/Instant;

    move-result-object p0

    if-nez p0, :cond_3

    return v1

    :cond_3
    :try_start_0
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {p0, v2, v3}, Ljava/time/Instant;->plusMillis(J)Ljava/time/Instant;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/time/Instant;->isBefore(Ljava/time/Instant;)Z

    move-result p0
    :try_end_0
    .catch Ljava/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v1
.end method

.method private static synthetic lambda$createIsDeviceChoiceRequiredSupplier$1(Lorg/chromium/base/supplier/ObservableSupplierImpl;Ljava/lang/Boolean;)Lorg/chromium/base/supplier/ObservableSupplier;
    .locals 2

    invoke-static {}, Lorg/chromium/components/search_engines/SearchEnginesFeatureUtils;->clayBlockingEnableVerboseLogging()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DeviceChoiceDialog"

    const-string v1, "[DarkLaunch] delegate event (isDeviceChoiceRequired=%s) suppressed"

    invoke-static {v0, v1, p1}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-object p0
.end method

.method private static synthetic lambda$setInstanceForTests$0()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lorg/chromium/components/search_engines/SearchEngineChoiceService;->setInstanceForTests(Lorg/chromium/components/search_engines/SearchEngineChoiceService;)V

    return-void
.end method

.method private maybeDestroyDelegate()V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->checkUiThread()V

    invoke-virtual {p0}, Lorg/chromium/components/search_engines/SearchEngineChoiceService;->isDeviceChoiceDialogEligible()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/components/search_engines/SearchEngineChoiceService;->isDefaultBrowserPromoSuppressed()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/components/search_engines/SearchEngineChoiceService;->mDelegate:Lorg/chromium/components/search_engines/SearchEngineCountryDelegate;

    return-void
.end method

.method public static setInstanceForTests(Lorg/chromium/components/search_engines/SearchEngineChoiceService;)V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->checkUiThread()V

    sput-object p0, Lorg/chromium/components/search_engines/SearchEngineChoiceService;->sInstance:Lorg/chromium/components/search_engines/SearchEngineChoiceService;

    if-eqz p0, :cond_0

    new-instance p0, LN4/a;

    const/16 v0, 0xb

    invoke-direct {p0, v0}, LN4/a;-><init>(I)V

    invoke-static {p0}, Lorg/chromium/base/ResettersForTesting;->register(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public isDefaultBrowserPromoSuppressed()Z
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->checkUiThread()V

    iget-object v0, p0, Lorg/chromium/components/search_engines/SearchEngineChoiceService;->mIsDefaultBrowserPromoSuppressed:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/chromium/components/search_engines/SearchEngineChoiceService;->isDefaultBrowserPromoSuppressedInternal()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/components/search_engines/SearchEngineChoiceService;->mIsDefaultBrowserPromoSuppressed:Ljava/lang/Boolean;

    :cond_0
    iget-object p0, p0, Lorg/chromium/components/search_engines/SearchEngineChoiceService;->mIsDefaultBrowserPromoSuppressed:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isDeviceChoiceDialogEligible()Z
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->checkUiThread()V

    const-string v0, "ClayBlocking"

    invoke-static {v0}, Lorg/chromium/components/search_engines/SearchEnginesFeatures;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lorg/chromium/components/search_engines/SearchEngineChoiceService;->mDelegate:Lorg/chromium/components/search_engines/SearchEngineCountryDelegate;

    if-nez p0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lorg/chromium/components/search_engines/SearchEngineCountryDelegate;->isDeviceChoiceDialogEligible()Z

    move-result p0

    return p0
.end method
