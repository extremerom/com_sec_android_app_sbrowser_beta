.class Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter$PATSwitchViewHolder;
.super Lcom/sec/android/app/sbrowser/sesl_common/SeslBaseViewHolder;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PATSwitchViewHolder"
.end annotation


# instance fields
.field mAdapter:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter;

.field final mRowView:Landroid/view/View;

.field mSwitch:Landroidx/appcompat/widget/SwitchCompat;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sesl_common/SeslBaseViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter$PATSwitchViewHolder;->mRowView:Landroid/view/View;

    const v0, 0x7f0b091f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter$PATSwitchViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter$PATSwitchViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter$PATSwitchViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/h1;->getAdapterPosition()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter$PATSwitchViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter;->getPATView()Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryPATSwitchView;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter$PATSwitchViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter$PATSwitchViewHolder;->setSwitch(Z)V

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter$PATSwitchViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter;->getPATView()Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryPATSwitchView;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter$PATSwitchViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryPATSwitchView;->setSwitchState(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/privacy_pass/PATFeatureConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/privacy_pass/PATFeatureConfigManager;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter$PATSwitchViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/sec/android/app/sbrowser/privacy_pass/PATFeatureConfigManager;->setPrivateAccessToken(ZZ)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setPrivacySettingsReset(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter$PATSwitchViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter;->a(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter;)Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f140caa

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter$PATSwitchViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_3

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_3
    const-wide/16 v0, 0x0

    :goto_0
    const-string p0, "510"

    invoke-static {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_4
    :goto_1
    return-void
.end method

.method public setDividerVisible(I)V
    .locals 0

    return-void
.end method

.method public setSwitch(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter$PATSwitchViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    return-void
.end method
