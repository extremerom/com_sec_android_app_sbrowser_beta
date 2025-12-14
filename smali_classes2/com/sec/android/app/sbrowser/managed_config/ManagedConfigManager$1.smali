.class Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigManager$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigManager;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigManager$1;->this$0:Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p1, "ManagedConfigManager"

    const-string p2, "onReceive"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigManager$1;->this$0:Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigManager;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigManager;->a(Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigManager;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigManager$1;->this$0:Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigManager;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigManager;->refreshPolicies()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigManager$1;->this$0:Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigManager;->notifyObservers()V

    return-void
.end method
