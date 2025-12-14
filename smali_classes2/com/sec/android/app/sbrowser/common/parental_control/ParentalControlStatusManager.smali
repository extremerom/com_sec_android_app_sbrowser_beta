.class public final Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J;\u0010\u000c\u001a\u00020\u000b2\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00042\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u0007H\u0007\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u0004H\u0007\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0019\u0010\u0011\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0004H\u0007\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0004H\u0007\u00a2\u0006\u0004\u0008\u0013\u0010\u000fJ\u000f\u0010\u0014\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u000fJ\u000f\u0010\u0015\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u000fJ\u000f\u0010\u0016\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u000fJ\u000f\u0010\u0006\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u000fJ\u0017\u0010\u0019\u001a\n \u0018*\u0004\u0018\u00010\u00170\u0017H\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u0004H\u0007\u00a2\u0006\u0004\u0008\u001b\u0010\u000fJ\u000f\u0010\u0005\u001a\u00020\u0004H\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u000fR(\u0010\u001d\u001a\u00020\u001c8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0018\n\u0004\u0008\u001d\u0010\u001e\u0012\u0004\u0008#\u0010\u0003\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"\u00a8\u0006$"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager;",
        "",
        "<init>",
        "()V",
        "",
        "isChildAccount",
        "isMinorAccount",
        "Lkotlin/Function1;",
        "Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;",
        "Ldb/r;",
        "initialize",
        "LNc/j0;",
        "getUpdatedParentalControlStatus",
        "(Ljava/lang/Boolean;Ljava/lang/Boolean;Lsb/k;)LNc/j0;",
        "isEnabledByGlobalConfig",
        "()Z",
        "hasAccount",
        "isSupportedBySamsungAccount",
        "(Z)Z",
        "isSupportedBySamsungAccountMinor",
        "isMinorEnabledByGlobalConfig",
        "isSpcEnabledByGlobalConfig",
        "isMinorSupported",
        "Landroid/content/Context;",
        "kotlin.jvm.PlatformType",
        "getContext",
        "()Landroid/content/Context;",
        "isAccountManagerSupported",
        "",
        "latestCategory",
        "Ljava/lang/String;",
        "getLatestCategory",
        "()Ljava/lang/String;",
        "setLatestCategory",
        "(Ljava/lang/String;)V",
        "getLatestCategory$annotations",
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

.field public static final INSTANCE:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static latestCategory:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager;->INSTANCE:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager;

    const-string v0, ""

    sput-object v0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager;->latestCategory:Ljava/lang/String;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager;->$stable:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$isMinorEnabledByGlobalConfig(Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager;->isMinorEnabledByGlobalConfig()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isSpcEnabledByGlobalConfig(Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager;->isSpcEnabledByGlobalConfig()Z

    move-result p0

    return p0
.end method

.method private final getContext()Landroid/content/Context;
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static final getLatestCategory()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager;->latestCategory:Ljava/lang/String;

    return-object v0
.end method

.method public static final getUpdatedParentalControlStatus(Ljava/lang/Boolean;Ljava/lang/Boolean;Lsb/k;)LNc/j0;
    .locals 3
    .param p0    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lsb/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Lsb/k;",
            ")",
            "LNc/j0;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "initialize"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, LNc/N;->c:LWc/e;

    invoke-static {v0}, LNc/E;->c(Lib/h;)LUc/e;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager$getUpdatedParentalControlStatus$1;

    const/4 v2, 0x0

    invoke-direct {v1, p2, p0, p1, v2}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager$getUpdatedParentalControlStatus$1;-><init>(Lsb/k;Ljava/lang/Boolean;Ljava/lang/Boolean;Lib/c;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    move-result-object p0

    return-object p0
.end method

.method public static final isEnabledByGlobalConfig()Z
    .locals 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager;->INSTANCE:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "parentalControlEnable"

    const/4 v3, 0x1

    const-string v4, "ParentalControl"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getBoolean(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "EnabledByGlobalConfig: "

    const-string v2, "ParentalControlStatusManager"

    invoke-static {v1, v2, v0}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method private final isMinorAccount()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "content://com.samsung.android.samsungaccount.minorinfoprovider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "isMinor"

    invoke-virtual {p0, v1, v2, v0, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, LG5/A2;->c(Ljava/lang/Throwable;)Ldb/l;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Ldb/m;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "ParentalControlStatusManager"

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "isMinorAccount, Error: "

    invoke-static {v0, p0, v3}, Landroidx/recyclerview/widget/P;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    instance-of v1, p0, Ldb/l;

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, p0

    :goto_1
    check-cast v0, Landroid/os/Bundle;

    if-nez v0, :cond_2

    const-string p0, "isMinorAccount, no result"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    const-string p0, "result_code"

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    const-string v1, "result_message"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez p0, :cond_3

    const-string p0, "result_value"

    const-string v1, ""

    invoke-virtual {v0, p0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    goto :goto_2

    :cond_3
    const-string p0, "isMinorAccount Failed: "

    invoke-static {p0, v1, v3}, Landroidx/recyclerview/widget/P;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    const-string p0, "isMinorAccount: "

    invoke-static {p0, v3, v2}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    return v2
.end method

.method private final isMinorEnabledByGlobalConfig()Z
    .locals 4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "minorEnable"

    const/4 v2, 0x1

    const-string v3, "ParentalControl"

    invoke-virtual {v0, v3, p0, v1, v2}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getBoolean(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    const-string v0, "Minor is enabled by GlobalConfig: "

    const-string v1, "ParentalControlStatusManager"

    invoke-static {v0, v1, p0}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    return p0
.end method

.method private final isMinorSupported()Z
    .locals 4

    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.osp.app.signin"

    const/16 v1, 0x80

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, LG5/A2;->c(Ljava/lang/Throwable;)Ldb/l;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Ldb/m;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "ParentalControlStatusManager"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "isMinorSupported, Error: "

    invoke-static {v0, p0, v2}, Landroidx/recyclerview/widget/P;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    instance-of v0, p0, Ldb/l;

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    :cond_1
    check-cast p0, Landroid/content/pm/ApplicationInfo;

    if-nez p0, :cond_2

    const-string p0, "isMinorSupported Failed: empty app info"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v0, "MinorInfoProvider"

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result p0

    cmpl-float p0, p0, v3

    if-lez p0, :cond_3

    const/4 v1, 0x1

    :cond_3
    const-string p0, "Minor Supported: "

    invoke-static {p0, v2, v1}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    return v1
.end method

.method private final isSpcEnabledByGlobalConfig()Z
    .locals 4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "spcEnable"

    const/4 v2, 0x0

    const-string v3, "ParentalControl"

    invoke-virtual {v0, v3, p0, v1, v2}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getBoolean(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    const-string v0, "SPC is enabled by GlobalConfig: "

    const-string v1, "ParentalControlStatusManager"

    invoke-static {v0, v1, p0}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    return p0
.end method

.method public static final isSupportedBySamsungAccount()Z
    .locals 3
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager;->isSupportedBySamsungAccount$default(ZILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static final isSupportedBySamsungAccount(Z)Z
    .locals 2
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "hasAccount: "

    const-string v1, "ParentalControlStatusManager"

    invoke-static {v0, v1, p0}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p0, :cond_0

    sget-object p0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager;->INSTANCE:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager;->isAccountManagerSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager;->isChildAccount()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-string v0, "isSupportedBySamsungAccount: "

    invoke-static {v0, v1, p0}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    return p0
.end method

.method public static synthetic isSupportedBySamsungAccount$default(ZILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountUtil;->hasAccount()Z

    move-result p0

    :cond_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager;->isSupportedBySamsungAccount(Z)Z

    move-result p0

    return p0
.end method

.method public static final isSupportedBySamsungAccountMinor()Z
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager;->INSTANCE:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager;->isMinorSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager;->isMinorAccount()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "isMinor: "

    const-string v3, "ParentalControlStatusManager"

    invoke-static {v2, v3, v1}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v2, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore;->Companion:Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore$Companion;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "getContext(...)"

    invoke-static {v0, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore$Companion;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore;->setSamsungAccountMinorInfo(Z)V

    return v1
.end method

.method public static final setLatestCategory(Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager;->latestCategory:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final isAccountManagerSupported()Z
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.osp.app.signin"

    const/16 v1, 0x80

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, LG5/A2;->c(Ljava/lang/Throwable;)Ldb/l;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Ldb/m;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "ParentalControlStatusManager"

    if-eqz v0, :cond_1

    instance-of p0, v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    if-eqz p0, :cond_0

    const-string p0, "AM Package not found"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "isAccountManagerSupported, Error: "

    invoke-static {v0, p0, v2}, Landroidx/recyclerview/widget/P;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return v1

    :cond_1
    instance-of v0, p0, Ldb/l;

    if-eqz v0, :cond_2

    const/4 p0, 0x0

    :cond_2
    check-cast p0, Landroid/content/pm/ApplicationInfo;

    if-nez p0, :cond_3

    const-string p0, "isAccountManagerSupported, empty appInfo"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    const-string v3, "AccountManagerProvider"

    invoke-virtual {p0, v3, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result p0

    goto :goto_2

    :cond_4
    move p0, v0

    :goto_2
    cmpl-float p0, p0, v0

    if-lez p0, :cond_5

    const/4 v1, 0x1

    :cond_5
    const-string p0, "AM Supported: "

    invoke-static {p0, v2, v1}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    return v1
.end method

.method public final isChildAccount()Z
    .locals 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatusManager;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "content://com.samsung.android.samsungaccount.accountmanagerprovider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "isChildAccount"

    const-string v3, "4oe3617251"

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, LG5/A2;->c(Ljava/lang/Throwable;)Ldb/l;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Ldb/m;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "ParentalControlStatusManager"

    if-eqz v1, :cond_2

    instance-of p0, v1, Ljava/lang/SecurityException;

    const-string v0, "isChild, Parental control unsupported"

    if-eqz p0, :cond_0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    instance-of p0, v1, Ljava/lang/IllegalArgumentException;

    if-eqz p0, :cond_1

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "isChild, Error: "

    invoke-static {v0, p0, v3}, Landroidx/recyclerview/widget/P;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return v2

    :cond_2
    instance-of v1, p0, Ldb/l;

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    move-object v0, p0

    :goto_2
    check-cast v0, Landroid/os/Bundle;

    if-nez v0, :cond_4

    const-string p0, "isChild, no result"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_4
    const-string p0, "result_code"

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    const-string v1, "result_message"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez p0, :cond_5

    const-string p0, ""

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_3

    :cond_5
    const-string p0, "isChild Failed: "

    invoke-static {p0, v4, v3}, Landroidx/recyclerview/widget/P;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    const-string p0, "Child: "

    invoke-static {p0, v3, v2}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    return v2
.end method
