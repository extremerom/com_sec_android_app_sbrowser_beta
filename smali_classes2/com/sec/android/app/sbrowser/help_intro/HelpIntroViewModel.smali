.class public final Lcom/sec/android/app/sbrowser/help_intro/HelpIntroViewModel;
.super Landroidx/lifecycle/s0;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlViewModelDelegate;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u000e\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\r\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u001b\u0010\t\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u00080\u0007H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u0004R\u0019\u0010\u000e\u001a\u00070\u000c\u00a2\u0006\u0002\u0008\r8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u00108\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R#\u0010\u0016\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00150\u00080\u00148\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019R\"\u0010\u001a\u001a\u00020\u00158\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\'\u0010\t\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u00080\u00078BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008 \u0010!\u001a\u0004\u0008\"\u0010\n\u00a8\u0006#"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/help_intro/HelpIntroViewModel;",
        "Landroidx/lifecycle/s0;",
        "Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlViewModelDelegate;",
        "<init>",
        "()V",
        "Ldb/r;",
        "resetConsentTypeStatus",
        "LQc/f0;",
        "Lcom/sec/android/app/sbrowser/common/livedata/Event;",
        "shouldShowBlockedApp",
        "()LQc/f0;",
        "checkPermission",
        "Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository;",
        "Landroidx/annotation/NonNull;",
        "parentalControlRepository",
        "Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository;",
        "Landroidx/lifecycle/S;",
        "",
        "parentalControlStatus",
        "Landroidx/lifecycle/S;",
        "Landroidx/lifecycle/X;",
        "",
        "shouldProcessParentalConfirm",
        "Landroidx/lifecycle/X;",
        "getShouldProcessParentalConfirm",
        "()Landroidx/lifecycle/X;",
        "shouldShowIntroVi",
        "Z",
        "getShouldShowIntroVi",
        "()Z",
        "setShouldShowIntroVi",
        "(Z)V",
        "shouldShowBlockedApp$delegate",
        "Ldb/f;",
        "getShouldShowBlockedApp",
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


# instance fields
.field private final parentalControlRepository:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final parentalControlStatus:Landroidx/lifecycle/S;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final shouldProcessParentalConfirm:Landroidx/lifecycle/X;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/X;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final shouldShowBlockedApp$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private shouldShowIntroVi:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Landroidx/lifecycle/s0;-><init>()V

    sget-object v0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository;->Companion:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository$Companion;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository$Companion;->getInstance$default(Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository$Companion;Landroid/content/Context;ILjava/lang/Object;)Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroViewModel;->parentalControlRepository:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository;->getStatusLiveData()Landroidx/lifecycle/S;

    move-result-object v0

    invoke-static {v0}, Landroidx/lifecycle/l0;->f(Landroidx/lifecycle/S;)Landroidx/lifecycle/W;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroViewModel;->parentalControlStatus:Landroidx/lifecycle/S;

    new-instance v3, Landroidx/lifecycle/X;

    invoke-direct {v3}, Landroidx/lifecycle/S;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroViewModel;->shouldProcessParentalConfirm:Landroidx/lifecycle/X;

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroViewModel;->shouldShowIntroVi:Z

    new-instance v2, LB9/b;

    const/16 v3, 0x15

    invoke-direct {v2, v3}, LB9/b;-><init>(I)V

    invoke-static {v2}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroViewModel;->shouldShowBlockedApp$delegate:Ldb/f;

    new-instance v2, LC9/b;

    const/16 v3, 0xa

    invoke-direct {v2, v3, p0}, LC9/b;-><init>(ILjava/lang/Object;)V

    new-instance v3, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroViewModel$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v3, v2}, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroViewModel$sam$androidx_lifecycle_Observer$0;-><init>(Lsb/k;)V

    invoke-virtual {v0, v3}, Landroidx/lifecycle/S;->observeForever(Landroidx/lifecycle/Y;)V

    invoke-static {p0}, Landroidx/lifecycle/l0;->k(Landroidx/lifecycle/s0;)LNc/B;

    move-result-object v0

    new-instance v2, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroViewModel$2;

    invoke-direct {v2, p0, v1}, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroViewModel$2;-><init>(Lcom/sec/android/app/sbrowser/help_intro/HelpIntroViewModel;Lib/c;)V

    const/4 p0, 0x3

    invoke-static {v0, v1, v1, v2, p0}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    return-void
.end method

.method private static final _init_$lambda$3(Lcom/sec/android/app/sbrowser/help_intro/HelpIntroViewModel;Ljava/lang/Integer;)Ldb/r;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;->Companion:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus$Companion;

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus$Companion;->from(I)Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;->isChild()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroViewModel;->shouldProcessParentalConfirm:Landroidx/lifecycle/X;

    new-instance p1, Lcom/sec/android/app/sbrowser/common/livedata/Event;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p1, v0}, Lcom/sec/android/app/sbrowser/common/livedata/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroidx/lifecycle/X;->setValue(Ljava/lang/Object;)V

    :cond_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public static final synthetic access$getParentalControlRepository$p(Lcom/sec/android/app/sbrowser/help_intro/HelpIntroViewModel;)Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroViewModel;->parentalControlRepository:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository;

    return-object p0
.end method

.method public static final synthetic access$getParentalControlStatus$p(Lcom/sec/android/app/sbrowser/help_intro/HelpIntroViewModel;)Landroidx/lifecycle/S;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroViewModel;->parentalControlStatus:Landroidx/lifecycle/S;

    return-object p0
.end method

.method public static final synthetic access$getShouldShowBlockedApp(Lcom/sec/android/app/sbrowser/help_intro/HelpIntroViewModel;)LQc/f0;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroViewModel;->getShouldShowBlockedApp()LQc/f0;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/help_intro/HelpIntroViewModel;Ljava/lang/Integer;)Ldb/r;
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroViewModel;->_init_$lambda$3(Lcom/sec/android/app/sbrowser/help_intro/HelpIntroViewModel;Ljava/lang/Integer;)Ldb/r;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c()LQc/f0;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroViewModel;->shouldShowBlockedApp_delegate$lambda$1()LQc/f0;

    move-result-object v0

    return-object v0
.end method

.method private final getShouldShowBlockedApp()LQc/f0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LQc/f0;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroViewModel;->shouldShowBlockedApp$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LQc/f0;

    return-object p0
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

    new-instance v1, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroViewModel$checkPermission$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroViewModel$checkPermission$1;-><init>(Lcom/sec/android/app/sbrowser/help_intro/HelpIntroViewModel;Lib/c;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    return-void
.end method

.method public final getShouldProcessParentalConfirm()Landroidx/lifecycle/X;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/X;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroViewModel;->shouldProcessParentalConfirm:Landroidx/lifecycle/X;

    return-object p0
.end method

.method public final resetConsentTypeStatus()V
    .locals 2

    sget-object p0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository;->Companion:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository$Companion;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository$Companion;->getInstance$default(Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository$Companion;Landroid/content/Context;ILjava/lang/Object;)Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository;->resetConsentTypeStatus()V

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

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroViewModel;->getShouldShowBlockedApp()LQc/f0;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic shouldShowBlockedApp()LQc/y0;
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroViewModel;->shouldShowBlockedApp()LQc/f0;

    move-result-object p0

    return-object p0
.end method
