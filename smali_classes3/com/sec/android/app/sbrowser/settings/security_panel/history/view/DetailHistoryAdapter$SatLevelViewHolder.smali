.class Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$SatLevelViewHolder;
.super Lcom/sec/android/app/sbrowser/settings/base_class/BaseHistoryAdapter$BaseItemViewHolder;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SatLevelViewHolder"
.end annotation


# instance fields
.field mAdapter:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;

.field mCommonText:Landroid/widget/TextView;

.field mDividerView:Landroid/view/View;

.field mRadioBtn:Landroid/widget/RadioButton;

.field mSatOptions:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/base_class/BaseHistoryAdapter$BaseItemViewHolder;-><init>(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/base_class/BaseHistoryAdapter$EmptyViewHolder;->mRowView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b086e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$SatLevelViewHolder;->mRadioBtn:Landroid/widget/RadioButton;

    const v0, 0x7f0b0871

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$SatLevelViewHolder;->mSatOptions:Landroid/widget/TextView;

    const v0, 0x7f0b0a23

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$SatLevelViewHolder;->mDividerView:Landroid/view/View;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$SatLevelViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;

    const p2, 0x7f0b03f9

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$SatLevelViewHolder;->mCommonText:Landroid/widget/TextView;

    const/16 p0, 0x8

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public getRadioBtn()Landroid/widget/RadioButton;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$SatLevelViewHolder;->mRadioBtn:Landroid/widget/RadioButton;

    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/h1;->getAdapterPosition()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getAntiTrackingLevel(Z)I

    move-result v1

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setAntiTrackingLevel(ZI)V

    invoke-static {v2, v0}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setAntiTrackingLevel(ZI)V

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/privacy_pass/PATFeatureConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/privacy_pass/PATFeatureConfigManager;

    move-result-object v1

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/privacy_pass/PATFeatureConfigManager;->isPATEnabled(Z)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/sbrowser/privacy_pass/PATFeatureConfigManager;->setPrivateAccessToken(ZZ)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$SatLevelViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;->e(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;)Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$Listener;

    move-result-object p0

    invoke-interface {p0, p1, v0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$Listener;->onSatLevelChanged(Landroid/view/View;I)V

    return-void
.end method

.method public setCommon(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$SatLevelViewHolder;->mCommonText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$SatLevelViewHolder;->mCommonText:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setDividerVisible(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$SatLevelViewHolder;->mDividerView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public setOptions(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$SatLevelViewHolder;->mSatOptions:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
