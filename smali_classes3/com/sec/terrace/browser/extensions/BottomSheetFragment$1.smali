.class Lcom/sec/terrace/browser/extensions/BottomSheetFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/browser/extensions/BottomSheetFragment;-><init>(Landroid/content/Context;Landroid/widget/FrameLayout;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/terrace/browser/extensions/BottomSheetFragment;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/extensions/BottomSheetFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/extensions/BottomSheetFragment$1;->this$0:Lcom/sec/terrace/browser/extensions/BottomSheetFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/BottomSheetFragment$1;->this$0:Lcom/sec/terrace/browser/extensions/BottomSheetFragment;

    invoke-static {p0}, Lcom/sec/terrace/browser/extensions/BottomSheetFragment;->a(Lcom/sec/terrace/browser/extensions/BottomSheetFragment;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->K:Z

    return p1
.end method
