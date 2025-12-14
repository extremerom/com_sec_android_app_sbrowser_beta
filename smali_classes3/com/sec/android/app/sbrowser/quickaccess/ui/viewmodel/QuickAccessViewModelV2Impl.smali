.class public final Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessViewModelV2Impl;
.super Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tB\u0011\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\nJ\u0017\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000c\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u0010R\u0014\u0010\u0012\u001a\u00020\u00118\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessViewModelV2Impl;",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;",
        "privacyBoardStateManager",
        "Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;",
        "promotionRepository",
        "LNc/x;",
        "ioDispatcher",
        "<init>",
        "(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;LNc/x;)V",
        "(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;)V",
        "",
        "shouldLoadUrl",
        "Ldb/r;",
        "onPromotionClick",
        "(Z)V",
        "Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;",
        "LNc/B;",
        "backgroundScope",
        "LNc/B;",
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


# instance fields
.field private final backgroundScope:LNc/B;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final promotionRepository:Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;)V
    .locals 7
    .param p1    # Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "privacyBoardStateManager"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getApplicationContext(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessViewModelV2Impl;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;LNc/x;ILtb/f;)V

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;LNc/x;)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # LNc/x;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "privacyBoardStateManager"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "promotionRepository"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioDispatcher"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessViewModelV2Impl;->promotionRepository:Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;

    invoke-static {p3}, LNc/E;->c(Lib/h;)LUc/e;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessViewModelV2Impl;->backgroundScope:LNc/B;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;LNc/x;ILtb/f;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    sget-object p3, LNc/N;->c:LWc/e;

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessViewModelV2Impl;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;LNc/x;)V

    return-void
.end method

.method public static final synthetic access$getPromotionRepository$p(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessViewModelV2Impl;)Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessViewModelV2Impl;->promotionRepository:Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;

    return-object p0
.end method


# virtual methods
.method public onPromotionClick(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mPromotionClick:Landroidx/lifecycle/X;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/livedata/Event;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mPromotionStatus:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PromotionStatusLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    check-cast v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PromotionStatus;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PromotionStatus;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "?utm_campaign=m_qa_native"

    invoke-static {v1, v2}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/common/livedata/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/X;->setValue(Ljava/lang/Object;)V

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessViewModelV2Impl;->backgroundScope:LNc/B;

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessViewModelV2Impl$onPromotionClick$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessViewModelV2Impl$onPromotionClick$1;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessViewModelV2Impl;Lib/c;)V

    const/4 p0, 0x3

    invoke-static {p1, v1, v1, v0, p0}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    return-void
.end method
