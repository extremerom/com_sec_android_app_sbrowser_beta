.class Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EmptyItemStateLiveData;
.super Landroidx/lifecycle/W;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/lifecycle/W;"
    }
.end annotation


# instance fields
.field private mIsMostVisitedEmpty:Ljava/lang/Boolean;

.field private mIsQuickAccessEmpty:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/lifecycle/W;-><init>()V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EmptyItemStateLiveData;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EmptyItemStateLiveData;->onQuickAccessItemListChanged(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EmptyItemStateLiveData;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EmptyItemStateLiveData;->onMostVisitedVisibilityChanged(Ljava/lang/Boolean;)V

    return-void
.end method

.method private onMostVisitedVisibilityChanged(Ljava/lang/Boolean;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EmptyItemStateLiveData;->mIsMostVisitedEmpty:Ljava/lang/Boolean;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EmptyItemStateLiveData;->updateValue()V

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

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EmptyItemStateLiveData;->mIsQuickAccessEmpty:Ljava/lang/Boolean;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EmptyItemStateLiveData;->updateValue()V

    return-void
.end method

.method private setValueIfChanged(Ljava/lang/Boolean;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/lifecycle/X;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private updateValue()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EmptyItemStateLiveData;->mIsQuickAccessEmpty:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EmptyItemStateLiveData;->mIsMostVisitedEmpty:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EmptyItemStateLiveData;->setValueIfChanged(Ljava/lang/Boolean;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EmptyItemStateLiveData;->mIsQuickAccessEmpty:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EmptyItemStateLiveData;->mIsMostVisitedEmpty:Ljava/lang/Boolean;

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EmptyItemStateLiveData;->setValueIfChanged(Ljava/lang/Boolean;)V

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public addMostVisitedStateSource(Landroidx/lifecycle/S;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/S;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/c;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/c;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EmptyItemStateLiveData;I)V

    invoke-virtual {p0, p1, v0}, Landroidx/lifecycle/W;->addSource(Landroidx/lifecycle/S;Landroidx/lifecycle/Y;)V

    return-void
.end method

.method public addQuickAccessStateSource(Landroidx/lifecycle/S;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/S;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/c;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EmptyItemStateLiveData;I)V

    invoke-virtual {p0, p1, v0}, Landroidx/lifecycle/W;->addSource(Landroidx/lifecycle/S;Landroidx/lifecycle/Y;)V

    return-void
.end method
