.class public Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfilePreferenceFragment;
.super Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$TerracePersonalDataManagerObserver;
.implements Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;
.implements Lcom/sec/android/app/sbrowser/common/model/settings/KeyPressCallback;


# instance fields
.field public mIsShiftPressed:Z

.field mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

.field private mPrevSelectedIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfilePreferenceFragment;->mIsShiftPressed:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfilePreferenceFragment;->mPrevSelectedIndex:I

    return-void
.end method

.method public static synthetic F(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfilePreferenceFragment;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfilePreferenceFragment;->lambda$onCreateView$0(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method private handleShiftClick(I)V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfilePreferenceFragment;->mPrevSelectedIndex:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfilePreferenceFragment;->mPrevSelectedIndex:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    move v0, p1

    :cond_0
    :goto_0
    if-gt v0, p1, :cond_1

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfilePreferenceFragment;->setCheckByShiftClick(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->mExpAdapter:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillBaseAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    return-void
.end method

.method private synthetic lambda$onCreateView$0(Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/BrowserSettings;->getInstance()Lcom/sec/android/app/sbrowser/settings/BrowserSettings;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/settings/BrowserSettings;->setAutofillProfileEnabled(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfilePreferenceFragment;->updateAutofillSwitchState()V

    return-void
.end method

.method private setCheckByShiftClick(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->mItemSelected:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->mItemSelected:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->setAutofillSelectedItemCount()V

    return-void
.end method

.method private updateAutofillSwitchState()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfilePreferenceFragment;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/knox/KnoxPolicy;->isAutoFillEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigFlags;->isAutofillRestrictionUsed()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfilePreferenceFragment;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->setEnabled(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/BrowserSettings;->getInstance()Lcom/sec/android/app/sbrowser/settings/BrowserSettings;

    move-result-object v0

    const-string v1, "autofill_profile"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/settings/BrowserSettings;->getAutofillEnabledWithKnoxPolicy(Ljava/lang/String;)Z

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfilePreferenceFragment;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method public addlItemForSALogging()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfilePreferenceFragment;->getScreenID()Ljava/lang/String;

    move-result-object p0

    const-string v0, "5062"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public applyOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->applyNoItemViewHeightChanged()V

    return-void
.end method

.method public backItemForSALogging()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfilePreferenceFragment;->getScreenID()Ljava/lang/String;

    move-result-object p0

    const-string v0, "5061"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public deleteItemForSALogging()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfilePreferenceFragment;->getScreenID()Ljava/lang/String;

    move-result-object p0

    const-string v0, "5066"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public enableAutofillSwitch(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfilePreferenceFragment;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->setEnabled(Z)V

    return-void
.end method

.method public enterActionmodeForSALogging()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfilePreferenceFragment;->getScreenID()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;)V

    return-void
.end method

.method public finishActionmodeForSALogging()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfilePreferenceFragment;->getScreenID()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;)V

    return-void
.end method

.method public getEmptyText()I
    .locals 0

    const p0, 0x7f14015f

    return p0
.end method

.method public getScreenID()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->isActionMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "505"

    return-object p0

    :cond_0
    const-string p0, "522"

    return-object p0
.end method

.method public longPressItemForSALogging()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfilePreferenceFragment;->getScreenID()Ljava/lang/String;

    move-result-object p0

    const-string v0, "5065"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAddMenuItemSelected()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    const-class v0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->startFragment(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onChildClick(Landroid/view/View;I)Z
    .locals 6

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->mIsLongPressDragging:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getInstance()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getProfilesForSettings()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getGUID()Ljava/lang/String;

    move-result-object v0

    const-string v2, "guid"

    invoke-static {v2, v0}, Lt/b;->e(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->isActionMode()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_6

    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->mItemSelected:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfilePreferenceFragment;->mIsShiftPressed:Z

    const/4 v4, -0x1

    if-eqz v2, :cond_2

    iget p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfilePreferenceFragment;->mPrevSelectedIndex:I

    if-ne p1, v4, :cond_1

    iput v1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfilePreferenceFragment;->mPrevSelectedIndex:I

    :cond_1
    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfilePreferenceFragment;->handleShiftClick(I)V

    goto :goto_1

    :cond_2
    const v1, 0x7f0b012a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->mItemSelected:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->mItemSelected:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->setHeightToShift(Landroid/view/View;)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->mItemSelected:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->mItemSelected:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_4
    :goto_0
    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    xor-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->setContentDescription(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->setAutofillSelectedItemCount()V

    :goto_1
    if-eqz v0, :cond_5

    iput v4, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfilePreferenceFragment;->mPrevSelectedIndex:I

    goto :goto_2

    :cond_5
    iput p2, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfilePreferenceFragment;->mPrevSelectedIndex:I

    goto :goto_2

    :cond_6
    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfilePreferenceFragment;->mIsShiftPressed:Z

    if-eqz p1, :cond_7

    iput v1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfilePreferenceFragment;->mPrevSelectedIndex:I

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfilePreferenceFragment;->handleShiftClick(I)V

    iput p2, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfilePreferenceFragment;->mPrevSelectedIndex:I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->startDeleteMode()V

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p1

    const-class p2, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileEditor;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v0}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->startFragment(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfilePreferenceFragment;->getScreenID()Ljava/lang/String;

    move-result-object p0

    const-string p1, "5064"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_2
    return v3
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfilePreferenceFragment;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f140179

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->setAccessibilityTitle(Ljava/lang/String;)V

    move-object p2, p1

    check-cast p2, Landroid/view/ViewGroup;

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfilePreferenceFragment;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfilePreferenceFragment;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/BrowserSettings;->getInstance()Lcom/sec/android/app/sbrowser/settings/BrowserSettings;

    move-result-object p3

    const-string v1, "autofill_profile"

    invoke-virtual {p3, v1}, Lcom/sec/android/app/sbrowser/settings/BrowserSettings;->getAutofillEnabledWithKnoxPolicy(Ljava/lang/String;)Z

    move-result p3

    invoke-virtual {p2, p3}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->setChecked(Z)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfilePreferenceFragment;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    new-instance p3, Lcom/sec/android/app/sbrowser/settings/autofill/b;

    const/4 v1, 0x1

    invoke-direct {p3, p0, v1}, Lcom/sec/android/app/sbrowser/settings/autofill/b;-><init>(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;I)V

    invoke-virtual {p2, p3}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance p2, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p3

    invoke-direct {p2, p3, p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileAdapter;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->mExpAdapter:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillBaseAdapter;

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->mAutofillList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/u0;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f07012d

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->mAutofillList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p2, p3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->mAutofillList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->mExpAdapter:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillBaseAdapter;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillBaseAdapter;->getItemCount()I

    move-result p2

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->loadEmptyAutofillLayout(Z)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->mExpAdapter:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillBaseAdapter;

    invoke-virtual {p2, p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillBaseAdapter;->setListener(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillAdapterListener;)V

    return-object p1
.end method

.method public onDeleteItems()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->mItemSelected:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->mExpAdapter:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillBaseAdapter;

    check-cast v0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfileAdapter;->getProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->mItemSelected:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;

    invoke-virtual {v2}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$AutofillProfile;->getGUID()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getInstance()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->deleteProfile(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->mItemSelected:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->mExpAdapter:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillBaseAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getInstance()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->unregisterDataObserver(Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$TerracePersonalDataManagerObserver;)V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onFinishDeleteMode()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfilePreferenceFragment;->mPrevSelectedIndex:I

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->onFinishDeleteMode()V

    return-void
.end method

.method public onItemLongClick(Landroid/view/View;I)Z
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfilePreferenceFragment;->mPrevSelectedIndex:I

    invoke-super {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->onItemLongClick(Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public onPersonalDataChanged()V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getInstance()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getProfilesForSettings()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-super {p0, v0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->onPersonalDataChanged(I)V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->onResume()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfilePreferenceFragment;->getScreenID()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;)V

    return-void
.end method

.method public onShiftKeyPressed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfilePreferenceFragment;->mIsShiftPressed:Z

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p1

    const p2, 0x7f140179

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setTitle(I)V

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getInstance()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->registerDataObserver(Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$TerracePersonalDataManagerObserver;)Z

    return-void
.end method

.method public pressDeleteBottomBarButtonForSALogging(J)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfilePreferenceFragment;->getScreenID()Ljava/lang/String;

    move-result-object p0

    const-string v0, "5022"

    invoke-static {p0, v0, p1, p2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public selectCheckboxForSALogging(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillProfilePreferenceFragment;->getScreenID()Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    const-string p1, "5029"

    invoke-static {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
