.class public Lcom/sec/android/app/sbrowser/payments/standard/ui/ShoppingCart;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mAdditionalContents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/payments/standard/ui/LineItem;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mContents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/payments/standard/ui/LineItem;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mTotal:Lcom/sec/android/app/sbrowser/payments/standard/ui/LineItem;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/payments/standard/ui/LineItem;Ljava/util/List;)V
    .locals 0
    .param p2    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/payments/standard/ui/LineItem;",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/payments/standard/ui/LineItem;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/ShoppingCart;->mTotal:Lcom/sec/android/app/sbrowser/payments/standard/ui/LineItem;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/ShoppingCart;->mContents:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getContents()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/payments/standard/ui/LineItem;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/ShoppingCart;->mContents:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/ShoppingCart;->mAdditionalContents:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/ShoppingCart;->mContents:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/ShoppingCart;->mAdditionalContents:Ljava/util/List;

    if-eqz p0, :cond_2

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getTotal()Lcom/sec/android/app/sbrowser/payments/standard/ui/LineItem;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/ShoppingCart;->mTotal:Lcom/sec/android/app/sbrowser/payments/standard/ui/LineItem;

    return-object p0
.end method

.method public setAdditionalContents(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/payments/standard/ui/LineItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/ShoppingCart;->mAdditionalContents:Ljava/util/List;

    return-void
.end method

.method public setTotal(Lcom/sec/android/app/sbrowser/payments/standard/ui/LineItem;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/ShoppingCart;->mTotal:Lcom/sec/android/app/sbrowser/payments/standard/ui/LineItem;

    return-void
.end method
