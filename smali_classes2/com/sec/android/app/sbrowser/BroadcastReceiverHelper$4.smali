.class Lcom/sec/android/app/sbrowser/BroadcastReceiverHelper$4;
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

.field final synthetic val$delegate:Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

.field final synthetic val$listener:Lcom/sec/android/app/sbrowser/common/model/main/MainActivityListener;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/BroadcastReceiverHelper;Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;Lcom/sec/android/app/sbrowser/common/model/main/MainActivityListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/BroadcastReceiverHelper$4;->this$0:Lcom/sec/android/app/sbrowser/BroadcastReceiverHelper;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/BroadcastReceiverHelper$4;->val$delegate:Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/BroadcastReceiverHelper$4;->val$listener:Lcom/sec/android/app/sbrowser/common/model/main/MainActivityListener;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p1, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/BroadcastReceiverHelper$4;->val$delegate:Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;->isBrowserAllowedByDPM()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "BroadcastReceiverHelper"

    const-string p2, "onReceive: ACTION_DPM_STATE_CHANGED"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/BroadcastReceiverHelper$4;->val$listener:Lcom/sec/android/app/sbrowser/common/model/main/MainActivityListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityListener;->onBlockedByDPM()V

    :cond_0
    return-void
.end method
