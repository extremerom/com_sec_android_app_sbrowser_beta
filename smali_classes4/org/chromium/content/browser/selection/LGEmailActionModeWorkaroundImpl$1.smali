.class Lorg/chromium/content/browser/selection/LGEmailActionModeWorkaroundImpl$1;
.super Landroid/view/ActionMode$Callback2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/selection/LGEmailActionModeWorkaroundImpl;->allowActionModeDestroyOnNonUiThread(Landroid/view/ActionMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$c:Landroid/view/ActionMode$Callback2;


# direct methods
.method public constructor <init>(Landroid/view/ActionMode$Callback2;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/selection/LGEmailActionModeWorkaroundImpl$1;->val$c:Landroid/view/ActionMode$Callback2;

    invoke-direct {p0}, Landroid/view/ActionMode$Callback2;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/selection/LGEmailActionModeWorkaroundImpl$1;->val$c:Landroid/view/ActionMode$Callback2;

    invoke-interface {p0, p1, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/selection/LGEmailActionModeWorkaroundImpl$1;->val$c:Landroid/view/ActionMode$Callback2;

    invoke-interface {p0, p1, p2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1

    new-instance v0, Lorg/chromium/content/browser/selection/LGEmailActionModeWorkaroundImpl$1$1;

    invoke-direct {v0, p0, p1}, Lorg/chromium/content/browser/selection/LGEmailActionModeWorkaroundImpl$1$1;-><init>(Lorg/chromium/content/browser/selection/LGEmailActionModeWorkaroundImpl$1;Landroid/view/ActionMode;)V

    const/4 p0, 0x7

    invoke-static {p0, v0}, Lorg/chromium/base/task/PostTask;->postTask(ILjava/lang/Runnable;)V

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/selection/LGEmailActionModeWorkaroundImpl$1;->val$c:Landroid/view/ActionMode$Callback2;

    invoke-interface {p0, p1, p2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p0

    return p0
.end method
