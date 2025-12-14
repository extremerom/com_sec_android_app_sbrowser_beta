.class public final Lcom/sec/android/app/sbrowser/global_config/GlobalConfigExperimentDebugFragment;
.super Lw2/A;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/global_config/GlobalConfigExperimentDebugFragment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u0000 \"2\u00020\u00012\u00020\u0002:\u0001\"B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0004J\u000f\u0010\u0008\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\u0004J\u0017\u0010\u000b\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\r\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\r\u0010\u0004J#\u0010\u0011\u001a\u00020\u00052\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\tH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J!\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u00132\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0004J#\u0010\u001b\u001a\u00020\u00052\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u00182\u0008\u0010\u001a\u001a\u0004\u0018\u00010\tH\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u001cR\u0018\u0010\u001e\u001a\u0004\u0018\u00010\u001d8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001fR\u0018\u0010 \u001a\u0004\u0018\u00010\u001d8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008 \u0010\u001fR\u0018\u0010!\u001a\u0004\u0018\u00010\u001d8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008!\u0010\u001f\u00a8\u0006#"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/global_config/GlobalConfigExperimentDebugFragment;",
        "Lw2/A;",
        "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;",
        "<init>",
        "()V",
        "Ldb/r;",
        "initWeightPreference",
        "initFakeWeightPreference",
        "initExperimentIdPreference",
        "",
        "id",
        "updateExperimentId",
        "(Ljava/lang/String;)V",
        "clearEtag",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "rootKey",
        "onCreatePreferences",
        "(Landroid/os/Bundle;Ljava/lang/String;)V",
        "Landroid/view/View;",
        "view",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "onDestroyView",
        "Landroid/content/SharedPreferences;",
        "sharedPreferences",
        "key",
        "onSharedPreferenceChanged",
        "(Landroid/content/SharedPreferences;Ljava/lang/String;)V",
        "Landroidx/preference/Preference;",
        "weightPreference",
        "Landroidx/preference/Preference;",
        "fakeWeightPreference",
        "experimentIdPreference",
        "Companion",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I

.field public static final Companion:Lcom/sec/android/app/sbrowser/global_config/GlobalConfigExperimentDebugFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private experimentIdPreference:Landroidx/preference/Preference;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private fakeWeightPreference:Landroidx/preference/Preference;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private weightPreference:Landroidx/preference/Preference;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigExperimentDebugFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigExperimentDebugFragment$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigExperimentDebugFragment;->Companion:Lcom/sec/android/app/sbrowser/global_config/GlobalConfigExperimentDebugFragment$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigExperimentDebugFragment;->$stable:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lw2/A;-><init>()V

    return-void
.end method

