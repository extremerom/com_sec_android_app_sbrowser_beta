.class public Lcom/sec/android/app/sbrowser/settings/accept_cookies/AcceptCookieDetailPreferenceFragment;
.super Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;
.source "SourceFile"


# instance fields
.field private mConfirmDialog:Lm/l;

.field mKeys:[Ljava/lang/String;

.field mLabel:[Ljava/lang/String;

.field mPreviousSelection:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;-><init>()V

    const-string v0, "BLOCK_THIRD_PARTY"

    const-string v1, "BLOCK_ALL"

    const-string v2, "ALLOW_ALL"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/accept_cookies/AcceptCookieDetailPreferenceFragment;->mKeys:[Ljava/lang/String;

    return-void
.end method

.method public static synthetic i(Lcom/sec/android/app/sbrowser/settings/accept_cookies/AcceptCookieDetailPreferenceFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/accept_cookies/AcceptCookieDetailPreferenceFragment;->lambda$showConfirmCookiePopup$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static bridge synthetic j(Lcom/sec/android/app/sbrowser/settings/accept_cookies/AcceptCookieDetailPreferenceFragment;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/accept_cookies/AcceptCookieDetailPreferenceFragment;->mConfirmDialog:Lm/l;

    return-void
.end method

.method private synthetic lambda$showConfirmCookiePopup$0(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p1, -0x2

    const/4 v0, 0x0

    if-eq p2, p1, :cond_1

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/accept_cookies/AcceptCookieDetailPreferenceFragment;->getScreenID()Ljava/lang/String;

    move-result-object p1

    const p2, 0x7f140c76

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f140d51

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    const p2, 0x7f140c04

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/accept_cookies/AcceptCookieDetailPreferenceFragment;->setAcceptCookiesEnabled(Z)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/accept_cookies/AcceptCookieDetailPreferenceFragment;->setAllowThirdPartyCookiesEnabled(Z)V

    const-string p1, "BLOCK_ALL"

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/accept_cookies/AcceptCookieDetailPreferenceFragment;->updateOptionGui(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/accept_cookies/AcceptCookieDetailPreferenceFragment;->mConfirmDialog:Lm/l;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/accept_cookies/AcceptCookieDetailPreferenceFragment;->getScreenID()Ljava/lang/String;

    move-result-object p1

    const p2, 0x7f140c77

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/accept_cookies/AcceptCookieDetailPreferenceFragment;->mConfirmDialog:Lm/l;

    :goto_0
    return-void
.end method

.method private setAcceptCookiesEnabled(Z)V
    .locals 0

    invoke-static {p1}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setAllowCookiesEnabled(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setCookieEnabled(Z)V

    return-void
.end method

.method private setAllowThirdPartyCookiesEnabled(Z)V
    .locals 0

    invoke-static {p1}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setAllowThirdPartyCookies(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setAllowThirdPartyCookiesEnabled(Z)V

    return-void
.end method

.method private showConfirmCookiePopup()V
    .locals 4

    new-instance v0, Lcom/sec/android/app/sbrowser/appshortcut/b;

    const/16 v1, 0x9

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/appshortcut/b;-><init>(ILjava/lang/Object;)V

    new-instance v1, Lm/k;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object v2

    const v3, 0x7f150324

    invoke-direct {v1, v2, v3}, Lm/k;-><init>(Landroid/content/Context;I)V

    iget-object v2, v1, Lm/k;->a:Lm/h;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lm/h;->m:Z

    const-string v2, ""

    invoke-virtual {v1, v2}, Lm/k;->setTitle(Ljava/lang/CharSequence;)Lm/k;

    move-result-object v1

    const v2, 0x7f140922

    invoke-virtual {v1, v2}, Lm/k;->a(I)V

    const v2, 0x7f140923

    invoke-virtual {v1, v2, v0}, Lm/k;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object v1

    const v2, 0x7f1402c1

    invoke-virtual {v1, v2, v0}, Lm/k;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/accept_cookies/AcceptCookieDetailPreferenceFragment$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/settings/accept_cookies/AcceptCookieDetailPreferenceFragment$1;-><init>(Lcom/sec/android/app/sbrowser/settings/accept_cookies/AcceptCookieDetailPreferenceFragment;)V

    iget-object v2, v0, Lm/k;->a:Lm/h;

    iput-object v1, v2, Lm/h;->o:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0}, Lm/k;->create()Lm/l;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/accept_cookies/AcceptCookieDetailPreferenceFragment;->mConfirmDialog:Lm/l;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setSEP10Dialog(Landroid/app/Dialog;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/accept_cookies/AcceptCookieDetailPreferenceFragment;->mConfirmDialog:Lm/l;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void

    :cond_1
    :goto_0
    const-string p0, "AcceptCookieDetailPreferenceFragment"

    const-string v0, "activity is invalid, dialog for AcceptCookiesPreferenceFragment"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateOptionGui(Ljava/lang/String;)V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lw2/A;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    const-string v3, "ALLOW_ALL"

    invoke-virtual {v2, v3}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;

    invoke-virtual {p0}, Lw2/A;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v4

    const-string v5, "BLOCK_THIRD_PARTY"

    invoke-virtual {v4, v5}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;

    invoke-virtual {p0}, Lw2/A;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "BLOCK_ALL"

    invoke-virtual {v6, v7}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;

    const-string v8, "AcceptCookieDetailPreferenceFragment"

    if-eqz v2, :cond_4

    if-eqz v4, :cond_4

    if-nez v6, :cond_0

    goto :goto_2

    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/accept_cookies/AcceptCookieDetailPreferenceFragment;->mPreviousSelection:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x2

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move p0, v1

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move p0, v0

    :goto_0
    packed-switch p0, :pswitch_data_0

    const-string p0, "invalid index!!"

    invoke-static {v8, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_0
    invoke-virtual {v2, v0}, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->setChecked(Z)V

    invoke-virtual {v4, v1}, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->setChecked(Z)V

    invoke-virtual {v6, v0}, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->setChecked(Z)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {v2, v0}, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->setChecked(Z)V

    invoke-virtual {v4, v0}, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->setChecked(Z)V

    invoke-virtual {v6, v1}, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->setChecked(Z)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {v2, v1}, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->setChecked(Z)V

    invoke-virtual {v4, v0}, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->setChecked(Z)V

    invoke-virtual {v6, v0}, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->setChecked(Z)V

    :goto_1
    return-void

    :cond_4
    :goto_2
    const-string p0, "one of checkboxPref is null!!"

    invoke-static {v8, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x43a7e495 -> :sswitch_2
        -0x25d40551 -> :sswitch_1
        0x274ab0fc -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getNavigateUpID()Ljava/lang/String;
    .locals 1

    const v0, 0x7f140c79

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getScreenID()Ljava/lang/String;
    .locals 0

    const-string p0, "564"

    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;->onCreate(Landroid/os/Bundle;)V

    const/high16 p1, 0x7f180000

    invoke-virtual {p0, p1}, Lw2/A;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v0, "settings_accept_cookies_description"

    invoke-virtual {p0, v0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->shouldUseTabletDid(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f140925

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const v2, 0x7f140924

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x7f140926

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f140927

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    const v0, 0x7f03002d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/accept_cookies/AcceptCookieDetailPreferenceFragment;->mLabel:[Ljava/lang/String;

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    const/4 v2, 0x3

    const-string v3, "BLOCK_ALL"

    if-ge v1, v2, :cond_4

    new-instance v2, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/settings/accept_cookies/AcceptCookieDetailPreferenceFragment;->mLabel:[Ljava/lang/String;

    aget-object v5, v5, v1

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/settings/accept_cookies/AcceptCookieDetailPreferenceFragment;->mKeys:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/accept_cookies/AcceptCookieDetailPreferenceFragment;->mKeys:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const v3, 0x7f140921

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->setPreferenceSummary(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lw2/A;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    invoke-virtual {v2, v0}, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->setDividerVisibility(Z)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->isAllowCookiesEnabled()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->isThirdPartyCookiesEnabled()Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "ALLOW_ALL"

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/accept_cookies/AcceptCookieDetailPreferenceFragment;->updateOptionGui(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const-string p1, "BLOCK_THIRD_PARTY"

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/accept_cookies/AcceptCookieDetailPreferenceFragment;->updateOptionGui(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    invoke-direct {p0, v3}, Lcom/sec/android/app/sbrowser/settings/accept_cookies/AcceptCookieDetailPreferenceFragment;->updateOptionGui(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lw2/A;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 9

    const-string v0, "BLOCK_THIRD_PARTY"

    const-string v1, "BLOCK_ALL"

    const-string v2, "ALLOW_ALL"

    const/4 v3, 0x1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    return v5

    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v6, 0x7f140d51

    const/4 v7, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v7, 0x2

    goto :goto_0

    :sswitch_1
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    move v7, v3

    goto :goto_0

    :sswitch_2
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    move v7, v5

    :goto_0
    packed-switch v7, :pswitch_data_0

    const-string v0, "AcceptCookieDetailPreferenceFragment"

    const-string v1, "invalid option!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/accept_cookies/AcceptCookieDetailPreferenceFragment;->getScreenID()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f140c78

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f140c05

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/settings/accept_cookies/AcceptCookieDetailPreferenceFragment;->updateOptionGui(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/sec/android/app/sbrowser/settings/accept_cookies/AcceptCookieDetailPreferenceFragment;->setAcceptCookiesEnabled(Z)V

    invoke-direct {p0, v5}, Lcom/sec/android/app/sbrowser/settings/accept_cookies/AcceptCookieDetailPreferenceFragment;->setAllowThirdPartyCookiesEnabled(Z)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/accept_cookies/AcceptCookieDetailPreferenceFragment;->getScreenID()Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f140c75

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/accept_cookies/AcceptCookieDetailPreferenceFragment;->mPreviousSelection:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/accept_cookies/AcceptCookieDetailPreferenceFragment;->mConfirmDialog:Lm/l;

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/accept_cookies/AcceptCookieDetailPreferenceFragment;->showConfirmCookiePopup()V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/accept_cookies/AcceptCookieDetailPreferenceFragment;->getScreenID()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f140c74

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f140c03

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/settings/accept_cookies/AcceptCookieDetailPreferenceFragment;->updateOptionGui(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/sec/android/app/sbrowser/settings/accept_cookies/AcceptCookieDetailPreferenceFragment;->setAcceptCookiesEnabled(Z)V

    invoke-direct {p0, v3}, Lcom/sec/android/app/sbrowser/settings/accept_cookies/AcceptCookieDetailPreferenceFragment;->setAllowThirdPartyCookiesEnabled(Z)V

    :cond_4
    :goto_1
    invoke-super {p0, p1}, Lw2/A;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x43a7e495 -> :sswitch_2
        -0x25d40551 -> :sswitch_1
        0x274ab0fc -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Lw2/A;->onStart()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    if-eqz p0, :cond_0

    const v0, 0x7f14095a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    :cond_0
    return-void
.end method
