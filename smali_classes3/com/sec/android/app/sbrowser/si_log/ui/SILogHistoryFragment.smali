.class public final Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment;
.super Lw2/A;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u0000 )2\u00020\u0001:\u0001)B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0003J\u000f\u0010\u0007\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0003J\u000f\u0010\u0008\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\u0003J\u001f\u0010\r\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJC\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0014\u0008\u0002\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00120\u00112\u0014\u0008\u0002\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u000f0\u0011H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0017\u0010\u0018\u001a\n \u0017*\u0004\u0018\u00010\u000f0\u000fH\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J#\u0010\u001d\u001a\u00020\u00042\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001a2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u000fH\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ!\u0010!\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u001f2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001aH\u0016\u00a2\u0006\u0004\u0008!\u0010\"R\u001b\u0010(\u001a\u00020#8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008$\u0010%\u001a\u0004\u0008&\u0010\'\u00a8\u0006*"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment;",
        "Lw2/A;",
        "<init>",
        "()V",
        "Ldb/r;",
        "setupClearAllHistoryPreference",
        "setupStoragePeriodPreference",
        "setupHistoryItemCountPreference",
        "setupHistoryListLoginPreference",
        "Landroidx/preference/EditTextPreference;",
        "editTextPreference",
        "",
        "inputType",
        "setEditTextInputType",
        "(Landroidx/preference/EditTextPreference;I)V",
        "",
        "value",
        "Lkotlin/Function1;",
        "",
        "hashingAlgorithm",
        "encodingAlgorithm",
        "computeAuthorizationKeyHashEncoding",
        "(Ljava/lang/String;Lsb/k;Lsb/k;)Ljava/lang/String;",
        "kotlin.jvm.PlatformType",
        "readAuthorizationKeyHashEncoding",
        "()Ljava/lang/String;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "rootKey",
        "onCreatePreferences",
        "(Landroid/os/Bundle;Ljava/lang/String;)V",
        "Landroid/view/View;",
        "view",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;",
        "siLogViewModel$delegate",
        "Ldb/f;",
        "getSiLogViewModel",
        "()Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;",
        "siLogViewModel",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final $stable:I

