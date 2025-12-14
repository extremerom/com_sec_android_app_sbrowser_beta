.class public Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigFlags;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sIsAutofillRestrictionUsed:Z

.field private static sIsPasswordManagerRestrictionUsed:Z

.field private static sIsProxyRestrictionUsed:Z


# direct methods
.method private static getBoolean(Ljava/lang/String;Landroid/content/RestrictionEntry;Landroid/os/Bundle;)Z
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/RestrictionEntry;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_1

    invoke-virtual {p2, p0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getSelectedState()Z

    move-result p0

    return p0
.end method

.method private static getString(Ljava/lang/String;Landroid/content/RestrictionEntry;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/RestrictionEntry;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_1

    invoke-virtual {p2, p0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getSelectedString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isAutofillRestrictionUsed()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigFlags;->sIsAutofillRestrictionUsed:Z

    return v0
.end method

.method public static isDefaultSearchProviderEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isEnterpriseHardwarePlatformApiEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isPasswordManagerRestrictionUsed()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigFlags;->sIsPasswordManagerRestrictionUsed:Z

    return v0
.end method

.method public static isProxyRestrictionUsed()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigFlags;->sIsProxyRestrictionUsed:Z

    return v0
.end method

.method public static onUpdateRestrictions(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 5
    .param p0    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/RestrictionEntry;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigFlags;->sIsProxyRestrictionUsed:Z

    sput-boolean v0, Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigFlags;->sIsAutofillRestrictionUsed:Z

    sput-boolean v0, Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigFlags;->sIsPasswordManagerRestrictionUsed:Z

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/RestrictionEntry;

    invoke-virtual {v1}, Landroid/content/RestrictionEntry;->getKey()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "key = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ManagedConfigFlags"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v4, "DefaultSearchProviderEnabled"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x7

    goto :goto_1

    :sswitch_1
    const-string v4, "AutofillEnabled"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x6

    goto :goto_1

    :sswitch_2
    const-string v4, "EnterpriseProxyCatPacUrl"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x5

    goto :goto_1

    :sswitch_3
    const-string v4, "EnterpriseProxyType"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x4

    goto :goto_1

    :sswitch_4
    const-string v4, "PasswordManagerEnabled"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, 0x3

    goto :goto_1

    :sswitch_5
    const-string v4, "EnterpriseHardwarePlatformAPIEnabled"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_1

    :cond_5
    const/4 v3, 0x2

    goto :goto_1

    :sswitch_6
    const-string v4, "EnterpriseProxyCatBypassList"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_1

    :cond_6
    const/4 v3, 0x1

    goto :goto_1

    :sswitch_7
    const-string v4, "EnterpriseProxyCatProxyServer"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_1

    :cond_7
    move v3, v0

    :goto_1
    packed-switch v3, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    invoke-static {v2, v1, p1}, Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigFlags;->setDefaultSearchProviderEnabled(Ljava/lang/String;Landroid/content/RestrictionEntry;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_1
    invoke-static {v2, v1, p1}, Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigFlags;->setAutofillEnabled(Ljava/lang/String;Landroid/content/RestrictionEntry;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_2
    invoke-static {v2, v1, p1}, Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigFlags;->setProxyPacUrl(Ljava/lang/String;Landroid/content/RestrictionEntry;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_3
    invoke-static {v2, v1, p1}, Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigFlags;->setProxyType(Ljava/lang/String;Landroid/content/RestrictionEntry;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_4
    invoke-static {v2, v1, p1}, Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigFlags;->setPasswordManagerEnabled(Ljava/lang/String;Landroid/content/RestrictionEntry;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_5
    invoke-static {v2, v1, p1}, Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigFlags;->setEnterpriseHardwarePlatformApiEnabled(Ljava/lang/String;Landroid/content/RestrictionEntry;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_6
    invoke-static {v2, v1, p1}, Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigFlags;->setProxyBypassList(Ljava/lang/String;Landroid/content/RestrictionEntry;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_7
    invoke-static {v2, v1, p1}, Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigFlags;->setProxyServer(Ljava/lang/String;Landroid/content/RestrictionEntry;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_8
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x79bc0198 -> :sswitch_7
        -0x588f8451 -> :sswitch_6
        -0x5699efd -> :sswitch_5
        0x3d908e6f -> :sswitch_4
        0x42dcd847 -> :sswitch_3
        0x56330606 -> :sswitch_2
        0x5cdd4b0f -> :sswitch_1
        0x7c9db9a7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static setAutofillEnabled(Ljava/lang/String;Landroid/content/RestrictionEntry;Landroid/os/Bundle;)V
    .locals 1

    if-eqz p2, :cond_1

    invoke-virtual {p2, p0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/BrowserSettings;->getInstance()Lcom/sec/android/app/sbrowser/settings/BrowserSettings;

    move-result-object p1

    invoke-virtual {p2, p0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/settings/BrowserSettings;->setAutofillProfileEnabled(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/BrowserSettings;->getInstance()Lcom/sec/android/app/sbrowser/settings/BrowserSettings;

    move-result-object p1

    invoke-virtual {p2, p0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/settings/BrowserSettings;->setAutofillCreditCardEnabled(Z)V

    const/4 p0, 0x1

    sput-boolean p0, Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigFlags;->sIsAutofillRestrictionUsed:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private static setDefaultSearchProviderEnabled(Ljava/lang/String;Landroid/content/RestrictionEntry;Landroid/os/Bundle;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigFlags;->getBoolean(Ljava/lang/String;Landroid/content/RestrictionEntry;Landroid/os/Bundle;)Z

    move-result p0

    const-string p1, "updateDefaultSearchProvider = "

    const-string p2, "ManagedConfigFlags"

    invoke-static {p1, p2, p0}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private static setEnterpriseHardwarePlatformApiEnabled(Ljava/lang/String;Landroid/content/RestrictionEntry;Landroid/os/Bundle;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigFlags;->getBoolean(Ljava/lang/String;Landroid/content/RestrictionEntry;Landroid/os/Bundle;)Z

    move-result p0

    const-string p1, "updateEnterpriseApi = "

    const-string p2, "ManagedConfigFlags"

    invoke-static {p1, p2, p0}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private static setPasswordManagerEnabled(Ljava/lang/String;Landroid/content/RestrictionEntry;Landroid/os/Bundle;)V
    .locals 0

    if-eqz p2, :cond_1

    invoke-virtual {p2, p0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p1

    invoke-virtual {p2, p0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setSaveSigninEnabled(Z)V

    const/4 p0, 0x1

    sput-boolean p0, Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigFlags;->sIsPasswordManagerRestrictionUsed:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private static setProxyBypassList(Ljava/lang/String;Landroid/content/RestrictionEntry;Landroid/os/Bundle;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigFlags;->getString(Ljava/lang/String;Landroid/content/RestrictionEntry;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "proxyBypassList = "

    const-string p2, "ManagedConfigFlags"

    invoke-static {p1, p0, p2}, LV0/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    sput-boolean p1, Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigFlags;->sIsProxyRestrictionUsed:Z

    invoke-static {p0}, Lcom/sec/terrace/browser/net/TerracePolicyProvider;->setProxyBypassList(Ljava/lang/String;)V

    const-string p0, "8600"

    const-string p1, "1"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "8604"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static setProxyPacUrl(Ljava/lang/String;Landroid/content/RestrictionEntry;Landroid/os/Bundle;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigFlags;->getString(Ljava/lang/String;Landroid/content/RestrictionEntry;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "proxyPacUrl = "

    const-string p2, "ManagedConfigFlags"

    invoke-static {p1, p0, p2}, LV0/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    sput-boolean p1, Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigFlags;->sIsProxyRestrictionUsed:Z

    invoke-static {p0}, Lcom/sec/terrace/browser/net/TerracePolicyProvider;->setProxyPacUrl(Ljava/lang/String;)V

    const-string p0, "8600"

    const-string p1, "1"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "8603"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static setProxyServer(Ljava/lang/String;Landroid/content/RestrictionEntry;Landroid/os/Bundle;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigFlags;->getString(Ljava/lang/String;Landroid/content/RestrictionEntry;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "proxyServer = "

    const-string p2, "ManagedConfigFlags"

    invoke-static {p1, p0, p2}, LV0/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    sput-boolean p1, Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigFlags;->sIsProxyRestrictionUsed:Z

    invoke-static {p0}, Lcom/sec/terrace/browser/net/TerracePolicyProvider;->setProxyServer(Ljava/lang/String;)V

    const-string p0, "8600"

    const-string p1, "1"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "8602"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static setProxyType(Ljava/lang/String;Landroid/content/RestrictionEntry;Landroid/os/Bundle;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigFlags;->getString(Ljava/lang/String;Landroid/content/RestrictionEntry;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "proxyType = "

    const-string p2, "ManagedConfigFlags"

    invoke-static {p1, p0, p2}, LV0/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    sput-boolean p1, Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigFlags;->sIsProxyRestrictionUsed:Z

    invoke-static {p0}, Lcom/sec/terrace/browser/net/TerracePolicyProvider;->setProxyType(Ljava/lang/String;)V

    const-string p1, "8600"

    const-string p2, "1"

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "8601"

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
