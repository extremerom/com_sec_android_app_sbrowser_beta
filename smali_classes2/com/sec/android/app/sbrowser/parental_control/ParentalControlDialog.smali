.class public final Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;
.super Landroidx/fragment/app/u;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u0000 F2\u00020\u0001:\u0001FB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001f\u0010\t\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\r\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0017\u0010\u0010\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u0012H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0003J\u0017\u0010\u0017\u001a\u00020\u00082\u0006\u0010\u0016\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0019\u0010\u001b\u001a\u00020\u00082\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ-\u0010\"\u001a\u0004\u0018\u00010!2\u0006\u0010\u001e\u001a\u00020\u001d2\u0008\u0010 \u001a\u0004\u0018\u00010\u001f2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0016\u00a2\u0006\u0004\u0008\"\u0010#J\u0019\u0010%\u001a\u00020$2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0016\u00a2\u0006\u0004\u0008%\u0010&J\u000f\u0010\'\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\'\u0010\u0003J\u000f\u0010(\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008(\u0010\u0003J\u0017\u0010+\u001a\u00020\u00082\u0006\u0010*\u001a\u00020)H\u0016\u00a2\u0006\u0004\u0008+\u0010,J\u000f\u0010-\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008-\u0010\u0003J\u000f\u0010.\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008.\u0010\u0003R\u0018\u00100\u001a\u0004\u0018\u00010/8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00080\u00101R$\u00103\u001a\u0004\u0018\u0001028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00083\u00104\u001a\u0004\u00085\u00106\"\u0004\u00087\u00108R\u001b\u0010>\u001a\u0002098BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008:\u0010;\u001a\u0004\u0008<\u0010=R\"\u0010B\u001a\u0010\u0012\u000c\u0012\n A*\u0004\u0018\u00010@0@0?8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008B\u0010CR\"\u0010D\u001a\u0010\u0012\u000c\u0012\n A*\u0004\u0018\u00010@0@0?8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008D\u0010CR\"\u0010E\u001a\u0010\u0012\u000c\u0012\n A*\u0004\u0018\u00010@0@0?8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008E\u0010C\u00a8\u0006G"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;",
        "Landroidx/fragment/app/u;",
        "<init>",
        "()V",
        "Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType;",
        "type",
        "",
        "userId",
        "Ldb/r;",
        "requestRemoteConsent",
        "(Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType;Ljava/lang/String;)V",
        "Lcom/sec/android/app/sbrowser/parental_control/ParentalControlToastEvent;",
        "event",
        "handleToastEvent",
        "(Lcom/sec/android/app/sbrowser/parental_control/ParentalControlToastEvent;)V",
        "Lcom/sec/android/app/sbrowser/parental_control/ConsentEvent;",
        "handleEvent",
        "(Lcom/sec/android/app/sbrowser/parental_control/ConsentEvent;)V",
        "Landroid/text/Spannable;",
        "getMessage",
        "()Landroid/text/Spannable;",
        "getSamsungAccountInfo",
        "consentType",
        "requestLocalConsent",
        "(Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType;)V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroid/view/View;",
        "onCreateView",
        "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;",
        "Landroid/app/Dialog;",
        "onCreateDialog",
        "(Landroid/os/Bundle;)Landroid/app/Dialog;",
        "onStart",
        "onResume",
        "Landroid/content/Context;",
        "context",
        "onAttach",
        "(Landroid/content/Context;)V",
        "onDetach",
        "onDestroy",
        "Lcom/sec/android/app/sbrowser/parental_control/RemoteConsentReceiver;",
        "receiver",
        "Lcom/sec/android/app/sbrowser/parental_control/RemoteConsentReceiver;",
        "Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlDialogListener;",
        "listener",
        "Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlDialogListener;",
        "getListener",
        "()Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlDialogListener;",
        "setListener",
        "(Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlDialogListener;)V",
        "Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel;",
        "viewModel$delegate",
        "Ldb/f;",
        "getViewModel",
        "()Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel;",
        "viewModel",
        "Landroidx/activity/result/b;",
        "Landroid/content/Intent;",
        "kotlin.jvm.PlatformType",
        "accountInfoLauncher",
        "Landroidx/activity/result/b;",
        "localConsentLauncher",
        "blockAppLauncher",
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

