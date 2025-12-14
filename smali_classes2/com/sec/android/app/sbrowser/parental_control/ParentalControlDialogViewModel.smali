.class public final Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel;
.super Landroidx/lifecycle/a;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlViewModelDelegate;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0092\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u0000 L2\u00020\u00012\u00020\u0002:\u0001LB\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\r\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0015\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\r\u0010\u0013\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\r\u0010\u0015\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0015\u0010\u0014J\r\u0010\u0016\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0016\u0010\u0014J\u0015\u0010\u0019\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\u0017\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\r\u0010\u001b\u001a\u00020\t\u00a2\u0006\u0004\u0008\u001b\u0010\u0014J\r\u0010\u001c\u001a\u00020\t\u00a2\u0006\u0004\u0008\u001c\u0010\u0014J\r\u0010\u001d\u001a\u00020\t\u00a2\u0006\u0004\u0008\u001d\u0010\u0014J\r\u0010\u001e\u001a\u00020\t\u00a2\u0006\u0004\u0008\u001e\u0010\u0014J\r\u0010\u001f\u001a\u00020\t\u00a2\u0006\u0004\u0008\u001f\u0010\u0014J\r\u0010 \u001a\u00020\t\u00a2\u0006\u0004\u0008 \u0010\u0014J\u001b\u0010#\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\"0!H\u0016\u00a2\u0006\u0004\u0008#\u0010$J\u000f\u0010%\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008%\u0010\u0014R\u0019\u0010(\u001a\u00070&\u00a2\u0006\u0002\u0008\'8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008(\u0010)R\u001a\u0010+\u001a\u0008\u0012\u0004\u0012\u00020\u00070*8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008+\u0010,R\u001d\u0010.\u001a\u0008\u0012\u0004\u0012\u00020\u00070-8\u0006\u00a2\u0006\u000c\n\u0004\u0008.\u0010/\u001a\u0004\u00080\u00101R\u001a\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u0017028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001c\u00103R\u001a\u00105\u001a\u0008\u0012\u0004\u0012\u000204028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00085\u00103R\u001e\u00108\u001a\n 7*\u0004\u0018\u000106068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00088\u00109R\u001a\u0010<\u001a\u0008\u0012\u0004\u0012\u00020;0:8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008<\u0010=R\u001a\u0010>\u001a\u0008\u0012\u0004\u0012\u00020\u0017028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008>\u00103R\u001d\u0010@\u001a\u0008\u0012\u0004\u0012\u00020\u000c0?8\u0006\u00a2\u0006\u000c\n\u0004\u0008@\u0010A\u001a\u0004\u0008\r\u0010BR\'\u0010#\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\"0!8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008C\u0010D\u001a\u0004\u0008E\u0010$R\u0017\u0010I\u001a\u0008\u0012\u0004\u0012\u0002040F8F\u00a2\u0006\u0006\u001a\u0004\u0008G\u0010HR\u0017\u0010K\u001a\u0008\u0012\u0004\u0012\u00020\u00170F8F\u00a2\u0006\u0006\u001a\u0004\u0008J\u0010H\u00a8\u0006M"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel;",
        "Landroidx/lifecycle/a;",
        "Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlViewModelDelegate;",
        "Landroid/app/Application;",
        "application",
        "<init>",
        "(Landroid/app/Application;)V",
        "Lcom/sec/android/app/sbrowser/parental_control/ConsentEvent;",
        "event",
        "Ldb/r;",
        "sendEvent",
        "(Lcom/sec/android/app/sbrowser/parental_control/ConsentEvent;)V",
        "Lcom/sec/android/app/sbrowser/common/parental_control/ConsentTypeStatus;",
        "getConsentTypeStatus",
        "()Lcom/sec/android/app/sbrowser/common/parental_control/ConsentTypeStatus;",
        "Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType;",
        "type",
        "setRemoteConsentType",
        "(Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType;)V",
        "resetConsentTypeStatus",
        "()V",
        "onClickLocalConsent",
        "onClickRemoteConsent",
        "",
        "userId",
        "onSuccessAccountInfo",
        "(Ljava/lang/String;)V",
        "onSuccessRemoteConsent",
        "checkRemoteConsentIsAllowed",
        "onRemoteConsentDenied",
        "onFailureRemoteConsent",
        "onFailureAccountInfo",
        "onFailureCancelRequest",
        "LQc/f0;",
        "Lcom/sec/android/app/sbrowser/common/livedata/Event;",
        "shouldShowBlockedApp",
        "()LQc/f0;",
        "checkPermission",
        "Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository;",
        "Landroidx/annotation/NonNull;",
        "repository",
        "Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository;",
        "LPc/m;",
        "_eventChannel",
        "LPc/m;",
        "LQc/h;",
        "eventFlow",
        "LQc/h;",
        "getEventFlow",
        "()LQc/h;",
        "LQc/e0;",
        "LQc/e0;",
        "Lcom/sec/android/app/sbrowser/parental_control/ParentalControlToastEvent;",
        "_toastEvent",
        "Landroid/content/SharedPreferences;",
        "kotlin.jvm.PlatformType",
        "sharedPreferences",
        "Landroid/content/SharedPreferences;",
        "Landroidx/lifecycle/X;",
        "",
        "accountStatus",
        "Landroidx/lifecycle/X;",
        "_shouldDismiss",
        "LQc/y0;",
        "consentTypeStatus",
        "LQc/y0;",
        "()LQc/y0;",
        "shouldShowBlockedApp$delegate",
        "Ldb/f;",
        "getShouldShowBlockedApp",
        "LQc/i0;",
        "getToastEvent",
        "()LQc/i0;",
        "toastEvent",
        "getShouldDismiss",
        "shouldDismiss",
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

