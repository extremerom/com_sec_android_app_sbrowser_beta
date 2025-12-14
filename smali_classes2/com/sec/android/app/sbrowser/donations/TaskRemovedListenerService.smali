.class public Lcom/sec/android/app/sbrowser/donations/TaskRemovedListenerService;
.super Landroid/app/Service;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/donations/AppSearchDonationHelper;->isDonationAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onTaskRemoved"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaskRemovedListenerService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getLastTrackedFocusedActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/sec/android/app/sbrowser/donations/AppSearchDonationHelper;->getInstance()Lcom/sec/android/app/sbrowser/donations/AppSearchDonationHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/donations/AppSearchDonationHelper;->removeTabs()V

    const-string p1, "removeTabs, last activity will be destroyed"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    :goto_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/donations/AppSearchDonationHelper;->getInstance()Lcom/sec/android/app/sbrowser/donations/AppSearchDonationHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/donations/AppSearchDonationHelper;->removeTabs()V

    const-string p1, "removeTabs, last activity already null"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstanceCount()I

    move-result p1

    if-nez p1, :cond_5

    invoke-static {}, Lcom/sec/android/app/sbrowser/donations/AppSearchDonationHelper;->getInstance()Lcom/sec/android/app/sbrowser/donations/AppSearchDonationHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/donations/AppSearchDonationHelper;->removeTabs()V

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    const-string p0, "onTaskRemoved, all task removed"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method
