.class Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager$2;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager;->registerDeviceIdReceiver(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager$2;->this$0:Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "com.samsung.android.deviceidservice.reset.deviceid.notice"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager$2;->this$0:Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager;->initialize(Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-void
.end method
