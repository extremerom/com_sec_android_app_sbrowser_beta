.class Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeDetectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->createDetectBarcodeListener(Lcom/sec/terrace/context_menu/TerraceContextMenuCallback;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Landroid/app/Activity;Landroid/view/View;FFLcom/sec/terrace/TerraceContextMenuParams;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$callback:Lcom/sec/terrace/context_menu/TerraceContextMenuCallback;

.field final synthetic val$onMenuClosed:Ljava/lang/Runnable;

.field final synthetic val$originalView:Landroid/view/View;

.field final synthetic val$params:Lcom/sec/terrace/TerraceContextMenuParams;

.field final synthetic val$x:F

.field final synthetic val$y:F


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;Lcom/sec/terrace/context_menu/TerraceContextMenuCallback;Landroid/app/Activity;Landroid/view/View;FFLcom/sec/terrace/TerraceContextMenuParams;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator$2;->this$0:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator$2;->val$callback:Lcom/sec/terrace/context_menu/TerraceContextMenuCallback;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator$2;->val$activity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator$2;->val$originalView:Landroid/view/View;

    iput p5, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator$2;->val$x:F

    iput p6, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator$2;->val$y:F

    iput-object p7, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator$2;->val$params:Lcom/sec/terrace/TerraceContextMenuParams;

    iput-object p8, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator$2;->val$onMenuClosed:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBarcodeDetected(Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeType;)V
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator$2;->this$0:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->b(Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f0b0314

    const/4 v4, 0x1

    if-ne v2, v3, :cond_1

    sget-object v2, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeType;->ESIM:Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeType;

    if-ne p1, v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator$2;->this$0:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mMenuItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f0b0327

    if-ne v2, v3, :cond_0

    sget-object v2, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeType;->BOARDINGPASS:Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeType;

    if-ne p1, v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator$2;->this$0:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mMenuItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator$2;->val$callback:Lcom/sec/terrace/context_menu/TerraceContextMenuCallback;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator$2;->this$0:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator$2;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator$2;->val$originalView:Landroid/view/View;

    iget v3, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator$2;->val$x:F

    iget v4, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator$2;->val$y:F

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator$2;->val$params:Lcom/sec/terrace/TerraceContextMenuParams;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator$2;->val$onMenuClosed:Ljava/lang/Runnable;

    invoke-static/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->e(Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;Landroid/app/Activity;Landroid/view/View;FFLcom/sec/terrace/TerraceContextMenuParams;Ljava/lang/Runnable;)Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/sec/terrace/context_menu/TerraceContextMenuCallback;->onContextMenuShown(Z)V

    return-void
.end method
