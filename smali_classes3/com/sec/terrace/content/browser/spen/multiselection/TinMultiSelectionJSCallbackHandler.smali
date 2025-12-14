.class public Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionJSCallbackHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mHandler:Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionJSCallbackHandler;->mHandler:Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;

    return-void
.end method


# virtual methods
.method public onClearSelectionCompleted(Z)V
    .locals 2
    .annotation runtime Lcom/sec/terrace/browser/JavascriptInterface;
    .end annotation

    const-string v0, "onClearSelectionCompleted success : "

    const-string v1, "TinMultiSelectionJSCallbackHandler"

    invoke-static {v0, v1, p1}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionJSCallbackHandler;->mHandler:Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;

    invoke-virtual {p0, p1}, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;->onClearSelectionCompleted(Z)V

    return-void
.end method

.method public performCurrentSelection(II)V
    .locals 3
    .annotation runtime Lcom/sec/terrace/browser/JavascriptInterface;
    .end annotation

    const-string v0, "performCurrentSelection isOverlapping : "

    const-string v1, "selectionId : "

    const-string v2, "TinMultiSelectionJSCallbackHandler"

    invoke-static {p1, p2, v0, v1, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->o(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionJSCallbackHandler;->mHandler:Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;

    invoke-virtual {p0, p1, p2}, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;->onPerformCurrentSelection(II)V

    return-void
.end method

.method public removeFromSelectionList(I)V
    .locals 2
    .annotation runtime Lcom/sec/terrace/browser/JavascriptInterface;
    .end annotation

    const-string v0, "removeFromSelectionList id : "

    const-string v1, "TinMultiSelectionJSCallbackHandler"

    invoke-static {p1, v0, v1}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionJSCallbackHandler;->mHandler:Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;

    invoke-virtual {p0, p1}, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;->onRemoveFromSelectionList(I)V

    return-void
.end method
