.class Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter$StatusViewHolder;
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
    name = "StatusViewHolder"
.end annotation


# instance fields
.field mAdapter:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter;

.field mCommonText:Landroid/widget/TextView;

.field mDividerView:Landroid/view/View;

.field mRadioButton:Landroid/widget/RadioButton;

.field mRowView:Landroid/view/View;

.field mSatOptions:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sesl_common/SeslBaseViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter$StatusViewHolder;->mRowView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b086e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter$StatusViewHolder;->mRadioButton:Landroid/widget/RadioButton;

    const v0, 0x7f0b0871

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter$StatusViewHolder;->mSatOptions:Landroid/widget/TextView;

    const v0, 0x7f0b0a23

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter$StatusViewHolder;->mDividerView:Landroid/view/View;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter$StatusViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter;

    const p2, 0x7f0b03f9

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter$StatusViewHolder;->mCommonText:Landroid/widget/TextView;

    const/16 p0, 0x8

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public getCommon()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter$StatusViewHolder;->mCommonText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRadioButton()Landroid/widget/RadioButton;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter$StatusViewHolder;->mRadioButton:Landroid/widget/RadioButton;

    return-object p0
.end method

.method public getRowView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter$StatusViewHolder;->mRowView:Landroid/view/View;

    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/h1;->getBindingAdapterPosition()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getAntiTrackingLevel(Z)I

    move-result v1

    add-int/2addr v0, v2

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter$StatusViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter;->c(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter;I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setAntiTrackingLevel(ZI)V

    invoke-static {v2, v0}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setAntiTrackingLevel(ZI)V

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter$StatusViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter;->b(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter;)Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter$SatListener;

    move-result-object p0

    invoke-interface {p0, p1, v0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter$SatListener;->onSatLevelChanged(Landroid/view/View;I)V

    return-void
.end method

.method public setCommon(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter$StatusViewHolder;->mCommonText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter$StatusViewHolder;->mCommonText:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setDividerVisible(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter$StatusViewHolder;->mDividerView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public setOptions(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter$StatusViewHolder;->mSatOptions:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