.field public static final Companion:Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final _eventChannel:LPc/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LPc/m;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final _shouldDismiss:LQc/e0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LQc/e0;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final _toastEvent:LQc/e0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LQc/e0;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final accountStatus:Landroidx/lifecycle/X;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/X;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final checkRemoteConsentIsAllowed:LQc/e0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LQc/e0;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final consentTypeStatus:LQc/y0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LQc/y0;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final eventFlow:LQc/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LQc/h;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final repository:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private sharedPreferences:Landroid/content/SharedPreferences;

.field private final shouldShowBlockedApp$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel;->Companion:Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 6
    .param p1    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "application"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/lifecycle/a;-><init>(Landroid/app/Application;)V

    sget-object v0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository;->Companion:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository$Companion;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository$Companion;->getInstance$default(Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository$Companion;Landroid/content/Context;ILjava/lang/Object;)Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel;->repository:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository;

    const/4 v3, -0x2

    const/4 v4, 0x6

    invoke-static {v3, v4, v1}, LG5/r;->a(IILPc/a;)LPc/i;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel;->_eventChannel:LPc/m;

    new-instance v4, LQc/d;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5}, LQc/d;-><init>(LPc/i;Z)V

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel;->eventFlow:LQc/h;

    const/4 v3, 0x5

    invoke-static {v5, v2, v1, v3}, LQc/n0;->b(IILPc/a;I)LQc/m0;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel;->checkRemoteConsentIsAllowed:LQc/e0;

    invoke-static {v5, v2, v1, v3}, LQc/n0;->b(IILPc/a;I)LQc/m0;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel;->_toastEvent:LQc/e0;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel;->sharedPreferences:Landroid/content/SharedPreferences;

    new-instance v2, Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceIntegerLiveData;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "parental_control_status"

    invoke-direct {v2, p1, v4, v3}, Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceIntegerLiveData;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Integer;)V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel;->accountStatus:Landroidx/lifecycle/X;

    const/4 p1, 0x7

    invoke-static {v5, v5, v1, p1}, LQc/n0;->b(IILPc/a;I)LQc/m0;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel;->_shouldDismiss:LQc/e0;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository;->getConsentTypeStatus()LQc/y0;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel;->consentTypeStatus:LQc/y0;

    new-instance p1, Lcom/sec/android/app/sbrowser/parental_control/g;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel;->shouldShowBlockedApp$delegate:Ldb/f;

    new-instance p1, Lcom/sec/android/app/sbrowser/parental_control/h;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/parental_control/h;-><init>(Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v0, p1}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel$sam$androidx_lifecycle_Observer$0;-><init>(Lsb/k;)V

    invoke-virtual {v2, v0}, Landroidx/lifecycle/S;->observeForever(Landroidx/lifecycle/Y;)V

    invoke-static {p0}, Landroidx/lifecycle/l0;->k(Landroidx/lifecycle/s0;)LNc/B;

    move-result-object p1

    sget-object v0, LNc/N;->c:LWc/e;

    new-instance v2, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel$2;

    invoke-direct {v2, p0, v1}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel$2;-><init>(Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel;Lib/c;)V

    const/4 v3, 0x2

    invoke-static {p1, v0, v1, v2, v3}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    invoke-static {p0}, Landroidx/lifecycle/l0;->k(Landroidx/lifecycle/s0;)LNc/B;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel$3;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel$3;-><init>(Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel;Lib/c;)V

    const/4 p0, 0x3

    invoke-static {p1, v1, v1, v0, p0}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    return-void
