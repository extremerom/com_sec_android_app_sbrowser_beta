.class public Lcom/sec/android/app/sbrowser/common/utils/SalesCodeUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static getSalesCode()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isTss2Activated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemProperties;->getActivatedIdCode()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemProperties;->getCscSalesCode()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
