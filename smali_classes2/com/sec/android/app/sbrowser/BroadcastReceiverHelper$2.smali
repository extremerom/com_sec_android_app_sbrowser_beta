.class Lcom/sec/android/app/sbrowser/BroadcastReceiverHelper$2;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/BroadcastReceiverHelper;-><init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/main_view/MainView;Lcom/sec/android/app/sbrowser/common/model/main/MainActivityListener;Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/BroadcastReceiverHelper;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/BroadcastReceiverHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/BroadcastReceiverHelper$2;->this$0:Lcom/sec/android/app/sbrowser/BroadcastReceiverHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p0, "com.samsung.android.theme.themecenter.THEME_APPLY_START"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "BroadcastReceiverHelper"

    const-string p1, "onReceive: THEME_APPLY_START, update System support night theme"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->updateSystemSupportNightTheme()V

    :cond_0
    return-void
.end method
