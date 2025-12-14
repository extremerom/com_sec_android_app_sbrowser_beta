.class Lcom/sec/terrace/content/browser/TinContextMenuHelper$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/ui/base/WindowAndroid$OnCloseContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/content/browser/TinContextMenuHelper;->showContextMenu(Lcom/sec/terrace/content/browser/TinContentView;Lcom/sec/terrace/TerraceContextMenuParams;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/terrace/content/browser/TinContextMenuHelper;

.field final synthetic val$windowAndroid:Lorg/chromium/ui/base/WindowAndroid;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/content/browser/TinContextMenuHelper;Lorg/chromium/ui/base/WindowAndroid;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/terrace/content/browser/TinContextMenuHelper$4;->this$0:Lcom/sec/terrace/content/browser/TinContextMenuHelper;

    iput-object p2, p0, Lcom/sec/terrace/content/browser/TinContextMenuHelper$4;->val$windowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContextMenuClosed()V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinContextMenuHelper$4;->this$0:Lcom/sec/terrace/content/browser/TinContextMenuHelper;

    invoke-static {v0}, Lcom/sec/terrace/content/browser/TinContextMenuHelper;->b(Lcom/sec/terrace/content/browser/TinContextMenuHelper;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinContextMenuHelper$4;->val$windowAndroid:Lorg/chromium/ui/base/WindowAndroid;

    invoke-virtual {v0, p0}, Lorg/chromium/ui/base/WindowAndroid;->removeContextMenuCloseListener(Lorg/chromium/ui/base/WindowAndroid$OnCloseContextMenuListener;)V

    return-void
.end method
