.class Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$8;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;->registerUpdateReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$8;->this$0:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "receiver_data_package_name"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "content_blocker_app_update"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "receiver_action_selected_app_removed"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$8;->this$0:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;->o(Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$8;->this$0:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;->o(Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$8;->this$0:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;->n(Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->initFilterAppList(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$8;->this$0:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;->q(Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$8;->this$0:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;->u(Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;)V

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$8;->this$0:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;->k(Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;)Ljava/util/HashMap;

    move-result-object p2

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$8;->this$0:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;->l(Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;)Ljava/util/HashMap;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-instance v2, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$8$1;

    invoke-direct {v2, p0, p1, p2, v1}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$8$1;-><init>(Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$8;Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;ZI)V

    invoke-static {v2}, Lcom/sec/terrace/base/TerraceThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$8;->this$0:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;->k(Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$8;->this$0:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;->l(Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;)Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
