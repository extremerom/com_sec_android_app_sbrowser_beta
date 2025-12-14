.class Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl$2;
.super Lcom/sec/terrace/content/browser/TinExtensionHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->initExtensionHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl$2;->this$0:Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;

    invoke-direct {p0, p2, p3}, Lcom/sec/terrace/content/browser/TinExtensionHandler;-><init>(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public destroyActionModeAndKeepSelection()V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl$2;->this$0:Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;

    invoke-virtual {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->destroyActionModeAndKeepSelection()V

    return-void
.end method

.method public getCurrentVisibleViewRect()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl$2;->this$0:Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;

    invoke-static {p0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->m(Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;)Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl$TinSelectionDelegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl$TinSelectionDelegate;->getCurrentVisibleViewRect()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getSelectionRect()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl$2;->this$0:Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;->getSelectionRectRelativeToContainingView()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method