.method private final clearEtag()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "global_config_preference"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "pref_global_config_etag"

    const-string v1, ""

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public static synthetic h(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigExperimentDebugFragment;->initExperimentIdPreference$lambda$7$lambda$5(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic i(Lcom/sec/android/app/sbrowser/global_config/GlobalConfigExperimentDebugFragment;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigExperimentDebugFragment;->initExperimentIdPreference$lambda$7(Lcom/sec/android/app/sbrowser/global_config/GlobalConfigExperimentDebugFragment;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method private final initExperimentIdPreference()V
    .locals 3

    const-string v0, "pref_global_config_experiment_id"

    invoke-virtual {p0, v0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigExperimentDebugFragment;->experimentIdPreference:Landroidx/preference/Preference;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigExperimentUtil;->Companion:Lcom/sec/android/app/sbrowser/global_config/GlobalConfigExperimentUtil$Companion;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigExperimentUtil$Companion;->getExperimentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigExperimentDebugFragment;->experimentIdPreference:Landroidx/preference/Preference;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/sec/android/app/sbrowser/global_config/b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/global_config/b;-><init>(Lcom/sec/android/app/sbrowser/global_config/GlobalConfigExperimentDebugFragment;I)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Lw2/n;)V

    :cond_1
    return-void
.end method

.method private static final initExperimentIdPreference$lambda$7(Lcom/sec/android/app/sbrowser/global_config/GlobalConfigExperimentDebugFragment;Landroidx/preference/Preference;)Z
    .locals 3

    const-string v0, "it"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/databinding/GlobalConfigDebugInputDialogBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/sec/android/app/sbrowser/databinding/GlobalConfigDebugInputDialogBinding;

    move-result-object v0

    const-string v1, "inflate(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/databinding/GlobalConfigDebugInputDialogBinding;->editText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1501c5

    invoke-direct {p1, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const-string v1, "Experiment Id"

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/databinding/GlobalConfigDebugInputDialogBinding;->getRoot()Landroid/widget/ScrollView;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/sec/android/app/sbrowser/auth/f;

    const/4 v2, 0x4

    invoke-direct {v1, v2, p0, v0}, Lcom/sec/android/app/sbrowser/auth/f;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const v0, 0x7f140dbb

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/w;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/w;-><init>(I)V

    const v1, 0x7f1402c1

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/sbrowser/appshortcut/b;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/appshortcut/b;-><init>(ILjava/lang/Object;)V

    const p0, 0x7f1402ae

    invoke-virtual {p1, p0, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const/4 p0, 0x1

    return p0
.end method

.method private static final initExperimentIdPreference$lambda$7$lambda$4(Lcom/sec/android/app/sbrowser/global_config/GlobalConfigExperimentDebugFragment;Lcom/sec/android/app/sbrowser/databinding/GlobalConfigDebugInputDialogBinding;Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/GlobalConfigDebugInputDialogBinding;->editText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigExperimentDebugFragment;->updateExperimentId(Ljava/lang/String;)V

    return-void
.end method

.method private static final initExperimentIdPreference$lambda$7$lambda$5(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method private static final initExperimentIdPreference$lambda$7$lambda$6(Lcom/sec/android/app/sbrowser/global_config/GlobalConfigExperimentDebugFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, ""

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigExperimentDebugFragment;->updateExperimentId(Ljava/lang/String;)V

    return-void
.end method

.method private final initFakeWeightPreference()V
    .locals 3

    const-string v0, "pref_global_config_experiment_fake_weight"

    invoke-virtual {p0, v0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigExperimentDebugFragment;->fakeWeightPreference:Landroidx/preference/Preference;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigPreferenceUtils;->getFakeWeight()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigExperimentDebugFragment;->fakeWeightPreference:Landroidx/preference/Preference;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/sec/android/app/sbrowser/global_config/b;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/global_config/b;-><init>(Lcom/sec/android/app/sbrowser/global_config/GlobalConfigExperimentDebugFragment;I)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Lw2/n;)V

    :cond_1
    return-void
.end method

.method private static final initFakeWeightPreference$lambda$3(Lcom/sec/android/app/sbrowser/global_config/GlobalConfigExperimentDebugFragment;Landroidx/preference/Preference;)Z
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/databinding/GlobalConfigDebugInputDialogBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/sec/android/app/sbrowser/databinding/GlobalConfigDebugInputDialogBinding;

    move-result-object v0

    const-string v1, "inflate(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/databinding/GlobalConfigDebugInputDialogBinding;->editText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, v0, Lcom/sec/android/app/sbrowser/databinding/GlobalConfigDebugInputDialogBinding;->editText:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setInputType(I)V

    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f1501c5

    invoke-direct {p1, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const-string p0, "Fake Weight (0 .. 7)"

    invoke-virtual {p1, p0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/databinding/GlobalConfigDebugInputDialogBinding;->getRoot()Landroid/widget/ScrollView;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    new-instance p1, Lcom/sec/android/app/sbrowser/appshortcut/b;

    const/4 v1, 0x4

    invoke-direct {p1, v1, v0}, Lcom/sec/android/app/sbrowser/appshortcut/b;-><init>(ILjava/lang/Object;)V

    const v0, 0x7f140dbb

    invoke-virtual {p0, v0, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    new-instance p1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/w;

    const/4 v0, 0x6

    invoke-direct {p1, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/w;-><init>(I)V

    const v0, 0x7f1402c1

    invoke-virtual {p0, v0, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    new-instance p1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/w;

    const/4 v0, 0x7

    invoke-direct {p1, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/w;-><init>(I)V

    const v0, 0x7f1402ae

    invoke-virtual {p0, v0, p1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const/4 p0, 0x1

    return p0
.end method

.method private static final initFakeWeightPreference$lambda$3$lambda$0(Lcom/sec/android/app/sbrowser/databinding/GlobalConfigDebugInputDialogBinding;Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/GlobalConfigDebugInputDialogBinding;->editText:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_0

    const/16 p1, 0x8

    if-ge p0, p1, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigPreferenceUtils;->setFakeWeight(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    :cond_0
    const-string p0, ""

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigPreferenceUtils;->setFakeWeight(Ljava/lang/String;)V

    return-void
.end method

.method private static final initFakeWeightPreference$lambda$3$lambda$1(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method private static final initFakeWeightPreference$lambda$3$lambda$2(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p0, ""

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigPreferenceUtils;->setFakeWeight(Ljava/lang/String;)V

    return-void
.end method

.method private final initWeightPreference()V
    .locals 3

    const-string v0, "pref_global_config_experiment_weight"

    invoke-virtual {p0, v0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigExperimentDebugFragment;->weightPreference:Landroidx/preference/Preference;

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/si_log/model/SILogPreference;->getInstance()Lcom/sec/android/app/sbrowser/si_log/model/SILogPreference;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/sbrowser/si_log/model/SILogPreference;->getWeeklyUsageWeight(J)I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic j(Lcom/sec/android/app/sbrowser/global_config/GlobalConfigExperimentDebugFragment;Lcom/sec/android/app/sbrowser/databinding/GlobalConfigDebugInputDialogBinding;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigExperimentDebugFragment;->initExperimentIdPreference$lambda$7$lambda$4(Lcom/sec/android/app/sbrowser/global_config/GlobalConfigExperimentDebugFragment;Lcom/sec/android/app/sbrowser/databinding/GlobalConfigDebugInputDialogBinding;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic k(Lcom/sec/android/app/sbrowser/databinding/GlobalConfigDebugInputDialogBinding;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigExperimentDebugFragment;->initFakeWeightPreference$lambda$3$lambda$0(Lcom/sec/android/app/sbrowser/databinding/GlobalConfigDebugInputDialogBinding;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic l(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigExperimentDebugFragment;->initFakeWeightPreference$lambda$3$lambda$2(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic m(Lcom/sec/android/app/sbrowser/global_config/GlobalConfigExperimentDebugFragment;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigExperimentDebugFragment;->initFakeWeightPreference$lambda$3(Lcom/sec/android/app/sbrowser/global_config/GlobalConfigExperimentDebugFragment;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic n(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigExperimentDebugFragment;->initFakeWeightPreference$lambda$3$lambda$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic o(Lcom/sec/android/app/sbrowser/global_config/GlobalConfigExperimentDebugFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigExperimentDebugFragment;->initExperimentIdPreference$lambda$7$lambda$6(Lcom/sec/android/app/sbrowser/global_config/GlobalConfigExperimentDebugFragment;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private final updateExperimentId(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigExperimentUtil;->Companion:Lcom/sec/android/app/sbrowser/global_config/GlobalConfigExperimentUtil$Companion;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigExperimentUtil$Companion;->setExperimentId(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigExperimentDebugFragment;->clearEtag()V

    return-void
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const p1, 0x7f180030

    invoke-virtual {p0, p1}, Lw2/A;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lw2/A;->getPreferenceManager()Lw2/F;

    move-result-object p1

    const-string p2, "global_config_setting_preference"

    invoke-virtual {p1, p2}, Lw2/F;->h(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-interface {p1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    :cond_1
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Lw2/A;->onDestroyView()V

    invoke-virtual {p0}, Lw2/A;->getPreferenceManager()Lw2/F;

    move-result-object v0

    invoke-virtual {v0}, Lw2/F;->f()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    :cond_0
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0
    .param p1    # Landroid/content/SharedPreferences;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string p1, "pref_global_config_experiment_fake_weight"

    invoke-static {p2, p1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigExperimentDebugFragment;->fakeWeightPreference:Landroidx/preference/Preference;

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigPreferenceUtils;->getFakeWeight()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const-string p1, "pref_global_config_experiment_id"

    invoke-static {p2, p1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigExperimentDebugFragment;->experimentIdPreference:Landroidx/preference/Preference;

    if-eqz p0, :cond_1

    sget-object p1, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigExperimentUtil;->Companion:Lcom/sec/android/app/sbrowser/global_config/GlobalConfigExperimentUtil$Companion;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigExperimentUtil$Companion;->getExperimentId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lw2/A;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "Experiment"

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigExperimentDebugFragment;->initWeightPreference()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigExperimentDebugFragment;->initFakeWeightPreference()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigExperimentDebugFragment;->initExperimentIdPreference()V

    return-void
.end method
