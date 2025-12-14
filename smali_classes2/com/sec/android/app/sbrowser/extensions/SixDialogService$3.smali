.class Lcom/sec/android/app/sbrowser/extensions/SixDialogService$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/extensions/SixDialog$SixDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/extensions/SixDialogService;->showSixConfirmDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/extensions/SixDialogService;

.field final synthetic val$enabled:Z

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$pref:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/extensions/SixDialogService;Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDialogService$3;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixDialogService;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/extensions/SixDialogService$3;->val$pref:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/extensions/SixDialogService$3;->val$key:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/sec/android/app/sbrowser/extensions/SixDialogService$3;->val$enabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelButtonClicked(Lcom/sec/android/app/sbrowser/extensions/SixDialog;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDialogService$3;->val$pref:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->setChecked(Z)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDialogService$3;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixDialogService;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/extensions/SixDialogService;->c(Lcom/sec/android/app/sbrowser/extensions/SixDialogService;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDialogService$3;->val$key:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onCancelButtonClicked - Remove failed: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDialogService$3;->val$key:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SixDialogService"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onOkButtonClicked(Lcom/sec/android/app/sbrowser/extensions/SixDialog;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDialogService$3;->val$pref:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->setChecked(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDialogService$3;->val$key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->setFirstLaunchToFalse(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDialogService$3;->val$key:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/extensions/SixDialogService$3;->val$enabled:Z

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->changeExtensionStatus(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDialogService$3;->val$key:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/extensions/SixSALogger;->sendFirstLaunchEventLog(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDialogService$3;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixDialogService;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/extensions/SixDialogService;->c(Lcom/sec/android/app/sbrowser/extensions/SixDialogService;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDialogService$3;->val$key:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onOkButtonClicked - Remove failed: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDialogService$3;->val$key:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SixDialogService"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
