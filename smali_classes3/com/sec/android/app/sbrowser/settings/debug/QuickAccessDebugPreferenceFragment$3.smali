.class Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessDebugPreferenceFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw2/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessDebugPreferenceFragment;->initAddTestIconPreference()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessDebugPreferenceFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessDebugPreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessDebugPreferenceFragment$3;->this$0:Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessDebugPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessDebugPreferenceFragment$3;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessDebugPreferenceFragment$3;->lambda$onPreferenceClick$0(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic lambda$onPreferenceClick$0(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessDebugPreferenceFragment$3;->this$0:Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessDebugPreferenceFragment;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessDebugPreferenceFragment;->o(Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessDebugPreferenceFragment;)Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    move-result-object p0

    new-instance p2, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessAddItemParameter;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->getDomainName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p1, p3, p1}, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessAddItemParameter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->addQuickAccessItems(Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessAddItemParameter;)V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 4
    .param p1    # Landroidx/preference/Preference;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance p1, Landroid/widget/EditText;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessDebugPreferenceFragment$3;->this$0:Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessDebugPreferenceFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    new-instance v0, Lm/k;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessDebugPreferenceFragment$3;->this$0:Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessDebugPreferenceFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object v1

    invoke-direct {v0, v1}, Lm/k;-><init>(Landroid/content/Context;)V

    const v1, 0x7f140b51

    invoke-virtual {v0, v1}, Lm/k;->a(I)V

    invoke-virtual {v0, p1}, Lm/k;->setView(Landroid/view/View;)Lm/k;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/settings/debug/k;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p0, p1}, Lcom/sec/android/app/sbrowser/settings/debug/k;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const-string p0, "OK"

    invoke-virtual {v1, p0, v2}, Lm/k;->d(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const-string p0, "Cancel"

    const/4 p1, 0x0

    invoke-virtual {v1, p0, p1}, Lm/k;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Lm/k;->create()Lm/l;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    const/4 p0, 0x1

    return p0
.end method
