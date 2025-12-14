.class public Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar$Delegate;
    }
.end annotation


# instance fields
.field private mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar$Delegate;

.field private mEditToolbarTitle:Landroid/widget/TextView;

.field private mIsEnteredByMenu:Z

.field protected mSelectAllCheckBox:Landroid/widget/CheckBox;

.field protected mSelectAllLayout:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;->mIsEnteredByMenu:Z

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;->lambda$onCreateView$2(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar$Delegate;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;->lambda$onCreateView$1(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar$Delegate;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;->lambda$onCreateView$0(Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;->mIsEnteredByMenu:Z

    return p0
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;->mIsEnteredByMenu:Z

    return-void
.end method

.method private synthetic lambda$onCreateView$0(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar$Delegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar$Delegate;->onCancelBtnClicked()V

    return-void
.end method

.method private synthetic lambda$onCreateView$1(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar$Delegate;Landroid/view/View;)V
    .locals 1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar$Delegate;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar$Delegate;->getSelectableItemCount()I

    move-result p2

    const/4 v0, 0x1

    if-lt p2, v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p2}, Landroid/widget/CompoundButton;->toggle()V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar$Delegate;->selectAll(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;->mSelectAllLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;->getSelectedString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$onCreateView$2(Landroid/widget/CompoundButton;Z)V
    .locals 1

    const-string p1, "[mSelectAllCheckBox:onCheckedChanged] isChecked: "

    const-string v0, "MultiTabEditToolbar"

    invoke-static {p1, v0, p2}, Lw2/j;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar$Delegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar$Delegate;->getSelectableItemCount()I

    move-result p1

    const/4 p2, 0x1

    if-ge p1, p2, :cond_0

    const-string p1, "[onCheckedChanged] cancel check "

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;->updateSelectAllDescription()V

    return-void
.end method

.method private updateSelectAllDescription()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;->mSelectAllLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    const v2, 0x7f14105f

    const-string v3, ",  "

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f14067d

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f14067e

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;->mSelectAllLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public enterSelectEditMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;->mIsEnteredByMenu:Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->showBasicEditModeCheckBoxIntroAnim(Landroid/content/Context;Landroid/widget/CheckBox;)V

    return-void
.end method

.method public exitEditModeWithoutList()V
    .locals 2

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    :cond_0
    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;->mIsEnteredByMenu:Z

    return-void
.end method

.method public focusToolbar()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;->mSelectAllLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MultiTabEditToolbar"

    const-string v1, "[focusToolbar] mSelectAllCheckBox"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;->mSelectAllLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getSelectedString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar$Delegate;->getSelectedItemCount()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f14067d

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f14067e

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    if-nez v0, :cond_2

    const v0, 0x7f140801

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f140655

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x7f12005f

    invoke-virtual {v1, v3, v0, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-string v1, ", "

    invoke-static {p0, v1, v0}, Lt/b;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isSelectAllCheckbox(Landroid/view/View;)Z
    .locals 2

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;->mSelectAllLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;->mSelectAllLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result p0

    if-ne p1, p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSelectAllChecked()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p0

    return p0
.end method

.method public onCreateView(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar$Delegate;)V
    .locals 3

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar$Delegate;

    const v0, 0x7f0b0cbe

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;->mSelectAllLayout:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar$1;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    const v0, 0x7f0b0ceb

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    const v0, 0x7f0b0e79

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;->mEditToolbarTitle:Landroid/widget/TextView;

    const v0, 0x7f0b0cde

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/multi_tab/s;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/multi_tab/s;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1402c1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setButtonContentDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isShowButtonShapeEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0b07ae

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0800b1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060e10

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;->mSelectAllLayout:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/sec/android/app/sbrowser/multi_tab/o;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/sec/android/app/sbrowser/multi_tab/o;-><init>(Landroid/widget/LinearLayout;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    new-instance v0, Lcom/sec/android/app/sbrowser/multi_tab/e;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/multi_tab/e;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f060d1d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    const-string v0, "MultiTabEditToolbar"

    const-string v1, "[onDestroyView]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;->mSelectAllLayout:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;->mEditToolbarTitle:Landroid/widget/TextView;

    return-void
.end method

.method public setEditToolbarTitle(I)V
    .locals 2

    const-string v0, "[setEditToolbarTitle] count : "

    const-string v1, "MultiTabEditToolbar"

    invoke-static {p1, v0, v1}, Lt/b;->x(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;->mEditToolbarTitle:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const p1, 0x7f14021e

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;->mEditToolbarTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;->mIsEnteredByMenu:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;->updateSelectAllDescription()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120001

    invoke-virtual {v0, v1, p1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;->mEditToolbarTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;->mEditToolbarTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;->updateSelectAllDescription()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setSelectAllCheck(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public setTitleAlpha(F)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;->mEditToolbarTitle:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method
