.class Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler$1;
.super Lorg/chromium/content_public/browser/WebContentsObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;->createWebContentsObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;Lorg/chromium/content_public/browser/WebContents;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler$1;->this$0:Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;

    invoke-direct {p0, p2}, Lorg/chromium/content_public/browser/WebContentsObserver;-><init>(Lorg/chromium/content_public/browser/WebContents;)V

    return-void
.end method


# virtual methods
.method public didFinishNavigationInPrimaryMainFrame(Lorg/chromium/content_public/browser/NavigationHandle;)V
    .locals 4

    iget-object p1, p0, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler$1;->this$0:Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;->clearMultiSelection(Z)V

    iget-object p1, p0, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler$1;->this$0:Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;

    invoke-static {p1}, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;->c(Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandlerJni;->get()Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler$Natives;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler$1;->this$0:Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;

    invoke-static {v0}, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;->c(Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;)J

    move-result-wide v0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler$1;->this$0:Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;

    invoke-interface {p1, v0, v1, p0}, Lcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler$Natives;->resetJavascriptInjectedFlag(JLcom/sec/terrace/content/browser/spen/multiselection/TinMultiSelectionHandler;)V

    :cond_0
    return-void
.end method
