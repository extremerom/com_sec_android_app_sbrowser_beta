.class public final Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessHeaderVisibilityLivedata;
.super Landroidx/lifecycle/W;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/lifecycle/W;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u0017\u0010\u0008\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u001b\u0010\r\u001a\u00020\u00052\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n\u00a2\u0006\u0004\u0008\r\u0010\u000eJ!\u0010\u0012\u001a\u00020\u00052\u0012\u0010\u0011\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00100\u000f0\n\u00a2\u0006\u0004\u0008\u0012\u0010\u000eR\u0016\u0010\u0013\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\u0016\u0010\u0015\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessHeaderVisibilityLivedata;",
        "Landroidx/lifecycle/W;",
        "",
        "<init>",
        "()V",
        "Ldb/r;",
        "updateValue",
        "newValue",
        "setValueIfChanged",
        "(Z)V",
        "Landroidx/lifecycle/S;",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;",
        "editModeLiveData",
        "addEditModeSource",
        "(Landroidx/lifecycle/S;)V",
        "",
        "Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;",
        "quickAccessItems",
        "addQAItemsSource",
        "isQAEmpty",
        "Z",
        "editMode",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;",
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
.field private editMode:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isQAEmpty:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/lifecycle/W;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/X;->setValue(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessHeaderVisibilityLivedata;->isQAEmpty:Z

    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->NONE:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessHeaderVisibilityLivedata;->editMode:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    return-void
.end method

.method private static final addEditModeSource$lambda$0(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessHeaderVisibilityLivedata;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;)Ldb/r;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessHeaderVisibilityLivedata;->editMode:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessHeaderVisibilityLivedata;->updateValue()V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method private static final addQAItemsSource$lambda$1(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessHeaderVisibilityLivedata;Landroidx/lifecycle/S;Ljava/util/List;)Ldb/r;
    .locals 0

    invoke-virtual {p1}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessHeaderVisibilityLivedata;->isQAEmpty:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessHeaderVisibilityLivedata;->updateValue()V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessHeaderVisibilityLivedata;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;)Ldb/r;
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessHeaderVisibilityLivedata;->addEditModeSource$lambda$0(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessHeaderVisibilityLivedata;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;)Ldb/r;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessHeaderVisibilityLivedata;Landroidx/lifecycle/S;Ljava/util/List;)Ldb/r;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessHeaderVisibilityLivedata;->addQAItemsSource$lambda$1(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessHeaderVisibilityLivedata;Landroidx/lifecycle/S;Ljava/util/List;)Ldb/r;

    move-result-object p0

    return-object p0
.end method

.method private final setValueIfChanged(Z)V
    .locals 2

    invoke-virtual {p0}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/X;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private final updateValue()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessHeaderVisibilityLivedata;->isQAEmpty:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessHeaderVisibilityLivedata;->editMode:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->isExternal()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessHeaderVisibilityLivedata;->setValueIfChanged(Z)V

    return-void
.end method


# virtual methods
.method public final addEditModeSource(Landroidx/lifecycle/S;)V
    .locals 2
    .param p1    # Landroidx/lifecycle/S;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/S;",
            ")V"
        }
    .end annotation

    const-string v0, "editModeLiveData"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/m;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/m;-><init>(ILjava/lang/Object;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessHeaderVisibilityLivedata$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v1, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessHeaderVisibilityLivedata$sam$androidx_lifecycle_Observer$0;-><init>(Lsb/k;)V

    invoke-virtual {p0, p1, v1}, Landroidx/lifecycle/W;->addSource(Landroidx/lifecycle/S;Landroidx/lifecycle/Y;)V

    return-void
.end method

.method public final addQAItemsSource(Landroidx/lifecycle/S;)V
    .locals 2
    .param p1    # Landroidx/lifecycle/S;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/S;",
            ")V"
        }
    .end annotation

    const-string v0, "quickAccessItems"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/l;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/l;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessHeaderVisibilityLivedata;Landroidx/lifecycle/S;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessHeaderVisibilityLivedata$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v1, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessHeaderVisibilityLivedata$sam$androidx_lifecycle_Observer$0;-><init>(Lsb/k;)V

    invoke-virtual {p0, p1, v1}, Landroidx/lifecycle/W;->addSource(Landroidx/lifecycle/S;Landroidx/lifecycle/Y;)V

    return-void
.end method
