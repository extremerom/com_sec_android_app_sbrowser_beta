.class public Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;
.super Landroidx/preference/Preference;
.source "SourceFile"


# instance fields
.field private mCheckBox:Landroid/widget/RadioButton;

.field private mCheckedState:Z

.field private mClassName:Ljava/lang/Class;

.field private mContext:Landroid/content/Context;

.field private mCustomImageView:Landroid/widget/ImageView;

.field private mDividerView:Landroid/view/View;

.field private mEnable:Z

.field private mImageTint:Z

.field private mImageVisibility:Z

.field mMinimumHeight:I

.field mMinimumHeightSmall:I

.field mObject:Lcom/sec/android/app/sbrowser/common/model/homepage/HomePagePreferenceFragmentDelegate;

.field private mQuickAccessImageVisibility:Z

.field private mSummary:Ljava/lang/String;

.field private mSummaryView:Landroid/widget/TextView;

.field private mTitle:Ljava/lang/String;

.field private mTitleViewLayout:Landroid/widget/RelativeLayout;

.field private mToolTipStringId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 3

    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->mEnable:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->mImageVisibility:Z

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->mImageTint:Z

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->mQuickAccessImageVisibility:Z

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->mCheckedState:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->mSummary:Ljava/lang/String;

    iput v1, p0, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->mMinimumHeightSmall:I

    iput v1, p0, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->mMinimumHeight:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->mToolTipStringId:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->mClassName:Ljava/lang/Class;

    new-instance p4, Landroid/util/TypedValue;

    invoke-direct {p4}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x101004d

    invoke-virtual {v1, v2, p4, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {p4, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    if-lez v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {p4, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->mMinimumHeight:I

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010387

    invoke-virtual {v1, v2, p4, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {p4, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    if-lez v1, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->mMinimumHeightSmall:I

    :cond_1
    const p1, 0x7f0e0881

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->mTitle:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->mEnable:Z

    invoke-virtual {p0, p3}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic e(Landroid/widget/TextView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->lambda$setHoverListener$0(Landroid/widget/TextView;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$setHoverListener$0(Landroid/widget/TextView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return p1

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v0, 0x7

    const/4 v1, 0x0

    if-eq p2, v0, :cond_2

    const/16 v0, 0x9

    if-eq p2, v0, :cond_2

    const/16 v0, 0xa

    if-eq p2, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p2

    if-nez p2, :cond_3

    return p1

    :cond_3
    invoke-virtual {p2}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    if-lez v0, :cond_4

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v0}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result p2

    if-lez p2, :cond_4

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v1}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    :goto_0
    return p1
.end method

.method private setHoverListener(Landroid/widget/TextView;)V
    .locals 0

    new-instance p0, Lcom/sec/android/app/sbrowser/settings/c;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/c;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public onBindViewHolder(Lw2/H;)V
    .locals 7

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Lw2/H;)V

    const v0, 0x7f0b05eb

    invoke-virtual {p1, v0}, Lw2/H;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0b05ea

    invoke-virtual {p1, v1}, Lw2/H;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->mTitleViewLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f0b0e14

    invoke-virtual {p1, v1}, Lw2/H;->a(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->mDividerView:Landroid/view/View;

    const/4 v1, 0x0

    iput-boolean v1, p1, Lw2/H;->d:Z

    iput-boolean v1, p1, Lw2/H;->e:Z

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->mTitleViewLayout:Landroid/widget/RelativeLayout;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {v2, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_0
    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_4

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    sget-boolean v2, Lcom/sec/android/app/sbrowser/common/constants/settings/SettingsConstants;->SCAFE_LATTE:Z

    if-eqz v2, :cond_1

    const v2, 0x7f070285

    const v4, 0x7f070284

    goto :goto_0

    :cond_1
    sget-boolean v2, Lcom/sec/android/app/sbrowser/common/constants/settings/SettingsConstants;->SCAFE_MOCHA:Z

    if-eqz v2, :cond_2

    const v2, 0x7f070287

    const v4, 0x7f070286

    goto :goto_0

    :cond_2
    sget-boolean v2, Lcom/sec/android/app/sbrowser/common/constants/settings/SettingsConstants;->SCAFE_AMERICANO:Z

    if-eqz v2, :cond_3

    const v2, 0x7f070281

    const v4, 0x7f070280

    goto :goto_0

    :cond_3
    const v2, 0x7f070283

    const v4, 0x7f070282

    :goto_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v0, v2, v5, v4, v6}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_4
    const v2, 0x7f0b0d66

    invoke-virtual {p1, v2}, Lw2/H;->a(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f060bc3

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result v5

    if-eqz v5, :cond_6

    const v5, 0x7f060bb7

    goto :goto_1

    :cond_6
    const v5, 0x7f060bb6

    :goto_1
    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_2
    const v2, 0x7f0b023e

    invoke-virtual {p1, v2}, Lw2/H;->a(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->mCheckBox:Landroid/widget/RadioButton;

    iget-boolean v4, p0, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->mCheckedState:Z

    invoke-virtual {v2, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    const v2, 0x7f0b0c0a

    invoke-virtual {p1, v2}, Lw2/H;->a(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->mSummaryView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->mSummary:Ljava/lang/String;

    const/16 v5, 0x8

    if-eqz v4, :cond_9

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->mClassName:Ljava/lang/Class;

    const-class v4, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsStorageFragment;

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->mSummaryView:Landroid/widget/TextView;

    const v4, 0x7f07013a

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_7
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->mSummaryView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->mSummary:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v2, p0, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->mMinimumHeight:I

    if-lez v2, :cond_8

    if-eqz v0, :cond_8

    invoke-virtual {v0, v2}, Landroid/view/View;->setMinimumHeight(I)V

    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->mSummaryView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->setHoverListener(Landroid/widget/TextView;)V

    goto :goto_3

    :cond_9
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    iget v2, p0, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->mMinimumHeightSmall:I

    if-lez v2, :cond_a

    if-eqz v0, :cond_a

    invoke-virtual {v0, v2}, Landroid/view/View;->setMinimumHeight(I)V

    :cond_a
    :goto_3
    iget-object p1, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    const v0, 0x7f0b05f6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->mCustomImageView:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->mQuickAccessImageVisibility:Z

    if-eqz v0, :cond_b

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio$1;-><init>(Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4

    :cond_b
    new-instance v0, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio$2;-><init>(Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_4
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->mCustomImageView:Landroid/widget/ImageView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f140052

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->mCustomImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    iget p1, p0, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->mToolTipStringId:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_c

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->mCustomImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v2, p0, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->mToolTipStringId:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    :cond_c
    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->mImageVisibility:Z

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->mCustomImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    :cond_d
    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->mQuickAccessImageVisibility:Z

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->mCustomImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_e
    :goto_5
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->mCustomImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->mContext:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->mImageTint:Z

    if-eqz v2, :cond_f

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->mImageVisibility:Z

    if-eqz v2, :cond_f

    const v2, 0x7f0601f9

    goto :goto_6

    :cond_f
    const v2, 0x7f06047a

    :goto_6
    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->mDividerView:Landroid/view/View;

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->mEnable:Z

    if-eqz p0, :cond_10

    goto :goto_7

    :cond_10
    move v1, v5

    :goto_7
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setChecked(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->mCheckedState:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->mClassName:Ljava/lang/Class;

    const-class v1, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->mClassName:Ljava/lang/Class;

    const-class v1, Lcom/sec/android/app/sbrowser/settings/accept_cookies/AcceptCookieDetailPreferenceFragment;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->mClassName:Ljava/lang/Class;

    const-class v1, Lcom/sec/android/app/sbrowser/settings/BackgroundPlayFragment;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f140289

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f14028a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f140e6f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f14081f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->mCheckBox:Landroid/widget/RadioButton;

    if-eqz v1, :cond_4

    invoke-virtual {v1, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->mTitleViewLayout:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_6

    const-string v1, ", "

    invoke-static {v0, v1}, Lt/b;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->mSummary:Ljava/lang/String;

    if-nez v2, :cond_5

    const-string v2, ""

    :cond_5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f140b96

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_6
    return-void
.end method

.method public setDivideVisibility(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->mDividerView:Landroid/view/View;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->mEnable:Z

    return-void
.end method

.method public setDividerVisibility(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->mEnable:Z

    return-void
.end method

.method public setObject(Lcom/sec/android/app/sbrowser/common/model/homepage/HomePagePreferenceFragmentDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->mObject:Lcom/sec/android/app/sbrowser/common/model/homepage/HomePagePreferenceFragmentDelegate;

    return-void
.end method

.method public setPreferenceSummary(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->mSummary:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->mSummaryView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->mClassName:Ljava/lang/Class;

    const-class v1, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsStorageFragment;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->mSummaryView:Landroid/widget/TextView;

    const v1, 0x7f07013a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->mSummaryView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->mSummaryView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setQuickAccessImageView(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->mQuickAccessImageVisibility:Z

    return-void
.end method

.method public setTintOfImageView(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->mImageTint:Z

    return-void
.end method

.method public setToolTipStringId(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->mToolTipStringId:I

    return-void
.end method

.method public setVisibilityOfImageView(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->mImageVisibility:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->mCustomImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->mContext:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->mImageTint:Z

    if-eqz v2, :cond_0

    const v2, 0x7f0601f9

    goto :goto_0

    :cond_0
    const v2, 0x7f06047a

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->mCustomImageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    const/16 p1, 0x8

    :goto_1
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    return-void
.end method
