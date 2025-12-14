.class public Lcom/sec/terrace/content/browser/TinActionModeCallback;
.super Lorg/chromium/content_public/browser/ActionModeCallback;
.source "SourceFile"


# instance fields
.field private final mHelper:Lorg/chromium/content_public/browser/ActionModeCallbackHelper;


# direct methods
.method public constructor <init>(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/content_public/browser/ActionModeCallback;-><init>()V

    invoke-static {p1}, Lorg/chromium/content_public/browser/SelectionPopupController;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content_public/browser/SelectionPopupController;

    move-result-object p1

    invoke-interface {p1}, Lorg/chromium/content_public/browser/SelectionPopupController;->getActionModeCallbackHelper()Lorg/chromium/content_public/browser/ActionModeCallbackHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/terrace/content/browser/TinActionModeCallback;->mHelper:Lorg/chromium/content_public/browser/ActionModeCallbackHelper;

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinActionModeCallback;->mHelper:Lorg/chromium/content_public/browser/ActionModeCallbackHelper;

    invoke-virtual {v0}, Lorg/chromium/content_public/browser/ActionModeCallbackHelper;->isActionModeValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinActionModeCallback;->mHelper:Lorg/chromium/content_public/browser/ActionModeCallbackHelper;

    invoke-virtual {p0, p1, p2}, Lorg/chromium/content_public/browser/ActionModeCallbackHelper;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinActionModeCallback;->mHelper:Lorg/chromium/content_public/browser/ActionModeCallbackHelper;

    invoke-virtual {p0, p1, p2}, Lorg/chromium/content_public/browser/ActionModeCallbackHelper;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinActionModeCallback;->mHelper:Lorg/chromium/content_public/browser/ActionModeCallbackHelper;

    invoke-virtual {p0}, Lorg/chromium/content_public/browser/ActionModeCallbackHelper;->onDestroyActionMode()V

    return-void
.end method

.method public onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinActionModeCallback;->mHelper:Lorg/chromium/content_public/browser/ActionModeCallbackHelper;

    invoke-virtual {p0, p1, p2, p3}, Lorg/chromium/content_public/browser/ActionModeCallbackHelper;->onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinActionModeCallback;->mHelper:Lorg/chromium/content_public/browser/ActionModeCallbackHelper;

    invoke-virtual {p0, p1, p2}, Lorg/chromium/content_public/browser/ActionModeCallbackHelper;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p0

    return p0
.end method
