.class Lcom/sec/terrace/content/browser/TinExtensionHandler$1;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/content/browser/TinExtensionHandler;->createSubmenuPanel()Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/terrace/content/browser/TinExtensionHandler;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/content/browser/TinExtensionHandler;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/content/browser/TinExtensionHandler$1;->this$0:Lcom/sec/terrace/content/browser/TinExtensionHandler;

    invoke-direct {p0, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    iget-object p3, p0, Lcom/sec/terrace/content/browser/TinExtensionHandler$1;->this$0:Lcom/sec/terrace/content/browser/TinExtensionHandler;

    invoke-static {p3}, Lcom/sec/terrace/content/browser/TinExtensionHandler;->b(Lcom/sec/terrace/content/browser/TinExtensionHandler;)Lcom/sec/terrace/content/browser/TinExtensionHandler$SubmenuPanelViewHelper;

    move-result-object p3

    invoke-interface {p0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;

    invoke-virtual {p3, p0, p2}, Lcom/sec/terrace/content/browser/TinExtensionHandler$SubmenuPanelViewHelper;->getView(Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;Landroid/view/View;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method
