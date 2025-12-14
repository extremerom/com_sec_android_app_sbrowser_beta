.class Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater$4;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->registerSixUpdateReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater$4;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "six_app_update"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "receiver_action_six_app_removed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater$4;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;

    invoke-static {p0, p2}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->k(Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const-string v1, "receiver_action_six_app_added"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater$4;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->j(Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const-string v1, "receiver_action_six_app_replaced"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater$4;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->l(Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const-string p0, "SixPkgUpdater"

    const-string p1, "onReceive - No proper actions.."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
