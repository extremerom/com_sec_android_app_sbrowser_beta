.class Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder$NameAndPWSwitchPreferenceDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callGetAutofillVerificationSummaryString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment;->H(Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isSamsungPassActivated()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment;->G(Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment;)Z

    move-result p0

    return p0
.end method

.method public isShowingActionMode()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment;->access$000(Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment;)Z

    move-result p0

    return p0
.end method

.method public launchSamsungPass(Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass$LaunchMode;)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->getInstance()Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment;->F(Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment;)Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->launchSamsungPass(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass$LaunchMode;)V

    return-void
.end method

.method public sendLogs(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment;->getScreenID()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendLogs(Ljava/lang/String;J)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment;->getScreenID()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public startFragment()V
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment;->F(Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment;)Landroid/app/Activity;

    move-result-object p0

    const-class v0, Lcom/sec/android/app/sbrowser/settings/password/WebSigninPreferenceFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->startFragment(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
