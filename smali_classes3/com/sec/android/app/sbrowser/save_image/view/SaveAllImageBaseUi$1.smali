.class Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer$ImageGridEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi$1;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDragSelected(Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi$1;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->f(Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;Z)V

    return-void
.end method

.method public onItemChecked()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi$1;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->g(Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;Z)V

    return-void
.end method

.method public onItemExpand(Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi$1;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->h(Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;)V

    return-void
.end method

.method public onItemSelected(Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi$1;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->i(Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;)V

    return-void
.end method

.method public onSaveButtonClicked()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi$1;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->j(Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;)V

    return-void
.end method
