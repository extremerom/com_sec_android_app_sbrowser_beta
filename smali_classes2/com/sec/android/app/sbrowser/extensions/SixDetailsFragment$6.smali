.class Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/extensions/SixDialog$SixDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->showSixConfirmDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment$6;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment$6;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelButtonClicked(Lcom/sec/android/app/sbrowser/extensions/SixDialog;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment$6;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->p(Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;)V

    return-void
.end method

.method public onOkButtonClicked(Lcom/sec/android/app/sbrowser/extensions/SixDialog;)V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixManager;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment$6;->val$key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->setFirstLaunchToFalse(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment$6;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->o(Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;)Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment$6;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->o(Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;)Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->setChecked(Z)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "ext_id"

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment$6;->val$key:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ext_status"

    const-string v1, "ext_first_launch"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "601"

    const-string v1, "6116"

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment$6;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->p(Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;)V

    return-void
.end method
