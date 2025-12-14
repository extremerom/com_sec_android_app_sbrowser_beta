.class public Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;
.super Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/PrivacyHistoryBaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$HeaderViewHolder;,
        Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$ItemViewHolder;,
        Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$DescriptionViewHolder;,
        Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$SummaryViewHolder;,
        Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$NoItemViewHolder;,
        Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$SatViewMoreHolder;,
        Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$SatLevelViewHolder;,
        Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$PATSwitchViewHolder;,
        Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$Listener;
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mCheckStates:[Z

.field private mIsActionMode:Z

.field private mKey:Ljava/lang/String;

.field private mListener:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$Listener;

.field private mSatLevel:I

.field private mShouldHighlightPat:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/PrivacyHistoryBaseView;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/PrivacyHistoryBaseAdapter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;->mIsActionMode:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;->mShouldHighlightPat:Z

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/PrivacyHistoryBaseAdapter;->mHistoryItem:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p2, "sbrowser.settings.show_fragment_args"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    const-string v0, "key"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;->mKey:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string p1, ":settings:fragment_args_key"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string p2, "private_access_token"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;->mShouldHighlightPat:Z

    :cond_2
    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$PATSwitchViewHolder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;->lambda$bindPATSwitchViewHolder$1(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$PATSwitchViewHolder;)V

    return-void
.end method

.method public static synthetic b(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;->lambda$bindPATSwitchViewHolder$0(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method private bindDescriptionViewHolder(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$DescriptionViewHolder;Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryDescriptionView;I)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;->mIsActionMode:Z

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$DescriptionViewHolder;->setAlpha(Z)V

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryDescriptionView;->getDescription()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$DescriptionViewHolder;->setSummary(Ljava/lang/String;)V

    return-void
.end method

.method private bindHeaderViewHolder(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$HeaderViewHolder;Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryHeaderView;)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryHeaderView;->getHeaderText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$HeaderViewHolder;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method private bindItemViewHolder(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$ItemViewHolder;Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryItemView;I)V
    .locals 5

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryItemView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryItemView;->getViewType()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x5

    if-ne v1, v4, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-virtual {p1, v0, v1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$ItemViewHolder;->setUrl(Ljava/lang/String;Z)V

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryItemView;->getViewType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryItemView;->getTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$ItemViewHolder;->setCommon(J)V

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryItemView;->getViewType()I

    move-result v0

    if-ne v0, v4, :cond_3

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryItemView;->getBlockedCount()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$ItemViewHolder;->setCommon(I)V

    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/base_class/BaseHistoryAdapter$EmptyViewHolder;->getRowView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;->isClickable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/base_class/BaseHistoryAdapter$EmptyViewHolder;->getRowView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;->isLongClickable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLongClickable(Z)V

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryItemView;->isBlocked()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryItemView;->getViewType()I

    move-result v0

    if-eq v0, v4, :cond_4

    move v2, v3

    :cond_4
    invoke-virtual {p1, v2}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$ItemViewHolder;->setBlockIcon(Z)V

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryItemView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$ItemViewHolder;->getCommonText()Ljava/lang/String;

    move-result-object v1

    const-string v2, ", "

    invoke-static {v0, v2, v1}, Lt/b;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryItemView;->isBlocked()Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f14043e

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v2, v0}, Lt/b;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_5
    iget-boolean p2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;->mIsActionMode:Z

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;->mCheckStates:[Z

    aget-boolean p2, p2, p3

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f140289

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_6
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f14028a

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    :goto_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f140b8f

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_7
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/base_class/BaseHistoryAdapter$EmptyViewHolder;->getRowView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, p3}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;->isLastChildInGroup(I)Z

    move-result v0

    invoke-direct {p0, p3}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;->isFirstChildInGroup(I)Z

    move-result v1

    invoke-static {p2, p1, v0, v1}, Lcom/sec/android/app/sbrowser/sesl_common/SeslUtil;->setBackgroundForItems(Landroid/content/Context;Lcom/sec/android/app/sbrowser/sesl_common/SeslBaseViewHolder;ZZ)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;->isLongClickable()Z

    move-result p2

    if-eqz p2, :cond_8

    iget-boolean p2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;->mIsActionMode:Z

    invoke-virtual {p1, v3, p2}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$ItemViewHolder;->setIsSelectable(ZZ)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;->mCheckStates:[Z

    aget-boolean p2, p2, p3

    invoke-virtual {p1, p3, p2}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$ItemViewHolder;->bindData(IZ)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/base_class/BaseHistoryAdapter$EmptyViewHolder;->getRowView()Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;->mCheckStates:[Z

    aget-boolean p2, p2, p3

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;->setSelectedItemBackgroundHighlight(Landroid/view/View;Z)V

    :cond_8
    return-void
.end method

.method private bindNoItemViewHolder(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$NoItemViewHolder;Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryNoItemView;I)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$NoItemViewHolder;->setFixedHeight()V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$NoItemViewHolder;->getTextView()Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryNoItemView;->getSummary()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private bindPATSwitchViewHolder(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$PATSwitchViewHolder;Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryPATSwitchView;I)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryPATSwitchView;->getSwitchState()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$PATSwitchViewHolder;->setSwitch(Z)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/base_class/BaseHistoryAdapter$EmptyViewHolder;->getRowView()Landroid/view/View;

    move-result-object p2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getAntiTrackingLevel(Z)I

    move-result p3

    if-nez p3, :cond_1

    const/16 p3, 0x8

    goto :goto_0

    :cond_1
    move p3, v0

    :goto_0
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;->mActivity:Landroid/app/Activity;

    const/4 p3, 0x1

    invoke-static {p2, p1, p3, p3}, Lcom/sec/android/app/sbrowser/sesl_common/SeslUtil;->setBackgroundForItems(Landroid/content/Context;Lcom/sec/android/app/sbrowser/sesl_common/SeslBaseViewHolder;ZZ)V

    iget-boolean p2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;->mShouldHighlightPat:Z

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;->mActivity:Landroid/app/Activity;

    const p3, 0x7f0b03fa

    invoke-virtual {p2, p3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/u0;

    move-result-object p3

    if-eqz p3, :cond_2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/u0;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/recyclerview/widget/u0;->getItemCount()I

    move-result p3

    if-lez p3, :cond_2

    new-instance p3, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/e;

    const/4 v1, 0x1

    invoke-direct {p3, v1, p2}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/e;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_2
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    new-instance p3, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/a;

    const/4 v1, 0x0

    invoke-direct {p3, p0, p1, v1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/a;-><init>(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$PATSwitchViewHolder;I)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p2, p3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;->mShouldHighlightPat:Z

    :cond_3
    return-void
.end method

.method private bindSatLevelViewHolder(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$SatLevelViewHolder;Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatLevelView;I)V
    .locals 5

    if-nez p2, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, p3, -0x1

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatLevelView;->getLevelName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$SatLevelViewHolder;->setOptions(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatLevelView;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$SatLevelViewHolder;->setCommon(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$SatLevelViewHolder;->getRadioBtn()Landroid/widget/RadioButton;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$SatLevelViewHolder;->getRadioBtn()Landroid/widget/RadioButton;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$SatLevelViewHolder;->getRadioBtn()Landroid/widget/RadioButton;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$SatLevelViewHolder;->getRadioBtn()Landroid/widget/RadioButton;

    move-result-object v1

    iget v4, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;->mSatLevel:I

    if-ne v0, v4, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$SatLevelViewHolder;->getRadioBtn()Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f140e6f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f14081f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$SatLevelViewHolder;->getRadioBtn()Landroid/widget/RadioButton;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatLevelView;->getLevelName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f140b96

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatLevelView;->getDescription()Ljava/lang/String;

    move-result-object p2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v0, p2}, Lt/b;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/base_class/BaseHistoryAdapter$EmptyViewHolder;->getRowView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, p3}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;->isLastChildInSatLevel(I)Z

    move-result v0

    invoke-direct {p0, p3}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;->isFirstChildInSatLevel(I)Z

    move-result p0

    invoke-static {p2, p1, v0, p0}, Lcom/sec/android/app/sbrowser/sesl_common/SeslUtil;->setBackgroundForItems(Landroid/content/Context;Lcom/sec/android/app/sbrowser/sesl_common/SeslBaseViewHolder;ZZ)V

    return-void
.end method

.method private bindSatViewAllHolder(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$SatViewMoreHolder;Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatMoreView;I)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;->mActivity:Landroid/app/Activity;

    const/4 p2, 0x0

    invoke-static {p0, p1, p2, p2}, Lcom/sec/android/app/sbrowser/sesl_common/SeslUtil;->setBackgroundForItems(Landroid/content/Context;Lcom/sec/android/app/sbrowser/sesl_common/SeslBaseViewHolder;ZZ)V

    return-void
.end method

.method private bindSummaryViewHolder(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$SummaryViewHolder;Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySummaryView;I)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;->mIsActionMode:Z

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$SummaryViewHolder;->setAlpha(Z)V

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySummaryView;->getSummary()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$SummaryViewHolder;->setSummary(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$PATSwitchViewHolder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;->lambda$bindPATSwitchViewHolder$2(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$PATSwitchViewHolder;)V

    return-void
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;)Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$Listener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;->mListener:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$Listener;

    return-object p0
.end method

.method private getDescriptionViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/h1;
    .locals 1

    const p0, 0x7f0e0828

    const/4 v0, 0x0

    invoke-static {p1, p0, p1, v0}, Landroidx/recyclerview/widget/P;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    new-instance p1, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$DescriptionViewHolder;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$DescriptionViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method private getEmptyViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/h1;
    .locals 1

    const p0, 0x7f0e0829

    const/4 v0, 0x0

    invoke-static {p1, p0, p1, v0}, Landroidx/recyclerview/widget/P;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    new-instance p1, Lcom/sec/android/app/sbrowser/settings/base_class/BaseHistoryAdapter$EmptyViewHolder;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/settings/base_class/BaseHistoryAdapter$EmptyViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method private getHeaderViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/h1;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const p0, 0x7f0e082a

    const/4 v0, 0x0

    invoke-static {p1, p0, p1, v0}, Landroidx/recyclerview/widget/P;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    new-instance p1, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$HeaderViewHolder;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$HeaderViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method private getItemViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/h1;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const v0, 0x7f0e082b

    const/4 v1, 0x0

    invoke-static {p1, v0, p1, v1}, Landroidx/recyclerview/widget/P;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$ItemViewHolder;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$ItemViewHolder;-><init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;)V

    return-object v0
.end method

.method private getNoItemViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/h1;
    .locals 1

    const p0, 0x7f0e082c

    const/4 v0, 0x0

    invoke-static {p1, p0, p1, v0}, Landroidx/recyclerview/widget/P;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$NoItemViewHolder;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$NoItemViewHolder;-><init>(Landroid/view/View;Landroid/view/ViewGroup;)V

    return-object v0
.end method

.method private getPATSwitchViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/h1;
    .locals 2

    const v0, 0x7f0e082e

    const/4 v1, 0x0

    invoke-static {p1, v0, p1, v1}, Landroidx/recyclerview/widget/P;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$PATSwitchViewHolder;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$PATSwitchViewHolder;-><init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;)V

    return-object v0
.end method

.method private getSatLevelViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/h1;
    .locals 2

    const v0, 0x7f0e082f

    const/4 v1, 0x0

    invoke-static {p1, v0, p1, v1}, Landroidx/recyclerview/widget/P;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$SatLevelViewHolder;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$SatLevelViewHolder;-><init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;)V

    return-object v0
.end method

.method private getSatViewAllHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/h1;
    .locals 2

    const v0, 0x7f0e0831

    const/4 v1, 0x0

    invoke-static {p1, v0, p1, v1}, Landroidx/recyclerview/widget/P;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$SatViewMoreHolder;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$SatViewMoreHolder;-><init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;)V

    return-object v0
.end method

.method private getSummaryViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/h1;
    .locals 1

    const p0, 0x7f0e0830

    const/4 v0, 0x0

    invoke-static {p1, p0, p1, v0}, Landroidx/recyclerview/widget/P;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    new-instance p1, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$SummaryViewHolder;

    invoke-direct {p1, p0, v0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$SummaryViewHolder;-><init>(Landroid/view/View;Z)V

    return-object p1
.end method

.method private isFirstChildInGroup(I)Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/PrivacyHistoryBaseAdapter;->mHistoryItem:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, p1, -0x1

    const/4 v2, 0x1

    if-ltz v0, :cond_3

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;->isFirstItem(I)Z

    move-result p0

    if-eq p1, p0, :cond_1

    if-eqz p0, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    return v1

    :cond_3
    const/4 p0, -0x1

    if-ne v0, p0, :cond_4

    return v2

    :cond_4
    return v1
.end method

.method private isFirstChildInSatLevel(I)Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/PrivacyHistoryBaseAdapter;->mHistoryItem:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x1

    sub-int/2addr p1, p0

    if-nez p1, :cond_1

    return p0

    :cond_1
    return v0
.end method

.method private isFirstItem(I)Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;->mKey:Ljava/lang/String;

    const-string v1, "anti_tracking_level"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/PrivacyHistoryBaseAdapter;->mHistoryItem:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/PrivacyHistoryBaseView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/base_class/HistoryListBaseView;->getViewType()I

    move-result p0

    if-ne p0, v1, :cond_2

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;->mKey:Ljava/lang/String;

    const-string v2, "view_all"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/PrivacyHistoryBaseAdapter;->mHistoryItem:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/PrivacyHistoryBaseView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/base_class/HistoryListBaseView;->getViewType()I

    move-result p0

    if-ne p0, v1, :cond_2

    return v1

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/PrivacyHistoryBaseAdapter;->mHistoryItem:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/PrivacyHistoryBaseView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/base_class/HistoryListBaseView;->getViewType()I

    move-result p0

    const/4 p1, 0x3

    if-ne p0, p1, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private isLastChildInGroup(I)Z
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/PrivacyHistoryBaseAdapter;->mHistoryItem:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    add-int/lit8 v3, p1, 0x1

    if-le v3, v0, :cond_1

    return v2

    :cond_1
    if-eq p1, v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/PrivacyHistoryBaseAdapter;->mHistoryItem:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/PrivacyHistoryBaseView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/base_class/HistoryListBaseView;->getViewType()I

    move-result p0

    const/4 p1, 0x3

    if-ne p0, p1, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    return v1
.end method

.method private isLastChildInSatLevel(I)Z
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/PrivacyHistoryBaseAdapter;->mHistoryItem:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    add-int/lit8 v3, p1, 0x1

    if-le v3, v0, :cond_1

    return v2

    :cond_1
    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/PrivacyHistoryBaseAdapter;->mHistoryItem:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/PrivacyHistoryBaseView;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/base_class/HistoryListBaseView;->getViewType()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/PrivacyHistoryBaseAdapter;->mHistoryItem:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/PrivacyHistoryBaseView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/base_class/HistoryListBaseView;->getViewType()I

    move-result p0

    if-eq p0, v0, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    return v1
.end method

.method private static synthetic lambda$bindPATSwitchViewHolder$0(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/u0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/u0;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method

.method private synthetic lambda$bindPATSwitchViewHolder$1(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$PATSwitchViewHolder;)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;->mActivity:Landroid/app/Activity;

    const/4 v0, 0x1

    invoke-static {p0, p1, v0, v0}, Lcom/sec/android/app/sbrowser/sesl_common/SeslUtil;->setBackgroundForItems(Landroid/content/Context;Lcom/sec/android/app/sbrowser/sesl_common/SeslBaseViewHolder;ZZ)V

    return-void
.end method

.method private synthetic lambda$bindPATSwitchViewHolder$2(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$PATSwitchViewHolder;)V
    .locals 4

    const v0, 0x7f04045e

    filled-new-array {v0}, [I

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iget-object v2, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/a;

    const/4 v3, 0x1

    invoke-direct {v2, p0, p1, v3}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/a;-><init>(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$PATSwitchViewHolder;I)V

    const-wide/16 p0, 0xc8

    invoke-virtual {v1, v2, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getItemViewType(I)I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/PrivacyHistoryBaseAdapter;->mHistoryItem:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/PrivacyHistoryBaseView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/base_class/HistoryListBaseView;->getViewType()I

    move-result p0

    return p0
.end method

.method public getListener()Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$Listener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;->mListener:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$Listener;

    return-object p0
.end method

.method public isClickable()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;->mKey:Ljava/lang/String;

    const-string v1, "block_popups"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;->mKey:Ljava/lang/String;

    const-string v1, "block_unwanted_webpages"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;->mKey:Ljava/lang/String;

    const-string v0, "safe_browsing"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public isLongClickable()Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;->mKey:Ljava/lang/String;

    const-string v0, "safe_browsing"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/h1;I)V
    .locals 3
    .param p1    # Landroidx/recyclerview/widget/h1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/PrivacyHistoryBaseAdapter;->getDataFromIndex(I)Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/PrivacyHistoryBaseView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/base_class/HistoryListBaseView;->getViewType()I

    move-result v1

    const/16 v2, 0x14

    if-eq v1, v2, :cond_1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p1, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$PATSwitchViewHolder;

    check-cast v0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryPATSwitchView;

    invoke-direct {p0, p1, v0, p2}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;->bindPATSwitchViewHolder(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$PATSwitchViewHolder;Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryPATSwitchView;I)V

    goto :goto_0

    :pswitch_1
    check-cast p1, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$SatViewMoreHolder;

    check-cast v0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatMoreView;

    invoke-direct {p0, p1, v0, p2}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;->bindSatViewAllHolder(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$SatViewMoreHolder;Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatMoreView;I)V

    goto :goto_0

    :pswitch_2
    check-cast p1, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$ItemViewHolder;

    check-cast v0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryItemView;

    invoke-direct {p0, p1, v0, p2}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;->bindItemViewHolder(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$ItemViewHolder;Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryItemView;I)V

    goto :goto_0

    :pswitch_3
    check-cast p1, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$HeaderViewHolder;

    check-cast v0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryHeaderView;

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;->bindHeaderViewHolder(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$HeaderViewHolder;Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryHeaderView;)V

    goto :goto_0

    :pswitch_4
    check-cast p1, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$SatLevelViewHolder;

    check-cast v0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatLevelView;

    invoke-direct {p0, p1, v0, p2}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;->bindSatLevelViewHolder(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$SatLevelViewHolder;Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatLevelView;I)V

    goto :goto_0

    :pswitch_5
    check-cast p1, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$SummaryViewHolder;

    check-cast v0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySummaryView;

    invoke-direct {p0, p1, v0, p2}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;->bindSummaryViewHolder(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$SummaryViewHolder;Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySummaryView;I)V

    goto :goto_0

    :pswitch_6
    check-cast p1, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$DescriptionViewHolder;

    check-cast v0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryDescriptionView;

    invoke-direct {p0, p1, v0, p2}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;->bindDescriptionViewHolder(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$DescriptionViewHolder;Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryDescriptionView;I)V

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$NoItemViewHolder;

    check-cast v0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryNoItemView;

    invoke-direct {p0, p1, v0, p2}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;->bindNoItemViewHolder(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$NoItemViewHolder;Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryNoItemView;I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/h1;
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/16 v0, 0xa

    if-eq p2, v0, :cond_1

    const/16 v0, 0x14

    if-eq p2, v0, :cond_0

    packed-switch p2, :pswitch_data_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;->getEmptyViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/h1;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;->getPATSwitchViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/h1;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;->getSatViewAllHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/h1;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;->getItemViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/h1;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;->getHeaderViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/h1;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;->getSatLevelViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/h1;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;->getSummaryViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/h1;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;->getDescriptionViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/h1;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;->getNoItemViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/h1;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;->getEmptyViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/h1;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public setBottombarFocus()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;->mListener:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$Listener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$Listener;->setBottombarFocus()V

    return-void
.end method

.method public setContentDescription(Landroid/view/View;Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryItemView;ZLjava/lang/String;)V
    .locals 2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryItemView;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, ", "

    invoke-static {v0, v1, p4}, Lt/b;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryItemView;->isBlocked()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f14043e

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v1, p4}, Lt/b;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    :cond_0
    iget-boolean p2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;->mIsActionMode:Z

    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f140289

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f14028a

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p3, 0x7f140b8f

    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    :cond_2
    invoke-virtual {p1, p4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setIsActionMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;->mIsActionMode:Z

    return-void
.end method

.method public setListData(Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .locals 3
    .param p1    # Ljava/util/concurrent/CopyOnWriteArrayList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/PrivacyHistoryBaseView;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;->mKey:Ljava/lang/String;

    const-string v1, "anti_tracking_level"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getAntiTrackingLevel(Z)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;->mSatLevel:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " ------------------> DetailHistoryAdapter mSatLevel: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;->mSatLevel:I

    const-string v2, "DetailHistoryAdapter"

    invoke-static {v0, v1, v2}, Landroidx/recyclerview/widget/P;->x(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/PrivacyHistoryBaseAdapter;->mHistoryItem:Ljava/util/concurrent/CopyOnWriteArrayList;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/PrivacyHistoryBaseAdapter;->mHistoryItem:Ljava/util/concurrent/CopyOnWriteArrayList;

    :goto_0
    return-void
.end method

.method public setListener(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;->mListener:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter$Listener;

    return-void
.end method

.method public setSelectedItemBackgroundHighlight(Landroid/view/View;Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;->mIsActionMode:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    const p0, 0x7f080237

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;->mActivity:Landroid/app/Activity;

    const p2, 0x7f080236

    invoke-virtual {p0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setBackgroundDrawable(Landroid/content/Context;Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setmCheckStates([Z)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryAdapter;->mCheckStates:[Z

    return-void
.end method