.end method

.method private static final _init_$lambda$2(Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel;Ljava/lang/Integer;)Ldb/r;
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/l0;->k(Landroidx/lifecycle/s0;)LNc/B;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel$1$1;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel$1$1;-><init>(Ljava/lang/Integer;Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel;Lib/c;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public static final synthetic access$getCheckRemoteConsentIsAllowed$p(Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel;)LQc/e0;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel;->checkRemoteConsentIsAllowed:LQc/e0;

    return-object p0
.end method

.method public static final synthetic access$getRepository$p(Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel;)Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel;->repository:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository;

    return-object p0
.end method

.method public static final synthetic access$getShouldShowBlockedApp(Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel;)LQc/f0;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel;->getShouldShowBlockedApp()LQc/f0;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$get_eventChannel$p(Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel;)LPc/m;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel;->_eventChannel:LPc/m;

    return-object p0
.end method

.method public static final synthetic access$get_shouldDismiss$p(Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel;)LQc/e0;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel;->_shouldDismiss:LQc/e0;

    return-object p0
.end method

.method public static synthetic b()LQc/f0;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel;->shouldShowBlockedApp_delegate$lambda$1()LQc/f0;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel;Ljava/lang/Integer;)Ldb/r;
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel;->_init_$lambda$2(Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel;Ljava/lang/Integer;)Ldb/r;

    move-result-object p0

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

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel;->shouldShowBlockedApp$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LQc/f0;

    return-object p0
.end method

