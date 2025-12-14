.class Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassDataSyncer;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# static fields
.field private static final URI:Landroid/net/Uri;


# instance fields
.field private mObserverRegistered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.samsung.android.samsungpass.autofillform/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassDataSyncer;->URI:Landroid/net/Uri;

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

.method public static synthetic a()Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassDataSyncer;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassDataSyncer;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassDataSyncer;-><init>()V

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

.method private static getInstance()Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassDataSyncer;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/autofill/personal_data/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/g;-><init>(I)V

    const-class v1, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassDataSyncer;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassDataSyncer;

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

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassDataSyncer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassDataSyncer;->mObserverRegistered:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassDataSyncer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassDataSyncer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassDataSyncer;->URI:Landroid/net/Uri;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassDataSyncer;->mObserverRegistered:Z

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "registerObserverIfNeeded error : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "SamsungPassDataSyncer"

    invoke-static {p0, v0, v1}, Landroidx/recyclerview/widget/P;->s(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static start()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassDataSyncer;->getInstance()Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassDataSyncer;

    move-result-object v0

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassDataSyncer;->registerObserverIfNeeded()V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    invoke-static {}, Lcom/sec/terrace/base/TerraceThreadUtils;->assertOnUiThread()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassDataSyncer;->refreshAndNotify()V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    invoke-static {}, Lcom/sec/terrace/base/TerraceThreadUtils;->assertOnUiThread()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/SamsungPassDataSyncer;->refreshAndNotify()V

    return-void
.end method
