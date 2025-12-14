.class public Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessIconItemMediatorLiveData;
.super Landroidx/lifecycle/W;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/lifecycle/W;"
    }
.end annotation


# instance fields
.field private mEditMode:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

.field private mItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/lifecycle/W;-><init>()V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessIconItemMediatorLiveData;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessIconItemMediatorLiveData;->onEditModeChanged(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessIconItemMediatorLiveData;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessIconItemMediatorLiveData;->onQuickAccessItemListChanged(Ljava/util/List;)V

    return-void
.end method

.method private canShowAddItem(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->isExternal()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private onEditModeChanged(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessIconItemMediatorLiveData;->mEditMode:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessIconItemMediatorLiveData;->canShowAddItem(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;)Z

    move-result v0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessIconItemMediatorLiveData;->canShowAddItem(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessIconItemMediatorLiveData;->mEditMode:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessIconItemMediatorLiveData;->updateQuickAccessList()V

    :cond_1
    return-void
.end method

.method private onQuickAccessItemListChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessIconItemMediatorLiveData;->mItemList:Ljava/util/List;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessIconItemMediatorLiveData;->updateQuickAccessList()V

    return-void
.end method

.method private updateQuickAccessList()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessIconItemMediatorLiveData;->mItemList:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/lifecycle/X;->setValue(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessIconItemMediatorLiveData;->mItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;

    new-instance v3, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;

    invoke-direct {v3, v2}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;-><init>(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessIconItemMediatorLiveData;->mEditMode:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessIconItemMediatorLiveData;->canShowAddItem(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/domain/QuickAccessAddItem;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/quickaccess/domain/QuickAccessAddItem;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {p0, v0}, Landroidx/lifecycle/X;->setValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public addEditModeSource(Landroidx/lifecycle/S;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/S;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/n;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/n;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessIconItemMediatorLiveData;I)V

    invoke-virtual {p0, p1, v0}, Landroidx/lifecycle/W;->addSource(Landroidx/lifecycle/S;Landroidx/lifecycle/Y;)V

    return-void
.end method

.method public addQuickAccessItemListSource(Landroidx/lifecycle/S;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/S;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/n;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/n;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessIconItemMediatorLiveData;I)V

    invoke-virtual {p0, p1, v0}, Landroidx/lifecycle/W;->addSource(Landroidx/lifecycle/S;Landroidx/lifecycle/Y;)V

    return-void
.end method
