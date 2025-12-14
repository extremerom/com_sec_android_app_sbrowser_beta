.class Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungWalletDataSyncer;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# static fields
.field private static final URI:Landroid/net/Uri;


# instance fields
.field private mObserverRegistered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.samsung.android.spay.virtualcardautofill/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungWalletDataSyncer;->URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method public static synthetic a()Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungWalletDataSyncer;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungWalletDataSyncer;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungWalletDataSyncer;-><init>()V

    return-object v0
.end method

.method private getContentResolver()Landroid/content/ContentResolver;
    .locals 0

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method private static getInstance()Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungWalletDataSyncer;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/autofill/personal_data/g;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/g;-><init>(I)V

    const-class v1, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungWalletDataSyncer;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungWalletDataSyncer;

    return-object v0
.end method

.method private refreshAndNotify()V
    .locals 0

    invoke-static {}, Lcom/sec/terrace/base/TerraceThreadUtils;->assertOnUiThread()V

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getInstance()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->forceReloadData()V

    return-void
.end method

.method private registerObserverIfNeeded()V
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungWalletDataSyncer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungWalletDataSyncer;->mObserverRegistered:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungWalletDataSyncer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungWalletDataSyncer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungWalletDataSyncer;->URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungWalletDataSyncer;->mObserverRegistered:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed in registerObserverIfNeeded: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "SamsungWalletDataSyncer"

    invoke-static {p0, v0, v1}, Landroidx/recyclerview/widget/P;->C(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static start()V
    .locals 2

    const-string v0, "SamsungWalletDataSyncer"

    const-string v1, "SamsungWalletDataSyncer::start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungWalletDataSyncer;->getInstance()Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungWalletDataSyncer;

    move-result-object v0

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungWalletDataSyncer;->registerObserverIfNeeded()V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/base/TerraceThreadUtils;->assertOnUiThread()V

    const-string p1, "SamsungWalletDataSyncer"

    const-string v0, "SamsungWalletDataSyncer::onChange"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungWalletDataSyncer;->refreshAndNotify()V

    return-void
.end method
