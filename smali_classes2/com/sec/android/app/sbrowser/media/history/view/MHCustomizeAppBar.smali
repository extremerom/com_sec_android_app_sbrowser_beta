.class Lcom/sec/android/app/sbrowser/media/history/view/MHCustomizeAppBar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mActionModeView:Landroid/view/View;

.field private final mActivity:Landroid/app/Activity;

.field private final mAppBar:Lcom/sec/android/app/sbrowser/media/history/view/IMHViewAppBar;

.field private mCancelButton:Landroid/view/View;

.field private mSelectAllCheckBox:Landroid/widget/CheckBox;

.field private mSelectAllLayout:Landroid/widget/LinearLayout;

.field private mSelectAllText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/media/history/view/IMHViewAppBar;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHCustomizeAppBar;->mAppBar:Lcom/sec/android/app/sbrowser/media/history/view/IMHViewAppBar;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHCustomizeAppBar;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/media/history/view/MHCustomizeAppBar;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/media/history/view/MHCustomizeAppBar;->lambda$updateAppbarLayout$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/media/history/view/MHCustomizeAppBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHCustomizeAppBar;->lambda$onClick$1()V

    return-void
.end method

.method private getCheckedText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHCustomizeAppBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHCustomizeAppBar;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f140289

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const p0, 0x7f14028a

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private getSelectedString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHCustomizeAppBar;->mAppBar:Lcom/sec/android/app/sbrowser/media/history/view/IMHViewAppBar;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/history/view/IMHViewAppBar;->isInActionMode()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHCustomizeAppBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHCustomizeAppBar;->mAppBar:Lcom/sec/android/app/sbrowser/media/history/view/IMHViewAppBar;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/history/view/IMHViewAppBar;->getSelectedItemCount()I

    move-result p0

    if-lez p0, :cond_1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f12005f

    invoke-virtual {v0, v2, p0, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const p0, 0x7f140801

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const v1, 0x7f140655

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private synthetic lambda$onClick$1()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHCustomizeAppBar;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    return-void
.end method

.method private synthetic lambda$updateAppbarLayout$0(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHCustomizeAppBar;->mAppBar:Lcom/sec/android/app/sbrowser/media/history/view/IMHViewAppBar;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/history/view/IMHViewAppBar;->onCancelButtonClicked()V

    return-void
.end method


# virtual methods
.method public getActionBarView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHCustomizeAppBar;->mActionModeView:Landroid/view/View;

    return-object p0
.end method

.method public getAppBarTextView()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHCustomizeAppBar;->mSelectAllText:Landroid/widget/TextView;

    return-object p0
.end method

.method public isSelectedAll()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHCustomizeAppBar;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-string v0, ", "

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHCustomizeAppBar;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    const-string v1, "3219"

    invoke-static {v1, p1}, Lcom/sec/android/app/sbrowser/media/common/MediaSALogging;->videoHistoryActionMode(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHCustomizeAppBar;->mAppBar:Lcom/sec/android/app/sbrowser/media/history/view/IMHViewAppBar;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHCustomizeAppBar;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    invoke-interface {p1, v1}, Lcom/sec/android/app/sbrowser/media/history/view/IMHViewAppBar;->selectAllListItem(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHCustomizeAppBar;->mSelectAllLayout:Landroid/widget/LinearLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHCustomizeAppBar;->getCheckedText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHCustomizeAppBar;->getSelectedString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHCustomizeAppBar;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHCustomizeAppBar;->mAppBar:Lcom/sec/android/app/sbrowser/media/history/view/IMHViewAppBar;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHCustomizeAppBar;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    invoke-interface {p1, v1}, Lcom/sec/android/app/sbrowser/media/history/view/IMHViewAppBar;->selectAllListItem(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHCustomizeAppBar;->mSelectAllLayout:Landroid/widget/LinearLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHCustomizeAppBar;->getCheckedText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHCustomizeAppBar;->getSelectedString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/media/history/view/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/media/history/view/a;-><init>(ILjava/lang/Object;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0b05d0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public startAppBarAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHCustomizeAppBar;->mActivity:Landroid/app/Activity;

    const v1, 0x7f010037

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHCustomizeAppBar;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public updateAppBarText()V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHCustomizeAppBar;->mAppBar:Lcom/sec/android/app/sbrowser/media/history/view/IMHViewAppBar;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/history/view/IMHViewAppBar;->isInActionMode()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHCustomizeAppBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHCustomizeAppBar;->mAppBar:Lcom/sec/android/app/sbrowser/media/history/view/IMHViewAppBar;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/media/history/view/IMHViewAppBar;->getSelectedItemCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x7f120001

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f1405cf

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHCustomizeAppBar;->mSelectAllText:Landroid/widget/TextView;

    if-lez v1, :cond_1

    move-object v5, v2

    goto :goto_0

    :cond_1
    move-object v5, v3

    :goto_0
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHCustomizeAppBar;->mAppBar:Lcom/sec/android/app/sbrowser/media/history/view/IMHViewAppBar;

    if-lez v1, :cond_2

    move-object v5, v2

    goto :goto_1

    :cond_2
    move-object v5, v3

    :goto_1
    invoke-interface {v4, v5}, Lcom/sec/android/app/sbrowser/media/history/view/IMHViewAppBar;->setMainAppBarTitle(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHCustomizeAppBar;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHCustomizeAppBar;->mAppBar:Lcom/sec/android/app/sbrowser/media/history/view/IMHViewAppBar;

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/media/history/view/IMHViewAppBar;->getItemCount()I

    move-result v5

    if-ne v1, v5, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v4, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHCustomizeAppBar;->mAppBar:Lcom/sec/android/app/sbrowser/media/history/view/IMHViewAppBar;

    if-nez v1, :cond_4

    move-object v2, v3

    :cond_4
    invoke-interface {v4, v2}, Lcom/sec/android/app/sbrowser/media/history/view/IMHViewAppBar;->setMainAppBarContentDescription(Ljava/lang/String;)V

    if-nez v1, :cond_5

    const v1, 0x7f141085

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_5
    const v2, 0x7f141084

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_3
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHCustomizeAppBar;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHCustomizeAppBar;->getCheckedText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x7f14105f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f140b8f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHCustomizeAppBar;->mSelectAllLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateAppbarLayout()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHCustomizeAppBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHCustomizeAppBar;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e0455

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHCustomizeAppBar;->mActionModeView:Landroid/view/View;

    if-nez v0, :cond_0

    const-string p0, "[MM] MHCustomizeAppBar"

    const-string v0, "Resource can not found or not action mode, bookmark_actionbar_title."

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const v1, 0x7f0b05d0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHCustomizeAppBar;->mSelectAllLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHCustomizeAppBar;->mActionModeView:Landroid/view/View;

    const v1, 0x7f0b0af8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHCustomizeAppBar;->mCancelButton:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHCustomizeAppBar;->mActionModeView:Landroid/view/View;

    const v1, 0x7f0b05d2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHCustomizeAppBar;->mSelectAllText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHCustomizeAppBar;->mSelectAllLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHCustomizeAppBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHCustomizeAppBar;->mSelectAllLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHCustomizeAppBar;->mSelectAllLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHCustomizeAppBar;->mCancelButton:Landroid/view/View;

    new-instance v1, Lcom/sec/android/app/sbrowser/media/history/view/b;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/media/history/view/b;-><init>(Lcom/sec/android/app/sbrowser/media/history/view/MHCustomizeAppBar;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isShowButtonShapeEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHCustomizeAppBar;->mActionModeView:Landroid/view/View;

    const v1, 0x7f0b0af9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0800ad

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHCustomizeAppBar;->mActivity:Landroid/app/Activity;

    const v2, 0x7f060e10

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHCustomizeAppBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1405cf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHCustomizeAppBar;->mSelectAllText:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHCustomizeAppBar;->mAppBar:Lcom/sec/android/app/sbrowser/media/history/view/IMHViewAppBar;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/media/history/view/IMHViewAppBar;->isAppbarExpanded()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHCustomizeAppBar;->mSelectAllText:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHCustomizeAppBar;->mSelectAllText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHCustomizeAppBar;->mAppBar:Lcom/sec/android/app/sbrowser/media/history/view/IMHViewAppBar;

    invoke-interface {v1, v0}, Lcom/sec/android/app/sbrowser/media/history/view/IMHViewAppBar;->setMainAppBarTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHCustomizeAppBar;->mActionModeView:Landroid/view/View;

    const v1, 0x7f0b05d1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHCustomizeAppBar;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_5

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHCustomizeAppBar;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHCustomizeAppBar;->updateAppBarText()V

    return-void
.end method
