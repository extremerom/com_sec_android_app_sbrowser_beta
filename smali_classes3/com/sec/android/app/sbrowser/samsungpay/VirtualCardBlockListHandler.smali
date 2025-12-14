.class public Lcom/sec/android/app/sbrowser/samsungpay/VirtualCardBlockListHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isEnabled()Z
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;

    move-result-object v1

    const-string v2, "Autofill"

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->isSupport(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public addUrlBlockListVirtualCard(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/samsungpay/VirtualCardBlockListHandler;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/samsungpay/VirtualCardBlockListData;->getInstance()Lcom/sec/android/app/sbrowser/samsungpay/VirtualCardBlockListData;

    move-result-object p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/samsungpay/VirtualCardBlockListData;->addUrlInBlockList(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public doesUrlBlockListVirtualCard(Ljava/lang/String;)Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/samsungpay/VirtualCardBlockListHandler;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/samsungpay/VirtualCardBlockListData;->getInstance()Lcom/sec/android/app/sbrowser/samsungpay/VirtualCardBlockListData;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/samsungpay/VirtualCardBlockListData;->isBlockListed(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