.field public static final Companion:Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final siLogViewModel$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment;->Companion:Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment;->$stable:I

    const-string v0, "SILogHistoryFragment"

    sput-object v0, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Lw2/A;-><init>()V

    new-instance v0, LJ2/L;

    const/16 v1, 0xd

    invoke-direct {v0, v1, p0}, LJ2/L;-><init>(ILjava/lang/Object;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment$special$$inlined$viewModels$default$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    sget-object v2, Ldb/h;->NONE:Ldb/h;

    new-instance v3, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment$special$$inlined$viewModels$default$2;

    invoke-direct {v3, v1}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment$special$$inlined$viewModels$default$2;-><init>(Lsb/a;)V

    invoke-static {v2, v3}, LG5/z2;->d(Ldb/h;Lsb/a;)Ldb/f;

    move-result-object v1

    sget-object v2, Ltb/x;->a:Ltb/y;

    const-class v3, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;

    invoke-virtual {v2, v3}, Ltb/y;->b(Ljava/lang/Class;)LAb/c;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment$special$$inlined$viewModels$default$3;

    invoke-direct {v3, v1}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment$special$$inlined$viewModels$default$3;-><init>(Ldb/f;)V

    new-instance v4, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment$special$$inlined$viewModels$default$4;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v1}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment$special$$inlined$viewModels$default$4;-><init>(Lsb/a;Ldb/f;)V

    new-instance v1, LA7/c;

    invoke-direct {v1, v2, v3, v0, v4}, LA7/c;-><init>(LAb/c;Lsb/a;Lsb/a;Lsb/a;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment;->siLogViewModel$delegate:Ldb/f;

    return-void
.end method

.method private final computeAuthorizationKeyHashEncoding(Ljava/lang/String;Lsb/k;Lsb/k;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lsb/k;",
            "Lsb/k;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-interface {p2, p1}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p3, p0}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic computeAuthorizationKeyHashEncoding$default(Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment;Ljava/lang/String;Lsb/k;Lsb/k;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    sget-object p2, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment$computeAuthorizationKeyHashEncoding$1;->INSTANCE:Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment$computeAuthorizationKeyHashEncoding$1;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    sget-object p3, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment$computeAuthorizationKeyHashEncoding$2;->INSTANCE:Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment$computeAuthorizationKeyHashEncoding$2;

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment;->computeAuthorizationKeyHashEncoding(Ljava/lang/String;Lsb/k;Lsb/k;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final getSiLogViewModel()Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment;->siLogViewModel$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;

    return-object p0
.end method

.method public static synthetic h(Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment;->setupStoragePeriodPreference$lambda$5$lambda$4(Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic i(ILandroid/widget/EditText;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment;->setEditTextInputType$lambda$11(ILandroid/widget/EditText;)V

    return-void
.end method

.method public static synthetic j(Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment;->setupHistoryListLoginPreference$lambda$10$lambda$9(Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic k(Landroidx/preference/EditTextPreference;Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment;Ljava/lang/Long;)Ldb/r;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment;->setupStoragePeriodPreference$lambda$5$lambda$3(Landroidx/preference/EditTextPreference;Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment;Ljava/lang/Long;)Ldb/r;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Landroidx/preference/Preference;Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment;Ljava/lang/Integer;)Ldb/r;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment;->setupHistoryItemCountPreference$lambda$8$lambda$7(Landroidx/preference/Preference;Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment;Ljava/lang/Integer;)Ldb/r;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m(Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment;->setupClearAllHistoryPreference$lambda$2$lambda$1(Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic n(Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment;)Landroidx/lifecycle/v0;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment;->siLogViewModel_delegate$lambda$0(Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment;)Landroidx/lifecycle/v0;

    move-result-object p0

    return-object p0
.end method

.method private final readAuthorizationKeyHashEncoding()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "si_log_history_list_login.properties"

    const-string v1, "entry_string_hash_encoding"

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/AssetUtil;->getProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final setEditTextInputType(Landroidx/preference/EditTextPreference;I)V
    .locals 0

    new-instance p0, Lcom/sec/android/app/sbrowser/si_log/ui/b;

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/si_log/ui/b;-><init>(I)V

    iput-object p0, p1, Landroidx/preference/EditTextPreference;->b:Lw2/c;

    return-void
.end method

.method private static final setEditTextInputType$lambda$11(ILandroid/widget/EditText;)V
    .locals 1

    const-string v0, "editText"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setInputType(I)V

    invoke-virtual {p1}, Landroid/widget/TextView;->length()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method

.method private final setupClearAllHistoryPreference()V
    .locals 3

    const-string v0, "si_log_clear_all_history"

    invoke-virtual {p0, v0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/sec/android/app/sbrowser/si_log/ui/a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/si_log/ui/a;-><init>(Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment;I)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Lw2/n;)V

    :cond_0
    return-void
.end method

.method private static final setupClearAllHistoryPreference$lambda$2$lambda$1(Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment;Landroidx/preference/Preference;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Clearing History!"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment;->getSiLogViewModel()Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;->deleteAllSILogs()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "History Cleared!"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    const/4 p0, 0x1

    return p0
.end method

.method private final setupHistoryItemCountPreference()V
    .locals 5

    const-string v0, "si_log_history_item_count"

    invoke-virtual {p0, v0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment;->getSiLogViewModel()Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;->getSILogCount()Landroidx/lifecycle/S;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/J;

    move-result-object v2

    new-instance v3, LH9/c;

    const/16 v4, 0xa

    invoke-direct {v3, v4, v0, p0}, LH9/c;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance p0, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment$sam$androidx_lifecycle_Observer$0;

    invoke-direct {p0, v3}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lsb/k;)V

    invoke-virtual {v1, v2, p0}, Landroidx/lifecycle/S;->observe(Landroidx/lifecycle/J;Landroidx/lifecycle/Y;)V

    :cond_0
    return-void
.end method

.method private static final setupHistoryItemCountPreference$lambda$8$lambda$7(Landroidx/preference/Preference;Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment;Ljava/lang/Integer;)Ldb/r;
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const-string p0, "si_log_history_list_login"

    invoke-virtual {p1, p0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    check-cast p0, Landroidx/preference/EditTextPreference;

    if-eqz p0, :cond_1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_1
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method private final setupHistoryListLoginPreference()V
    .locals 3

    const-string v0, "si_log_history_list_login"

    invoke-virtual {p0, v0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/EditTextPreference;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/sec/android/app/sbrowser/si_log/ui/a;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/si_log/ui/a;-><init>(Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment;I)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Lw2/m;)V

    const/16 v1, 0x81

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment;->setEditTextInputType(Landroidx/preference/EditTextPreference;I)V

    :cond_0
    return-void
.end method

.method private static final setupHistoryListLoginPreference$lambda$10$lambda$9(Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    const-string v0, "<unused var>"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment;->computeAuthorizationKeyHashEncoding$default(Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment;Ljava/lang/String;Lsb/k;Lsb/k;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment;->readAuthorizationKeyHashEncoding()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    const-class p1, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->startFragment(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "Incorrect Password!"

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_0
    return p2
.end method

.method private final setupStoragePeriodPreference()V
    .locals 5

    const-string v0, "si_log_storage_period"

    invoke-virtual {p0, v0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/EditTextPreference;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment;->getSiLogViewModel()Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;->getSiLogStoragePeriodDays()Landroidx/lifecycle/S;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/J;

    move-result-object v2

    new-instance v3, LH9/c;

    const/16 v4, 0xb

    invoke-direct {v3, v4, v0, p0}, LH9/c;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance v4, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v4, v3}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lsb/k;)V

    invoke-virtual {v1, v2, v4}, Landroidx/lifecycle/S;->observe(Landroidx/lifecycle/J;Landroidx/lifecycle/Y;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/si_log/ui/a;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/si_log/ui/a;-><init>(Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment;I)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Lw2/m;)V

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment;->setEditTextInputType(Landroidx/preference/EditTextPreference;I)V

    :cond_0
    return-void
.end method

.method private static final setupStoragePeriodPreference$lambda$5$lambda$3(Landroidx/preference/EditTextPreference;Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment;Ljava/lang/Long;)Ldb/r;
    .locals 1

    const v0, 0x7f140f6c

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method private static final setupStoragePeriodPreference$lambda$5$lambda$4(Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    const-string v0, "<unused var>"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment;->getSiLogViewModel()Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;

    move-result-object p2

    invoke-virtual {p2, v0, v1}, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;->setSILogStoragePeriodDays(J)V

    sget-object p2, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Storage Period has been reset to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " days"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    sget-object p2, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method private static final siLogViewModel_delegate$lambda$0(Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment;)Landroidx/lifecycle/v0;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel$Factory;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p0

    const-string v1, "getApplication(...)"

    invoke-static {p0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel$Factory;-><init>(Landroid/app/Application;)V

    return-object v0
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const p1, 0x7f180074

    invoke-virtual {p0, p1}, Lw2/A;->addPreferencesFromResource(I)V

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

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p1

    const p2, 0x7f140f70

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment;->setupClearAllHistoryPreference()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment;->setupStoragePeriodPreference()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment;->setupHistoryItemCountPreference()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryFragment;->setupHistoryListLoginPreference()V

    return-void
.end method
