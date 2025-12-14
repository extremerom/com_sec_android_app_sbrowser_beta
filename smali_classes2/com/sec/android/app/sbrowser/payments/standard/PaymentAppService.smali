.class public Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppService$Collector;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppService;


# instance fields
.field mFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryInterface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppService;->mFactories:Ljava/util/List;

    new-instance v1, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentAppFactory;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/payments/standard/AutofillPaymentAppFactory;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppService;->mFactories:Ljava/util/List;

    new-instance v0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFactory;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFactory;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p0, "enable-payment-handler"

    invoke-static {p0}, Lcom/sec/terrace/TerraceCommandLine;->hasSwitch(Ljava/lang/String;)Z

    return-void
.end method

.method public static bridge synthetic a(Ljava/util/List;)Ljava/util/Set;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppService;->deduplicatePaymentApps(Ljava/util/List;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method private static deduplicatePaymentApps(Ljava/util/List;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditableOption;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v2, v1, :cond_1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;->getApplicationIdentifierToHide()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;->isPreferred()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Ljava/util/HashSet;->clear()V

    invoke-virtual {p0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_3
    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;->getApplicationIdentifiersThatHideThisApp()Ljava/util/Set;

    move-result-object v3

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p0, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    return-object p0
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppService;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppService;->sInstance:Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppService;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppService;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppService;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppService;->sInstance:Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppService;

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppService;->sInstance:Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppService;

    return-object v0
.end method


# virtual methods
.method public create(Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryDelegate;)V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppService$Collector;

    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppService;->mFactories:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, p0, v1, p1}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppService$Collector;-><init>(Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppService;Ljava/util/HashSet;Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryDelegate;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppService;->mFactories:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppService;->mFactories:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryInterface;

    invoke-interface {v2, v0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryInterface;->create(Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryDelegate;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
