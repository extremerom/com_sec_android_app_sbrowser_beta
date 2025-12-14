.class Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/listener/context_menu/ContextMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->showContextMenu(Landroid/app/Activity;Landroid/view/View;FFLcom/sec/terrace/TerraceContextMenuParams;Ljava/lang/Runnable;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;

.field final synthetic val$params:Lcom/sec/terrace/TerraceContextMenuParams;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;Lcom/sec/terrace/TerraceContextMenuParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator$1;->this$0:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator$1;->val$params:Lcom/sec/terrace/TerraceContextMenuParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/MenuItem;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[showContextMenu] onItemClick: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContextMenuPopulator"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator$1;->this$0:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->c(Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;)Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->setGridAreaDirection(I)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result p2

    const v0, 0x7f0b034a

    if-ne p2, v0, :cond_1

    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p0, "[showContextMenu] onItemClick: actionView is null"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator$1;->this$0:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->d(Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;)V

    return-void

    :cond_1
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator$1;->this$0:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator$1;->val$params:Lcom/sec/terrace/TerraceContextMenuParams;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    invoke-virtual {p2, p0, p1}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->onItemSelected(Lcom/sec/terrace/TerraceContextMenuParams;I)Z

    return-void
.end method

.method public onReadyToClipSubject()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator$1;->this$0:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->c(Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;)Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->onReadyToClipSubject()V

    return-void
.end method

.method public onReadyToDetectBarcode()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator$1;->this$0:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->c(Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;)Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->onReadyToDetectBarcode()V

    return-void
.end method

.method public onReadyToExtractText()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator$1;->this$0:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->c(Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;)Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->onReadyToExtractText()V

    return-void
.end method
