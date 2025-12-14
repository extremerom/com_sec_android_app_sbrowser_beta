.class Lcom/sec/android/app/sbrowser/BroadcastReceiverHelper$3;
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

.field final synthetic val$mainView:Lcom/sec/android/app/sbrowser/main_view/MainView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/BroadcastReceiverHelper;Lcom/sec/android/app/sbrowser/main_view/MainView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/BroadcastReceiverHelper$3;->this$0:Lcom/sec/android/app/sbrowser/BroadcastReceiverHelper;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/BroadcastReceiverHelper$3;->val$mainView:Lcom/sec/android/app/sbrowser/main_view/MainView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string v0, "com.samsung.settings.action.talkback_toggled"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "BroadcastReceiverHelper"

    const-string v0, "onReceive: ACTION_TALKBACK"

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/BroadcastReceiverHelper$3;->val$mainView:Lcom/sec/android/app/sbrowser/main_view/MainView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result p1

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainView;->talkBackChanged(Z)V

    :cond_0
    return-void
.end method
