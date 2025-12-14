.class public Lcom/sec/android/app/sbrowser/settings/debug/TabManagerDebugPreferenceFragment;
.super Lw2/A;
.source "SourceFile"

# interfaces
.implements Lw2/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/settings/debug/TabManagerDebugPreferenceFragment$TabCreatingHelper;
    }
.end annotation


# instance fields
.field private mTabCreatingHelper:Lcom/sec/android/app/sbrowser/settings/debug/TabManagerDebugPreferenceFragment$TabCreatingHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lw2/A;-><init>()V

    return-void
.end method

.method private createCrossAppActionTestDialog()V
    .locals 5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lm/k;

    invoke-direct {v1, v0}, Lm/k;-><init>(Landroid/content/Context;)V

    const-string v2, "Find Tab Action"

    invoke-virtual {v1, v2}, Lm/k;->setTitle(Ljava/lang/CharSequence;)Lm/k;

    move-result-object v1

    iget-object v2, v1, Lm/k;->a:Lm/h;

    const-string v3, "Enter keyword to find."

    iput-object v3, v2, Lm/h;->f:Ljava/lang/CharSequence;

    new-instance v2, Landroidx/appcompat/widget/AppCompatEditText;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setInputType(I)V

    invoke-virtual {v1, v2}, Lm/k;->setView(Landroid/view/View;)Lm/k;

    new-instance v3, Lcom/sec/android/app/sbrowser/global_config/d;

    const/4 v4, 0x4

    invoke-direct {v3, p0, v4, v2, v0}, Lcom/sec/android/app/sbrowser/global_config/d;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    const p0, 0x7f14084e

    invoke-virtual {v1, p0, v3}, Lm/k;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    new-instance p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/w;

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/w;-><init>(I)V

    const v0, 0x7f1402c1

    invoke-virtual {v1, v0, p0}, Lm/k;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    invoke-virtual {v1}, Lm/k;->f()Lm/l;

    return-void
.end method

.method private createMaximumTabTestDialog()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/debug/TabManagerDebugPreferenceFragment;->getMaximumAvailableTabs()I

    move-result v1

    new-instance v2, Lm/k;

    invoke-direct {v2, v0}, Lm/k;-><init>(Landroid/content/Context;)V

    const-string v3, "Creating tabs automatically"

    invoke-virtual {v2, v3}, Lm/k;->setTitle(Ljava/lang/CharSequence;)Lm/k;

    const-string v3, "Enter how many tabs you want to create. (1 ~ "

    const-string v4, "(MAX))"

    invoke-static {v1, v3, v4}, Lt/b;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lm/k;->a:Lm/h;

    iput-object v3, v4, Lm/h;->f:Ljava/lang/CharSequence;

    new-instance v3, Landroidx/appcompat/widget/AppCompatEditText;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x2

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setInputType(I)V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v3}, Lm/k;->setView(Landroid/view/View;)Lm/k;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/debug/k;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0, v3}, Lcom/sec/android/app/sbrowser/settings/debug/k;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const p0, 0x7f14084e

    invoke-virtual {v2, p0, v0}, Lm/k;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    new-instance p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/w;

    const/16 v0, 0x11

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/w;-><init>(I)V

    const v0, 0x7f1402c1

    invoke-virtual {v2, v0, p0}, Lm/k;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    invoke-virtual {v2}, Lm/k;->f()Lm/l;

    return-void
.end method

