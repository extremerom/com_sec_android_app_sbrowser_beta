.class public Lcom/sec/android/app/sbrowser/common/settings/RadioPreferenceGroup;
.super Landroidx/preference/PreferenceGroup;
.source "SourceFile"


# instance fields
.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroidx/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x7f0e05dc

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    sget-object v0, Lcom/sec/android/app/sbrowser/R$styleable;->RadioPreferenceGroup:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/settings/RadioPreferenceGroup;->mEntries:[Ljava/lang/CharSequence;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/settings/RadioPreferenceGroup;->mEntryValues:[Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public onAttached()V
    .locals 6

    invoke-super {p0}, Landroidx/preference/PreferenceGroup;->onAttached()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/settings/RadioPreferenceGroup;->mEntries:[Ljava/lang/CharSequence;

    array-length v0, v0

    new-instance v1, Lr/d;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1502d6

    invoke-direct {v1, v2, v3}, Lr/d;-><init>(Landroid/content/Context;I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    new-instance v3, Lcom/sec/android/app/sbrowser/common/settings/RadioPreference;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/settings/RadioPreferenceGroup;->mEntries:[Ljava/lang/CharSequence;

    aget-object v4, v4, v2

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/settings/RadioPreferenceGroup;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v5, v5, v2

    invoke-direct {v3, v1, p0, v4, v5}, Lcom/sec/android/app/sbrowser/common/settings/RadioPreference;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/settings/RadioPreferenceGroup;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setChecked(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-static {v1}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    :goto_1
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/settings/RadioPreference;

    invoke-virtual {v1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/common/settings/RadioPreference;->setChecked(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
