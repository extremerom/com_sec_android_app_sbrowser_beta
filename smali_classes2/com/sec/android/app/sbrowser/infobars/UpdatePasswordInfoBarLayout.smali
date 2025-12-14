.class public Lcom/sec/android/app/sbrowser/infobars/UpdatePasswordInfoBarLayout;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/infobars/UpdatePasswordInfoBarLayout$Delegate;
    }
.end annotation


# instance fields
.field private mDelegate:Lcom/sec/android/app/sbrowser/infobars/UpdatePasswordInfoBarLayout$Delegate;

.field private mDescriptionTextView:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mInfoBarView:Lcom/sec/android/app/sbrowser/infobars/InfoBarView;

.field private mTitleTextView:Landroid/widget/TextView;

.field private mUserNameTextView:Landroid/widget/TextView;

.field private mUserNamesSpinner:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/sec/android/app/sbrowser/infobars/UpdatePasswordInfoBarLayout$1;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/infobars/UpdatePasswordInfoBarLayout$1;-><init>(Lcom/sec/android/app/sbrowser/infobars/UpdatePasswordInfoBarLayout;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/infobars/UpdatePasswordInfoBarLayout;->mDelegate:Lcom/sec/android/app/sbrowser/infobars/UpdatePasswordInfoBarLayout$Delegate;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/infobars/UpdatePasswordInfoBarLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/infobars/UpdatePasswordInfoBarLayout;->lambda$startDismissalCount$0()V

    return-void
.end method

.method private getDescriptionResource()I
    .locals 2
    .annotation build Landroidx/annotation/StringRes;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/UpdatePasswordInfoBarLayout;->mDelegate:Lcom/sec/android/app/sbrowser/infobars/UpdatePasswordInfoBarLayout$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/infobars/UpdatePasswordInfoBarLayout$Delegate;->getPasswordAutofillType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/UpdatePasswordInfoBarLayout;->mDelegate:Lcom/sec/android/app/sbrowser/infobars/UpdatePasswordInfoBarLayout$Delegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/infobars/UpdatePasswordInfoBarLayout$Delegate;->isReplaceSecBrandAsGalaxy()Z

    move-result p0

    if-nez p0, :cond_0

    const p0, 0x7f140616

    goto :goto_0

    :cond_0
    const p0, 0x7f140615

    :goto_0
    return p0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/UpdatePasswordInfoBarLayout;->mDelegate:Lcom/sec/android/app/sbrowser/infobars/UpdatePasswordInfoBarLayout$Delegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/infobars/UpdatePasswordInfoBarLayout$Delegate;->isReplaceSecBrandAsGalaxy()Z

    move-result p0

    if-nez p0, :cond_2

    const p0, 0x7f140614

    goto :goto_1

    :cond_2
    const p0, 0x7f140617

    :goto_1
    return p0
.end method

.method private getTitleResource()I
    .locals 2
    .annotation build Landroidx/annotation/StringRes;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/UpdatePasswordInfoBarLayout;->mDelegate:Lcom/sec/android/app/sbrowser/infobars/UpdatePasswordInfoBarLayout$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/infobars/UpdatePasswordInfoBarLayout$Delegate;->getPasswordAutofillType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/UpdatePasswordInfoBarLayout;->mDelegate:Lcom/sec/android/app/sbrowser/infobars/UpdatePasswordInfoBarLayout$Delegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/infobars/UpdatePasswordInfoBarLayout$Delegate;->isReplaceSecBrandAsGalaxy()Z

    move-result p0

    if-nez p0, :cond_0

    const p0, 0x7f14061a

    goto :goto_0

    :cond_0
    const p0, 0x7f140619

    :goto_0
    return p0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/UpdatePasswordInfoBarLayout;->mDelegate:Lcom/sec/android/app/sbrowser/infobars/UpdatePasswordInfoBarLayout$Delegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/infobars/UpdatePasswordInfoBarLayout$Delegate;->isReplaceSecBrandAsGalaxy()Z

    move-result p0

    if-nez p0, :cond_2

    const p0, 0x7f140618

    goto :goto_1

    :cond_2
    const p0, 0x7f14061b

    :goto_1
    return p0
.end method

.method private isHandlingUserNameEnabled()Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isShowingUsernameInPasswordUpdatePopupEnabled()Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$startDismissalCount$0()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/UpdatePasswordInfoBarLayout;->mInfoBarView:Lcom/sec/android/app/sbrowser/infobars/InfoBarView;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarView;->onCloseButtonClicked()V

    return-void
.end method

.method private onNotNowButtonClicked()V
    .locals 2

    const-string v0, "UpdatePasswordInfoBarLayout"

    const-string v1, "onNotNowButtonClicked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/UpdatePasswordInfoBarLayout;->mInfoBarView:Lcom/sec/android/app/sbrowser/infobars/InfoBarView;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarView;->onCloseButtonClicked()V

    return-void
.end method

.method private onRememberButtonClicked()V
    .locals 2

    const-string v0, "UpdatePasswordInfoBarLayout"

    const-string v1, "onRememberButtonClicked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/infobars/UpdatePasswordInfoBarLayout;->setSelectedUserNameIndex()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/UpdatePasswordInfoBarLayout;->mInfoBarView:Lcom/sec/android/app/sbrowser/infobars/InfoBarView;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarView;->onPrimaryButtonClicked()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/UpdatePasswordInfoBarLayout;->mInfoBarView:Lcom/sec/android/app/sbrowser/infobars/InfoBarView;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$Item;->getView()Landroid/view/View;

    move-result-object p0

    const v0, 0x7f14061d

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, LH6/o;->h(IILandroid/view/View;)LH6/o;

    move-result-object p0

    invoke-virtual {p0}, LH6/o;->l()V

    return-void
.end method

.method private setSelectedUserNameIndex()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/infobars/UpdatePasswordInfoBarLayout;->isHandlingUserNameEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/UpdatePasswordInfoBarLayout;->mUserNamesSpinner:Landroid/widget/Spinner;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/UpdatePasswordInfoBarLayout;->mDelegate:Lcom/sec/android/app/sbrowser/infobars/UpdatePasswordInfoBarLayout$Delegate;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/UpdatePasswordInfoBarLayout;->mUserNamesSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/infobars/UpdatePasswordInfoBarLayout$Delegate;->setSelectedUserNameIndex(I)V

    return-void
.end method

.method private updateLayout()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/UpdatePasswordInfoBarLayout;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/infobars/UpdatePasswordInfoBarLayout;->getTitleResource()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/UpdatePasswordInfoBarLayout;->mDescriptionTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/infobars/UpdatePasswordInfoBarLayout;->getDescriptionResource()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/infobars/UpdatePasswordInfoBarLayout;->updateUserNameLayout()V

    return-void
.end method

.method private updateUserNameLayout()V
    .locals 5

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/infobars/UpdatePasswordInfoBarLayout;->isHandlingUserNameEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/UpdatePasswordInfoBarLayout;->mDelegate:Lcom/sec/android/app/sbrowser/infobars/UpdatePasswordInfoBarLayout$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/infobars/UpdatePasswordInfoBarLayout$Delegate;->getUserNames()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/UpdatePasswordInfoBarLayout;->mDelegate:Lcom/sec/android/app/sbrowser/infobars/UpdatePasswordInfoBarLayout$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/infobars/UpdatePasswordInfoBarLayout$Delegate;->getUserNames()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/UpdatePasswordInfoBarLayout;->mUserNameTextView:Landroid/widget/TextView;

    const/16 v3, 0x8

    if-eqz v1, :cond_2

    move v4, v3

    goto :goto_1

    :cond_2
    move v4, v2

    :goto_1
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/UpdatePasswordInfoBarLayout;->mUserNamesSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_3

    move v3, v2

    :cond_3
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    if-eqz v1, :cond_4

    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/infobars/UpdatePasswordInfoBarLayout;->mDelegate:Lcom/sec/android/app/sbrowser/infobars/UpdatePasswordInfoBarLayout$Delegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/infobars/UpdatePasswordInfoBarLayout$Delegate;->getUserNames()[Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0e0049

    invoke-direct {v0, v1, v3, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v1, 0x7f0e0048

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/infobars/UpdatePasswordInfoBarLayout;->mUserNamesSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/UpdatePasswordInfoBarLayout;->mUserNamesSpinner:Landroid/widget/Spinner;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/UpdatePasswordInfoBarLayout;->mDelegate:Lcom/sec/android/app/sbrowser/infobars/UpdatePasswordInfoBarLayout$Delegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/infobars/UpdatePasswordInfoBarLayout$Delegate;->getUserNameIndex()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->setSelection(I)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/UpdatePasswordInfoBarLayout;->mUserNameTextView:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/UpdatePasswordInfoBarLayout;->mDelegate:Lcom/sec/android/app/sbrowser/infobars/UpdatePasswordInfoBarLayout$Delegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/infobars/UpdatePasswordInfoBarLayout$Delegate;->getUserNames()[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v2

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_2
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/UpdatePasswordInfoBarLayout;->mInfoBarView:Lcom/sec/android/app/sbrowser/infobars/InfoBarView;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$Item;->setControlsEnabled(Z)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0b01f0

    if-eq p1, v0, :cond_1

    const v0, 0x7f0b01f4

    if-eq p1, v0, :cond_1

    const v0, 0x7f0b01f6

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/infobars/UpdatePasswordInfoBarLayout;->onRememberButtonClicked()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/infobars/UpdatePasswordInfoBarLayout;->onNotNowButtonClicked()V

    :goto_0
    return-void
.end method

.method public setDelegate(Lcom/sec/android/app/sbrowser/infobars/UpdatePasswordInfoBarLayout$Delegate;)V
    .locals 0
    .param p1    # Lcom/sec/android/app/sbrowser/infobars/UpdatePasswordInfoBarLayout$Delegate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/infobars/UpdatePasswordInfoBarLayout;->mDelegate:Lcom/sec/android/app/sbrowser/infobars/UpdatePasswordInfoBarLayout$Delegate;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/infobars/UpdatePasswordInfoBarLayout;->updateLayout()V

    return-void
.end method

.method public setResources(Lcom/sec/android/app/sbrowser/infobars/InfoBarView;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/infobars/UpdatePasswordInfoBarLayout;->mInfoBarView:Lcom/sec/android/app/sbrowser/infobars/InfoBarView;

    const p1, 0x7f0b0d66

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/infobars/UpdatePasswordInfoBarLayout;->mTitleTextView:Landroid/widget/TextView;

    const p1, 0x7f0b03eb

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/infobars/UpdatePasswordInfoBarLayout;->mDescriptionTextView:Landroid/widget/TextView;

    const p1, 0x7f0b01f0

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0b01f4

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0b01f6

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/infobars/UpdatePasswordInfoBarLayout;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/infobars/UpdatePasswordInfoBarLayout;->setResourcesForUserName()V

    return-void
.end method

.method public setResourcesForUserName()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/infobars/UpdatePasswordInfoBarLayout;->isHandlingUserNameEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f0b0dfe

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/UpdatePasswordInfoBarLayout;->mUserNameTextView:Landroid/widget/TextView;

    const v0, 0x7f0b0dff

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/UpdatePasswordInfoBarLayout;->mUserNamesSpinner:Landroid/widget/Spinner;

    return-void
.end method

.method public startDismissalCount()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/UpdatePasswordInfoBarLayout;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/sbrowser/infobars/b;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/infobars/b;-><init>(Landroid/view/ViewGroup;I)V

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public stopDismissalCount()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/UpdatePasswordInfoBarLayout;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
