.class Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$PATSwitchViewHolder;
.super Lcom/sec/android/app/sbrowser/settings/base_class/BaseHistoryAdapter$BaseItemViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PATSwitchViewHolder"
.end annotation


# instance fields
.field mAdapter:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;

.field mSwitch:Landroidx/appcompat/widget/SwitchCompat;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/base_class/BaseHistoryAdapter$BaseItemViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0b091f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/SwitchCompat;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$PATSwitchViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;->d(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f140a21

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/base_class/BaseHistoryAdapter$EmptyViewHolder;->mRowView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$PATSwitchViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$PATSwitchViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/h1;->getAdapterPosition()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$PATSwitchViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;->getListener()Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$Listener;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$PATSwitchViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/PrivacyHistoryBaseAdapter;->getDataFromIndex(I)Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/PrivacyHistoryBaseView;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/base_class/HistoryListBaseView;->getViewType()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$PATSwitchViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    if-eq p1, v2, :cond_3

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$PATSwitchViewHolder;->setSwitch(Z)V

    :cond_3
    move-object v2, v1

    check-cast v2, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryPATSwitchView;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$PATSwitchViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryPATSwitchView;->setSwitchState(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$PATSwitchViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;->getListener()Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$Listener;

    move-result-object p0

    const-string v2, ""

    invoke-interface {p0, p1, v1, v0, v2}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$Listener;->onItemClick(Landroid/view/View;Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/PrivacyHistoryBaseView;ILjava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public setSwitch(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$PATSwitchViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    return-void
.end method
