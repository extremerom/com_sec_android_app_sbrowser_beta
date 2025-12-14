.class public final Lcom/sec/android/app/sbrowser/settings/SettingsViewModel;
.super Landroidx/lifecycle/a;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\'\u0010\u000f\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\n0\t8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000eR\u001a\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u00108\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/settings/SettingsViewModel;",
        "Landroidx/lifecycle/a;",
        "Landroid/app/Application;",
        "application",
        "<init>",
        "(Landroid/app/Application;)V",
        "Ldb/r;",
        "onCleared",
        "()V",
        "Landroidx/lifecycle/X;",
        "Lcom/sec/android/app/sbrowser/common/livedata/Event;",
        "shouldExitSettings$delegate",
        "Ldb/f;",
        "getShouldExitSettings",
        "()Landroidx/lifecycle/X;",
        "shouldExitSettings",
        "Landroidx/lifecycle/Y;",
        "",
        "observer",
        "Landroidx/lifecycle/Y;",
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
.field private final observer:Landroidx/lifecycle/Y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Y;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final shouldExitSettings$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 2
    .param p1    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "application"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/lifecycle/a;-><init>(Landroid/app/Application;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/i;

    const/16 v1, 0x1b

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/i;-><init>(I)V

    invoke-static {v0}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsViewModel;->shouldExitSettings$delegate:Ldb/f;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/O;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/sbrowser/settings/O;-><init>(Landroid/app/Application;Lcom/sec/android/app/sbrowser/settings/SettingsViewModel;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsViewModel;->observer:Landroidx/lifecycle/Y;

    sget-object p0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository;->Companion:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository$Companion;

    const/4 p1, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository$Companion;->getInstance$default(Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository$Companion;Landroid/content/Context;ILjava/lang/Object;)Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository;->getStatusLiveData()Landroidx/lifecycle/S;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/S;->observeForever(Landroidx/lifecycle/Y;)V

    return-void
.end method

.method public static synthetic b(Landroid/app/Application;Lcom/sec/android/app/sbrowser/settings/SettingsViewModel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/SettingsViewModel;->observer$lambda$2(Landroid/app/Application;Lcom/sec/android/app/sbrowser/settings/SettingsViewModel;I)V

    return-void
.end method

.method public static synthetic c()Landroidx/lifecycle/X;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/SettingsViewModel;->shouldExitSettings_delegate$lambda$1()Landroidx/lifecycle/X;

    move-result-object v0

    return-object v0
.end method

.method private static final observer$lambda$2(Landroid/app/Application;Lcom/sec/android/app/sbrowser/settings/SettingsViewModel;I)V
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlUtil;->isParentalControlAgreeRequired(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/SettingsViewModel;->getShouldExitSettings()Landroidx/lifecycle/X;

    move-result-object p0

    new-instance p1, Lcom/sec/android/app/sbrowser/common/livedata/Event;

    sget-object p2, Ldb/r;->a:Ldb/r;

    invoke-direct {p1, p2}, Lcom/sec/android/app/sbrowser/common/livedata/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroidx/lifecycle/X;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static final shouldExitSettings_delegate$lambda$1()Landroidx/lifecycle/X;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/common/livedata/Event;

    sget-object v1, Ldb/r;->a:Ldb/r;

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/common/livedata/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/livedata/Event;->getContentIfNotHandled()Ljava/lang/Object;

    new-instance v1, Landroidx/lifecycle/X;

    invoke-direct {v1, v0}, Landroidx/lifecycle/S;-><init>(Ljava/lang/Object;)V

    return-object v1
.end method


# virtual methods
.method public final getShouldExitSettings()Landroidx/lifecycle/X;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/X;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsViewModel;->shouldExitSettings$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/X;

    return-object p0
.end method

.method public onCleared()V
    .locals 3

    invoke-super {p0}, Landroidx/lifecycle/s0;->onCleared()V

    sget-object v0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository;->Companion:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository$Companion;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository$Companion;->getInstance$default(Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository$Companion;Landroid/content/Context;ILjava/lang/Object;)Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository;->getStatusLiveData()Landroidx/lifecycle/S;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsViewModel;->observer:Landroidx/lifecycle/Y;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/S;->removeObserver(Landroidx/lifecycle/Y;)V

    return-void
.end method
