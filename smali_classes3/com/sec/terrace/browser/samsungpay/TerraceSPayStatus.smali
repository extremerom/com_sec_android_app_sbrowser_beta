.class public Lcom/sec/terrace/browser/samsungpay/TerraceSPayStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/samsungpay/TerraceSPayStatus$AppStatus;,
        Lcom/sec/terrace/browser/samsungpay/TerraceSPayStatus$UPIVpaStatus;
    }
.end annotation


# direct methods
.method public static getAppStatus()Lcom/sec/terrace/browser/samsungpay/TerraceSPayStatus$AppStatus;
    .locals 4

    new-instance v0, Lcom/sec/terrace/browser/samsungpay/TerraceSPayStatus$AppStatus;

    invoke-direct {v0}, Lcom/sec/terrace/browser/samsungpay/TerraceSPayStatus$AppStatus;-><init>()V

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.samsung.android.spay"

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x40

    :try_start_0
    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/terrace/browser/samsungpay/TerraceSPayStatus$AppStatus;->mPackageInfo:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "TerraceSPayStatus"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static getSpayPackageName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.samsung.android.spay"

    return-object v0
.end method
