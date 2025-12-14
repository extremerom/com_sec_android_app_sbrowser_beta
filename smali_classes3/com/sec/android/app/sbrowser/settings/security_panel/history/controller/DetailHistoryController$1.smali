.class Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBaseUi$ControllerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;->onCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController$1;->this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deleteItems(Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/PrivacyHistoryBaseView;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController$1;->this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;->deleteItems(Ljava/util/concurrent/CopyOnWriteArrayList;)V

    return-void
.end method

.method public getConfirmCancelID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController$1;->this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;->getConfirmCancelID()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getConfirmOkID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController$1;->this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;->getConfirmOkID()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController$1;->this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;->getDescription()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getItemClickID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController$1;->this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;->getItemClickID()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getScreenID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController$1;->this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;->getScreenID()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSecretModeSummary()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController$1;->this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;->getSecretModeSummary()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSortMode()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController$1;->this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;->getSortMode()I

    move-result p0

    return p0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController$1;->this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;->getSummary()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hasNoData()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController$1;->this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;->hasNoData()Z

    move-result p0

    return p0
.end method

.method public satMoreClick()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController$1;->this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;->onSatMoreClick()V

    return-void
.end method

.method public setBlockStatus(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController$1;->this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;->setBlockStatus(Z)V

    return-void
.end method

.method public setPATStatus(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController$1;->this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;->setPATStatus(Z)V

    return-void
.end method

.method public setSatLevel(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController$1;->this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;->setSatLevel(I)V

    return-void
.end method

.method public setScreenID(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController$1;->this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;->setScreenID(Ljava/lang/String;)V

    return-void
.end method

.method public sortBy(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController$1;->this$0:Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;->sortBy(I)V

    return-void
.end method
