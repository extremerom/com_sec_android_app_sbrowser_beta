.class Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment$ProgressHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProgressHandler"
.end annotation


# instance fields
.field mProgress:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment$ProgressHandler;->mProgress:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment$ProgressHandler;->mProgress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;

    if-eqz v0, :cond_1

    iget v1, p1, Landroid/os/Message;->what:I

    const-string v2, "CloudSyncPreferenceFragment"

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v1, "ProgressHandler master sync status changed"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->q(Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;)V

    goto :goto_0

    :pswitch_1
    const-string v1, "ProgressHandler sync pending or stop"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->n(Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;)Lcom/sec/android/app/sbrowser/settings/sync/ui/ProgressPreference;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/settings/sync/ui/ProgressPreference;->showProgressBar(Z)V

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->p(Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;)V

    goto :goto_0

    :pswitch_2
    const-string v1, "ProgressHandler sync active"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/NetDeviceUtils;->isNetworkAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "ProgressHandler Network unavailable"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->n(Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;)Lcom/sec/android/app/sbrowser/settings/sync/ui/ProgressPreference;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/settings/sync/ui/ProgressPreference;->showProgressBar(Z)V

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->p(Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;)V

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
