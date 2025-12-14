.class public Lcom/sec/android/app/sbrowser/autofill/password/MRTargetChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/password/MRTargetChecker;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/autofill/password/MRTargetChecker;->updateWebLoginUsed()V

    return-void
.end method

.method public static synthetic a()Lcom/sec/android/app/sbrowser/autofill/password/MRTargetChecker;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/autofill/password/MRTargetChecker;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/autofill/password/MRTargetChecker;-><init>()V

    return-object v0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/autofill/password/MRTargetChecker;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/autofill/password/MRTargetChecker;->setWebLoginUsed(Z)V

    return-void
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/autofill/password/MRTargetChecker;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/autofill/password/h;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/autofill/password/h;-><init>(I)V

    const-class v1, Lcom/sec/android/app/sbrowser/autofill/password/MRTargetChecker;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/autofill/password/MRTargetChecker;

    return-object v0
.end method

.method private isWebLoginUsed()Z
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/password/MRTargetChecker;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v0, "used_weblogin_at_least_once"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private setWebLoginUsed(Z)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/password/MRTargetChecker;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "used_weblogin_at_least_once"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private updateWebLoginUsed()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/password/MRTargetChecker;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "used_weblogin_at_least_once"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/password/WebLoginAuthenticator;->isWebLoginEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/autofill/password/MRTargetChecker;->setWebLoginUsed(Z)V

    return-void

    :cond_1
    new-instance v0, Lcom/sec/terrace/browser/TerracePasswordUIView;

    invoke-direct {v0}, Lcom/sec/terrace/browser/TerracePasswordUIView;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/autofill/password/MRTargetChecker$1;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/sbrowser/autofill/password/MRTargetChecker$1;-><init>(Lcom/sec/android/app/sbrowser/autofill/password/MRTargetChecker;Lcom/sec/terrace/browser/TerracePasswordUIView;)V

    invoke-virtual {v0, v1}, Lcom/sec/terrace/browser/TerracePasswordUIView;->addObserver(Lcom/sec/terrace/browser/TerracePasswordUIView$TerracePasswordListObserver;)V

    invoke-virtual {v0}, Lcom/sec/terrace/browser/TerracePasswordUIView;->updatePasswordLists()V

    return-void
.end method


# virtual methods
.method public isEasySigninMRTarget()Z
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->getInstance()Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->isEasySigninSupported()Z

    move-result v0

    const-string v1, "MRTargetChecker"

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/autofill/password/MRTargetChecker;->isWebLoginUsed()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->getInstance()Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->isFmmLockEnabled()Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "[isEasySigninMRTarget] USED_WEBLOGIN: true"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string p0, "[isEasySigninMRTatget] Not SamsungPass MR taget"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method
