.class Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncAccountUtil;->getSamsungAccountName()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
