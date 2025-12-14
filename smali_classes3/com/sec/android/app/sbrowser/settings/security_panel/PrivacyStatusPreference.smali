.class public Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;
.super Landroidx/preference/Preference;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentStatus:Landroid/view/View;

.field private mIsRtl:Z

.field mLayoutChanged:Z

.field private mNeedAnimation:Z

.field private mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private mPrevStatus:I

.field private mPrivacyTips:Lcom/sec/android/app/sbrowser/settings/security_panel/SecurityPanelSmartTip;

.field private mPromote:Ljava/lang/String;

.field private mRecommend:Landroid/widget/TextView;

.field private mSecretMode:Landroid/widget/TextView;

.field private mStatus:I

.field private mStatusBar:Lcom/sec/android/app/sbrowser/settings/security_panel/FlatStatusBarRenderer;

.field private mStatusName:[Landroid/widget/TextView;

.field private mTipsIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;->mNeedAnimation:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;->mPrevStatus:I

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;->mLayoutChanged:Z

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/LocalizationUtils;->isLayoutRtl()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;->mIsRtl:Z

    const p1, 0x7f0e0578

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;->lambda$onBindViewHolder$0(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;)Lcom/sec/android/app/sbrowser/settings/security_panel/SecurityPanelSmartTip;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;->mPrivacyTips:Lcom/sec/android/app/sbrowser/settings/security_panel/SecurityPanelSmartTip;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;->mTipsIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method private getCurrentStatus(I)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f140a93

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f140a95

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f140a94

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    aget-object p1, v0, p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const v1, 0x7f140b2b

    invoke-virtual {p0, v1, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    aget-object p1, v0, p1

    const/4 v1, 0x1

    aget-object v1, v0, v1

    const/4 v2, 0x2

    aget-object v0, v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, p1, p0}, Lt/b;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getTip()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;->mStatus:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f140b2e

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;->mPromote:Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x7f140b2d

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f140921

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;->mPromote:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const v1, 0x7f140b2c

    invoke-virtual {v0, v1, p0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/decoder/StringUtils;->naturalizeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;Lcom/sec/android/app/sbrowser/settings/security_panel/SecurityPanelSmartTip;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;->mPrivacyTips:Lcom/sec/android/app/sbrowser/settings/security_panel/SecurityPanelSmartTip;

    return-void
.end method

.method public static bridge synthetic k(Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;->getTip()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onBindViewHolder$0(Landroid/view/View;IIIIIIII)V
    .locals 0

    if-ne p2, p6, :cond_0

    if-ne p4, p8, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;->mLayoutChanged:Z

    return-void
.end method

.method private setStatusNameColor()V
    .locals 9

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x7f060206

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;->mContext:Landroid/content/Context;

    const v2, 0x7f060869

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;->mStatusName:[Landroid/widget/TextView;

    const v3, 0x7f1502eb

    const v4, 0x7f1502ec

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;->mIsRtl:Z

    const/4 v5, 0x3

    const/4 v6, 0x0

    if-eqz v2, :cond_3

    :goto_0
    if-ge v6, v5, :cond_6

    add-int/lit8 v2, v6, -0x2

    mul-int/lit8 v2, v2, -0x1

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;->mStatusName:[Landroid/widget/TextView;

    aget-object v7, v7, v6

    iget v8, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;->mStatus:I

    if-ne v2, v8, :cond_1

    move v8, v3

    goto :goto_1

    :cond_1
    move v8, v4

    :goto_1
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextAppearance(I)V

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;->mStatusName:[Landroid/widget/TextView;

    aget-object v7, v7, v6

    iget v8, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;->mStatus:I

    if-ne v2, v8, :cond_2

    move v2, v0

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setTextColor(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    :goto_3
    if-ge v6, v5, :cond_6

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;->mStatusName:[Landroid/widget/TextView;

    aget-object v2, v2, v6

    iget v7, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;->mStatus:I

    if-ne v6, v7, :cond_4

    move v7, v3

    goto :goto_4

    :cond_4
    move v7, v4

    :goto_4
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextAppearance(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;->mStatusName:[Landroid/widget/TextView;

    aget-object v2, v2, v6

    iget v7, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;->mStatus:I

    if-ne v6, v7, :cond_5

    move v7, v0

    goto :goto_5

    :cond_5
    move v7, v1

    :goto_5
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextColor(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;->mRecommend:Landroid/widget/TextView;

    if-eqz v2, :cond_9

    iget v5, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;->mStatus:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_7

    goto :goto_6

    :cond_7
    move v3, v4

    :goto_6
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextAppearance(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;->mRecommend:Landroid/widget/TextView;

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;->mStatus:I

    if-ne p0, v6, :cond_8

    goto :goto_7

    :cond_8
    move v0, v1

    :goto_7
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_9
    return-void
.end method

.method private showFlatBarChart(Z)V
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;->mStatusBar:Lcom/sec/android/app/sbrowser/settings/security_panel/FlatStatusBarRenderer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    iget p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;->mPrevStatus:I

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;->mStatus:I

    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    iget p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;->mStatus:I

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;->mPrevStatus:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;->mNeedAnimation:Z

    const/4 p1, 0x3

    new-array v1, p1, [F

    const/4 v6, 0x0

    move v0, v6

    :goto_0
    if-ge v0, p1, :cond_2

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;->mStatusBar:Lcom/sec/android/app/sbrowser/settings/security_panel/FlatStatusBarRenderer;

    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;->mNeedAnimation:Z

    iget v4, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;->mStatus:I

    iget-boolean v5, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;->mIsRtl:Z

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/settings/security_panel/FlatStatusBarRenderer;->setGraph([FFZIZ)V

    iput-boolean v6, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;->mNeedAnimation:Z

    iput-boolean v6, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;->mLayoutChanged:Z

    return-void
.end method


# virtual methods
.method public drawStatus(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;->setStatusNameColor()V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;->showFlatBarChart(Z)V

    return-void
.end method

.method public getScreenID()Ljava/lang/String;
    .locals 0

    const-string p0, "510"

    return-object p0
.end method

.method public getStatus()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;->mStatus:I

    return p0
.end method

.method public onBindViewHolder(Lw2/H;)V
    .locals 6

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Lw2/H;)V

    const v0, 0x7f0b091e

    invoke-virtual {p1, v0}, Lw2/H;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;->mTipsIcon:Landroid/widget/ImageView;

    const v0, 0x7f0b0386

    invoke-virtual {p1, v0}, Lw2/H;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;->mCurrentStatus:Landroid/view/View;

    iget v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;->mStatus:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;->getCurrentStatus(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isSmartTipEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;->mTipsIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;->mIsRtl:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;->mTipsIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;->mTipsIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    const v0, 0x7f0b015a

    invoke-virtual {p1, v0}, Lw2/H;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/settings/security_panel/FlatStatusBarRenderer;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;->mStatusBar:Lcom/sec/android/app/sbrowser/settings/security_panel/FlatStatusBarRenderer;

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;->mStatusName:[Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;->mIsRtl:Z

    const v2, 0x7f0b069e

    const/4 v3, 0x2

    const v4, 0x7f0b06eb

    const/4 v5, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {p1, v4}, Lw2/H;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v0, v5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;->mStatusName:[Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Lw2/H;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v0, v3

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v2}, Lw2/H;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v0, v5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;->mStatusName:[Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Lw2/H;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v0, v3

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;->mStatusName:[Landroid/widget/TextView;

    const v1, 0x7f0b0770

    invoke-virtual {p1, v1}, Lw2/H;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const v0, 0x7f0b0beb

    invoke-virtual {p1, v0}, Lw2/H;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;->mRecommend:Landroid/widget/TextView;

    const v0, 0x7f0b0bec

    invoke-virtual {p1, v0}, Lw2/H;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;->mSecretMode:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_3

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;->mSecretMode:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;->mTipsIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;->mTipsIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setHoverTooltip(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;->mTipsIcon:Landroid/widget/ImageView;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference$1;-><init>(Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    new-instance p1, Lcom/sec/android/app/sbrowser/context_menu/a;

    const/4 v0, 0x5

    invoke-direct {p1, v0, p0}, Lcom/sec/android/app/sbrowser/context_menu/a;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;->mStatusBar:Lcom/sec/android/app/sbrowser/settings/security_panel/FlatStatusBarRenderer;

    invoke-virtual {v0, p1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;->mLayoutChanged:Z

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;->drawStatus(Z)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;->mPrivacyTips:Lcom/sec/android/app/sbrowser/settings/security_panel/SecurityPanelSmartTip;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/widget/SmartTip;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;->mPrivacyTips:Lcom/sec/android/app/sbrowser/settings/security_panel/SecurityPanelSmartTip;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/widget/SmartTip;->dismiss()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;->mPrivacyTips:Lcom/sec/android/app/sbrowser/settings/security_panel/SecurityPanelSmartTip;

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;->mPrivacyTips:Lcom/sec/android/app/sbrowser/settings/security_panel/SecurityPanelSmartTip;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;->mPrivacyTips:Lcom/sec/android/app/sbrowser/settings/security_panel/SecurityPanelSmartTip;

    :cond_0
    return-void
.end method

.method public setStatus(ILjava/lang/String;)V
    .locals 1

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;->mStatus:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;->mPromote:Ljava/lang/String;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;->mCurrentStatus:Landroid/view/View;

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;->getCurrentStatus(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f03004a

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    aget-object p1, p2, p1

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    const p2, 0x7f140d64

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateTip(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;->mPromote:Ljava/lang/String;

    return-void
.end method
