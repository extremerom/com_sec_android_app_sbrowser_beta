.class Lcom/sec/android/app/sbrowser/settings/debug/managed_config/ManagedConfigPreferenceFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/settings/debug/SetOtherValueDialogFragment$DialogDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/debug/managed_config/ManagedConfigPreferenceFragment;->showSetOtherDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/debug/managed_config/ManagedConfigPreferenceFragment;

.field final synthetic val$editor:Landroid/content/SharedPreferences$Editor;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$prefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/debug/managed_config/ManagedConfigPreferenceFragment;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;Landroid/content/SharedPreferences;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/debug/managed_config/ManagedConfigPreferenceFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/debug/managed_config/ManagedConfigPreferenceFragment;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/debug/managed_config/ManagedConfigPreferenceFragment$1;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/settings/debug/managed_config/ManagedConfigPreferenceFragment$1;->val$editor:Landroid/content/SharedPreferences$Editor;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/settings/debug/managed_config/ManagedConfigPreferenceFragment$1;->val$prefs:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentValue()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/debug/managed_config/ManagedConfigPreferenceFragment$1;->val$key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "NONE"

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "EnterpriseProxyCatPacUrl"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_1
    const-string v3, "EnterpriseProxyCatBypassList"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    const-string v3, "EnterpriseProxyCatProxyServer"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/debug/managed_config/ManagedConfigPreferenceFragment$1;->val$prefs:Landroid/content/SharedPreferences;

    const-string v0, "pref_enterprise_pac_url"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :pswitch_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/debug/managed_config/ManagedConfigPreferenceFragment$1;->val$prefs:Landroid/content/SharedPreferences;

    const-string v0, "pref_enterprise_bypass_list"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :pswitch_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/debug/managed_config/ManagedConfigPreferenceFragment$1;->val$prefs:Landroid/content/SharedPreferences;

    const-string v0, "pref_enterprise_proxy_server"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x79bc0198 -> :sswitch_2
        -0x588f8451 -> :sswitch_1
        0x56330606 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getMessage()I
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/debug/managed_config/ManagedConfigPreferenceFragment$1;->val$key:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "EnterpriseProxyCatPacUrl"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_1
    const-string v1, "EnterpriseProxyCatBypassList"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "EnterpriseProxyCatProxyServer"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    const p0, 0x7f140541

    goto :goto_1

    :pswitch_0
    const p0, 0x7f1409af

    goto :goto_1

    :pswitch_1
    const p0, 0x7f1409ae

    goto :goto_1

    :pswitch_2
    const p0, 0x7f1409b0

    :goto_1
    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x79bc0198 -> :sswitch_2
        -0x588f8451 -> :sswitch_1
        0x56330606 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onNegativeClick()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/debug/managed_config/ManagedConfigPreferenceFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/debug/managed_config/ManagedConfigPreferenceFragment;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/debug/managed_config/ManagedConfigPreferenceFragment;->i(Lcom/sec/android/app/sbrowser/settings/debug/managed_config/ManagedConfigPreferenceFragment;)V

    return-void
.end method

.method public onPositiveClick()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/debug/managed_config/ManagedConfigPreferenceFragment$1;->val$key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "EnterpriseProxyCatPacUrl"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string v2, "EnterpriseProxyCatBypassList"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "EnterpriseProxyCatProxyServer"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/debug/managed_config/ManagedConfigPreferenceFragment$1;->val$editor:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/debug/managed_config/ManagedConfigPreferenceFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/debug/managed_config/ManagedConfigPreferenceFragment;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/settings/debug/managed_config/ManagedConfigPreferenceFragment;->h(Lcom/sec/android/app/sbrowser/settings/debug/managed_config/ManagedConfigPreferenceFragment;)Lcom/sec/android/app/sbrowser/settings/debug/SetOtherValueDialogFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/debug/SetOtherValueDialogFragment;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_enterprise_pac_url"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/debug/managed_config/ManagedConfigPreferenceFragment$1;->getCurrentValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigManager;->setProxyPacUrl(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/debug/managed_config/ManagedConfigPreferenceFragment$1;->val$editor:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/debug/managed_config/ManagedConfigPreferenceFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/debug/managed_config/ManagedConfigPreferenceFragment;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/settings/debug/managed_config/ManagedConfigPreferenceFragment;->h(Lcom/sec/android/app/sbrowser/settings/debug/managed_config/ManagedConfigPreferenceFragment;)Lcom/sec/android/app/sbrowser/settings/debug/SetOtherValueDialogFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/debug/SetOtherValueDialogFragment;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_enterprise_bypass_list"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/debug/managed_config/ManagedConfigPreferenceFragment$1;->getCurrentValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigManager;->setProxyBypassList(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/debug/managed_config/ManagedConfigPreferenceFragment$1;->val$editor:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/debug/managed_config/ManagedConfigPreferenceFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/debug/managed_config/ManagedConfigPreferenceFragment;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/settings/debug/managed_config/ManagedConfigPreferenceFragment;->h(Lcom/sec/android/app/sbrowser/settings/debug/managed_config/ManagedConfigPreferenceFragment;)Lcom/sec/android/app/sbrowser/settings/debug/SetOtherValueDialogFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/debug/SetOtherValueDialogFragment;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_enterprise_proxy_server"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/debug/managed_config/ManagedConfigPreferenceFragment$1;->getCurrentValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigManager;->setProxyServer(Ljava/lang/String;)V

    :goto_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/debug/managed_config/ManagedConfigPreferenceFragment$1;->val$prefs:Landroid/content/SharedPreferences;

    const-string v2, "pref_enterprise_proxy_type"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigManager;->setProxyType(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigManager;->refreshPolicies()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/debug/managed_config/ManagedConfigPreferenceFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/debug/managed_config/ManagedConfigPreferenceFragment;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/debug/managed_config/ManagedConfigPreferenceFragment;->i(Lcom/sec/android/app/sbrowser/settings/debug/managed_config/ManagedConfigPreferenceFragment;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x79bc0198 -> :sswitch_2
        -0x588f8451 -> :sswitch_1
        0x56330606 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
