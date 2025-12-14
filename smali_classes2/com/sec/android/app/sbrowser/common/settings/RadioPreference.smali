.class public Lcom/sec/android/app/sbrowser/common/settings/RadioPreference;
.super Landroidx/preference/Preference;
.source "SourceFile"


# instance fields
.field private mChecked:Z

.field private mRadioButton:Landroid/widget/RadioButton;

.field private mRadioPreferenceGroup:Lcom/sec/android/app/sbrowser/common/settings/RadioPreferenceGroup;

.field private mSummary:Ljava/lang/String;

.field private mSummaryView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/settings/RadioPreferenceGroup;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/settings/RadioPreference;->mChecked:Z

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/settings/RadioPreference;->mRadioPreferenceGroup:Lcom/sec/android/app/sbrowser/common/settings/RadioPreferenceGroup;

    const p1, 0x7f0e05db

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    invoke-virtual {p0, p3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-interface {p4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Lw2/H;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Lw2/H;)V

    const v0, 0x7f0b0962

    invoke-virtual {p1, v0}, Lw2/H;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/settings/RadioPreference;->mRadioButton:Landroid/widget/RadioButton;

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/common/settings/RadioPreference;->mChecked:Z

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    const v0, 0x7f0b0d66

    invoke-virtual {p1, v0}, Lw2/H;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0608cf

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    const v0, 0x7f0b0c0a

    invoke-virtual {p1, v0}, Lw2/H;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/settings/RadioPreference;->mSummaryView:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/settings/RadioPreference;->mSummary:Ljava/lang/String;

    if-eqz p0, :cond_1

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/16 p0, 0x8

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public onClick()V
    .locals 1

    invoke-super {p0}, Landroidx/preference/Preference;->onClick()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/settings/RadioPreference;->mRadioPreferenceGroup:Lcom/sec/android/app/sbrowser/common/settings/RadioPreferenceGroup;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/settings/RadioPreferenceGroup;->setChecked(Ljava/lang/String;)V

    return-void
.end method

.method public setChecked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/settings/RadioPreference;->mChecked:Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/settings/RadioPreference;->mRadioButton:Landroid/widget/RadioButton;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/settings/RadioPreference;->mSummary:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/settings/RadioPreference;->mSummaryView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/settings/RadioPreference;->mSummaryView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method
