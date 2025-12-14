.class public final Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u0000 =2\u00020\u0001:\u0001=B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0010\u0010\u000c\u001a\u00020\u000bH\u0086@\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0015\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\r\u0010\u0012\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\r\u0010\u0014\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u0014\u0010\u0013J\r\u0010\u0016\u001a\u00020\u0015\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0013\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u0018\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0015\u0010\u001d\u001a\u00020\u000b2\u0006\u0010\u001c\u001a\u00020\u0015\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\r\u0010\u001f\u001a\u00020\u0019\u00a2\u0006\u0004\u0008\u001f\u0010 J\r\u0010!\u001a\u00020\u000b\u00a2\u0006\u0004\u0008!\u0010\u0013J\r\u0010#\u001a\u00020\"\u00a2\u0006\u0004\u0008#\u0010$R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010%\u001a\u0004\u0008&\u0010\'R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010(R\u001c\u0010+\u001a\n **\u0004\u0018\u00010)0)8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008+\u0010,R!\u00103\u001a\u0008\u0012\u0004\u0012\u00020.0-8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008/\u00100\u001a\u0004\u00081\u00102R!\u00106\u001a\u0008\u0012\u0004\u0012\u00020\"0-8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00084\u00100\u001a\u0004\u00085\u00102R\u0017\u0010:\u001a\u0008\u0012\u0004\u0012\u00020.078F\u00a2\u0006\u0006\u001a\u0004\u00088\u00109R\u0017\u0010<\u001a\u0008\u0012\u0004\u0012\u00020\"078F\u00a2\u0006\u0006\u001a\u0004\u0008;\u00109\u00a8\u0006>"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository;",
        "",
        "Landroid/content/Context;",
        "context",
        "LNc/x;",
        "ioDispatcher",
        "<init>",
        "(Landroid/content/Context;LNc/x;)V",
        "LNc/z;",
        "exceptionHandler",
        "()LNc/z;",
        "Ldb/r;",
        "checkPermission",
        "(Lib/c;)Ljava/lang/Object;",
        "Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType;",
        "type",
        "setRemoteConsentType",
        "(Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType;)V",
        "onSuccessRemoteConsent",
        "()V",
        "resetConsentTypeStatus",
        "Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;",
        "getStatus",
        "()Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;",
        "Landroidx/lifecycle/S;",
        "",
        "getStatusLiveData",
        "()Landroidx/lifecycle/S;",
        "userType",
        "setStatus",
        "(Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;)V",
        "getProtectLevel",
        "()I",
        "onRemoteConsentDenied",
        "",
        "isSupportedByParentalCareClient",
        "()Z",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "LNc/x;",
        "Landroid/content/SharedPreferences;",
        "kotlin.jvm.PlatformType",
        "sharedPrefs",
        "Landroid/content/SharedPreferences;",
        "LQc/f0;",
        "Lcom/sec/android/app/sbrowser/common/parental_control/ConsentTypeStatus;",
        "_consentTypeStatus$delegate",
        "Ldb/f;",
        "get_consentTypeStatus",
        "()LQc/f0;",
        "_consentTypeStatus",
        "_hasPermission$delegate",
        "get_hasPermission",
        "_hasPermission",
        "LQc/y0;",
        "getConsentTypeStatus",
        "()LQc/y0;",
        "consentTypeStatus",
        "getHasPermission",
        "hasPermission",
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

.field public static final Companion:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final _consentTypeStatus$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final _hasPermission$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final ioDispatcher:LNc/x;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final sharedPrefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository;->Companion:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;LNc/x;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LNc/x;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioDispatcher"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository;->ioDispatcher:LNc/x;

    invoke-static {p1}, Lw2/F;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository;->sharedPrefs:Landroid/content/SharedPreferences;

    new-instance p1, LB9/b;

    const/16 v0, 0x11

    invoke-direct {p1, v0}, LB9/b;-><init>(I)V

    invoke-static {p1}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository;->_consentTypeStatus$delegate:Ldb/f;

    new-instance p1, LB9/b;

    const/16 v0, 0x12

    invoke-direct {p1, v0}, LB9/b;-><init>(I)V

    invoke-static {p1}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository;->_hasPermission$delegate:Ldb/f;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository;->exceptionHandler()LNc/z;

    move-result-object p1

    invoke-virtual {p2, p1}, Lib/a;->plus(Lib/h;)Lib/h;

    move-result-object p1

    invoke-static {p1}, LNc/E;->c(Lib/h;)LUc/e;

    move-result-object p1

    new-instance p2, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository$1;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository$1;-><init>(Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository;Lib/c;)V

    const/4 p0, 0x3

    invoke-static {p1, v0, v0, p2, p0}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;LNc/x;ILtb/f;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    sget-object p2, LNc/N;->c:LWc/e;

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository;-><init>(Landroid/content/Context;LNc/x;)V

    return-void
