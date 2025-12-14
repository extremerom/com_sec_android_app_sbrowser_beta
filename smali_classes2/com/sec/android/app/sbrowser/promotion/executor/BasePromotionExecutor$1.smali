.class Lcom/sec/android/app/sbrowser/promotion/executor/BasePromotionExecutor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/promotion/executor/IFeedbackInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/promotion/executor/BasePromotionExecutor;->callFeedback(Lcom/sec/android/app/sbrowser/promotion/executor/IFeedbackInterface$Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/promotion/executor/BasePromotionExecutor;

.field final synthetic val$result:Lcom/sec/android/app/sbrowser/promotion/executor/IFeedbackInterface$Result;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/promotion/executor/BasePromotionExecutor;Lcom/sec/android/app/sbrowser/promotion/executor/IFeedbackInterface$Result;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/promotion/executor/BasePromotionExecutor$1;->this$0:Lcom/sec/android/app/sbrowser/promotion/executor/BasePromotionExecutor;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/promotion/executor/BasePromotionExecutor$1;->val$result:Lcom/sec/android/app/sbrowser/promotion/executor/IFeedbackInterface$Result;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResult()Lcom/sec/android/app/sbrowser/promotion/executor/IFeedbackInterface$Result;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/promotion/executor/BasePromotionExecutor$1;->val$result:Lcom/sec/android/app/sbrowser/promotion/executor/IFeedbackInterface$Result;

    return-object p0
.end method
