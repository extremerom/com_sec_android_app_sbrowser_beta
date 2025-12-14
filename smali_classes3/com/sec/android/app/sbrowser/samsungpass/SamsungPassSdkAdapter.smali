.class Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdkAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdk;


# static fields
.field private static final MIN_ASYNC_INITIALIZE_API_VERSION_CODE:I


# instance fields
.field private mAppPaused:Z

.field private mAppResumes:Z

.field private mIsActivated:Z

.field private mIsNativeInitialized:Z

.field private final mLock:Ljava/lang/Object;

.field private mPass:Lcom/samsung/android/authfw/pass/sdk/Pass;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isChina()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x5a00c580

    goto :goto_0

    :cond_0
    const v0, 0x1ad27868

    :goto_0
    sput v0, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdkAdapter;->MIN_ASYNC_INITIALIZE_API_VERSION_CODE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdkAdapter;->mAppPaused:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdkAdapter;->mAppResumes:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdkAdapter;->mIsNativeInitialized:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdkAdapter;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdk$ResultCallback;ILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdkAdapter;->lambda$disableFmmLock$2(Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdk$ResultCallback;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Ljava/util/concurrent/CompletableFuture;Ljava/util/Timer;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdkAdapter;->lambda$initializeIfNeeded$0(Ljava/util/concurrent/CompletableFuture;Ljava/util/Timer;Z)V

    return-void
.end method

.method public static synthetic c()V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdkAdapter;->lambda$onResume$3()V

    return-void
.end method

.method private canPackageSupportAsyncInitializeApi()Z
    .locals 3

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "com.samsung.android.samsungpass"

    sget v2, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdkAdapter;->MIN_ASYNC_INITIALIZE_API_VERSION_CODE:I

    invoke-static {p0, v1, v2}, Lcom/sec/android/app/sbrowser/common/utils/PackageManagerUtils;->comparePackageVersionWith(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    if-ltz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdk$ResultCallback;ILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdkAdapter;->lambda$confirmSamsungAccount$1(Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdk$ResultCallback;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdkAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdkAdapter;->lambda$onResume$4()V

    return-void
.end method

.method private generateRandomSeed()[B
    .locals 1

    new-instance p0, Ljava/security/SecureRandom;

    invoke-direct {p0}, Ljava/security/SecureRandom;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object v0
.end method

.method private initializeIfNeeded()V
    .locals 7

    const-string v0, "SamsungPassSdkAdapter"

    const-string v1, "mPass.initialize(): "

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {v2}, Lcom/samsung/android/authfw/pass/sdk/Pass;->getInstance(Landroid/content/Context;)Lcom/samsung/android/authfw/pass/sdk/Pass;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdkAdapter;->mPass:Lcom/samsung/android/authfw/pass/sdk/Pass;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x23

    if-lt v2, v3, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdkAdapter;->canPackageSupportAsyncInitializeApi()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v2}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3}, Ljava/util/Timer;-><init>()V

    new-instance v4, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdkAdapter$1;

    invoke-direct {v4, p0, v2}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdkAdapter$1;-><init>(Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdkAdapter;Ljava/util/concurrent/CompletableFuture;)V

    const-wide/16 v5, 0x1388

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdkAdapter;->mPass:Lcom/samsung/android/authfw/pass/sdk/Pass;

    new-instance v4, Lcom/sec/android/app/sbrowser/samsungpass/b;

    invoke-direct {v4, v2, v3}, Lcom/sec/android/app/sbrowser/samsungpass/b;-><init>(Ljava/util/concurrent/CompletableFuture;Ljava/util/Timer;)V

    invoke-virtual {p0, v4}, Lcom/samsung/android/authfw/pass/sdk/Pass;->initialize(Lcom/samsung/android/authfw/pass/sdk/service/PassConnector$BindListener;)V

    invoke-virtual {v2}, Ljava/util/concurrent/CompletableFuture;->join()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "Succeeded"

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    const-string p0, "Failed"

    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdkAdapter;->mPass:Lcom/samsung/android/authfw/pass/sdk/Pass;

    invoke-virtual {p0}, Lcom/samsung/android/authfw/pass/sdk/Pass;->initialize()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    const-string v1, "mPass.initialize(): Failed - "

    invoke-static {p0, v1, v0}, Landroidx/recyclerview/widget/P;->r(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private isPassState(J)Z
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdkAdapter;->isInitialized()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdkAdapter;->mPass:Lcom/samsung/android/authfw/pass/sdk/Pass;

    invoke-virtual {p0}, Lcom/samsung/android/authfw/pass/sdk/Pass;->getState()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/authfw/pass/common/PassState;->isFlagOn(Ljava/lang/Long;Ljava/lang/Long;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "isPassState Exception: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, "SamsungPassSdkAdapter"

    invoke-static {p0, p1, p2}, Landroidx/recyclerview/widget/P;->C(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return v1
.end method

.method private static synthetic lambda$confirmSamsungAccount$1(Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdk$ResultCallback;ILjava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v0, "SamsungPassSdkAdapter"

    if-eqz p1, :cond_1

    const-string p2, "Samsung account is updated"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-string v1, "Samsung account isn\'t updated: "

    invoke-static {v1, p2, v0}, LV0/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdk$ResultCallback;->onResult(Z)V

    return-void
.end method

.method private static synthetic lambda$disableFmmLock$2(Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdk$ResultCallback;ILjava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v0, "SamsungPassSdkAdapter"

    if-eqz p1, :cond_1

    const-string p2, "FMM unlock succeed"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-string v1, "FMM unlock failed: "

    invoke-static {v1, p2, v0}, Landroidx/recyclerview/widget/P;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdk$ResultCallback;->onResult(Z)V

    return-void
.end method

.method private static synthetic lambda$initializeIfNeeded$0(Ljava/util/concurrent/CompletableFuture;Ljava/util/Timer;Z)V
    .locals 2

    if-nez p2, :cond_0

    const-string v0, "SamsungPassSdkAdapter"

    const-string v1, "onFinished(): Failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    return-void
.end method

.method private static synthetic lambda$onResume$3()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillSyncManager;->getInstance()Lcom/sec/android/app/sbrowser/settings/autofill/AutofillSyncManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillSyncManager;->setSync(Z)V

    sget-object v0, Lcom/sec/android/app/sbrowser/autofill/personal_data/BackendManager$BackendType;->NATIVE:Lcom/sec/android/app/sbrowser/autofill/personal_data/BackendManager$BackendType;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/BackendManager;->setAutofillProfileBackend(Lcom/sec/android/app/sbrowser/autofill/personal_data/BackendManager$BackendType;)V

    sget-object v0, Lcom/sec/android/app/sbrowser/autofill/personal_data/BackendManager$BackendType;->SECURE:Lcom/sec/android/app/sbrowser/autofill/personal_data/BackendManager$BackendType;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/BackendManager;->setCreditCardBackend(Lcom/sec/android/app/sbrowser/autofill/personal_data/BackendManager$BackendType;)V

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getInstance()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->forceReloadData()V

    return-void
.end method

.method private synthetic lambda$onResume$4()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdkAdapter;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdkAdapter;->setSamsungPassInitializedSharedPref(Z)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/samsungpass/d;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, Lcom/sec/terrace/base/TerraceThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdkAdapter;->setSamsungPassInitializedSharedPref(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public confirmSamsungAccount(Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdk$ResultCallback;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdkAdapter;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdkAdapter;->mPass:Lcom/samsung/android/authfw/pass/sdk/Pass;

    new-instance v0, Lcom/sec/android/app/sbrowser/samsungpass/e;

    invoke-direct {v0, p1}, Lcom/sec/android/app/sbrowser/samsungpass/e;-><init>(Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdk$ResultCallback;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/authfw/pass/sdk/Pass;->confirmSamsungAccount(Lcom/samsung/android/authfw/pass/sdk/listener/SAConfirmListener;)V

    return-void
.end method

.method public decrypt([BLjava/lang/String;[B[B)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdkAdapter;->isInitialized()Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdkAdapter;->mPass:Lcom/samsung/android/authfw/pass/sdk/Pass;

    invoke-virtual {v0, p1, p3, p2, p4}, Lcom/samsung/android/authfw/pass/sdk/Pass;->decrypt([B[BLjava/lang/String;[B)[B

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    :cond_1
    new-instance p2, Ljava/lang/String;

    sget-object p3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p2, p1, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-object v1

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdkAdapter;->mPass:Lcom/samsung/android/authfw/pass/sdk/Pass;

    invoke-virtual {p0, p2}, Lcom/samsung/android/authfw/pass/sdk/Pass;->simpleDecrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    return-object v1

    :cond_3
    return-object p0
.end method

.method public disableFmmLock(Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdk$ResultCallback;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdkAdapter;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdkAdapter;->mPass:Lcom/samsung/android/authfw/pass/sdk/Pass;

    new-instance v0, Lcom/sec/android/app/sbrowser/samsungpass/f;

    invoke-direct {v0, p1}, Lcom/sec/android/app/sbrowser/samsungpass/f;-><init>(Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdk$ResultCallback;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/authfw/pass/sdk/Pass;->disableFmmLock(Lcom/samsung/android/authfw/pass/sdk/listener/FmmLockDisableListener;)V

    return-void
.end method

.method public encrypt(Ljava/lang/String;)[B
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdkAdapter;->isInitialized()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array p0, v1, [B

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdkAdapter;->mPass:Lcom/samsung/android/authfw/pass/sdk/Pass;

    invoke-virtual {v0, p1}, Lcom/samsung/android/authfw/pass/sdk/Pass;->simpleEncrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    new-array p0, v1, [B

    return-object p0

    :cond_1
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    if-nez p1, :cond_2

    new-array p0, v1, [B

    return-object p0

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdkAdapter;->mPass:Lcom/samsung/android/authfw/pass/sdk/Pass;

    invoke-virtual {p0, p1}, Lcom/samsung/android/authfw/pass/sdk/Pass;->encrypt([B)[B

    move-result-object p0

    if-nez p0, :cond_3

    new-array p0, v1, [B

    :cond_3
    return-object p0
.end method

.method public generateKey(Ljava/lang/String;)[B
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdkAdapter;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdkAdapter;->mPass:Lcom/samsung/android/authfw/pass/sdk/Pass;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdkAdapter;->generateRandomSeed()[B

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/authfw/pass/sdk/Pass;->getNonce([BLjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public getEnabledAuthenticators()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdkAdapter;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdkAdapter;->mPass:Lcom/samsung/android/authfw/pass/sdk/Pass;

    invoke-virtual {p0}, Lcom/samsung/android/authfw/pass/sdk/Pass;->getEnabledAuthenticators()Ljava/util/List;

    move-result-object p0

    const-string v0, "Faceprint"

    invoke-interface {p0, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "SamsungPassSdkAdapter"

    const-string v0, "mPass.getEnabledAuthenticators(): Failed"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public hasRegisteredAuthenticator()Z
    .locals 2

    const-wide/16 v0, 0x4

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdkAdapter;->isPassState(J)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isActivated()Z
    .locals 4

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdkAdapter;->mAppResumes:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdkAdapter;->mAppPaused:Z

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdkAdapter;->mIsActivated:Z

    return p0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdkAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdkAdapter;->isInitialized()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const-string v1, "SamsungPassSdkAdapter"

    const-string v3, "isActivated : not initialized"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdkAdapter;->mIsActivated:Z

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdkAdapter;->setSamsungPassInitializedSharedPref(Z)V

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdkAdapter;->mIsActivated:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdkAdapter;->mPass:Lcom/samsung/android/authfw/pass/sdk/Pass;

    invoke-virtual {v1}, Lcom/samsung/android/authfw/pass/sdk/Pass;->isActivated()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdkAdapter;->mIsActivated:Z

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdkAdapter;->setSamsungPassInitializedSharedPref(Z)V

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdkAdapter;->mAppResumes:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdkAdapter;->mIsActivated:Z

    return p0

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public isFmmLockEnabled()Z
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdkAdapter;->isInitialized()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdkAdapter;->mPass:Lcom/samsung/android/authfw/pass/sdk/Pass;

    invoke-virtual {p0}, Lcom/samsung/android/authfw/pass/sdk/Pass;->isFmmLockEnabled()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "isFmmLockEnabled Exception: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "SamsungPassSdkAdapter"

    invoke-static {p0, v0, v2}, Landroidx/recyclerview/widget/P;->C(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return v1
.end method

.method public isInitialized()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdkAdapter;->mPass:Lcom/samsung/android/authfw/pass/sdk/Pass;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/authfw/pass/sdk/Pass;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdkAdapter;->initializeIfNeeded()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdkAdapter;->mPass:Lcom/samsung/android/authfw/pass/sdk/Pass;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/authfw/pass/sdk/Pass;->isInitialized()Z

    move-result p0

    return p0
.end method

.method public isProvisioned()Z
    .locals 2

    const-wide/16 v0, 0x2

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdkAdapter;->isPassState(J)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isSamsungAccountLogOut()Z
    .locals 2

    const-wide/16 v0, 0x200

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdkAdapter;->isPassState(J)Z

    move-result p0

    return p0
.end method

.method public isSamsungPassInitializedSharedPref()Z
    .locals 2

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-static {p0}, Lw2/F;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v1, "autofill_setting_samsung_pass_initialized"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public onNativeInitializationSuccess()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdkAdapter;->mIsNativeInitialized:Z

    return-void
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdkAdapter;->mAppPaused:Z

    return-void
.end method

.method public onResume()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdkAdapter;->mAppPaused:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdkAdapter;->mAppResumes:Z

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdkAdapter;->mIsNativeInitialized:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/sbrowser/samsungpass/c;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/samsungpass/c;-><init>(Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdkAdapter;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public setSamsungPassInitializedSharedPref(Z)V
    .locals 2

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lw2/F;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "autofill_setting_samsung_pass_initialized"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public simpleDecrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdkAdapter;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdkAdapter;->mPass:Lcom/samsung/android/authfw/pass/sdk/Pass;

    invoke-virtual {p0, p1}, Lcom/samsung/android/authfw/pass/sdk/Pass;->simpleDecrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public simpleEncrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdkAdapter;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdkAdapter;->mPass:Lcom/samsung/android/authfw/pass/sdk/Pass;

    invoke-virtual {p0, p1}, Lcom/samsung/android/authfw/pass/sdk/Pass;->simpleEncrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
