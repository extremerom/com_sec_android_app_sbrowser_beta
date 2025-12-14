.class public Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter;
.super Landroidx/recyclerview/widget/u0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter$StatusViewHolder;,
        Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter$PATSwitchViewHolder;,
        Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter$SatListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/u0;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mListener:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter$SatListener;

.field private mOptions:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPATView:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryPATSwitchView;

.field private mSatLevel:I

.field private mViewType:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/u0;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter;->mOptions:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter;->mViewType:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter;->mOptions:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    const/4 v3, 0x0

    invoke-virtual {p2, v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter;->mOptions:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aget-object v0, v0, v1

    invoke-virtual {p2, v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter;->mViewType:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter;->mViewType:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getAntiTrackingLevel(Z)I

    move-result p2

    iput p2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter;->mSatLevel:I

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/privacy_pass/PATFeatureConfigManager;->isPATSupported(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter;->mViewType:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/16 p2, 0x8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryPATSwitchView;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getPrivateAccessTokenPreference(Z)Z

    move-result p2

    invoke-direct {p1, v3, p2}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryPATSwitchView;-><init>(IZ)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter;->mPATView:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryPATSwitchView;

    :cond_0
    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter;)Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter$SatListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter;->mListener:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter$SatListener;

    return-object p0
.end method

.method private bindPATSwitchViewHolder(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter$PATSwitchViewHolder;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter;->mPATView:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryPATSwitchView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryPATSwitchView;->getSwitchState()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter$PATSwitchViewHolder;->setSwitch(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-static {p0, p1, v0, v0}, Lcom/sec/android/app/sbrowser/sesl_common/SeslUtil;->setBackgroundForItems(Landroid/content/Context;Lcom/sec/android/app/sbrowser/sesl_common/SeslBaseViewHolder;ZZ)V

    return-void
.end method

.method private bindSatLevelViewHolder(Landroidx/recyclerview/widget/h1;I)V
    .locals 6
    .param p1    # Landroidx/recyclerview/widget/h1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter;->getDataFromIndex(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast p1, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter$StatusViewHolder;

    new-instance v0, Landroid/text/SpannableString;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, p2, 0x1

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/text/SpannableString;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f030007

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-direct {v1, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter$StatusViewHolder;->setOptions(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter$StatusViewHolder;->setCommon(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter$StatusViewHolder;->mRadioButton:Landroid/widget/RadioButton;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p1, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter$StatusViewHolder;->mRadioButton:Landroid/widget/RadioButton;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p1, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter$StatusViewHolder;->mRadioButton:Landroid/widget/RadioButton;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    iget-object v1, p1, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter$StatusViewHolder;->mRadioButton:Landroid/widget/RadioButton;

    iget v5, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter;->mSatLevel:I

    if-ne v2, v5, :cond_1

    move v3, v4

    :cond_1
    invoke-virtual {v1, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v1, p1, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter$StatusViewHolder;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f140e6f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f14081f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter$StatusViewHolder;->getRadioButton()Landroid/widget/RadioButton;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, v2

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter$StatusViewHolder;->getCommon()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f140b96

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v1, v3}, Lt/b;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter$StatusViewHolder;->getRowView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter;->isLastChildInGroup(I)Z

    move-result v1

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter;->isFirstChildInGroup(I)Z

    move-result p0

    invoke-static {v0, p1, v1, p0}, Lcom/sec/android/app/sbrowser/sesl_common/SeslUtil;->setBackgroundForItems(Landroid/content/Context;Lcom/sec/android/app/sbrowser/sesl_common/SeslBaseViewHolder;ZZ)V

    return-void
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter;->mSatLevel:I

    return-void
.end method

.method private getDataFromIndex(I)Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter;->mOptions:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private getPATSwitchViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/h1;
    .locals 2

    const v0, 0x7f0e082e

    const/4 v1, 0x0

    invoke-static {p1, v0, p1, v1}, Landroidx/recyclerview/widget/P;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter$PATSwitchViewHolder;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter$PATSwitchViewHolder;-><init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter;)V

    return-object v0
.end method

.method private getSatLevelViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/h1;
    .locals 2

    const v0, 0x7f0e082f

    const/4 v1, 0x0

    invoke-static {p1, v0, p1, v1}, Landroidx/recyclerview/widget/P;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter$StatusViewHolder;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter$StatusViewHolder;-><init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter;)V

    return-object v0
.end method

.method private isFirstChildInGroup(I)Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter;->mOptions:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    add-int/lit8 p0, p1, -0x1

    if-gez p0, :cond_1

    return v0

    :cond_1
    if-nez p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private isLastChildInGroup(I)Z
    .locals 3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter;->mOptions:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p0

    const/4 v1, 0x1

    sub-int/2addr p0, v1

    add-int/lit8 v2, p1, 0x1

    if-le v2, p0, :cond_1

    return v1

    :cond_1
    if-ne p1, p0, :cond_2

    move v0, v1

    :cond_2
    return v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter;->mViewType:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getItemId(I)J
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter;->mViewType:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    int-to-long p0, p1

    return-wide p0

    :cond_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getItemViewType(I)I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter;->mViewType:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getPATView()Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryPATSwitchView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter;->mPATView:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryPATSwitchView;

    return-object p0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/h1;I)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/h1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/16 p2, 0x8

    if-eq v0, p2, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter$PATSwitchViewHolder;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter;->bindPATSwitchViewHolder(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter$PATSwitchViewHolder;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter;->bindSatLevelViewHolder(Landroidx/recyclerview/widget/h1;I)V

    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/h1;
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/16 v0, 0x8

    if-eq p2, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter;->getSatLevelViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/h1;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter;->getPATSwitchViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/h1;

    move-result-object p0

    return-object p0
.end method

.method public setListener(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter$SatListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter;->mListener:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistorySatAdapter$SatListener;

    return-void
.end method
