.class public Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewCompositor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewCompositor$Delegate;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDelegate:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewCompositor$Delegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewCompositor$Delegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewCompositor;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewCompositor;->mDelegate:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewCompositor$Delegate;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewCompositor;Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewHolder;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewCompositor;->setBackgroundHighlight(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewHolder;Z)V

    return-void
.end method

.method private setBackground(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewHolder;ZZ)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    iget-object p0, p1, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewHolder;->mListDivider:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    const/16 p0, 0xf

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;->setRoundMode(I)V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    iget-object p0, p1, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewHolder;->mListDivider:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    const/16 p0, 0xc

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;->setRoundMode(I)V

    goto :goto_0

    :cond_1
    const p3, 0x7f060bd0

    if-eqz p2, :cond_2

    iget-object p2, p1, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewHolder;->mListDivider:Landroid/view/View;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewCompositor;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p3}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/view/View;->setBackgroundColor(I)V

    const/4 p0, 0x3

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;->setRoundMode(I)V

    goto :goto_0

    :cond_2
    iget-object p2, p1, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewHolder;->mListDivider:Landroid/view/View;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewCompositor;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p3}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;->setRoundMode(I)V

    :goto_0
    return-void
.end method

.method private setBackgroundHighlight(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewHolder;Z)V
    .locals 0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewHolder;->getRowView()Landroid/view/View;

    move-result-object p1

    if-eqz p2, :cond_0

    const p0, 0x7f08008a

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewCompositor;->mContext:Landroid/content/Context;

    const p2, 0x7f080089

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setBackgroundDrawableResource(Landroid/content/Context;Landroid/view/View;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setContentDescription(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewHolder;)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewHolder;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewHolder;->getSummary()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewHolder;->getRowView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setContentDescription(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewHolder;Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewCompositor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p2, :cond_0

    const p2, 0x7f14067d

    goto :goto_0

    :cond_0
    const p2, 0x7f14067e

    :goto_0
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewCompositor;->mDelegate:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewCompositor$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewCompositor$Delegate;->isShowingActionMode()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewHolder;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewHolder;->getSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewCompositor;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f140b8f

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewHolder;->getRowView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setTitleAndSummary(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewHolder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewHolder;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewHolder;->setSummary(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bindViewHolder(Landroidx/recyclerview/widget/h1;I)V
    .locals 3
    .param p1    # Landroidx/recyclerview/widget/h1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewHolder;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewCompositor;->mDelegate:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewCompositor$Delegate;

    invoke-interface {v0, p2}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewCompositor$Delegate;->getTitle(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewCompositor;->mDelegate:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewCompositor$Delegate;

    invoke-interface {v1, p2}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewCompositor$Delegate;->getSummary(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewCompositor;->setTitleAndSummary(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewHolder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewCompositor;->mDelegate:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewCompositor$Delegate;

    invoke-interface {v0, p2}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewCompositor$Delegate;->isFirstChild(I)Z

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewCompositor;->mDelegate:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewCompositor$Delegate;

    invoke-interface {v1, p2}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewCompositor$Delegate;->isLastChild(I)Z

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewCompositor;->setBackground(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewHolder;ZZ)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewCompositor;->mDelegate:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewCompositor$Delegate;

    invoke-interface {v0, p2}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewCompositor$Delegate;->isItemSelected(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewCompositor;->mDelegate:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewCompositor$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewCompositor$Delegate;->isShowingActionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewCompositor;->setBackgroundHighlight(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewHolder;Z)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewHolder;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    new-instance v2, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewCompositor$1;

    invoke-direct {v2, p0, p1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewCompositor$1;-><init>(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewCompositor;Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewHolder;)V

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewCompositor;->mDelegate:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewCompositor$Delegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewCompositor$Delegate;->isShowingActionMode()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewCompositor;->mDelegate:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewCompositor$Delegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewCompositor$Delegate;->hasItem()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewCompositor;->mDelegate:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewCompositor$Delegate;

    invoke-interface {v1, p2}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewCompositor$Delegate;->isItemSelected(I)Z

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewCompositor;->setContentDescription(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewHolder;Z)V

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p0

    if-eq p2, p0, :cond_2

    invoke-virtual {v0, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-virtual {v0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    goto :goto_1

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewCompositor;->setContentDescription(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewHolder;)V

    const/16 p0, 0x8

    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_2
    :goto_1
    return-void
.end method