.end method

.method private static final _consentTypeStatus_delegate$lambda$0()LQc/f0;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/parental_control/ConsentTypeStatus$Loading;->INSTANCE:Lcom/sec/android/app/sbrowser/common/parental_control/ConsentTypeStatus$Loading;

    invoke-static {v0}, LQc/n0;->c(Ljava/lang/Object;)LQc/A0;

    move-result-object v0

    return-object v0
.end method

.method private static final _hasPermission_delegate$lambda$1()LQc/f0;
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0}, LQc/n0;->c(Ljava/lang/Object;)LQc/A0;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic a()LQc/f0;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository;->_hasPermission_delegate$lambda$1()LQc/f0;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$get_hasPermission(Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository;)LQc/f0;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository;->get_hasPermission()LQc/f0;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b()LQc/f0;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository;->_consentTypeStatus_delegate$lambda$0()LQc/f0;

    move-result-object v0

    return-object v0
.end method

.method private final exceptionHandler()LNc/z;
    .locals 1

    sget-object p0, LNc/y;->a:LNc/y;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository$exceptionHandler$$inlined$CoroutineExceptionHandler$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository$exceptionHandler$$inlined$CoroutineExceptionHandler$1;-><init>(LNc/y;)V

    return-object v0
.end method

