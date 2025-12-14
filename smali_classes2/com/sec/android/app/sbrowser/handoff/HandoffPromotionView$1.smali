.class Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView;->showPromotionButton(Landroid/app/Activity;Landroid/os/Bundle;Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView$1;->this$0:Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView$1;->this$0:Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView;->a(Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView;)Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f140c39

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "201"

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView$1;->this$0:Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView;->c(Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView$1;->this$0:Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView;->b(Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView;)Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView$Callback;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView$Callback;->onButtonClicked()V

    return-void
.end method
