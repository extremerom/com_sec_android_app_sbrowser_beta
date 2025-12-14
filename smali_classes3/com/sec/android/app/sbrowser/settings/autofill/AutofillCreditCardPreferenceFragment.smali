.class public Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardPreferenceFragment;
.super Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$TerracePersonalDataManagerObserver;
.implements Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;


# instance fields
.field mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;-><init>()V

    return-void
.end method

.method public static synthetic F(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardPreferenceFragment;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardPreferenceFragment;->lambda$onCreateView$0(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method private synthetic lambda$onCreateView$0(Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/BrowserSettings;->getInstance()Lcom/sec/android/app/sbrowser/settings/BrowserSettings;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/settings/BrowserSettings;->setAutofillCreditCardEnabled(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardPreferenceFragment;->updateAutofillSwitchState()V

    return-void
.end method

.method private startCardEditorFragment(Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isRunningInDexOnPc(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const p1, 0x1020002

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const p1, 0x7f140454

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, LH6/o;->h(IILandroid/view/View;)LH6/o;

    move-result-object p0

    invoke-virtual {p0}, LH6/o;->l()V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "random_key"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    const-class v0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardEditor;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->startFragment(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private statusLogForCreditcard(I)V
    .locals 0

    const-string p0, "0029"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;I)V

    return-void
.end method

.method private updateAutofillSwitchState()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardPreferenceFragment;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/knox/KnoxPolicy;->isAutoFillEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigFlags;->isAutofillRestrictionUsed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->isActionMode()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardPreferenceFragment;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->setEnabled(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/BrowserSettings;->getInstance()Lcom/sec/android/app/sbrowser/settings/BrowserSettings;

    move-result-object v0

    const-string v1, "autofill_creditcard"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/settings/BrowserSettings;->getAutofillEnabledWithKnoxPolicy(Ljava/lang/String;)Z

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardPreferenceFragment;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method public addlItemForSALogging()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardPreferenceFragment;->getScreenID()Ljava/lang/String;

    move-result-object p0

    const-string v0, "5030"

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

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardPreferenceFragment;->getScreenID()Ljava/lang/String;

    move-result-object p0

    const-string v0, "5028"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public deleteItemForSALogging()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardPreferenceFragment;->getScreenID()Ljava/lang/String;

    move-result-object p0

    const-string v0, "5032"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public enableAutofillSwitch(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardPreferenceFragment;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->setEnabled(Z)V

    return-void
.end method

.method public enterActionmodeForSALogging()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardPreferenceFragment;->getScreenID()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;)V

    return-void
.end method

.method public finishActionmodeForSALogging()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardPreferenceFragment;->getScreenID()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;)V

    return-void
.end method

.method public getEmptyText()I
    .locals 0

    const p0, 0x7f14015e

    return p0
.end method

.method public getScreenID()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->isActionMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "509"

    return-object p0

    :cond_0
    const-string p0, "506"

    return-object p0
.end method

.method public longPressItemForSALogging()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardPreferenceFragment;->getScreenID()Ljava/lang/String;

    move-result-object p0

    const-string v0, "5045"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAddMenuItemSelected()V
    .locals 1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardPreferenceFragment;->startCardEditorFragment(Landroid/os/Bundle;)V

    return-void
.end method

.method public onChildClick(Landroid/view/View;I)Z
    .locals 4

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->mIsLongPressDragging:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getInstance()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getCreditCardsForSettings()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "guid"

    invoke-virtual {v0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->getGUID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->isActionMode()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    if-eqz p1, :cond_4

    const v0, 0x7f0b012a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->mItemSelected:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->mItemSelected:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->setHeightToShift(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->mItemSelected:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->mItemSelected:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p2

    xor-int/2addr p2, v2

    invoke-virtual {v0, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->setContentDescription(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->setAutofillSelectedItemCount()V

    goto :goto_1

    :cond_3
    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardPreferenceFragment;->startCardEditorFragment(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardPreferenceFragment;->getScreenID()Ljava/lang/String;

    move-result-object p0

    const-string p1, "5044"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return v2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "random_key"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/autofill/KeyGenerator;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardPreferenceFragment;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    move-object p3, p1

    check-cast p3, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p3, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardPreferenceFragment;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/BrowserSettings;->getInstance()Lcom/sec/android/app/sbrowser/settings/BrowserSettings;

    move-result-object p3

    const-string v1, "autofill_creditcard"

    invoke-virtual {p3, v1}, Lcom/sec/android/app/sbrowser/settings/BrowserSettings;->getAutofillEnabledWithKnoxPolicy(Ljava/lang/String;)Z

    move-result p3

    invoke-virtual {p2, p3}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->setChecked(Z)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardPreferenceFragment;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    new-instance p3, Lcom/sec/android/app/sbrowser/settings/autofill/b;

    const/4 v1, 0x0

    invoke-direct {p3, p0, v1}, Lcom/sec/android/app/sbrowser/settings/autofill/b;-><init>(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;I)V

    invoke-virtual {p2, p3}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance p2, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p3

    invoke-direct {p2, p3, p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardAdapter;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;)V

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

    check-cast v0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardAdapter;->getCreditCards()Ljava/util/List;

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

    check-cast v2, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;

    invoke-virtual {v2}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$CreditCard;->getGUID()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getInstance()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->deleteCreditCard(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->mItemSelected:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->mExpAdapter:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillBaseAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->onFinishDeleteMode()V

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

.method public onPersonalDataChanged()V
    .locals 2

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getInstance()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getCreditCardsForSettings()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-super {p0, v1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->onPersonalDataChanged(I)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardPreferenceFragment;->statusLogForCreditcard(I)V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->onResume()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardPreferenceFragment;->updateAutofillSwitchState()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardPreferenceFragment;->getScreenID()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;)V

    return-void
.end method

.method public onShiftKeyPressed(Z)V
    .locals 0

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

    const p2, 0x7f14093d

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setTitle(I)V

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getInstance()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->registerDataObserver(Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager$TerracePersonalDataManagerObserver;)Z

    return-void
.end method

.method public pressDeleteBottomBarButtonForSALogging(J)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardPreferenceFragment;->getScreenID()Ljava/lang/String;

    move-result-object p0

    const-string v0, "5040"

    invoke-static {p0, v0, p1, p2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public selectCheckboxForSALogging(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillCreditCardPreferenceFragment;->getScreenID()Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    const-string p1, "5046"

    invoke-static {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
