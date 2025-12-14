.class Lcom/sec/android/app/sbrowser/promotion/PromotionController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/promotion/executor/IPromotionExecutor$PromotionResultInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/promotion/PromotionController;->getResultInterface()Lcom/sec/android/app/sbrowser/promotion/executor/IPromotionExecutor$PromotionResultInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/promotion/PromotionController;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/promotion/PromotionController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/promotion/PromotionController$1;->this$0:Lcom/sec/android/app/sbrowser/promotion/PromotionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNegative(Lcom/sec/android/app/sbrowser/promotion/executor/IPromotionExecutor;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/promotion/PromotionController$1;->this$0:Lcom/sec/android/app/sbrowser/promotion/PromotionController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/promotion/PromotionController;->getModel()Lcom/sec/android/app/sbrowser/promotion/model/PromotionModel;

    move-result-object v0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/promotion/executor/IPromotionExecutor;->getCategory()Lcom/sec/android/app/sbrowser/promotion/model/Category;

    move-result-object v1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/promotion/executor/IPromotionExecutor;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/sbrowser/promotion/model/UserAction;->NEGATIVE:Lcom/sec/android/app/sbrowser/promotion/model/UserAction;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/promotion/model/PromotionModel;->updatePromotionResult(Lcom/sec/android/app/sbrowser/promotion/model/Category;Ljava/lang/String;Lcom/sec/android/app/sbrowser/promotion/model/UserAction;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/promotion/PromotionController$1;->this$0:Lcom/sec/android/app/sbrowser/promotion/PromotionController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/promotion/PromotionController;->c(Lcom/sec/android/app/sbrowser/promotion/PromotionController;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onNeutral(Lcom/sec/android/app/sbrowser/promotion/executor/IPromotionExecutor;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/promotion/PromotionController$1;->this$0:Lcom/sec/android/app/sbrowser/promotion/PromotionController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/promotion/PromotionController;->getModel()Lcom/sec/android/app/sbrowser/promotion/model/PromotionModel;

    move-result-object v0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/promotion/executor/IPromotionExecutor;->getCategory()Lcom/sec/android/app/sbrowser/promotion/model/Category;

    move-result-object v1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/promotion/executor/IPromotionExecutor;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/sbrowser/promotion/model/UserAction;->NEUTRAL:Lcom/sec/android/app/sbrowser/promotion/model/UserAction;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/promotion/model/PromotionModel;->updatePromotionResult(Lcom/sec/android/app/sbrowser/promotion/model/Category;Ljava/lang/String;Lcom/sec/android/app/sbrowser/promotion/model/UserAction;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/promotion/PromotionController$1;->this$0:Lcom/sec/android/app/sbrowser/promotion/PromotionController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/promotion/PromotionController;->c(Lcom/sec/android/app/sbrowser/promotion/PromotionController;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onPositive(Lcom/sec/android/app/sbrowser/promotion/executor/IPromotionExecutor;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/promotion/PromotionController$1;->this$0:Lcom/sec/android/app/sbrowser/promotion/PromotionController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/promotion/PromotionController;->getModel()Lcom/sec/android/app/sbrowser/promotion/model/PromotionModel;

    move-result-object v0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/promotion/executor/IPromotionExecutor;->getCategory()Lcom/sec/android/app/sbrowser/promotion/model/Category;

    move-result-object v1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/promotion/executor/IPromotionExecutor;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/sbrowser/promotion/model/UserAction;->POSITIVE:Lcom/sec/android/app/sbrowser/promotion/model/UserAction;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/promotion/model/PromotionModel;->updatePromotionResult(Lcom/sec/android/app/sbrowser/promotion/model/Category;Ljava/lang/String;Lcom/sec/android/app/sbrowser/promotion/model/UserAction;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/promotion/PromotionController$1;->this$0:Lcom/sec/android/app/sbrowser/promotion/PromotionController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/promotion/PromotionController;->c(Lcom/sec/android/app/sbrowser/promotion/PromotionController;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
