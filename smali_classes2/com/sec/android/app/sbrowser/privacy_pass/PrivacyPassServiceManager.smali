.class public Lcom/sec/android/app/sbrowser/privacy_pass/PrivacyPassServiceManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mService:LG8/c;

.field private mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/privacy_pass/PrivacyPassServiceManager;->mService:LG8/c;

    new-instance v0, Lcom/sec/android/app/sbrowser/privacy_pass/PrivacyPassServiceManager$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/privacy_pass/PrivacyPassServiceManager$1;-><init>(Lcom/sec/android/app/sbrowser/privacy_pass/PrivacyPassServiceManager;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/privacy_pass/PrivacyPassServiceManager;->mServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/privacy_pass/PrivacyPassServiceManager;)LG8/c;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/privacy_pass/PrivacyPassServiceManager;->mService:LG8/c;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/privacy_pass/PrivacyPassServiceManager;LG8/c;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/privacy_pass/PrivacyPassServiceManager;->mService:LG8/c;

    return-void
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/privacy_pass/PrivacyPassServiceManager;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/homepage/a;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/homepage/a;-><init>(I)V

    const-class v1, Lcom/sec/android/app/sbrowser/privacy_pass/PrivacyPassServiceManager;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/privacy_pass/PrivacyPassServiceManager;

    return-object v0
.end method


# virtual methods
.method public getService()LG8/c;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/privacy_pass/PrivacyPassServiceManager;->mService:LG8/c;

    return-object p0
.end method

.method public initialize()V
    .locals 5

    const-string v0, "com.samsung.android.privateaccesstokens"

    const-string v1, "initialize"

    const-string v2, "PrivacyPassServiceManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/privacy_pass/PrivacyPassServiceManager;->mService:LG8/c;

    if-eqz v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplication()Landroid/app/Application;

    move-result-object v1

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.android.privateaccesstokens.PAT_SERVICE.BIND"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "com.samsung.android.privateaccesstokens.components.services.PATService"

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/privacy_pass/PrivacyPassServiceManager;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v0, 0x1

    invoke-virtual {v1, v3, p0, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Service binding failed - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
