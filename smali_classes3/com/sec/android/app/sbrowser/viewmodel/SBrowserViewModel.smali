.class public final Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;
.super Landroidx/lifecycle/a;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlViewModelDelegate;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00da\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u0000 x2\u00020\u00012\u00020\u0002:\u0001xB\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0013\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ!\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u000c\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\r\u001a\u00020\u0008H\u0007\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0017\u0010\u0013\u001a\u00020\u00082\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0011\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\r\u0010\u0016\u001a\u00020\u0015\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\r\u0010\u0018\u001a\u00020\u0015\u00a2\u0006\u0004\u0008\u0018\u0010\u0017J\r\u0010\u001a\u001a\u00020\u0019\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0015\u0010\u001e\u001a\u00020\u000e2\u0006\u0010\u001d\u001a\u00020\u001c\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\r\u0010 \u001a\u00020\u000e\u00a2\u0006\u0004\u0008 \u0010!J\r\u0010\"\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\"\u0010!J\u001b\u0010%\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0$0#H\u0016\u00a2\u0006\u0004\u0008%\u0010&J\u000f\u0010\'\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\'\u0010!J\u000f\u0010(\u001a\u0004\u0018\u00010\u001c\u00a2\u0006\u0004\u0008(\u0010)J\r\u0010*\u001a\u00020\u0008\u00a2\u0006\u0004\u0008*\u0010+J\r\u0010,\u001a\u00020\u0008\u00a2\u0006\u0004\u0008,\u0010+J\r\u0010-\u001a\u00020\u0008\u00a2\u0006\u0004\u0008-\u0010+J\r\u0010.\u001a\u00020\u0008\u00a2\u0006\u0004\u0008.\u0010+J\u001d\u00103\u001a\u00020\u000e2\u0006\u00100\u001a\u00020/2\u0006\u00102\u001a\u000201\u00a2\u0006\u0004\u00083\u00104J\u001f\u00108\u001a\u00020\u00112\u0006\u00106\u001a\u0002052\u0006\u00107\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u00088\u00109R\u0014\u0010;\u001a\u00020:8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008;\u0010<R\u001b\u0010B\u001a\u00020=8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008>\u0010?\u001a\u0004\u0008@\u0010AR\u001b\u0010G\u001a\u00020C8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008D\u0010?\u001a\u0004\u0008E\u0010FR\u0019\u0010J\u001a\u00070H\u00a2\u0006\u0002\u0008I8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008J\u0010KR\u0017\u0010M\u001a\u00020L8\u0006\u00a2\u0006\u000c\n\u0004\u0008M\u0010N\u001a\u0004\u0008O\u0010PR,\u0010S\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u0002050R0Q8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008S\u0010TR/\u0010V\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00080U0$0\u00078\u0006\u00a2\u0006\u000c\n\u0004\u0008V\u0010W\u001a\u0004\u0008X\u0010\nR\u001a\u0010Y\u001a\u0008\u0012\u0004\u0012\u00020\u00190#8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008Y\u0010ZR\"\u0010\\\u001a\u00020[8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\\\u0010]\u001a\u0004\u0008\\\u0010^\"\u0004\u0008_\u0010`R\u001a\u0010a\u001a\u0008\u0012\u0004\u0012\u00020\u00080#8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008a\u0010ZR\u001d\u0010b\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00078\u0006\u00a2\u0006\u000c\n\u0004\u0008b\u0010W\u001a\u0004\u0008b\u0010\nR\u001e\u0010e\u001a\n d*\u0004\u0018\u00010c0c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008e\u0010fR\u001a\u0010h\u001a\u0008\u0012\u0004\u0012\u0002050g8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008h\u0010iR!\u0010m\u001a\u0008\u0012\u0004\u0012\u00020j0#8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008k\u0010?\u001a\u0004\u0008l\u0010&R\'\u0010%\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0$0#8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008n\u0010?\u001a\u0004\u0008o\u0010&R\u0017\u0010q\u001a\u0008\u0012\u0004\u0012\u00020j0\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008p\u0010\nR\u001a\u0010u\u001a\u0008\u0012\u0004\u0012\u00020\u00080r8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008s\u0010tR\u001a\u0010w\u001a\u0008\u0012\u0004\u0012\u00020\u00080r8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008v\u0010t\u00a8\u0006y"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;",
        "Landroidx/lifecycle/a;",
        "Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlViewModelDelegate;",
        "Landroid/app/Application;",
        "application",
        "<init>",
        "(Landroid/app/Application;)V",
        "Landroidx/lifecycle/S;",
        "",
        "isGlobalConfigReady",
        "()Landroidx/lifecycle/S;",
        "Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessAddItemParameter;",
        "parameter",
        "isFromWebpage",
        "Ldb/r;",
        "addQuickAccessItems",
        "(Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessAddItemParameter;Z)V",
        "",
        "url",
        "canAddQuickAccess",
        "(Ljava/lang/String;)Z",
        "LNc/j0;",
        "onNativeInitialized",
        "()LNc/j0;",
        "onDestroyed",
        "Lcom/sec/android/app/sbrowser/viewmodel/ParentalControlViewModelStatus;",
        "getParentalControlStatus",
        "()Lcom/sec/android/app/sbrowser/viewmodel/ParentalControlViewModelStatus;",
        "Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType;",
        "type",
        "showRemoteConsentDialog",
        "(Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType;)V",
        "showHelpIntroDialog",
        "()V",
        "endConsent",
        "LQc/f0;",
        "Lcom/sec/android/app/sbrowser/common/livedata/Event;",
        "shouldShowBlockedApp",
        "()LQc/f0;",
        "checkPermission",
        "getRemoteConsentType",
        "()Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType;",
        "isLoadingStatus",
        "()Z",
        "isSignedInStatus",
        "isMinorInfoStatus",
        "isParentalControlLoading",
        "Landroidx/fragment/app/J;",
        "activity",
        "Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlActivityDelegate$Listener;",
        "listener",
        "onMainViewCreate",
        "(Landroidx/fragment/app/J;Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlActivityDelegate$Listener;)V",
        "",
        "status",
        "minorInfo",
        "getAccountType",
        "(IZ)Ljava/lang/String;",
        "LNc/B;",
        "backgroundScope",
        "LNc/B;",
        "Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;",
        "quickAccessRepository$delegate",
        "Ldb/f;",
        "getQuickAccessRepository",
        "()Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;",
        "quickAccessRepository",
        "Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore;",
        "samsungAccountDataStore$delegate",
        "getSamsungAccountDataStore",
        "()Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore;",
        "samsungAccountDataStore",
        "Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository;",
        "Landroidx/annotation/NonNull;",
        "parentalControlRepository",
        "Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository;",
        "Lcom/sec/android/app/sbrowser/viewmodel/MainUIEventLiveData;",
        "uiEvent",
        "Lcom/sec/android/app/sbrowser/viewmodel/MainUIEventLiveData;",
        "getUiEvent",
        "()Lcom/sec/android/app/sbrowser/viewmodel/MainUIEventLiveData;",
        "LQc/e0;",
        "Ldb/p;",
        "_parentalControlUpdateRequired",
        "LQc/e0;",
        "Ldb/j;",
        "parentalControlUpdateRequired",
        "Landroidx/lifecycle/S;",
        "getParentalControlUpdateRequired",
        "_parentalControlViewModelStatus",
        "LQc/f0;",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "isRemoteConsentRequested",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "()Ljava/util/concurrent/atomic/AtomicBoolean;",
        "setRemoteConsentRequested",
        "(Ljava/util/concurrent/atomic/AtomicBoolean;)V",
        "_isNativeInitialized",
        "isNativeInitialized",
        "Landroid/content/SharedPreferences;",
        "kotlin.jvm.PlatformType",
        "sharedPreferences",
        "Landroid/content/SharedPreferences;",
        "Landroidx/lifecycle/X;",
        "parentalControlStatusPreference",
        "Landroidx/lifecycle/X;",
        "Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentStatus;",
        "_remoteConsentState$delegate",
        "get_remoteConsentState",
        "_remoteConsentState",
        "shouldShowBlockedApp$delegate",
        "getShouldShowBlockedApp",
        "getRemoteConsentState",
        "remoteConsentState",
        "LQc/h;",
        "get_isSamsungAccountSignedIn",
        "()LQc/h;",
        "_isSamsungAccountSignedIn",
        "get_minorInfo",
        "_minorInfo",
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