.method private final sendEvent(Lcom/sec/android/app/sbrowser/parental_control/ConsentEvent;)V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/l0;->k(Landroidx/lifecycle/s0;)LNc/B;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel$sendEvent$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel$sendEvent$1;-><init>(Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel;Lcom/sec/android/app/sbrowser/parental_control/ConsentEvent;Lib/c;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    return-void
.end method

.method private static final shouldShowBlockedApp_delegate$lambda$1()LQc/f0;
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
.method public checkPermission()V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/l0;->k(Landroidx/lifecycle/s0;)LNc/B;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel$checkPermission$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel$checkPermission$1;-><init>(Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel;Lib/c;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    return-void
.end method

.method public final checkRemoteConsentIsAllowed()V
    .locals 2

    const-string v0, "ParentalControlDialogViewModel"

    const-string v1, "checkRemoteConsentIsAllowed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel;->checkRemoteConsentIsAllowed:LQc/e0;

    const-string v0, ""

    invoke-interface {p0, v0}, LQc/e0;->a(Ljava/lang/Object;)Z

    return-void
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

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel;->consentTypeStatus:LQc/y0;

    return-object p0
.end method

.method public final getConsentTypeStatus()Lcom/sec/android/app/sbrowser/common/parental_control/ConsentTypeStatus;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel;->repository:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository;->getConsentTypeStatus()LQc/y0;

    move-result-object p0

    invoke-interface {p0}, LQc/y0;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/parental_control/ConsentTypeStatus;

    return-object p0
.end method

.method public final getEventFlow()LQc/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LQc/h;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel;->eventFlow:LQc/h;

    return-object p0
.end method

.method public final getShouldDismiss()LQc/i0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LQc/i0;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel;->_shouldDismiss:LQc/e0;

    return-object p0
.end method

.method public final getToastEvent()LQc/i0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LQc/i0;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel;->_toastEvent:LQc/e0;

    return-object p0
.end method

.method public final onClickLocalConsent()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel;->consentTypeStatus:LQc/y0;

    invoke-interface {v0}, LQc/y0;->getValue()Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onClickLocalConsent: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ParentalControlDialogViewModel"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel;->consentTypeStatus:LQc/y0;

    invoke-interface {v0}, LQc/y0;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/parental_control/ConsentTypeStatus;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/parental_control/ConsentTypeStatus;->getRemoteConsentType()Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/sec/android/app/sbrowser/parental_control/ConsentEvent$LocalConsent;

    invoke-direct {v1, v0}, Lcom/sec/android/app/sbrowser/parental_control/ConsentEvent$LocalConsent;-><init>(Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType;)V

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel;->sendEvent(Lcom/sec/android/app/sbrowser/parental_control/ConsentEvent;)V

    return-void
.end method

.method public final onClickRemoteConsent()V
    .locals 2

    const-string v0, "ParentalControlDialogViewModel"

    const-string v1, "onClickRemoteConsent"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/sbrowser/parental_control/ConsentEvent$GetAccountInfo;->INSTANCE:Lcom/sec/android/app/sbrowser/parental_control/ConsentEvent$GetAccountInfo;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel;->sendEvent(Lcom/sec/android/app/sbrowser/parental_control/ConsentEvent;)V

    return-void
.end method

.method public final onFailureAccountInfo()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel;->_toastEvent:LQc/e0;

    sget-object v0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlToastEvent$RequestFailed;->INSTANCE:Lcom/sec/android/app/sbrowser/parental_control/ParentalControlToastEvent$RequestFailed;

    invoke-interface {p0, v0}, LQc/e0;->a(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onFailureCancelRequest()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel;->_toastEvent:LQc/e0;

    sget-object v0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlToastEvent$DuplicateRequest;->INSTANCE:Lcom/sec/android/app/sbrowser/parental_control/ParentalControlToastEvent$DuplicateRequest;

    invoke-interface {p0, v0}, LQc/e0;->a(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onFailureRemoteConsent()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel;->_toastEvent:LQc/e0;

    sget-object v0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlToastEvent$RequestFailed;->INSTANCE:Lcom/sec/android/app/sbrowser/parental_control/ParentalControlToastEvent$RequestFailed;

    invoke-interface {p0, v0}, LQc/e0;->a(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onRemoteConsentDenied()V
    .locals 2

    const-string v0, "ParentalControlDialogViewModel"

    const-string v1, "onRemoteConsentDenied"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel;->repository:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository;->onRemoteConsentDenied()V

    return-void
.end method

.method public final onSuccessAccountInfo(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "userId"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel;->repository:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository;->getConsentTypeStatus()LQc/y0;

    move-result-object v0

    invoke-interface {v0}, LQc/y0;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/parental_control/ConsentTypeStatus;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSuccessAccountInfo: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ParentalControlDialogViewModel"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v1, v0, Lcom/sec/android/app/sbrowser/common/parental_control/ConsentTypeStatus$SetUp;

    if-nez v1, :cond_1

    instance-of p1, v0, Lcom/sec/android/app/sbrowser/common/parental_control/ConsentTypeStatus$WaitingConsent;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel;->_toastEvent:LQc/e0;

    sget-object p1, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlToastEvent$DuplicateRequest;->INSTANCE:Lcom/sec/android/app/sbrowser/parental_control/ParentalControlToastEvent$DuplicateRequest;

    invoke-interface {p0, p1}, LQc/e0;->a(Ljava/lang/Object;)Z

    :cond_0
    return-void

    :cond_1
    new-instance v1, Lcom/sec/android/app/sbrowser/parental_control/ConsentEvent$RemoteConsent;

    check-cast v0, Lcom/sec/android/app/sbrowser/common/parental_control/ConsentTypeStatus$SetUp;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/parental_control/ConsentTypeStatus$SetUp;->getType()Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lcom/sec/android/app/sbrowser/parental_control/ConsentEvent$RemoteConsent;-><init>(Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel;->sendEvent(Lcom/sec/android/app/sbrowser/parental_control/ConsentEvent;)V

    return-void
.end method

.method public final onSuccessRemoteConsent()V
    .locals 2

    const-string v0, "ParentalControlDialogViewModel"

    const-string v1, "onSuccessRemoteConsent"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel;->repository:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository;->onSuccessRemoteConsent()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel;->_toastEvent:LQc/e0;

    sget-object v0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlToastEvent$RequestSent;->INSTANCE:Lcom/sec/android/app/sbrowser/parental_control/ParentalControlToastEvent$RequestSent;

    invoke-interface {p0, v0}, LQc/e0;->a(Ljava/lang/Object;)Z

    return-void
.end method

.method public final resetConsentTypeStatus()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel;->repository:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository;->resetConsentTypeStatus()V

    return-void
.end method

.method public final setRemoteConsentType(Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType;)V
    .locals 2
    .param p1    # Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "type"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setRemoteConsentType: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ParentalControlDialogViewModel"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel;->repository:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository;->setRemoteConsentType(Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType;)V

    return-void
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

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel;->getShouldShowBlockedApp()LQc/f0;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic shouldShowBlockedApp()LQc/y0;
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel;->shouldShowBlockedApp()LQc/f0;

    move-result-object p0

    return-object p0
.end method
