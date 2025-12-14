.class Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainAdapter$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemCheckedChange(Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerAppDTO;Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;->getScreenID()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;

    const v2, 0x7f140c5c

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_0

    const-string v2, "On"

    goto :goto_0

    :cond_0
    const-string v2, "Off"

    :goto_0
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->getInstance()Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerAppDTO;->getAppId()I

    move-result p1

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->setBlocked(IZ)V

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->requestNotificationPermission(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method public onItemClick(Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerAppDTO;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;->l(Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;->n(Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;Lcom/sec/android/app/sbrowser/intent_blocker/data/IntentBlockerAppDTO;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;->getScreenID()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;

    const v1, 0x7f140c52

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;->m(Lcom/sec/android/app/sbrowser/settings/intent_blocker/main/IntentBlockerMainFragment;)V

    :cond_0
    return-void
.end method
