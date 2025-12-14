.class Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/SecretModeManagerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$1;->this$0:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public confirmSecretMode(ILandroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$1;->this$0:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->g(Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;ILandroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method

.method public launchInitialInfoActivity()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$1;->this$0:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->f(Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->h(Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;Landroid/app/Activity;)V

    return-void
.end method

.method public resetDecorViewVisibility(Landroid/app/Activity;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$1;->this$0:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->j(Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;Landroid/app/Activity;)V

    return-void
.end method

.method public resetSecretMode()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$1;->this$0:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->resetSecretMode()V

    return-void
.end method

.method public setDisabledClicked(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$1;->this$0:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->k(Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;Z)V

    return-void
.end method

.method public setResetSecretModeIsProgress(Z)V
    .locals 0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->setResetSecretModeIsProgress(Z)V

    return-void
.end method

.method public setSecretModeEnabled(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$1;->this$0:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->setSecretModeEnabled(Z)V

    return-void
.end method

.method public setSecretModeEnabled(ZLandroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$1;->this$0:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    invoke-static {p2, p0, p1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->l(Landroid/os/Bundle;Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;Z)V

    return-void
.end method

.method public setSecretModeEnabled(ZLandroid/os/Bundle;Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$1;->this$0:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->m(Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;ZLandroid/os/Bundle;Ljava/lang/Runnable;)V

    return-void
.end method
