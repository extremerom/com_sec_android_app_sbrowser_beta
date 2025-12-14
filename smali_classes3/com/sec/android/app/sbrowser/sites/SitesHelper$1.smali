.class Lcom/sec/android/app/sbrowser/sites/SitesHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/sites/SitesHelper;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/sites/SitesHelper;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sites/SitesHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sites/SitesHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string p1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isReplaceSecBrandAsGalaxy()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/AppInfo;->isBetaApk()Z

    move-result p1

    const p2, 0x7f060293

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sites/SitesHelper;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/SitesHelper;->b(Lcom/sec/android/app/sbrowser/sites/SitesHelper;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    new-instance v1, Landroid/app/ActivityManager$TaskDescription;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/SitesHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sites/SitesHelper;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/sites/SitesHelper;->b(Lcom/sec/android/app/sbrowser/sites/SitesHelper;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1400d0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sites/SitesHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/SitesHelper;->b(Lcom/sec/android/app/sbrowser/sites/SitesHelper;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-direct {v1, v2, v0, p0}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    invoke-virtual {p1, v1}, Landroid/app/Activity;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sites/SitesHelper;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/SitesHelper;->b(Lcom/sec/android/app/sbrowser/sites/SitesHelper;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    new-instance v1, Landroid/app/ActivityManager$TaskDescription;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/SitesHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sites/SitesHelper;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/sites/SitesHelper;->b(Lcom/sec/android/app/sbrowser/sites/SitesHelper;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1400cf

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sites/SitesHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/SitesHelper;->b(Lcom/sec/android/app/sbrowser/sites/SitesHelper;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-direct {v1, v2, v0, p0}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    invoke-virtual {p1, v1}, Landroid/app/Activity;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    :cond_2
    :goto_0
    return-void
.end method
