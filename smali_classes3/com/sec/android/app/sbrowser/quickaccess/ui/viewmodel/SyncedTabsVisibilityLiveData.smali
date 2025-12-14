.class public final Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/SyncedTabsVisibilityLiveData;
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
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u001d\u0010\t\u001a\u00020\u00082\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\r\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0004J\u0017\u0010\u0011\u001a\u00020\u00082\u0006\u0010\u0010\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J!\u0010\u0015\u001a\u00020\u00082\u0012\u0010\u0014\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u00050\u0013\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u001b\u0010\u0018\u001a\u00020\u00082\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0013\u00a2\u0006\u0004\u0008\u0018\u0010\u0016R\u0018\u0010\u0019\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u0014\u0010\u001e\u001a\u00020\u001d8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001f\u00a8\u0006 "
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/SyncedTabsVisibilityLiveData;",
        "Landroidx/lifecycle/W;",
        "",
        "<init>",
        "()V",
        "",
        "Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;",
        "itemList",
        "Ldb/r;",
        "onItemListChanged",
        "(Ljava/util/List;)V",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;",
        "mode",
        "onEditModeChanged",
        "(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;)V",
        "updateValue",
        "newValue",
        "setValueIfChanged",
        "(Z)V",
        "Landroidx/lifecycle/S;",
        "itemListLiveData",
        "addItemListSource",
        "(Landroidx/lifecycle/S;)V",
        "editModeLiveData",
        "addEditModeSource",
        "isEmpty",
        "Ljava/lang/Boolean;",
        "editMode",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;",
        "Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceBooleanLiveData;",
        "isEnabledLiveData",
        "Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceBooleanLiveData;",
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
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private isEmpty:Ljava/lang/Boolean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final isEnabledLiveData:Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceBooleanLiveData;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Landroidx/lifecycle/W;-><init>()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceBooleanLiveData;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, "quick_access_from_other_devices"

    invoke-direct {v1, v0, v3, v2}, Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceBooleanLiveData;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/SyncedTabsVisibilityLiveData;->isEnabledLiveData:Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceBooleanLiveData;

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/v;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/v;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/SyncedTabsVisibilityLiveData;I)V

    new-instance v2, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/SyncedTabsVisibilityLiveData$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v2, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/SyncedTabsVisibilityLiveData$sam$androidx_lifecycle_Observer$0;-><init>(Lsb/k;)V

    invoke-virtual {p0, v1, v2}, Landroidx/lifecycle/W;->addSource(Landroidx/lifecycle/S;Landroidx/lifecycle/Y;)V

    return-void
.end method

.method private static final _init_$lambda$0(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/SyncedTabsVisibilityLiveData;Ljava/lang/Boolean;)Ldb/r;
    .locals 1

    sget-object v0, Ldb/r;->a:Ldb/r;

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/SyncedTabsVisibilityLiveData;->updateValue()V

    return-object v0
.end method

.method private static final addEditModeSource$lambda$2(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/SyncedTabsVisibilityLiveData;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;)Ldb/r;
    .locals 0

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/SyncedTabsVisibilityLiveData;->onEditModeChanged(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method private static final addItemListSource$lambda$1(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/SyncedTabsVisibilityLiveData;Ljava/util/List;)Ldb/r;
    .locals 0

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/SyncedTabsVisibilityLiveData;->onItemListChanged(Ljava/util/List;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/SyncedTabsVisibilityLiveData;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;)Ldb/r;
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/SyncedTabsVisibilityLiveData;->addEditModeSource$lambda$2(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/SyncedTabsVisibilityLiveData;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;)Ldb/r;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/SyncedTabsVisibilityLiveData;Ljava/util/List;)Ldb/r;
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/SyncedTabsVisibilityLiveData;->addItemListSource$lambda$1(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/SyncedTabsVisibilityLiveData;Ljava/util/List;)Ldb/r;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/SyncedTabsVisibilityLiveData;Ljava/lang/Boolean;)Ldb/r;
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/SyncedTabsVisibilityLiveData;->_init_$lambda$0(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/SyncedTabsVisibilityLiveData;Ljava/lang/Boolean;)Ldb/r;

    move-result-object p0

    return-object p0
.end method

.method private final onEditModeChanged(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/SyncedTabsVisibilityLiveData;->editMode:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/SyncedTabsVisibilityLiveData;->updateValue()V

    return-void
.end method

.method private final onItemListChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/SyncedTabsVisibilityLiveData;->isEmpty:Ljava/lang/Boolean;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/SyncedTabsVisibilityLiveData;->updateValue()V

    return-void
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

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/SyncedTabsVisibilityLiveData;->editMode:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->isExternal()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/SyncedTabsVisibilityLiveData;->isEnabledLiveData:Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceBooleanLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/SyncedTabsVisibilityLiveData;->isEnabledLiveData:Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceBooleanLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/SyncedTabsVisibilityLiveData;->setValueIfChanged(Z)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/SyncedTabsVisibilityLiveData;->isEmpty:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/SyncedTabsVisibilityLiveData;->setValueIfChanged(Z)V

    :cond_3
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

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/v;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/v;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/SyncedTabsVisibilityLiveData;I)V

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/SyncedTabsVisibilityLiveData$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v1, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/SyncedTabsVisibilityLiveData$sam$androidx_lifecycle_Observer$0;-><init>(Lsb/k;)V

    invoke-virtual {p0, p1, v1}, Landroidx/lifecycle/W;->addSource(Landroidx/lifecycle/S;Landroidx/lifecycle/Y;)V

    return-void
.end method

.method public final addItemListSource(Landroidx/lifecycle/S;)V
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

    const-string v0, "itemListLiveData"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/v;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/v;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/SyncedTabsVisibilityLiveData;I)V

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/SyncedTabsVisibilityLiveData$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v1, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/SyncedTabsVisibilityLiveData$sam$androidx_lifecycle_Observer$0;-><init>(Lsb/k;)V

    invoke-virtual {p0, p1, v1}, Landroidx/lifecycle/W;->addSource(Landroidx/lifecycle/S;Landroidx/lifecycle/Y;)V

    return-void
.end method
