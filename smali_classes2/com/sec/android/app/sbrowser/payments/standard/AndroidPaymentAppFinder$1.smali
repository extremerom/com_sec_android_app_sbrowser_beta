.class Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->findAppStoreBillingApp(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sec/android/app/sbrowser/payments/standard/common/Callback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;

.field final synthetic val$allInstalledPaymentApps:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder$1;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder$1;->val$allInstalledPaymentApps:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder$1;->onResult(Ljava/lang/String;)V

    return-void
.end method

.method public onResult(Ljava/lang/String;)V
    .locals 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder$1;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder$1;->val$allInstalledPaymentApps:Ljava/util/List;

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->f(Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;Ljava/util/List;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder$1;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->b(Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/terrace/browser/payments/TerraceGURL;

    invoke-virtual {v3}, Lcom/sec/terrace/browser/payments/TerraceGURL;->getSpec()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder$1;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;

    invoke-static {v5}, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->c(Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;)Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryDelegate;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryDelegate;->getParams()Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryParams;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestParams;->getMethodData()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder$1;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;

    invoke-static {v5, v0, v3}, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->h(Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;Landroid/content/pm/ResolveInfo;Lcom/sec/terrace/browser/payments/TerraceGURL;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    const-string v2, "AppStoreBillingDebug"

    invoke-static {v2}, Lcom/sec/terrace/browser/payments/TerracePaymentFeatureList;->isEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder$1;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->d(Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;)Lcom/sec/android/app/sbrowser/payments/standard/PackageManagerDelegate;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sec/android/app/sbrowser/payments/standard/PackageManagerDelegate;->getInstallerPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    return-void

    :cond_5
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder$1;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->b(Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/terrace/browser/payments/TerraceGURL;

    if-nez v2, :cond_6

    return-void

    :cond_6
    invoke-virtual {v2}, Lcom/sec/terrace/browser/payments/TerraceGURL;->getSpec()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return-void

    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder$1;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;

    invoke-static {v1, v0, v2}, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->g(Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;Landroid/content/pm/ResolveInfo;Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder$1;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;

    invoke-static {v3, v0, v2}, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->g(Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;Landroid/content/pm/ResolveInfo;Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    :goto_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder$1;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->e(Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentApp;

    if-eqz p0, :cond_a

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentApp;->setIsPreferred(Z)V

    :cond_a
    return-void
.end method
