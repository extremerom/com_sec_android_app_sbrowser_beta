.class Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView$2;->this$0:Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView$2;->this$0:Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView;->c(Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView;)V

    const/4 p0, 0x0

    return p0
.end method
