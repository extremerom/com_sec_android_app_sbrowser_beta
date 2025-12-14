.class Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment$6;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->showSetPasswordDescription()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment$6;->this$0:Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment$6;->this$0:Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object v0

    const-class v1, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-class v0, Lcom/sec/android/app/sbrowser/secret_mode/settings/DisclaimerPreferenceFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sbrowser.settings.show_fragment"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment$6;->this$0:Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->r(Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "launcher_name"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment$6;->this$0:Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->startActivity(Landroid/app/Activity;Landroid/content/Intent;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/secret_mode/RecordUserAction;->recordAboutSecretModeFromSettings()V

    return-void
.end method
