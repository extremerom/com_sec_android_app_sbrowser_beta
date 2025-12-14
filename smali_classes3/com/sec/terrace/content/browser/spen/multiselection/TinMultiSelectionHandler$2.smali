.class Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler$2;
.super Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;->getController()Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler$2;->this$0:Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionController;-><init>()V

    return-void
.end method


# virtual methods
.method public getLastSelectedText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler$2;->this$0:Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;

    invoke-static {p0}, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;->d(Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