.method public static final getInstance(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository;->Companion:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository$Companion;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository$Companion;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository;

    move-result-object p0

    return-object p0
.end method

.method private final get_consentTypeStatus()LQc/f0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LQc/f0;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository;->_consentTypeStatus$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LQc/f0;

    return-object p0
.end method

.method private final get_hasPermission()LQc/f0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LQc/f0;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository;->_hasPermission$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LQc/f0;

    return-object p0
.end method


# virtual methods
.method public final checkPermission(Lib/c;)Ljava/lang/Object;
    .locals 3
    .param p1    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository;->ioDispatcher:LNc/x;

    new-instance v1, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository$checkPermission$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository$checkPermission$2;-><init>(Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository;Lib/c;)V

    invoke-static {v0, v1, p1}, LNc/E;->K(Lib/h;Lsb/n;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public final getConsentTypeStatus()LQc/y0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LQc/y0;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository;->get_consentTypeStatus()LQc/f0;

    move-result-object p0

    return-object p0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository;->context:Landroid/content/Context;

    return-object p0
.end method

.method public final getHasPermission()LQc/y0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LQc/y0;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository;->get_hasPermission()LQc/f0;

    move-result-object p0

    return-object p0
.end method

.method public final getProtectLevel()I
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v0, "parental_control_protect_level"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final getStatus()Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;->Companion:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus$Companion;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository;->sharedPrefs:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;->DEFAULT:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;->getValue()I

    move-result v1

    const-string v2, "parental_control_status"

    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus$Companion;->from(I)Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;

    move-result-object p0

    return-object p0
.end method

.method public final getStatusLiveData()Landroidx/lifecycle/S;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceIntegerLiveData;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository;->sharedPrefs:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;->DEFAULT:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "parental_control_status"

    invoke-direct {v0, p0, v2, v1}, Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceIntegerLiveData;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public final isSupportedByParentalCareClient()Z
    .locals 1

    sget-object p0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlDataSource;->INSTANCE:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlDataSource;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlDataSource;->isParentalCareInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlDataSource;->isSupportSBrowser()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onRemoteConsentDenied()V
    .locals 4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository;->get_consentTypeStatus()LQc/f0;

    move-result-object p0

    :cond_0
    move-object v0, p0

    check-cast v0, LQc/A0;

    invoke-virtual {v0}, LQc/A0;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/sec/android/app/sbrowser/common/parental_control/ConsentTypeStatus;

    instance-of v3, v2, Lcom/sec/android/app/sbrowser/common/parental_control/ConsentTypeStatus$Loading;

    if-eqz v3, :cond_1

    sget-object v2, Lcom/sec/android/app/sbrowser/common/parental_control/ConsentTypeStatus$Loading;->INSTANCE:Lcom/sec/android/app/sbrowser/common/parental_control/ConsentTypeStatus$Loading;

    goto :goto_1

    :cond_1
    instance-of v3, v2, Lcom/sec/android/app/sbrowser/common/parental_control/ConsentTypeStatus$SetUp;

    if-eqz v3, :cond_2

    check-cast v2, Lcom/sec/android/app/sbrowser/common/parental_control/ConsentTypeStatus$SetUp;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/parental_control/ConsentTypeStatus$SetUp;->getType()Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType;

    move-result-object v2

    goto :goto_0

    :cond_2
    instance-of v3, v2, Lcom/sec/android/app/sbrowser/common/parental_control/ConsentTypeStatus$WaitingConsent;

    if-eqz v3, :cond_3

    check-cast v2, Lcom/sec/android/app/sbrowser/common/parental_control/ConsentTypeStatus$WaitingConsent;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/parental_control/ConsentTypeStatus$WaitingConsent;->getType()Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType;

    move-result-object v2

    :goto_0
    new-instance v3, Lcom/sec/android/app/sbrowser/common/parental_control/ConsentTypeStatus$SetUp;

    invoke-direct {v3, v2}, Lcom/sec/android/app/sbrowser/common/parental_control/ConsentTypeStatus$SetUp;-><init>(Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType;)V

    move-object v2, v3

    :goto_1
    invoke-virtual {v0, v1, v2}, LQc/A0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_3
    new-instance p0, LI5/b;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method

.method public final onSuccessRemoteConsent()V
    .locals 4

    const-string v0, "ParentalControlRepository"

    const-string v1, "onSuccessRemoteConsent"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository;->get_consentTypeStatus()LQc/f0;

    move-result-object p0

    :cond_0
    move-object v0, p0

    check-cast v0, LQc/A0;

    invoke-virtual {v0}, LQc/A0;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/sec/android/app/sbrowser/common/parental_control/ConsentTypeStatus;

    instance-of v3, v2, Lcom/sec/android/app/sbrowser/common/parental_control/ConsentTypeStatus$Loading;

    if-eqz v3, :cond_1

    sget-object v2, Lcom/sec/android/app/sbrowser/common/parental_control/ConsentTypeStatus$Loading;->INSTANCE:Lcom/sec/android/app/sbrowser/common/parental_control/ConsentTypeStatus$Loading;

    goto :goto_1

    :cond_1
    instance-of v3, v2, Lcom/sec/android/app/sbrowser/common/parental_control/ConsentTypeStatus$SetUp;

    if-eqz v3, :cond_2

    check-cast v2, Lcom/sec/android/app/sbrowser/common/parental_control/ConsentTypeStatus$SetUp;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/parental_control/ConsentTypeStatus$SetUp;->getType()Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType;

    move-result-object v2

    goto :goto_0

    :cond_2
    instance-of v3, v2, Lcom/sec/android/app/sbrowser/common/parental_control/ConsentTypeStatus$WaitingConsent;

    if-eqz v3, :cond_3

    check-cast v2, Lcom/sec/android/app/sbrowser/common/parental_control/ConsentTypeStatus$WaitingConsent;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/parental_control/ConsentTypeStatus$WaitingConsent;->getType()Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType;

    move-result-object v2

    :goto_0
    new-instance v3, Lcom/sec/android/app/sbrowser/common/parental_control/ConsentTypeStatus$WaitingConsent;

    invoke-direct {v3, v2}, Lcom/sec/android/app/sbrowser/common/parental_control/ConsentTypeStatus$WaitingConsent;-><init>(Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType;)V

    move-object v2, v3

    :goto_1
    invoke-virtual {v0, v1, v2}, LQc/A0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_3
    new-instance p0, LI5/b;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method

.method public final resetConsentTypeStatus()V
    .locals 3

    const-string v0, "ParentalControlRepository"

    const-string v1, "resetConsentTypeStatus"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository;->get_consentTypeStatus()LQc/f0;

    move-result-object p0

    :cond_0
    move-object v0, p0

    check-cast v0, LQc/A0;

    invoke-virtual {v0}, LQc/A0;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/sec/android/app/sbrowser/common/parental_control/ConsentTypeStatus;

    sget-object v2, Lcom/sec/android/app/sbrowser/common/parental_control/ConsentTypeStatus$Loading;->INSTANCE:Lcom/sec/android/app/sbrowser/common/parental_control/ConsentTypeStatus$Loading;

    invoke-virtual {v0, v1, v2}, LQc/A0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public final setRemoteConsentType(Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType;)V
    .locals 4
    .param p1    # Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "type"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ParentalControlRepository"

    const-string v1, "setRemoteConsentType"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository;->get_consentTypeStatus()LQc/f0;

    move-result-object p0

    :cond_0
    move-object v0, p0

    check-cast v0, LQc/A0;

    invoke-virtual {v0}, LQc/A0;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/sec/android/app/sbrowser/common/parental_control/ConsentTypeStatus;

    instance-of v3, v2, Lcom/sec/android/app/sbrowser/common/parental_control/ConsentTypeStatus$WaitingConsent;

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/sec/android/app/sbrowser/common/parental_control/ConsentTypeStatus$SetUp;

    invoke-direct {v2, p1}, Lcom/sec/android/app/sbrowser/common/parental_control/ConsentTypeStatus$SetUp;-><init>(Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType;)V

    :goto_0
    invoke-virtual {v0, v1, v2}, LQc/A0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public final setStatus(Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;)V
    .locals 2
    .param p1    # Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "userType"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository;->sharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "parental_control_status"

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;->getValue()I

    move-result v1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "setStatus : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ParentalControlRepository"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
