.class public final Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlActivityDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlActivityDelegate$Companion;,
        Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlActivityDelegate$Listener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0008\u0008\u0007\u0018\u0000 \u001c2\u00020\u0001:\u0002\u001c\u001dB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J-\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r*\u00020\t2\u0012\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00060\nH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0015\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0015R\u0014\u0010\u0017\u001a\u00020\u00168\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018R\u0016\u0010\u0012\u001a\u00020\u00118\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0019R\u001c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlActivityDelegate;",
        "",
        "Landroidx/fragment/app/J;",
        "activity",
        "<init>",
        "(Landroidx/fragment/app/J;)V",
        "Ldb/r;",
        "initViewModelObserver",
        "()V",
        "Landroidx/activity/p;",
        "Lkotlin/Function1;",
        "Landroidx/activity/result/ActivityResult;",
        "invoke",
        "Landroidx/activity/result/b;",
        "Landroid/content/Intent;",
        "registerForActivityResult",
        "(Landroidx/activity/p;Lsb/k;)Landroidx/activity/result/b;",
        "Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlViewModelDelegate;",
        "viewModel",
        "setViewModelForPermissionCheck",
        "(Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlViewModelDelegate;)V",
        "Landroidx/fragment/app/J;",
        "",
        "canSkipPermissionCheck",
        "Z",
        "Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlViewModelDelegate;",
        "blockLauncher",
        "Landroidx/activity/result/b;",
        "Companion",
        "Listener",
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

.field public static final Companion:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlActivityDelegate$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final activity:Landroidx/fragment/app/J;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private blockLauncher:Landroidx/activity/result/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/b;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final canSkipPermissionCheck:Z

.field private viewModel:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlViewModelDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlActivityDelegate$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlActivityDelegate$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlActivityDelegate;->Companion:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlActivityDelegate$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlActivityDelegate;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/J;)V
    .locals 2
    .param p1    # Landroidx/fragment/app/J;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "activity"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlActivityDelegate;->activity:Landroidx/fragment/app/J;

    sget v0, Lcom/sec/sbrowser/spl/util/PlatformInfo;->ONEUI_VERSION:I

    const v1, 0x13880

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlActivityDelegate;->canSkipPermissionCheck:Z

    new-instance v0, LC9/b;

    const/16 v1, 0x9

    invoke-direct {v0, v1, p0}, LC9/b;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlActivityDelegate;->registerForActivityResult(Landroidx/activity/p;Lsb/k;)Landroidx/activity/result/b;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlActivityDelegate;->blockLauncher:Landroidx/activity/result/b;

    return-void
.end method

.method private static final _init_$lambda$0(Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlActivityDelegate;Landroidx/activity/result/ActivityResult;)Ldb/r;
    .locals 1

    const-string v0, "result"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlBlockAppUtil;->INSTANCE:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlBlockAppUtil;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlActivityDelegate;->activity:Landroidx/fragment/app/J;

    invoke-virtual {v0, p1, p0}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlBlockAppUtil;->onBlockLauncherResult(Landroidx/activity/result/ActivityResult;Landroid/app/Activity;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlActivityDelegate;Landroidx/activity/result/ActivityResult;)Ldb/r;
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlActivityDelegate;->_init_$lambda$0(Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlActivityDelegate;Landroidx/activity/result/ActivityResult;)Ldb/r;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getBlockLauncher$p(Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlActivityDelegate;)Landroidx/activity/result/b;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlActivityDelegate;->blockLauncher:Landroidx/activity/result/b;

    return-object p0
.end method

.method public static final synthetic access$getViewModel$p(Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlActivityDelegate;)Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlViewModelDelegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlActivityDelegate;->viewModel:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlViewModelDelegate;

    return-object p0
.end method

.method public static synthetic b(Lsb/k;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlActivityDelegate;->registerForActivityResult$lambda$1(Lsb/k;Landroidx/activity/result/ActivityResult;)V

    return-void
.end method

.method private final initViewModelObserver()V
    .locals 5

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlActivityDelegate;->canSkipPermissionCheck:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlActivityDelegate;->activity:Landroidx/fragment/app/J;

    const-string v1, "null cannot be cast to non-null type androidx.lifecycle.LifecycleOwner"

    invoke-static {v0, v1}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Landroidx/lifecycle/l0;->i(Landroidx/lifecycle/J;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlActivityDelegate$initViewModelObserver$1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, p0, v3}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlActivityDelegate$initViewModelObserver$1;-><init>(Landroidx/lifecycle/J;Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlActivityDelegate;Lib/c;)V

    const/4 v4, 0x3

    invoke-static {v1, v3, v3, v2, v4}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    invoke-static {v0}, Landroidx/lifecycle/l0;->i(Landroidx/lifecycle/J;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlActivityDelegate$initViewModelObserver$2;

    invoke-direct {v2, v0, p0, v3}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlActivityDelegate$initViewModelObserver$2;-><init>(Landroidx/lifecycle/J;Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlActivityDelegate;Lib/c;)V

    invoke-static {v1, v3, v3, v2, v4}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    return-void
.end method

.method private final registerForActivityResult(Landroidx/activity/p;Lsb/k;)Landroidx/activity/result/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/activity/p;",
            "Lsb/k;",
            ")",
            "Landroidx/activity/result/b;"
        }
    .end annotation

    new-instance p0, Landroidx/fragment/app/a0;

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroidx/fragment/app/a0;-><init>(I)V

    new-instance v0, Lcom/google/firebase/messaging/z;

    const/16 v1, 0xe

    invoke-direct {v0, v1, p2}, Lcom/google/firebase/messaging/z;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p0, v0}, Landroidx/activity/p;->registerForActivityResult(Lh/a;Landroidx/activity/result/a;)Landroidx/activity/result/b;

    move-result-object p0

    return-object p0
.end method

.method private static final registerForActivityResult$lambda$1(Lsb/k;Landroidx/activity/result/ActivityResult;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final setViewModelForPermissionCheck(Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlViewModelDelegate;)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlViewModelDelegate;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "viewModel"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlActivityDelegate;->viewModel:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlViewModelDelegate;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlActivityDelegate;->initViewModelObserver()V

    return-void
.end method
