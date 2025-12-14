.class Lcom/sec/terrace/browser/extensions/BottomSheetFragment$3;
.super Lh6/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/browser/extensions/BottomSheetFragment;->setBehaviorCallback()V
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

    iput-object p1, p0, Lcom/sec/terrace/browser/extensions/BottomSheetFragment$3;->this$0:Lcom/sec/terrace/browser/extensions/BottomSheetFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSlide(Landroid/view/View;F)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onStateChanged(Landroid/view/View;I)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Lcom/sec/terrace/browser/extensions/BottomSheetFragment$3;->this$0:Lcom/sec/terrace/browser/extensions/BottomSheetFragment;

    invoke-static {p1}, Lcom/sec/terrace/browser/extensions/BottomSheetFragment;->b(Lcom/sec/terrace/browser/extensions/BottomSheetFragment;)Lcom/sec/terrace/browser/extensions/BottomSheetFragment$ViewStateChangeListener;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/BottomSheetFragment$3;->this$0:Lcom/sec/terrace/browser/extensions/BottomSheetFragment;

    invoke-static {p0}, Lcom/sec/terrace/browser/extensions/BottomSheetFragment;->b(Lcom/sec/terrace/browser/extensions/BottomSheetFragment;)Lcom/sec/terrace/browser/extensions/BottomSheetFragment$ViewStateChangeListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/terrace/browser/extensions/BottomSheetFragment$ViewStateChangeListener;->onExpanded()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x4

    if-ne p2, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x5

    if-ne p2, p1, :cond_3

    iget-object p1, p0, Lcom/sec/terrace/browser/extensions/BottomSheetFragment$3;->this$0:Lcom/sec/terrace/browser/extensions/BottomSheetFragment;

    invoke-static {p1}, Lcom/sec/terrace/browser/extensions/BottomSheetFragment;->b(Lcom/sec/terrace/browser/extensions/BottomSheetFragment;)Lcom/sec/terrace/browser/extensions/BottomSheetFragment$ViewStateChangeListener;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/BottomSheetFragment$3;->this$0:Lcom/sec/terrace/browser/extensions/BottomSheetFragment;

    invoke-static {p0}, Lcom/sec/terrace/browser/extensions/BottomSheetFragment;->b(Lcom/sec/terrace/browser/extensions/BottomSheetFragment;)Lcom/sec/terrace/browser/extensions/BottomSheetFragment$ViewStateChangeListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/terrace/browser/extensions/BottomSheetFragment$ViewStateChangeListener;->onHide()V

    :cond_3
    :goto_0
    return-void
.end method