.field public static final Companion:Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final accountInfoLauncher:Landroidx/activity/result/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/b;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final blockAppLauncher:Landroidx/activity/result/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/b;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private listener:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlDialogListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final localConsentLauncher:Landroidx/activity/result/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/b;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private receiver:Lcom/sec/android/app/sbrowser/parental_control/RemoteConsentReceiver;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final viewModel$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;->Companion:Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;->$stable:I

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Landroidx/fragment/app/u;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog$special$$inlined$viewModels$default$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    sget-object v1, Ldb/h;->NONE:Ldb/h;

    new-instance v2, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog$special$$inlined$viewModels$default$2;

    invoke-direct {v2, v0}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog$special$$inlined$viewModels$default$2;-><init>(Lsb/a;)V

    invoke-static {v1, v2}, LG5/z2;->d(Ldb/h;Lsb/a;)Ldb/f;

    move-result-object v0

    sget-object v1, Ltb/x;->a:Ltb/y;

    const-class v2, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel;

    invoke-virtual {v1, v2}, Ltb/y;->b(Ljava/lang/Class;)LAb/c;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog$special$$inlined$viewModels$default$3;

    invoke-direct {v2, v0}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog$special$$inlined$viewModels$default$3;-><init>(Ldb/f;)V

    new-instance v3, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog$special$$inlined$viewModels$default$4;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog$special$$inlined$viewModels$default$4;-><init>(Lsb/a;Ldb/f;)V

    new-instance v4, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog$special$$inlined$viewModels$default$5;

    invoke-direct {v4, p0, v0}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Ldb/f;)V

    new-instance v0, LA7/c;

    invoke-direct {v0, v1, v2, v4, v3}, LA7/c;-><init>(LAb/c;Lsb/a;Lsb/a;Lsb/a;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;->viewModel$delegate:Ldb/f;

    new-instance v0, Landroidx/fragment/app/a0;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroidx/fragment/app/a0;-><init>(I)V

    new-instance v1, Lcom/sec/android/app/sbrowser/parental_control/c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/parental_control/c;-><init>(Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;I)V

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Lh/a;Landroidx/activity/result/a;)Landroidx/activity/result/b;

    move-result-object v0

    const-string v1, "registerForActivityResult(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;->accountInfoLauncher:Landroidx/activity/result/b;

    new-instance v0, Landroidx/fragment/app/a0;

    const/4 v2, 0x4

    invoke-direct {v0, v2}, Landroidx/fragment/app/a0;-><init>(I)V

    new-instance v2, Lcom/sec/android/app/sbrowser/parental_control/c;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/parental_control/c;-><init>(Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;I)V

    invoke-virtual {p0, v0, v2}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Lh/a;Landroidx/activity/result/a;)Landroidx/activity/result/b;

    move-result-object v0

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;->localConsentLauncher:Landroidx/activity/result/b;

    new-instance v0, Landroidx/fragment/app/a0;

    const/4 v2, 0x4

    invoke-direct {v0, v2}, Landroidx/fragment/app/a0;-><init>(I)V

    new-instance v2, Lcom/sec/android/app/sbrowser/parental_control/c;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/parental_control/c;-><init>(Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;I)V

    invoke-virtual {p0, v0, v2}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Lh/a;Landroidx/activity/result/a;)Landroidx/activity/result/b;

    move-result-object v0

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;->blockAppLauncher:Landroidx/activity/result/b;

    return-void
.end method

.method public static final synthetic access$getBlockAppLauncher$p(Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;)Landroidx/activity/result/b;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;->blockAppLauncher:Landroidx/activity/result/b;

    return-object p0
.end method