.field public static final Companion:Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final _isNativeInitialized:LQc/f0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LQc/f0;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final _parentalControlUpdateRequired:LQc/e0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LQc/e0;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final _parentalControlViewModelStatus:LQc/f0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LQc/f0;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final _remoteConsentState$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final backgroundScope:LNc/B;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final isNativeInitialized:Landroidx/lifecycle/S;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isRemoteConsentRequested:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final parentalControlRepository:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final parentalControlStatusPreference:Landroidx/lifecycle/X;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/X;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final parentalControlUpdateRequired:Landroidx/lifecycle/S;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final quickAccessRepository$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final samsungAccountDataStore$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private sharedPreferences:Landroid/content/SharedPreferences;

.field private final shouldShowBlockedApp$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final uiEvent:Lcom/sec/android/app/sbrowser/viewmodel/MainUIEventLiveData;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;->Companion:Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 11
    .param p1    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const/4 v0, 0x3

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    const-string v5, "application"

    invoke-static {p1, v5}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/lifecycle/a;-><init>(Landroid/app/Application;)V

    sget-object v5, LNc/N;->c:LWc/e;

    invoke-static {v5}, LNc/E;->c(Lib/h;)LUc/e;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;->backgroundScope:LNc/B;

    new-instance v5, Lcom/sec/android/app/sbrowser/si_log/model/c;

    const/4 v6, 0x5

    invoke-direct {v5, v6}, Lcom/sec/android/app/sbrowser/si_log/model/c;-><init>(I)V

    invoke-static {v5}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;->quickAccessRepository$delegate:Ldb/f;

    new-instance v5, Lcom/sec/android/app/sbrowser/si_log/model/d;

    invoke-direct {v5, p1, v3}, Lcom/sec/android/app/sbrowser/si_log/model/d;-><init>(Landroid/app/Application;I)V

    invoke-static {v5}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;->samsungAccountDataStore$delegate:Ldb/f;

    sget-object v5, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository;->Companion:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository$Companion;

    const/4 v6, 0x0

    invoke-static {v5, v6, v4, v6}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository$Companion;->getInstance$default(Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository$Companion;Landroid/content/Context;ILjava/lang/Object;)Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;->parentalControlRepository:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository;

    new-instance v5, Lcom/sec/android/app/sbrowser/viewmodel/MainUIEventLiveData;

    invoke-direct {v5}, Lcom/sec/android/app/sbrowser/viewmodel/MainUIEventLiveData;-><init>()V

    iput-object v5, p0, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;->uiEvent:Lcom/sec/android/app/sbrowser/viewmodel/MainUIEventLiveData;

    invoke-static {v4, v2, v6, v1}, LQc/n0;->b(IILPc/a;I)LQc/m0;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;->_parentalControlUpdateRequired:LQc/e0;

    invoke-static {v5}, LQc/n0;->l(LQc/h;)LQc/h;

    move-result-object v5

    new-instance v7, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel$special$$inlined$map$1;

    invoke-direct {v7, v5}, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel$special$$inlined$map$1;-><init>(LQc/h;)V

    invoke-static {v7, v6, v0}, Landroidx/lifecycle/l0;->b(LQc/h;Lib/h;I)Landroidx/lifecycle/j;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;->parentalControlUpdateRequired:Landroidx/lifecycle/S;

    sget-object v5, Lcom/sec/android/app/sbrowser/viewmodel/ParentalControlViewModelStatus$Loading;->INSTANCE:Lcom/sec/android/app/sbrowser/viewmodel/ParentalControlViewModelStatus$Loading;

    invoke-static {v5}, LQc/n0;->c(Ljava/lang/Object;)LQc/A0;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;->_parentalControlViewModelStatus:LQc/f0;

    new-instance v5, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v5, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v5, p0, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;->isRemoteConsentRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v5}, LQc/n0;->c(Ljava/lang/Object;)LQc/A0;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;->_isNativeInitialized:LQc/f0;

    invoke-static {v5, v6, v0}, Landroidx/lifecycle/l0;->b(LQc/h;Lib/h;I)Landroidx/lifecycle/j;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;->isNativeInitialized:Landroidx/lifecycle/S;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;->sharedPreferences:Landroid/content/SharedPreferences;

    new-instance v8, Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceIntegerLiveData;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "parental_control_status"

    invoke-direct {v8, v7, v10, v9}, Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceIntegerLiveData;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Integer;)V

    iput-object v8, p0, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;->parentalControlStatusPreference:Landroidx/lifecycle/X;

    new-instance v7, Lcom/sec/android/app/sbrowser/si_log/model/c;

    invoke-direct {v7, v1}, Lcom/sec/android/app/sbrowser/si_log/model/c;-><init>(I)V

    invoke-static {v7}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;->_remoteConsentState$delegate:Ldb/f;

    new-instance v1, Lcom/sec/android/app/sbrowser/si_log/model/c;

    const/4 v7, 0x7

    invoke-direct {v1, v7}, Lcom/sec/android/app/sbrowser/si_log/model/c;-><init>(I)V

    invoke-static {v1}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;->shouldShowBlockedApp$delegate:Ldb/f;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;->get_isSamsungAccountSignedIn()LQc/h;

    move-result-object v1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;->get_minorInfo()LQc/h;

    move-result-object v7

    invoke-static {v8}, Landroidx/lifecycle/l0;->a(Landroidx/lifecycle/S;)LQc/h;

    move-result-object v8

    new-instance v9, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel$1;

    invoke-direct {v9, p0, v6}, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel$1;-><init>(Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;Lib/c;)V

    const/4 v10, 0x4

    new-array v10, v10, [LQc/h;

    aput-object v1, v10, v2

    aput-object v7, v10, v4

    aput-object v5, v10, v3

    aput-object v8, v10, v0

    new-instance v1, LQc/c0;

    invoke-direct {v1, v10, v9, v4}, LQc/c0;-><init>([LQc/h;Ldb/b;I)V

    invoke-static {p0}, Landroidx/lifecycle/l0;->k(Landroidx/lifecycle/s0;)LNc/B;

    move-result-object v2

    new-instance v3, LQc/m;

    invoke-direct {v3, v1, v6}, LQc/m;-><init>(LQc/h;Lib/c;)V

    invoke-static {v2, v6, v6, v3, v0}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    invoke-static {p0}, Landroidx/lifecycle/l0;->k(Landroidx/lifecycle/s0;)LNc/B;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel$2;

    invoke-direct {v2, p0, p1, v6}, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel$2;-><init>(Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;Landroid/app/Application;Lib/c;)V

    invoke-static {v1, v6, v6, v2, v0}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    return-void
.end method

.method private static final _remoteConsentState_delegate$lambda$3()LQc/f0;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentStatus$Idle;->INSTANCE:Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentStatus$Idle;

    invoke-static {v0}, LQc/n0;->c(Ljava/lang/Object;)LQc/A0;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getAccountType(Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;IZ)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;->getAccountType(IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getParentalControlRepository$p(Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;)Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;->parentalControlRepository:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository;

    return-object p0
.end method

.method public static final synthetic access$getParentalControlStatusPreference$p(Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;)Landroidx/lifecycle/X;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;->parentalControlStatusPreference:Landroidx/lifecycle/X;

    return-object p0
.end method

.method public static final synthetic access$getShouldShowBlockedApp(Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;)LQc/f0;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;->getShouldShowBlockedApp()LQc/f0;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$get_isNativeInitialized$p(Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;)LQc/f0;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;->_isNativeInitialized:LQc/f0;

    return-object p0
.end method

.method public static final synthetic access$get_parentalControlUpdateRequired$p(Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;)LQc/e0;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;->_parentalControlUpdateRequired:LQc/e0;

    return-object p0
.end method

.method public static final synthetic access$get_parentalControlViewModelStatus$p(Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;)LQc/f0;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;->_parentalControlViewModelStatus:LQc/f0;

    return-object p0
.end method

.method public static synthetic addQuickAccessItems$default(Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessAddItemParameter;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;->addQuickAccessItems(Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessAddItemParameter;Z)V

    return-void
.end method

.method public static synthetic b()LQc/f0;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;->_remoteConsentState_delegate$lambda$3()LQc/f0;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c(Landroidx/fragment/app/J;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "not_now"

    invoke-static {p0, v0, p1}, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;->onMainViewCreate$lambda$11(Landroidx/fragment/app/J;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlActivityDelegate$Listener;Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentStatus;)Ldb/r;
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;->onMainViewCreate$lambda$10(Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlActivityDelegate$Listener;Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentStatus;)Ldb/r;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlActivityDelegate$Listener;Lcom/sec/android/app/sbrowser/common/livedata/Event;)Ldb/r;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;->onMainViewCreate$lambda$9(Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlActivityDelegate$Listener;Lcom/sec/android/app/sbrowser/common/livedata/Event;)Ldb/r;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f()Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;->quickAccessRepository_delegate$lambda$0()Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic g(Landroid/app/Application;)Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;->samsungAccountDataStore_delegate$lambda$1(Landroid/app/Application;)Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore;

    move-result-object p0

    return-object p0
.end method

.method private final getAccountType(IZ)Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/knox/KnoxPolicy;->isB2BAccount()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "B2B"

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;->CHILD:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;->getValue()I

    move-result p0

    if-ne p1, p0, :cond_1

    const-string p0, "Child"

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    const-string p0, "Minor"

    goto :goto_0

    :cond_2
    const-string p0, "Normal"

    :goto_0
    return-object p0
.end method

.method private final getQuickAccessRepository()Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;->quickAccessRepository$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "getValue(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;

    return-object p0
.end method

.method private final getSamsungAccountDataStore()Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;->samsungAccountDataStore$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore;

    return-object p0
.end method

.method private final getShouldShowBlockedApp()LQc/f0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LQc/f0;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;->shouldShowBlockedApp$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LQc/f0;

    return-object p0
.end method

.method private final get_isSamsungAccountSignedIn()LQc/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LQc/h;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;->getSamsungAccountDataStore()Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore;->getSamsungAccountSignInStatus()LQc/h;

    move-result-object p0

    invoke-static {p0}, LQc/n0;->l(LQc/h;)LQc/h;

    move-result-object p0

    return-object p0
.end method

.method private final get_minorInfo()LQc/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LQc/h;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;->getSamsungAccountDataStore()Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore;->getSamsungAccountMinorInfo()LQc/h;

    move-result-object p0

    invoke-static {p0}, LQc/n0;->l(LQc/h;)LQc/h;

    move-result-object p0

    return-object p0
.end method

.method private final get_remoteConsentState()LQc/f0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LQc/f0;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;->_remoteConsentState$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LQc/f0;

    return-object p0
.end method

.method public static synthetic h()LQc/f0;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;->shouldShowBlockedApp_delegate$lambda$5()LQc/f0;

    move-result-object v0

    return-object v0
.end method

.method private static final onMainViewCreate$lambda$10(Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlActivityDelegate$Listener;Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentStatus;)Ldb/r;
    .locals 2

    const-string v0, "state"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[ParentalControl] remote consent state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SBrowserViewModel"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v0, p1, Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentStatus$Idle;

    sget-object v1, Ldb/r;->a:Ldb/r;

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    instance-of v0, p1, Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentStatus$ShowParentalControlDialog;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentStatus$ShowParentalControlDialog;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentStatus$ShowParentalControlDialog;->getType()Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlActivityDelegate$Listener;->stateChangedToShowParentalControlDialog(Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType;)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentStatus$ShowHelpIntroDialog;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentStatus$ShowHelpIntroDialog;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentStatus$ShowHelpIntroDialog;->getType()Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType;->getMajor()Z

    move-result v0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType;->isPp()Z

    move-result p1

    invoke-interface {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlActivityDelegate$Listener;->stateChangedToShowHelpIntroDialog(ZZ)V

    :cond_2
    :goto_0
    return-object v1
.end method

.method private static final onMainViewCreate$lambda$11(Landroidx/fragment/app/J;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "requestKey"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "result"

    invoke-static {p2, p1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "SBrowserViewModel"

    const-string p2, "onFragmentResult NotNow"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    return-void
.end method

.method private static final onMainViewCreate$lambda$9(Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlActivityDelegate$Listener;Lcom/sec/android/app/sbrowser/common/livedata/Event;)Ldb/r;
    .locals 5

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/livedata/Event;->getContentIfNotHandled()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ldb/j;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object v1, p2, Ldb/j;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    sget-object v2, Ldb/r;->a:Ldb/r;

    if-eqz v1, :cond_2

    iget-object v1, p2, Ldb/j;->b:Ljava/lang/Object;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p2, Ldb/j;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object p2, p2, Ldb/j;->b:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[ParentalControl] SamsungAccount - signed in: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", minor info: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SBrowserViewModel"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;->backgroundScope:LNc/B;

    new-instance v3, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel$onMainViewCreate$1$1;

    invoke-direct {v3, v1, p2, p1, v0}, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel$onMainViewCreate$1$1;-><init>(ZZLcom/sec/android/app/sbrowser/common/parental_control/ParentalControlActivityDelegate$Listener;Lib/c;)V

    const/4 p1, 0x3

    invoke-static {p0, v0, v0, v3, p1}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    :cond_2
    :goto_1
    return-object v2
.end method

.method private static final quickAccessRepository_delegate$lambda$0()Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->getInstance()Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;

    move-result-object v0

    return-object v0
.end method

.method private static final samsungAccountDataStore_delegate$lambda$1(Landroid/app/Application;)Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore;->Companion:Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore$Companion;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore$Companion;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/common/account/SamsungAccountDataStore;

    move-result-object p0

    return-object p0
.end method

.method private static final shouldShowBlockedApp_delegate$lambda$5()LQc/f0;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/common/livedata/Event;

    sget-object v1, Ldb/r;->a:Ldb/r;

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/common/livedata/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/livedata/Event;->getContentIfNotHandled()Ljava/lang/Object;

    invoke-static {v0}, LQc/n0;->c(Ljava/lang/Object;)LQc/A0;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final addQuickAccessItems(Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessAddItemParameter;)V
    .locals 3
    .param p1    # Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessAddItemParameter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "parameter"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;->addQuickAccessItems$default(Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessAddItemParameter;ZILjava/lang/Object;)V

    return-void
.end method

.method public final addQuickAccessItems(Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessAddItemParameter;Z)V
    .locals 4
    .param p1    # Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessAddItemParameter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "parameter"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;->getQuickAccessRepository()Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->isItemFull()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;->uiEvent:Lcom/sec/android/app/sbrowser/viewmodel/MainUIEventLiveData;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/viewmodel/MainUIEventLiveData;->setValue(I)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessAddItemParameter;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "SBrowserViewModel"

    const-string v1, "addIconItem"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;->getQuickAccessRepository()Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessAddItemParameter;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessAddItemParameter;->getTitle()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel$addQuickAccessItems$1;

    invoke-direct {v3, p0, p2}, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel$addQuickAccessItems$1;-><init>(Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;Z)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessAddItemParameter;->getIconUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->addItem(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener;Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;->uiEvent:Lcom/sec/android/app/sbrowser/viewmodel/MainUIEventLiveData;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/viewmodel/MainUIEventLiveData;->setValue(I)V

    return-void
.end method

.method public final canAddQuickAccess(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_1

    invoke-static {p1}, LKc/k;->x(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;->getQuickAccessRepository()Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->checkUrlExists(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public checkPermission()V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/l0;->k(Landroidx/lifecycle/s0;)LNc/B;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel$checkPermission$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel$checkPermission$1;-><init>(Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;Lib/c;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    return-void
.end method

.method public final endConsent()V
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;->get_remoteConsentState()LQc/f0;

    move-result-object v0

    check-cast v0, LQc/A0;

    invoke-virtual {v0}, LQc/A0;->getValue()Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "endConsentFlow: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SBrowserViewModel"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;->get_remoteConsentState()LQc/f0;

    move-result-object p0

    :cond_0
    move-object v0, p0

    check-cast v0, LQc/A0;

    invoke-virtual {v0}, LQc/A0;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentStatus;

    sget-object v2, Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentStatus$Idle;->INSTANCE:Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentStatus$Idle;

    invoke-virtual {v0, v1, v2}, LQc/A0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public final getParentalControlStatus()Lcom/sec/android/app/sbrowser/viewmodel/ParentalControlViewModelStatus;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;->_parentalControlViewModelStatus:LQc/f0;

    check-cast p0, LQc/A0;

    invoke-virtual {p0}, LQc/A0;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/viewmodel/ParentalControlViewModelStatus;

    return-object p0
.end method

.method public final getRemoteConsentState()Landroidx/lifecycle/S;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;->get_remoteConsentState()LQc/f0;

    move-result-object p0

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Landroidx/lifecycle/l0;->b(LQc/h;Lib/h;I)Landroidx/lifecycle/j;

    move-result-object p0

    return-object p0
.end method

.method public final getRemoteConsentType()Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;->getRemoteConsentState()Landroidx/lifecycle/S;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentStatus;

    instance-of v0, p0, Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentStatus$ShowParentalControlDialog;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentStatus$ShowParentalControlDialog;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentStatus$ShowParentalControlDialog;->getType()Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getUiEvent()Lcom/sec/android/app/sbrowser/viewmodel/MainUIEventLiveData;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;->uiEvent:Lcom/sec/android/app/sbrowser/viewmodel/MainUIEventLiveData;

    return-object p0
.end method

.method public final isGlobalConfigReady()Landroidx/lifecycle/S;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/sec/android/app/sbrowser/global_config/GlobalConfig;->getInstance()Lcom/sec/android/app/sbrowser/global_config/GlobalConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/global_config/GlobalConfig;->isReady()Landroidx/lifecycle/S;

    move-result-object p0

    const-string v0, "isReady(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final isLoadingStatus()Z
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;->getParentalControlStatus()Lcom/sec/android/app/sbrowser/viewmodel/ParentalControlViewModelStatus;

    move-result-object p0

    instance-of p0, p0, Lcom/sec/android/app/sbrowser/viewmodel/ParentalControlViewModelStatus$Loading;

    return p0
.end method

.method public final isMinorInfoStatus()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;->getParentalControlStatus()Lcom/sec/android/app/sbrowser/viewmodel/ParentalControlViewModelStatus;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type com.sec.android.app.sbrowser.viewmodel.ParentalControlViewModelStatus.Initialized"

    invoke-static {p0, v0}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/sec/android/app/sbrowser/viewmodel/ParentalControlViewModelStatus$Initialized;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/viewmodel/ParentalControlViewModelStatus$Initialized;->isMinor()Z

    move-result p0

    return p0
.end method

.method public final isNativeInitialized()Landroidx/lifecycle/S;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;->isNativeInitialized:Landroidx/lifecycle/S;

    return-object p0
.end method

.method public final isParentalControlLoading()Z
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;->getParentalControlStatus()Lcom/sec/android/app/sbrowser/viewmodel/ParentalControlViewModelStatus;

    move-result-object p0

    instance-of p0, p0, Lcom/sec/android/app/sbrowser/viewmodel/ParentalControlViewModelStatus$Loading;

    return p0
.end method

.method public final isRemoteConsentRequested()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;->isRemoteConsentRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public final isSignedInStatus()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;->getParentalControlStatus()Lcom/sec/android/app/sbrowser/viewmodel/ParentalControlViewModelStatus;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type com.sec.android.app.sbrowser.viewmodel.ParentalControlViewModelStatus.Initialized"

    invoke-static {p0, v0}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/sec/android/app/sbrowser/viewmodel/ParentalControlViewModelStatus$Initialized;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/viewmodel/ParentalControlViewModelStatus$Initialized;->isSignedIn()Z

    move-result p0

    return p0
.end method

.method public final onDestroyed()LNc/j0;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Landroidx/lifecycle/l0;->k(Landroidx/lifecycle/s0;)LNc/B;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel$onDestroyed$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel$onDestroyed$1;-><init>(Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;Lib/c;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    move-result-object p0

    return-object p0
.end method

.method public final onMainViewCreate(Landroidx/fragment/app/J;Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlActivityDelegate$Listener;)V
    .locals 3
    .param p1    # Landroidx/fragment/app/J;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlActivityDelegate$Listener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "activity"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;->parentalControlUpdateRequired:Landroidx/lifecycle/S;

    new-instance v1, LH9/c;

    const/16 v2, 0xc

    invoke-direct {v1, v2, p0, p2}, LH9/c;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v2, v1}, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel$sam$androidx_lifecycle_Observer$0;-><init>(Lsb/k;)V

    invoke-virtual {v0, p1, v2}, Landroidx/lifecycle/S;->observe(Landroidx/lifecycle/J;Landroidx/lifecycle/Y;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;->getRemoteConsentState()Landroidx/lifecycle/S;

    move-result-object p0

    new-instance v0, LC9/b;

    const/16 v1, 0x10

    invoke-direct {v0, v1, p2}, LC9/b;-><init>(ILjava/lang/Object;)V

    new-instance p2, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel$sam$androidx_lifecycle_Observer$0;

    invoke-direct {p2, v0}, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel$sam$androidx_lifecycle_Observer$0;-><init>(Lsb/k;)V

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/S;->observe(Landroidx/lifecycle/J;Landroidx/lifecycle/Y;)V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlUtil;->getParentalControlSmsCount(Landroid/content/Context;)I

    move-result p0

    const/4 p2, 0x1

    if-le p0, p2, :cond_0

    const-string p2, "ParentalControl SMS Count: "

    const-string v0, "SBrowserViewModel"

    invoke-static {p0, p2, v0}, LV0/c;->s(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/J;->getSupportFragmentManager()Landroidx/fragment/app/f0;

    move-result-object p0

    new-instance p2, Lcom/sec/android/app/sbrowser/search_widget/a;

    const/16 v0, 0x9

    invoke-direct {p2, v0, p1}, Lcom/sec/android/app/sbrowser/search_widget/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/f0;->e0(Landroidx/fragment/app/J;Landroidx/fragment/app/k0;)V

    return-void
.end method

.method public final onNativeInitialized()LNc/j0;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Landroidx/lifecycle/l0;->k(Landroidx/lifecycle/s0;)LNc/B;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel$onNativeInitialized$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel$onNativeInitialized$1;-><init>(Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;Lib/c;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    move-result-object p0

    return-object p0
.end method

.method public shouldShowBlockedApp()LQc/f0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LQc/f0;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;->getShouldShowBlockedApp()LQc/f0;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic shouldShowBlockedApp()LQc/y0;
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;->shouldShowBlockedApp()LQc/f0;

    move-result-object p0

    return-object p0
.end method

.method public final showHelpIntroDialog()V
    .locals 5

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;->get_remoteConsentState()LQc/f0;

    move-result-object v0

    check-cast v0, LQc/A0;

    invoke-virtual {v0}, LQc/A0;->getValue()Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "showHelpIntroDialog: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SBrowserViewModel"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;->get_remoteConsentState()LQc/f0;

    move-result-object p0

    :cond_0
    move-object v0, p0

    check-cast v0, LQc/A0;

    invoke-virtual {v0}, LQc/A0;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentStatus;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentStatus$ShowParentalControlDialog;

    if-ne v3, v4, :cond_1

    check-cast v2, Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentStatus$ShowParentalControlDialog;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentStatus$ShowParentalControlDialog;->getType()Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentStatus$ShowHelpIntroDialog;

    invoke-direct {v3, v2}, Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentStatus$ShowHelpIntroDialog;-><init>(Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType;)V

    move-object v2, v3

    :cond_1
    invoke-virtual {v0, v1, v2}, LQc/A0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public final showRemoteConsentDialog(Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType;)V
    .locals 4
    .param p1    # Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "type"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "showRemoteConsentDialog: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SBrowserViewModel"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;->get_remoteConsentState()LQc/f0;

    move-result-object p0

    :cond_0
    move-object v0, p0

    check-cast v0, LQc/A0;

    invoke-virtual {v0}, LQc/A0;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentStatus;

    sget-object v3, Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentStatus$Idle;->INSTANCE:Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentStatus$Idle;

    invoke-static {v2, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentStatus$ShowParentalControlDialog;

    invoke-direct {v2, p1}, Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentStatus$ShowParentalControlDialog;-><init>(Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType;)V

    :goto_0
    invoke-virtual {v0, v1, v2}, LQc/A0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method