.method private createResultDialog(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/appfunctions/schema/common/v1/browser/Tab;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "size : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance p1, Lm/k;

    invoke-direct {p1, p0}, Lm/k;-><init>(Landroid/content/Context;)V

    const-string p0, "Result"

    invoke-virtual {p1, p0}, Lm/k;->setTitle(Ljava/lang/CharSequence;)Lm/k;

    move-result-object p0

    iget-object p1, p0, Lm/k;->a:Lm/h;

    iput-object v0, p1, Lm/h;->f:Ljava/lang/CharSequence;

    new-instance p1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/w;

    const/16 v0, 0x12

    invoke-direct {p1, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/w;-><init>(I)V

    const v0, 0x7f1402c1

    invoke-virtual {p0, v0, p1}, Lm/k;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object p0

    invoke-virtual {p0}, Lm/k;->f()Lm/l;

    return-void
.end method

.method private getMaximumAvailableTabs()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;->getMaxTabCount()I

    move-result p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;->getGlobalTabCount()I

    move-result v0

    sub-int/2addr p0, v0

    return p0
.end method

.method private getTabCountInteger(Ljava/lang/String;)I
    .locals 0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/16 p0, 0x63

    :goto_0
    return p0
.end method

.method private getTabCreatingHelper()Lcom/sec/android/app/sbrowser/settings/debug/TabManagerDebugPreferenceFragment$TabCreatingHelper;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/debug/TabManagerDebugPreferenceFragment;->mTabCreatingHelper:Lcom/sec/android/app/sbrowser/settings/debug/TabManagerDebugPreferenceFragment$TabCreatingHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/debug/TabManagerDebugPreferenceFragment$TabCreatingHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/settings/debug/TabManagerDebugPreferenceFragment$TabCreatingHelper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/debug/TabManagerDebugPreferenceFragment;->mTabCreatingHelper:Lcom/sec/android/app/sbrowser/settings/debug/TabManagerDebugPreferenceFragment$TabCreatingHelper;

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/debug/TabManagerDebugPreferenceFragment;->mTabCreatingHelper:Lcom/sec/android/app/sbrowser/settings/debug/TabManagerDebugPreferenceFragment$TabCreatingHelper;

    return-object p0
.end method

.method public static synthetic h(Lcom/sec/android/app/sbrowser/settings/debug/TabManagerDebugPreferenceFragment;Landroidx/appcompat/widget/AppCompatEditText;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/settings/debug/TabManagerDebugPreferenceFragment;->lambda$createMaximumTabTestDialog$5(Landroidx/appcompat/widget/AppCompatEditText;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic i(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/debug/TabManagerDebugPreferenceFragment;->lambda$createCrossAppActionTestDialog$4(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private isValidTabCount(I)Z
    .locals 0

    const/16 p0, 0xa

    if-gt p0, p1, :cond_0

    const/16 p0, 0x1f4

    if-gt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic j(Lcom/sec/android/app/sbrowser/settings/debug/TabManagerDebugPreferenceFragment;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/debug/TabManagerDebugPreferenceFragment;->lambda$onViewCreated$0(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic k(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/debug/TabManagerDebugPreferenceFragment;->lambda$createMaximumTabTestDialog$6(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic l(Lcom/sec/android/app/sbrowser/settings/debug/TabManagerDebugPreferenceFragment;Landroidx/appcompat/widget/AppCompatEditText;Landroid/content/Context;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/settings/debug/TabManagerDebugPreferenceFragment;->lambda$createCrossAppActionTestDialog$3(Landroidx/appcompat/widget/AppCompatEditText;Landroid/content/Context;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic lambda$createCrossAppActionTestDialog$3(Landroidx/appcompat/widget/AppCompatEditText;Landroid/content/Context;Landroid/content/DialogInterface;I)V
    .locals 3

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p4

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    new-instance p4, Lcom/google/android/appfunctions/schema/common/v1/browser/FindTabsParams;

    const-string v0, "id"

    const/4 v1, 0x5

    const-string v2, "namespace"

    invoke-direct {p4, v2, v0, p1, v1}, Lcom/google/android/appfunctions/schema/common/v1/browser/FindTabsParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object p1, Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabModel;->INSTANCE:Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabModel;

    invoke-virtual {p1, p2, p4}, Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabModel;->findTabs(Landroid/content/Context;Lcom/google/android/appfunctions/schema/common/v1/browser/FindTabsParams;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/debug/TabManagerDebugPreferenceFragment;->createResultDialog(Ljava/util/List;)V

    invoke-interface {p3}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private static synthetic lambda$createCrossAppActionTestDialog$4(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private synthetic lambda$createMaximumTabTestDialog$5(Landroidx/appcompat/widget/AppCompatEditText;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/debug/TabManagerDebugPreferenceFragment;->getTabCreatingHelper()Lcom/sec/android/app/sbrowser/settings/debug/TabManagerDebugPreferenceFragment$TabCreatingHelper;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/debug/TabManagerDebugPreferenceFragment$TabCreatingHelper;->c(Lcom/sec/android/app/sbrowser/settings/debug/TabManagerDebugPreferenceFragment$TabCreatingHelper;I)V

    :cond_0
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private static synthetic lambda$createMaximumTabTestDialog$6(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private static synthetic lambda$createResultDialog$7(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private synthetic lambda$onViewCreated$0(Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/debug/TabManagerDebugPreferenceFragment;->createCrossAppActionTestDialog()V

    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$onViewCreated$1(Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/debug/TabManagerDebugPreferenceFragment;->createMaximumTabTestDialog()V

    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$onViewCreated$2(Landroidx/preference/Preference;)Z
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;->retrain()V

    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic m(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/debug/TabManagerDebugPreferenceFragment;->lambda$createResultDialog$7(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic n(Lcom/sec/android/app/sbrowser/settings/debug/TabManagerDebugPreferenceFragment;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/debug/TabManagerDebugPreferenceFragment;->lambda$onViewCreated$1(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic o(Lcom/sec/android/app/sbrowser/settings/debug/TabManagerDebugPreferenceFragment;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/debug/TabManagerDebugPreferenceFragment;->lambda$onViewCreated$2(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method private updateTabCountSummary(I)V
    .locals 2

    const-string v0, "pref_maximum_tab_count_limit_edit"

    invoke-virtual {p0, v0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/EditTextPreference;

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/debug/TabManagerDebugPreferenceFragment;->isValidTabCount(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x63

    if-eq p1, v1, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const p1, 0x7f140a0e

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Landroidx/preference/Preference;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "pref_maximum_tab_count_limit_edit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/settings/debug/TabManagerDebugPreferenceFragment;->getTabCountInteger(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/debug/TabManagerDebugPreferenceFragment;->updateTabCountSummary(I)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "onPreferenceChanged(): "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "TabManagerDebugPreferenceFragment"

    invoke-static {p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->setDebugMaximumTabCountLimit(I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Lw2/A;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p1

    const p2, 0x7f141020

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setTitle(I)V

    const p1, 0x7f18007f

    invoke-virtual {p0, p1}, Lw2/A;->addPreferencesFromResource(I)V

    const-string p1, "pref_maximum_tab_count_limit_edit"

    invoke-virtual {p0, p1}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/EditTextPreference;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Lw2/m;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getDebugMaximumTabCountLimit()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/debug/TabManagerDebugPreferenceFragment;->updateTabCountSummary(I)V

    :cond_1
    const-string p1, "pref_cross_app_action_tab_action_for_test"

    invoke-virtual {p0, p1}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance p2, Lcom/sec/android/app/sbrowser/settings/debug/s;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/sec/android/app/sbrowser/settings/debug/s;-><init>(Lcom/sec/android/app/sbrowser/settings/debug/TabManagerDebugPreferenceFragment;I)V

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Lw2/n;)V

    :cond_2
    const-string p1, "pref_create_maximum_tabs_for_test"

    invoke-virtual {p0, p1}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_3

    new-instance p2, Lcom/sec/android/app/sbrowser/settings/debug/s;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, Lcom/sec/android/app/sbrowser/settings/debug/s;-><init>(Lcom/sec/android/app/sbrowser/settings/debug/TabManagerDebugPreferenceFragment;I)V

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Lw2/n;)V

    :cond_3
    const-string p1, "pref_retrain_tab_delete_suggestion_model"

    invoke-virtual {p0, p1}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_4

    new-instance p2, Lcom/sec/android/app/sbrowser/settings/debug/s;

    const/4 v0, 0x2

    invoke-direct {p2, p0, v0}, Lcom/sec/android/app/sbrowser/settings/debug/s;-><init>(Lcom/sec/android/app/sbrowser/settings/debug/TabManagerDebugPreferenceFragment;I)V

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Lw2/n;)V

    :cond_4
    return-void
.end method
