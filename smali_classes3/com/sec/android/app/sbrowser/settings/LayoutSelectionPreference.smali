.class public Lcom/sec/android/app/sbrowser/settings/LayoutSelectionPreference;
.super Landroidx/preference/Preference;
.source "SourceFile"


# instance fields
.field private mBottomButton:Landroid/widget/RadioButton;

.field private mCompactButton:Landroid/widget/RadioButton;

.field private final mNormalRadioTextColor:I

.field private final mSelectedRadioTextColor:I

.field private mStandardButton:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x7f0e088b

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0604bc

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/LayoutSelectionPreference;->mSelectedRadioTextColor:I

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0604bb

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/LayoutSelectionPreference;->mNormalRadioTextColor:I

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/settings/LayoutSelectionPreference;Landroidx/appcompat/widget/AppCompatTextView;Lw2/H;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/settings/LayoutSelectionPreference;->lambda$onBindViewHolder$2(Landroidx/appcompat/widget/AppCompatTextView;Lw2/H;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic f(Lcom/sec/android/app/sbrowser/settings/LayoutSelectionPreference;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/LayoutSelectionPreference;->lambda$onBindViewHolder$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g(Lcom/sec/android/app/sbrowser/settings/LayoutSelectionPreference;Landroidx/appcompat/widget/AppCompatTextView;Lw2/H;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/settings/LayoutSelectionPreference;->lambda$onBindViewHolder$0(Landroidx/appcompat/widget/AppCompatTextView;Lw2/H;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method private getSelectedString(Landroid/widget/RadioButton;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f140e6f

    goto :goto_0

    :cond_0
    const p1, 0x7f14081f

    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lcom/sec/android/app/sbrowser/settings/LayoutSelectionPreference;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/LayoutSelectionPreference;->lambda$onBindViewHolder$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic k(Lcom/sec/android/app/sbrowser/settings/LayoutSelectionPreference;Landroidx/appcompat/widget/AppCompatTextView;Lw2/H;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/settings/LayoutSelectionPreference;->lambda$onBindViewHolder$1(Landroidx/appcompat/widget/AppCompatTextView;Lw2/H;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic l(Lcom/sec/android/app/sbrowser/settings/LayoutSelectionPreference;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/LayoutSelectionPreference;->lambda$onBindViewHolder$4(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(Landroidx/appcompat/widget/AppCompatTextView;Lw2/H;Landroid/widget/CompoundButton;Z)V
    .locals 0

    if-eqz p4, :cond_0

    iget p3, p0, Lcom/sec/android/app/sbrowser/settings/LayoutSelectionPreference;->mSelectedRadioTextColor:I

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    const-string p1, "COMPACT"

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->setFocusLayoutType(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/LayoutSelectionPreference;->mStandardButton:Landroid/widget/RadioButton;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/LayoutSelectionPreference;->mBottomButton:Landroid/widget/RadioButton;

    invoke-virtual {p1, p3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    :cond_0
    iget p3, p0, Lcom/sec/android/app/sbrowser/settings/LayoutSelectionPreference;->mNormalRadioTextColor:I

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/settings/LayoutSelectionPreference;->updateContentDescription(Lw2/H;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$1(Landroidx/appcompat/widget/AppCompatTextView;Lw2/H;Landroid/widget/CompoundButton;Z)V
    .locals 0

    if-eqz p4, :cond_0

    iget p3, p0, Lcom/sec/android/app/sbrowser/settings/LayoutSelectionPreference;->mSelectedRadioTextColor:I

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    const-string p1, "BASIC"

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->setFocusLayoutType(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/LayoutSelectionPreference;->mCompactButton:Landroid/widget/RadioButton;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/LayoutSelectionPreference;->mBottomButton:Landroid/widget/RadioButton;

    invoke-virtual {p1, p3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    :cond_0
    iget p3, p0, Lcom/sec/android/app/sbrowser/settings/LayoutSelectionPreference;->mNormalRadioTextColor:I

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/settings/LayoutSelectionPreference;->updateContentDescription(Lw2/H;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$2(Landroidx/appcompat/widget/AppCompatTextView;Lw2/H;Landroid/widget/CompoundButton;Z)V
    .locals 0

    if-eqz p4, :cond_0

    iget p3, p0, Lcom/sec/android/app/sbrowser/settings/LayoutSelectionPreference;->mSelectedRadioTextColor:I

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    const-string p1, "FOCUS"

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->setFocusLayoutType(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/LayoutSelectionPreference;->mCompactButton:Landroid/widget/RadioButton;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/LayoutSelectionPreference;->mStandardButton:Landroid/widget/RadioButton;

    invoke-virtual {p1, p3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    :cond_0
    iget p3, p0, Lcom/sec/android/app/sbrowser/settings/LayoutSelectionPreference;->mNormalRadioTextColor:I

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/settings/LayoutSelectionPreference;->updateContentDescription(Lw2/H;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$3(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/LayoutSelectionPreference;->mCompactButton:Landroid/widget/RadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f140674

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/LayoutSelectionPreference;->mCompactButton:Landroid/widget/RadioButton;

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/settings/LayoutSelectionPreference;->getSelectedString(Landroid/widget/RadioButton;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$4(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/LayoutSelectionPreference;->mStandardButton:Landroid/widget/RadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f140675

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/LayoutSelectionPreference;->mStandardButton:Landroid/widget/RadioButton;

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/settings/LayoutSelectionPreference;->getSelectedString(Landroid/widget/RadioButton;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$5(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/LayoutSelectionPreference;->mBottomButton:Landroid/widget/RadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f140673

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/LayoutSelectionPreference;->mBottomButton:Landroid/widget/RadioButton;

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/settings/LayoutSelectionPreference;->getSelectedString(Landroid/widget/RadioButton;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateContentDescription(Lw2/H;)V
    .locals 5
    .param p1    # Lw2/H;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    const v1, 0x7f0b0683

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f140674

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/LayoutSelectionPreference;->mCompactButton:Landroid/widget/RadioButton;

    invoke-direct {p0, v3}, Lcom/sec/android/app/sbrowser/settings/LayoutSelectionPreference;->getSelectedString(Landroid/widget/RadioButton;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    const v1, 0x7f0b0687

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f140675

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/LayoutSelectionPreference;->mStandardButton:Landroid/widget/RadioButton;

    invoke-direct {p0, v3}, Lcom/sec/android/app/sbrowser/settings/LayoutSelectionPreference;->getSelectedString(Landroid/widget/RadioButton;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p1, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    const v0, 0x7f0b0680

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f140673

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/LayoutSelectionPreference;->mBottomButton:Landroid/widget/RadioButton;

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/settings/LayoutSelectionPreference;->getSelectedString(Landroid/widget/RadioButton;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Lw2/H;)V
    .locals 6
    .param p1    # Lw2/H;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Lw2/H;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    const v1, 0x7f0b0682

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/LayoutSelectionPreference;->mCompactButton:Landroid/widget/RadioButton;

    iget-object v0, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    const v1, 0x7f0b0686

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/LayoutSelectionPreference;->mStandardButton:Landroid/widget/RadioButton;

    iget-object v0, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    const v1, 0x7f0b067f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/LayoutSelectionPreference;->mBottomButton:Landroid/widget/RadioButton;

    iget-object v0, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    const v1, 0x7f0b0684

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v1, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    const v2, 0x7f0b0688

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v2, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    const v3, 0x7f0b0681

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/LayoutSelectionPreference;->mCompactButton:Landroid/widget/RadioButton;

    new-instance v4, Lcom/sec/android/app/sbrowser/settings/m;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v0, p1, v5}, Lcom/sec/android/app/sbrowser/settings/m;-><init>(Ljava/lang/Object;Landroid/view/View;Ljava/lang/Object;I)V

    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/LayoutSelectionPreference;->mStandardButton:Landroid/widget/RadioButton;

    new-instance v3, Lcom/sec/android/app/sbrowser/settings/m;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v1, p1, v4}, Lcom/sec/android/app/sbrowser/settings/m;-><init>(Ljava/lang/Object;Landroid/view/View;Ljava/lang/Object;I)V

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/LayoutSelectionPreference;->mBottomButton:Landroid/widget/RadioButton;

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/m;

    const/4 v3, 0x2

    invoke-direct {v1, p0, v2, p1, v3}, Lcom/sec/android/app/sbrowser/settings/m;-><init>(Ljava/lang/Object;Landroid/view/View;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    const v1, 0x7f0b0683

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/n;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/settings/n;-><init>(Lcom/sec/android/app/sbrowser/settings/LayoutSelectionPreference;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    const v1, 0x7f0b0687

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/n;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/settings/n;-><init>(Lcom/sec/android/app/sbrowser/settings/LayoutSelectionPreference;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    const v0, 0x7f0b0680

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/n;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/settings/n;-><init>(Lcom/sec/android/app/sbrowser/settings/LayoutSelectionPreference;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/LayoutSelectionPreference;->mCompactButton:Landroid/widget/RadioButton;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isCompactLayoutType()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/LayoutSelectionPreference;->mStandardButton:Landroid/widget/RadioButton;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isBasicLayoutType()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/LayoutSelectionPreference;->mBottomButton:Landroid/widget/RadioButton;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isFocusLayoutType()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    return-void
.end method