.method public static final synthetic access$getViewModel(Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;)Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;->getViewModel()Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$handleEvent(Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;Lcom/sec/android/app/sbrowser/parental_control/ConsentEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;->handleEvent(Lcom/sec/android/app/sbrowser/parental_control/ConsentEvent;)V

    return-void
.end method

.method public static final synthetic access$handleToastEvent(Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;Lcom/sec/android/app/sbrowser/parental_control/ParentalControlToastEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;->handleToastEvent(Lcom/sec/android/app/sbrowser/parental_control/ParentalControlToastEvent;)V

    return-void
.end method

.method private static final accountInfoLauncher$lambda$1(Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;Landroidx/activity/result/ActivityResult;)V
    .locals 2

    const-string v0, "result"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, -0x1

    iget v1, p1, Landroidx/activity/result/ActivityResult;->a:I

    if-ne v1, v0, :cond_1

    iget-object p1, p1, Landroidx/activity/result/ActivityResult;->b:Landroid/content/Intent;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "user_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;->getViewModel()Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel;->onSuccessAccountInfo(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;->getViewModel()Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel;->onFailureAccountInfo()V

    :cond_2
    :goto_0
    return-void
.end method

.method private static final blockAppLauncher$lambda$3(Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;Landroidx/activity/result/ActivityResult;)V
    .locals 2

    const-string v0, "result"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlBlockAppUtil;->INSTANCE:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlBlockAppUtil;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p0

    const-string v1, "requireActivity(...)"

    invoke-static {p0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p0}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlBlockAppUtil;->onBlockLauncherResult(Landroidx/activity/result/ActivityResult;Landroid/app/Activity;)V

    return-void
.end method

.method private final getMessage()Landroid/text/Spannable;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;->getViewModel()Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel;->getConsentTypeStatus()Lcom/sec/android/app/sbrowser/common/parental_control/ConsentTypeStatus;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/parental_control/ConsentTypeStatus;->getLinkedUrl()Landroid/text/Spannable;

    move-result-object p0

    return-object p0
.end method

.method private final getSamsungAccountInfo()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.msc.action.samsungaccount.REQUEST_ACCESSTOKEN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "cc"

    const-string v2, "user_id"

    const-string v3, "api_server_url"

    filled-new-array {v2, v3, v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "client_id"

    const-string v3, "4oe3617251"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "additional"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;->accountInfoLauncher:Landroidx/activity/result/b;

    invoke-virtual {p0, v0}, Landroidx/activity/result/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private final getViewModel()Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;->viewModel$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel;

    return-object p0
.end method

.method private final handleEvent(Lcom/sec/android/app/sbrowser/parental_control/ConsentEvent;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleEvent "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ParentalControlDialog"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v0, p1, Lcom/sec/android/app/sbrowser/parental_control/ConsentEvent$LocalConsent;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sec/android/app/sbrowser/parental_control/ConsentEvent$LocalConsent;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/parental_control/ConsentEvent$LocalConsent;->getType()Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;->requestLocalConsent(Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/sec/android/app/sbrowser/parental_control/ConsentEvent$RemoteConsent;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/sec/android/app/sbrowser/parental_control/ConsentEvent$RemoteConsent;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/parental_control/ConsentEvent$RemoteConsent;->getType()Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/parental_control/ConsentEvent$RemoteConsent;->getUserId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;->requestRemoteConsent(Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    instance-of p1, p1, Lcom/sec/android/app/sbrowser/parental_control/ConsentEvent$GetAccountInfo;

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;->getSamsungAccountInfo()V

    :goto_0
    return-void

    :cond_2
    new-instance p0, LI5/b;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method

.method private final handleToastEvent(Lcom/sec/android/app/sbrowser/parental_control/ParentalControlToastEvent;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleToastEvent "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ParentalControlDialog"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlToastEvent$RequestSent;->INSTANCE:Lcom/sec/android/app/sbrowser/parental_control/ParentalControlToastEvent$RequestSent;

    invoke-static {p1, v0}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const p1, 0x7f1408a7

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlToastEvent$DuplicateRequest;->INSTANCE:Lcom/sec/android/app/sbrowser/parental_control/ParentalControlToastEvent$DuplicateRequest;

    invoke-static {p1, v0}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const p1, 0x7f140895

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlToastEvent$RequestFailed;->INSTANCE:Lcom/sec/android/app/sbrowser/parental_control/ParentalControlToastEvent$RequestFailed;

    invoke-static {p1, v0}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const p1, 0x7f1408a3

    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/u;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, -0x1

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1}, LH6/o;->i(Landroid/view/View;Ljava/lang/CharSequence;II)LH6/o;

    move-result-object p0

    invoke-virtual {p0}, LH6/o;->l()V

    :cond_2
    return-void

    :cond_3
    new-instance p0, LI5/b;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method

.method public static synthetic i(Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;->onStart$lambda$12$lambda$10(Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic j(Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;->onCreate$lambda$5$lambda$4(Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic k(Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;->localConsentLauncher$lambda$2(Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;Landroidx/activity/result/ActivityResult;)V

    return-void
.end method

.method public static synthetic l(Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;->onStart$lambda$12$lambda$11(Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;Landroid/view/View;)V

    return-void
.end method

.method private static final localConsentLauncher$lambda$2(Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;Landroidx/activity/result/ActivityResult;)V
    .locals 2

    const-string v0, "result"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LocalConsent RESULT "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroidx/activity/result/ActivityResult;->a:I

    const-string v1, "ParentalControlDialog"

    invoke-static {v0, p1, v1}, Landroidx/recyclerview/widget/P;->x(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlUtil;->resetSettingsIfRequired()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/NetDeviceUtils;->isNetworkAvailable()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/u;->dismiss()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;->listener:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlDialogListener;

    if-eqz p0, :cond_4

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlDialogListener;->onLocalConsentFailed()V

    goto :goto_1

    :cond_2
    :goto_0
    const-string p0, "Consent finish"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/u;->dismiss()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;->listener:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlDialogListener;

    if-eqz p0, :cond_4

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlDialogListener;->onSuccess()V

    :cond_4
    :goto_1
    return-void
.end method

.method public static synthetic m(Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;->blockAppLauncher$lambda$3(Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;Landroidx/activity/result/ActivityResult;)V

    return-void
.end method

.method public static synthetic n(Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;->onCreateDialog$lambda$8$lambda$7(Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic o(Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;->accountInfoLauncher$lambda$1(Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;Landroidx/activity/result/ActivityResult;)V

    return-void
.end method

.method private static final onCreate$lambda$5$lambda$4(Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;->listener:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlDialogListener;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlDialogListener;->onSuccess()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;->getViewModel()Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel;->onRemoteConsentDenied()V

    :cond_1
    :goto_0
    return-void
.end method

.method private static final onCreateDialog$lambda$8$lambda$7(Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;->listener:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlDialogListener;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlDialogListener;->onClickCancel()V

    :cond_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/f0;

    move-result-object p0

    iget-object p2, p0, Landroidx/fragment/app/f0;->n:Ljava/util/Map;

    const-string v0, "not_now"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/fragment/app/b0;

    if-eqz p2, :cond_1

    sget-object v1, Landroidx/lifecycle/C;->STARTED:Landroidx/lifecycle/C;

    iget-object v2, p2, Landroidx/fragment/app/b0;->a:Landroidx/lifecycle/D;

    check-cast v2, Landroidx/lifecycle/L;

    iget-object v2, v2, Landroidx/lifecycle/L;->d:Landroidx/lifecycle/C;

    invoke-virtual {v2, v1}, Landroidx/lifecycle/C;->a(Landroidx/lifecycle/C;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2, p1}, Landroidx/fragment/app/b0;->b(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroidx/fragment/app/f0;->m:Ljava/util/Map;

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const/4 p0, 0x2

    const-string p2, "FragmentManager"

    invoke-static {p2, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Setting fragment result with key not_now and result "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private static final onStart$lambda$12$lambda$10(Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;->getViewModel()Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel;->onClickRemoteConsent()V

    return-void
.end method

.method private static final onStart$lambda$12$lambda$11(Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;->getViewModel()Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel;->onClickLocalConsent()V

    return-void
.end method

.method private final requestLocalConsent(Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.samsungaccount.action.FAMILY_ORGANIZER_CONFIRM_PASSWORD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "client_id"

    const-string v2, "4oe3617251"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/AppInfo;->isBetaApk()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f1400d0

    goto :goto_0

    :cond_0
    const v2, 0x7f1400d3

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_name"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "first_launch"

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType;->isFirstLaunch()Z

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;->localConsentLauncher:Landroidx/activity/result/b;

    invoke-virtual {p0, v0}, Landroidx/activity/result/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private final requestRemoteConsent(Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType;Ljava/lang/String;)V
    .locals 4

    invoke-static {p0}, Landroidx/lifecycle/l0;->i(Landroidx/lifecycle/J;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object v0

    sget-object v1, LNc/N;->c:LWc/e;

    new-instance v2, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog$requestRemoteConsent$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p2, p1, v3}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog$requestRemoteConsent$1;-><init>(Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType;Lib/c;)V

    const/4 p0, 0x2

    invoke-static {v0, v1, v3, v2, p0}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    return-void
.end method


# virtual methods
.method public final getListener()Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlDialogListener;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;->listener:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlDialogListener;

    return-object p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/u;->onAttach(Landroid/content/Context;)V

    instance-of v0, p1, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlDialogListener;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlDialogListener;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;->listener:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlDialogListener;

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;->listener:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlDialogListener;

    if-eqz p1, :cond_2

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlDialogListener;->getRemoteConsentType()Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;->getViewModel()Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel;->setRemoteConsentType(Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/u;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Lcom/sec/android/app/sbrowser/parental_control/RemoteConsentReceiver;

    invoke-direct {p1}, Lcom/sec/android/app/sbrowser/parental_control/RemoteConsentReceiver;-><init>()V

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/parental_control/RemoteConsentReceiver;->setDialog(Landroidx/fragment/app/u;)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.sec.android.app.sbrowser.beta.RemoteConsent"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_0
    new-instance v0, Lcom/sec/android/app/sbrowser/parental_control/d;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/parental_control/d;-><init>(Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;)V

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/parental_control/RemoteConsentReceiver;->setCallback(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;->receiver:Lcom/sec/android/app/sbrowser/parental_control/RemoteConsentReceiver;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p1, "ParentalControlDialog"

    const-string v0, "onCreateDialog"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lm/k;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-direct {p1, v0}, Lm/k;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lm/k;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f140bde

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lm/k;->setTitle(Ljava/lang/CharSequence;)Lm/k;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;->getMessage()Landroid/text/Spannable;

    move-result-object v0

    iget-object v1, p1, Lm/k;->a:Lm/h;

    iput-object v0, v1, Lm/h;->f:Ljava/lang/CharSequence;

    const v0, 0x7f1402ac

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/parental_control/e;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/parental_control/e;-><init>(Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;)V

    invoke-virtual {p1, v0, v1}, Lm/k;->d(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const p0, 0x7f140890

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lm/k;->c(ILandroid/content/DialogInterface$OnClickListener;)V

    const p0, 0x7f140896

    invoke-virtual {p1, p0, v0}, Lm/k;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    invoke-virtual {p1}, Lm/k;->create()Lm/l;

    move-result-object p0

    const-string p1, "create(...)"

    invoke-static {p0, p1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "inflater"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/lifecycle/l0;->i(Landroidx/lifecycle/J;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog$onCreateView$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog$onCreateView$1;-><init>(Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;Lib/c;)V

    const/4 v3, 0x3

    invoke-static {v0, v2, v2, v1, v3}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    invoke-static {p0}, Landroidx/lifecycle/l0;->i(Landroidx/lifecycle/J;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog$onCreateView$2;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog$onCreateView$2;-><init>(Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;Lib/c;)V

    invoke-static {v0, v2, v2, v1, v3}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    invoke-static {p0}, Landroidx/lifecycle/l0;->i(Landroidx/lifecycle/J;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog$onCreateView$3;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog$onCreateView$3;-><init>(Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;Lib/c;)V

    invoke-static {v0, v2, v2, v1, v3}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    invoke-static {p0}, Landroidx/lifecycle/l0;->i(Landroidx/lifecycle/J;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog$onCreateView$4;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog$onCreateView$4;-><init>(Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;Lib/c;)V

    invoke-static {v0, v2, v2, v1, v3}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    invoke-static {p0}, Landroidx/lifecycle/l0;->i(Landroidx/lifecycle/J;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog$onCreateView$5;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog$onCreateView$5;-><init>(Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;Lib/c;)V

    invoke-static {v0, v2, v2, v1, v3}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;->receiver:Lcom/sec/android/app/sbrowser/parental_control/RemoteConsentReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;->receiver:Lcom/sec/android/app/sbrowser/parental_control/RemoteConsentReceiver;

    return-void
.end method

.method public onDetach()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/u;->onDetach()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;->listener:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlDialogListener;

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    const-string v0, "ParentalControlDialog"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {v0, v0}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlUtil;->resetSettings(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;->getViewModel()Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel;->checkRemoteConsentIsAllowed()V

    return-void
.end method

.method public onStart()V
    .locals 4

    invoke-super {p0}, Landroidx/fragment/app/u;->onStart()V

    const-string v0, "ParentalControlDialog"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/u;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x102000b

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/u;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    instance-of v1, v0, Lm/l;

    if-eqz v1, :cond_1

    check-cast v0, Lm/l;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Lm/l;->g(I)Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v2, Lcom/sec/android/app/sbrowser/parental_control/f;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/parental_control/f;-><init>(Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lm/l;->g(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v1, Lcom/sec/android/app/sbrowser/parental_control/f;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/parental_control/f;-><init>(Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    return-void
.end method
