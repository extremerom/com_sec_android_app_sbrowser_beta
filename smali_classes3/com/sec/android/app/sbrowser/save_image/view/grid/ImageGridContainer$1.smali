.class Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer$1;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheck()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer$1;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->i(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;)Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer$ImageGridEventListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer$1;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->i(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;)Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer$ImageGridEventListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer$ImageGridEventListener;->onItemChecked()V

    return-void
.end method

.method public onDragSelected(Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer$1;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->i(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;)Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer$ImageGridEventListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer$1;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->i(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;)Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer$ImageGridEventListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer$ImageGridEventListener;->onDragSelected(Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;Z)V

    return-void
.end method

.method public onExpand(Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer$1;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->i(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;)Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer$ImageGridEventListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer$1;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->i(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;)Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer$ImageGridEventListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer$ImageGridEventListener;->onItemExpand(Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;)V

    return-void
.end method

.method public onLongClick(Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer$1;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->h(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;)Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridView;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->seslStartLongPressMultiSelection()V

    return-void
.end method

.method public onSelect(Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer$1;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->i(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;)Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer$ImageGridEventListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer$1;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->i(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;)Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer$ImageGridEventListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer$ImageGridEventListener;->onItemSelected(Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;)V

    return-void
.end method
