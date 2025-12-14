.class public Lcom/sec/android/app/sbrowser/settings/debug/SetOtherValueDialogFragment;
.super Landroidx/fragment/app/u;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/settings/debug/SetOtherValueDialogFragment$DialogDelegate;
    }
.end annotation


# instance fields
.field private mDialog:Lm/l;

.field private mDialogDelegate:Lcom/sec/android/app/sbrowser/settings/debug/SetOtherValueDialogFragment$DialogDelegate;

.field private mOtherPageView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/u;-><init>()V

    return-void
.end method

.method private getCurrentOtherValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/debug/SetOtherValueDialogFragment;->mDialogDelegate:Lcom/sec/android/app/sbrowser/settings/debug/SetOtherValueDialogFragment$DialogDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/debug/SetOtherValueDialogFragment$DialogDelegate;->getCurrentValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic i(Lcom/sec/android/app/sbrowser/settings/debug/SetOtherValueDialogFragment;)Lm/l;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/debug/SetOtherValueDialogFragment;->mDialog:Lm/l;

    return-object p0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/debug/SetOtherValueDialogFragment;->mOtherPageView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/debug/SetOtherValueDialogFragment;->mDialogDelegate:Lcom/sec/android/app/sbrowser/settings/debug/SetOtherValueDialogFragment$DialogDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/debug/SetOtherValueDialogFragment$DialogDelegate;->onPositiveClick()V

    goto :goto_0

    :cond_0
    const/4 p1, -0x2

    if-ne p2, p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/debug/SetOtherValueDialogFragment;->mDialogDelegate:Lcom/sec/android/app/sbrowser/settings/debug/SetOtherValueDialogFragment$DialogDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/debug/SetOtherValueDialogFragment$DialogDelegate;->onNegativeClick()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0e0212

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0b0874

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/debug/SetOtherValueDialogFragment;->mOtherPageView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/debug/SetOtherValueDialogFragment;->getCurrentOtherValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/debug/SetOtherValueDialogFragment;->mOtherPageView:Landroid/widget/TextView;

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/debug/SetOtherValueDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/settings/debug/SetOtherValueDialogFragment$1;-><init>(Lcom/sec/android/app/sbrowser/settings/debug/SetOtherValueDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v0, Lm/k;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v1

    const v2, 0x7f1501c5

    invoke-direct {v0, v1, v2}, Lm/k;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f140541

    invoke-virtual {v0, v1}, Lm/k;->e(I)V

    invoke-virtual {v0, p1}, Lm/k;->setView(Landroid/view/View;)Lm/k;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/debug/SetOtherValueDialogFragment;->mDialogDelegate:Lcom/sec/android/app/sbrowser/settings/debug/SetOtherValueDialogFragment$DialogDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/settings/debug/SetOtherValueDialogFragment$DialogDelegate;->getMessage()I

    move-result v0

    invoke-virtual {p1, v0}, Lm/k;->a(I)V

    const v0, 0x104000a

    invoke-virtual {p1, v0, p0}, Lm/k;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object p1

    const/high16 v0, 0x1040000

    invoke-virtual {p1, v0, p0}, Lm/k;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object p1

    invoke-virtual {p1}, Lm/k;->create()Lm/l;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/debug/SetOtherValueDialogFragment;->mDialog:Lm/l;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/debug/SetOtherValueDialogFragment;->mDialog:Lm/l;

    return-object p0
.end method

.method public setDialogDelegate(Lcom/sec/android/app/sbrowser/settings/debug/SetOtherValueDialogFragment$DialogDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/debug/SetOtherValueDialogFragment;->mDialogDelegate:Lcom/sec/android/app/sbrowser/settings/debug/SetOtherValueDialogFragment$DialogDelegate;

    return-void
.end method
