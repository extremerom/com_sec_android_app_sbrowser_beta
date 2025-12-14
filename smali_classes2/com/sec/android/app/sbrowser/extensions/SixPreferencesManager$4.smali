.class Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsFragmentCallback$CrxInstallCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->initSixPreferences()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager$4;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCrxInstallFailed(Ljava/lang/String;)V
    .locals 2

    const-string v0, "onCrxInstallFailed - "

    const-string v1, "SixPreferencesManager"

    invoke-static {v0, p1, v1}, LV0/c;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager$4;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->a(Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;)Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager$4;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->a(Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f14081d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->g(Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager$4;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->updatePreferences()V

    return-void
.end method

.method public onCrxInstalled(Ljava/lang/String;)V
    .locals 2

    const-string v0, "onCrxInstalled - "

    const-string v1, "SixPreferencesManager"

    invoke-static {v0, p1, v1}, LV0/c;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager$4;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->updatePreferences()V

    return-void
.end method

.method public onCrxUninstalled(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "onCrxUninstalled: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SixPreferencesManager"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager$4;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->updatePreferences()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager$4;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->c(Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;)Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager$4;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->c(Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;)Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->hideIfNeeded()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager$4;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->d(Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;)V

    :cond_0
    return-void
.end method
