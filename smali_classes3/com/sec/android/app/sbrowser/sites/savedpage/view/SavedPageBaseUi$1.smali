.class Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$1;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$1;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->isSavedPageListEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$1;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->access$000(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$1;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->access$100(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    if-ltz v0, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$1;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->p(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;)Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;->getSavedPageItemList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$1;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->o(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;)Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->getItem(I)Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;

    move-result-object v0

    const v2, 0x7f0b0311

    invoke-virtual {p1, v2, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$1;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->access$200(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->showContextMenu(Landroid/view/View;FF)Z

    nop

    :cond_3
    :goto_0
    return v1
.end method
