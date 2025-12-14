.class public Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment;
.super Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/TerracePasswordUIView$TerracePasswordListObserver;
.implements Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;
.implements Lcom/sec/android/app/sbrowser/common/model/settings/KeyPressCallback;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCanViewLoginToSamsungPass:Z

.field mDelegate:Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder$NameAndPWSwitchPreferenceDelegate;

.field private mDeleteMenuItem:Landroid/view/MenuItem;

.field private mIsBlockListSupported:Z

.field private mIsSamsungPassActivated:Z

.field private mOptionMenu:Landroid/view/Menu;

.field private final mPasswordManagerHandler:Lcom/sec/terrace/browser/TerracePasswordUIView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private mTotalExceptionsCnt:I

.field private mTotalPasswordsCnt:I

.field private mViewTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/settings/password/AutofillViewType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;-><init>()V

    new-instance v0, Lcom/sec/terrace/browser/TerracePasswordUIView;

    invoke-direct {v0}, Lcom/sec/terrace/browser/TerracePasswordUIView;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment;->mPasswordManagerHandler:Lcom/sec/terrace/browser/TerracePasswordUIView;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment;->mViewTypes:Ljava/util/List;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment$1;-><init>(Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment;->mDelegate:Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder$NameAndPWSwitchPreferenceDelegate;

    return-void
.end method

.method public static bridge synthetic F(Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public static bridge synthetic G(Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment;->mIsSamsungPassActivated:Z

    return p0
.end method

.method public static bridge synthetic H(Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment;->getAutofillVerificationSummaryString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$000(Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->isActionMode()Z

    move-result p0

    return p0
.end method

.method private canViewLoginsInSamsungPass()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment;->mCanViewLoginToSamsungPass:Z

    return p0
.end method

.method private getAutofillVerificationSummaryString()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/password/WebLoginAuthenticator;->shouldUseWebSigninInSBrowser()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f140911

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/password/WebLoginAuthenticator;->shouldUseFingerprintWebSigninInSBrowser()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f140556

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/password/WebLoginAuthenticator;->shouldUseIrisWebSigninInSBrowser()Z

    move-result v1

    const v2, 0x7f1400fa

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const v1, 0x7f14064f

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/password/WebLoginAuthenticator;->shouldUseIntelligentWebSigninInSBrowser()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_4

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const v1, 0x7f14062b

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isExceptionPassword(I)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment;->mViewTypes:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillViewType;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/password/AutofillViewType;->isExceptionData()Z

    move-result p0

    return p0
.end method

.method private updateOptionMenu()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment;->mOptionMenu:Landroid/view/Menu;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x7f0b03e2

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment;->mDeleteMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_3

    iget v1, p0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment;->mTotalPasswordsCnt:I

    if-gtz v1, :cond_2

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment;->mTotalExceptionsCnt:I

    if-lez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    invoke-interface {v0, p0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_3
    return-void
.end method


# virtual methods
.method public addlItemForSALogging()V
    .locals 0

    return-void
.end method

.method public backItemForSALogging()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment;->getScreenID()Ljava/lang/String;

    move-result-object p0

    const-string v0, "5112"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public deleteItemForSALogging()V
    .locals 0

    return-void
.end method

.method public enterActionmodeForSALogging()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment;->getScreenID()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;)V

    return-void
.end method

.method public finishActionmodeForSALogging()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment;->getScreenID()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;)V

    return-void
.end method

.method public getEmptyText()I
    .locals 0

    const p0, 0x7f140dce

    return p0
.end method

.method public getScreenID()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->isActionMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "523"

    goto :goto_0

    :cond_0
    const-string p0, "511"

    :goto_0
    return-object p0
.end method

.method public loadEmptyAutofillLayout(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->loadEmptyAutofillLayout(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->mAutofillList:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public longPressItemForSALogging()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment;->getScreenID()Ljava/lang/String;

    move-result-object p0

    const-string v0, "5140"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public needSelectAllItems(Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->mExpAdapter:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillBaseAdapter;

    check-cast v0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWAdapter;->getAutofillTotalItemCount()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->mItemSelected:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->mItemSelected:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->mExpAdapter:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillBaseAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillBaseAdapter;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->mExpAdapter:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillBaseAdapter;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/u0;->getItemViewType(I)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->mItemSelected:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->mItemSelected:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    if-nez p1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->mItemSelected:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->selectAllItems(Z)V

    return-void
.end method

.method public onChildClick(Landroid/view/View;I)Z
    .locals 6

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->isActionMode()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eqz p1, :cond_7

    const v0, 0x7f0b012a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->mItemSelected:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->mItemSelected:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->setHeightToShift(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->mItemSelected:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->mItemSelected:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v2, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p2

    xor-int/2addr p2, v1

    invoke-virtual {v0, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->setContentDescription(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->setAutofillSelectedItemCount()V

    goto/16 :goto_3

    :cond_2
    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment;->isExceptionPassword(I)Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->mExpAdapter:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillBaseAdapter;

    check-cast p1, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWAdapter;

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWAdapter;->getItemIndex(I)I

    move-result p1

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment;->mPasswordManagerHandler:Lcom/sec/terrace/browser/TerracePasswordUIView;

    invoke-virtual {v0, p1}, Lcom/sec/terrace/browser/TerracePasswordUIView;->getSavedPasswordEntry(I)Lcom/sec/terrace/browser/TerracePasswordUIView$TerraceSavedPasswordEntry;

    move-result-object v0

    if-nez v0, :cond_3

    const-string p0, "NameAndPWPreferenceFragment"

    const-string p1, "TerracePasswordUIView.TerraceSavedPasswordEntry is empty."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    const-string v2, "TerraceSavedPasswordEntry"

    invoke-virtual {p2, v2, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v0, "itemIndex"

    invoke-virtual {p2, v0, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment;->mPasswordManagerHandler:Lcom/sec/terrace/browser/TerracePasswordUIView;

    invoke-virtual {v2, p1}, Lcom/sec/terrace/browser/TerracePasswordUIView;->getSavedPasswordEntry(I)Lcom/sec/terrace/browser/TerracePasswordUIView$TerraceSavedPasswordEntry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/terrace/browser/TerracePasswordUIView$TerraceSavedPasswordEntry;->getSignonRealm()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :goto_1
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->mExpAdapter:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillBaseAdapter;

    check-cast v4, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWAdapter;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWAdapter;->getAutofillTotalItemCount()I

    move-result v4

    if-ge v3, v4, :cond_6

    if-ne v3, p1, :cond_4

    goto :goto_2

    :cond_4
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment;->mPasswordManagerHandler:Lcom/sec/terrace/browser/TerracePasswordUIView;

    invoke-virtual {v4, v3}, Lcom/sec/terrace/browser/TerracePasswordUIView;->getSavedPasswordEntry(I)Lcom/sec/terrace/browser/TerracePasswordUIView$TerraceSavedPasswordEntry;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/terrace/browser/TerracePasswordUIView$TerraceSavedPasswordEntry;->getSignonRealm()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v4}, Lcom/sec/terrace/browser/TerracePasswordUIView$TerraceSavedPasswordEntry;->getUserName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    const-string p1, "UsernamesOfSameUrl"

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment;->mActivity:Landroid/app/Activity;

    const-class p1, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->startFragment(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_7
    :goto_3
    return v1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->mExpAdapter:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillBaseAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->isActionMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    const v0, 0x7f10001d

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment;->mOptionMenu:Landroid/view/Menu;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment;->updateOptionMenu()V

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment;->mDeleteMenuItem:Landroid/view/MenuItem;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->tintMenuIcon(Landroid/view/MenuItem;Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0e0044

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0b0136

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-super {p0, p1, v0, p3}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment;->mActivity:Landroid/app/Activity;

    new-instance p3, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWAdapter;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment;->mDelegate:Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder$NameAndPWSwitchPreferenceDelegate;

    invoke-direct {p3, p1, p0, v0}, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWAdapter;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder$NameAndPWSwitchPreferenceDelegate;)V

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->mExpAdapter:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillBaseAdapter;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->mAutofillList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/u0;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->mExpAdapter:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillBaseAdapter;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillBaseAdapter;->setListener(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillAdapterListener;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->mAutofillList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/Q0;

    move-result-object p1

    const/4 p3, 0x3

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/Q0;->b(I)Landroidx/recyclerview/widget/P0;

    move-result-object p1

    iput v1, p1, Landroidx/recyclerview/widget/P0;->b:I

    iget-object p1, p1, Landroidx/recyclerview/widget/P0;->a:Ljava/util/ArrayList;

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-lez p3, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string p3, "sbrowser.settings.show_fragment_args"

    invoke-virtual {p1, p3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    if-eqz p1, :cond_2

    const-string p3, "samsung_pass_activated"

    invoke-virtual {p1, p3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p3

    iput-boolean p3, p0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment;->mIsSamsungPassActivated:Z

    const-string p3, "block_list_supported"

    invoke-virtual {p1, p3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p3

    iput-boolean p3, p0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment;->mIsBlockListSupported:Z

    const-string p3, "view_login_to_samsung_pass"

    invoke-virtual {p1, p3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment;->mCanViewLoginToSamsungPass:Z

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->getInstance()Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->isSamsungPassInitializedSharedPref()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment;->mIsSamsungPassActivated:Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->getInstance()Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->isBlocklistSupported()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment;->mIsBlockListSupported:Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->getInstance()Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->isSamsungPassInitializedSharedPref()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment;->mCanViewLoginToSamsungPass:Z

    :goto_1
    return-object p2
.end method

.method public onDeleteItems()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->mItemSelected:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->mItemSelected:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->mItemSelected:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->mExpAdapter:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillBaseAdapter;

    check-cast v3, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWAdapter;

    invoke-virtual {v3, v2}, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWAdapter;->getItemIndex(I)I

    move-result v3

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment;->isExceptionPassword(I)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment;->mPasswordManagerHandler:Lcom/sec/terrace/browser/TerracePasswordUIView;

    invoke-virtual {v2, v3}, Lcom/sec/terrace/browser/TerracePasswordUIView;->removeSavedPasswordEntry(I)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment;->mPasswordManagerHandler:Lcom/sec/terrace/browser/TerracePasswordUIView;

    invoke-virtual {v2, v3}, Lcom/sec/terrace/browser/TerracePasswordUIView;->removeSavedPasswordException(I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->mItemSelected:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->mExpAdapter:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillBaseAdapter;

    check-cast v2, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWAdapter;->getAutofillTotalItemCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_3

    move v0, v3

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->mItemSelected:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment;->mPasswordManagerHandler:Lcom/sec/terrace/browser/TerracePasswordUIView;

    invoke-virtual {v1}, Lcom/sec/terrace/browser/TerracePasswordUIView;->updatePasswordLists()V

    xor-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->showDeleteAction(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment;->onFinishDeleteMode()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment;->mPasswordManagerHandler:Lcom/sec/terrace/browser/TerracePasswordUIView;

    invoke-virtual {p0}, Lcom/sec/terrace/browser/TerracePasswordUIView;->destroy()V

    return-void
.end method

.method public onFinishDeleteMode()V
    .locals 1

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->onFinishDeleteMode()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->mExpAdapter:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillBaseAdapter;

    check-cast p0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWAdapter;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWAdapter;->setSwitchViewEnabled(Z)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f0b03e2

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->isActionMode()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->startActionMode()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment;->getScreenID()Ljava/lang/String;

    move-result-object p1

    const-string v0, "5113"

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget p1, p0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment;->mTotalPasswordsCnt:I

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment;->mTotalExceptionsCnt:I

    add-int/2addr p1, v0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment;->needSelectAllItems(Z)V

    :cond_2
    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment;->mDeleteMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f140346

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->onResume()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment;->mPasswordManagerHandler:Lcom/sec/terrace/browser/TerracePasswordUIView;

    invoke-virtual {p0}, Lcom/sec/terrace/browser/TerracePasswordUIView;->updatePasswordLists()V

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

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment;->mActivity:Landroid/app/Activity;

    const p2, 0x7f140a31

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setTitle(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment;->mPasswordManagerHandler:Lcom/sec/terrace/browser/TerracePasswordUIView;

    invoke-virtual {p1, p0}, Lcom/sec/terrace/browser/TerracePasswordUIView;->addObserver(Lcom/sec/terrace/browser/TerracePasswordUIView$TerracePasswordListObserver;)V

    return-void
.end method

.method public passwordExceptionListAvailable(I)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    const-string v2, "exceptionListAvailable count: "

    const-string v3, "NameAndPWPreferenceFragment"

    invoke-static {v1, v2, v3}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    iput v1, v0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment;->mTotalExceptionsCnt:I

    const/4 v2, 0x0

    if-lez v1, :cond_0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment;->mViewTypes:Ljava/util/List;

    new-instance v10, Lcom/sec/android/app/sbrowser/settings/password/AutofillViewType;

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x2

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/sbrowser/settings/password/AutofillViewType;-><init>(Lcom/sec/terrace/browser/TerracePasswordUIView$TerraceSavedPasswordEntry;IIZZ)V

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment;->mViewTypes:Ljava/util/List;

    new-instance v5, Lcom/sec/android/app/sbrowser/settings/password/AutofillViewType;

    iget-object v6, v0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment;->mPasswordManagerHandler:Lcom/sec/terrace/browser/TerracePasswordUIView;

    invoke-virtual {v6, v3}, Lcom/sec/terrace/browser/TerracePasswordUIView;->getSavedPasswordException(I)Lcom/sec/terrace/browser/TerracePasswordUIView$TerraceSavedPasswordEntry;

    move-result-object v12

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/4 v14, 0x1

    move-object v11, v5

    move v13, v3

    invoke-direct/range {v11 .. v16}, Lcom/sec/android/app/sbrowser/settings/password/AutofillViewType;-><init>(Lcom/sec/terrace/browser/TerracePasswordUIView$TerraceSavedPasswordEntry;IIZZ)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment;->canViewLoginsInSamsungPass()Z

    move-result v1

    iget v3, v0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment;->mTotalPasswordsCnt:I

    iget v4, v0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment;->mTotalExceptionsCnt:I

    add-int/2addr v3, v4

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    iget-object v4, v0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment;->mViewTypes:Ljava/util/List;

    new-instance v11, Lcom/sec/android/app/sbrowser/settings/password/AutofillViewType;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x3

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lcom/sec/android/app/sbrowser/settings/password/AutofillViewType;-><init>(Lcom/sec/terrace/browser/TerracePasswordUIView$TerraceSavedPasswordEntry;IIZZ)V

    invoke-interface {v4, v2, v11}, Ljava/util/List;->add(ILjava/lang/Object;)V

    if-nez v1, :cond_2

    if-eqz v3, :cond_2

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment;->mViewTypes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-instance v9, Lcom/sec/android/app/sbrowser/settings/password/AutofillViewType;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x4

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/app/sbrowser/settings/password/AutofillViewType;-><init>(Lcom/sec/terrace/browser/TerracePasswordUIView$TerraceSavedPasswordEntry;IIZZ)V

    invoke-interface {v1, v2, v9}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_2
    iget-object v1, v0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->mExpAdapter:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillBaseAdapter;

    check-cast v1, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWAdapter;

    iget v2, v0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment;->mTotalExceptionsCnt:I

    iget v3, v0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment;->mTotalPasswordsCnt:I

    add-int/2addr v2, v3

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment;->mViewTypes:Ljava/util/List;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWAdapter;->updatePasswordInfo(ILjava/util/List;)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment;->updateOptionMenu()V

    return-void
.end method

.method public passwordListAvailable(I)V
    .locals 12

    const-string v0, "listAvailable count: "

    const-string v1, "NameAndPWPreferenceFragment"

    invoke-static {p1, v0, v1}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment;->mTotalPasswordsCnt:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment;->mViewTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v7, v0

    move v8, v7

    :goto_0
    if-ge v7, p1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment;->mPasswordManagerHandler:Lcom/sec/terrace/browser/TerracePasswordUIView;

    invoke-virtual {v1, v7}, Lcom/sec/terrace/browser/TerracePasswordUIView;->getSavedPasswordEntry(I)Lcom/sec/terrace/browser/TerracePasswordUIView$TerraceSavedPasswordEntry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/terrace/browser/TerracePasswordUIView$TerraceSavedPasswordEntry;->isBiometric()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment;->mViewTypes:Ljava/util/List;

    new-instance v10, Lcom/sec/android/app/sbrowser/settings/password/AutofillViewType;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v4, 0x1

    move-object v1, v10

    move v3, v7

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/settings/password/AutofillViewType;-><init>(Lcom/sec/terrace/browser/TerracePasswordUIView$TerraceSavedPasswordEntry;IIZZ)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v9, p0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment;->mViewTypes:Ljava/util/List;

    add-int/lit8 v10, v8, 0x1

    new-instance v11, Lcom/sec/android/app/sbrowser/settings/password/AutofillViewType;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x1

    move-object v1, v11

    move v3, v7

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/settings/password/AutofillViewType;-><init>(Lcom/sec/terrace/browser/TerracePasswordUIView$TerraceSavedPasswordEntry;IIZZ)V

    invoke-interface {v9, v8, v11}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move v8, v10

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    if-ge v8, p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment;->mViewTypes:Ljava/util/List;

    new-instance v7, Lcom/sec/android/app/sbrowser/settings/password/AutofillViewType;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x2

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/settings/password/AutofillViewType;-><init>(Lcom/sec/terrace/browser/TerracePasswordUIView$TerraceSavedPasswordEntry;IIZZ)V

    invoke-interface {p1, v8, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_3
    if-lez v8, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment;->mViewTypes:Ljava/util/List;

    new-instance p1, Lcom/sec/android/app/sbrowser/settings/password/AutofillViewType;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x2

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/settings/password/AutofillViewType;-><init>(Lcom/sec/terrace/browser/TerracePasswordUIView$TerraceSavedPasswordEntry;IIZZ)V

    invoke-interface {p0, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public pressDeleteBottomBarButtonForSALogging(J)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment;->getScreenID()Ljava/lang/String;

    move-result-object p0

    const-string v0, "5162"

    invoke-static {p0, v0, p1, p2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public selectCheckboxForSALogging(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWPreferenceFragment;->getScreenID()Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    const-string p1, "5161"

    invoke-static {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public startDeleteMode()V
    .locals 1

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->startDeleteMode()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->mExpAdapter:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillBaseAdapter;

    check-cast p0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWAdapter;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWAdapter;->setSwitchViewEnabled(Z)V

    return-void
.end method
