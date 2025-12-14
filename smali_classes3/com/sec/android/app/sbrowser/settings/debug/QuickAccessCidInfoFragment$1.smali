.class Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessCidInfoFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw2/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessCidInfoFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessCidInfoFragment;

.field final synthetic val$cidPreference:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessCidInfoFragment;Landroidx/preference/Preference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessCidInfoFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessCidInfoFragment;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessCidInfoFragment$1;->val$cidPreference:Landroidx/preference/Preference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessCidInfoFragment$1;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessCidInfoFragment$1;->lambda$onPreferenceClick$0(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic lambda$onPreferenceClick$0(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;->getInstance()Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;

    move-result-object p2

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;->setDebugClientId(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;->getInstance()Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;->setDebugClientIdEdited(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessCidInfoFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessCidInfoFragment;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessCidInfoFragment;->i(Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessCidInfoFragment;)V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 5

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessCidInfoFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessCidInfoFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p1

    const v0, 0x7f0e0594

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0b048d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessCidInfoFragment$1;->val$cidPreference:Landroidx/preference/Preference;

    invoke-virtual {v2}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/EditText;->setSelection(II)V

    new-instance v2, Lm/k;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessCidInfoFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessCidInfoFragment;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object v3

    invoke-direct {v2, v3}, Lm/k;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, p1}, Lm/k;->setView(Landroid/view/View;)Lm/k;

    move-result-object p1

    iget-object v2, p1, Lm/k;->a:Lm/h;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lm/h;->m:Z

    const-string v2, "Modify CID"

    invoke-virtual {p1, v2}, Lm/k;->setTitle(Ljava/lang/CharSequence;)Lm/k;

    move-result-object p1

    new-instance v2, Lcom/sec/android/app/sbrowser/settings/debug/k;

    const/4 v4, 0x0

    invoke-direct {v2, v4, p0, v0}, Lcom/sec/android/app/sbrowser/settings/debug/k;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const p0, 0x7f140dbb

    invoke-virtual {p1, p0, v2}, Lm/k;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object p0

    const p1, 0x7f1402c1

    invoke-virtual {p0, p1, v1}, Lm/k;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object p0

    invoke-virtual {p0}, Lm/k;->create()Lm/l;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return v3
.end method
