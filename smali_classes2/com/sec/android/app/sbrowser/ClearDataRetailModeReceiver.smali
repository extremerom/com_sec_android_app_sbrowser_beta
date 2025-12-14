.class public Lcom/sec/android/app/sbrowser/ClearDataRetailModeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string p0, "com.samsung.sea.rm.DEMO_RESET_STARTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isLDUModel()Z

    move-result p0

    const-string p2, "ClearDataRetailModeReceiver"

    if-nez p0, :cond_1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isShopDemo(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "Device is not LDU or ShopDemo model, nothing happens "

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "ERROR - it\'s NOT LDU model, will not removes data"

    const/4 p2, 0x0

    invoke-static {p1, p0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_1
    const-string p0, "activity"

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    invoke-virtual {p0}, Landroid/app/ActivityManager;->clearApplicationUserData()Z

    move-result p0

    const-string p1, " internet get intent DEMO_RESET_STARTED and data removed"

    invoke-static {p1, p2, p0}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_2
    return-void
.end method
