.class Lcom/sec/terrace/content/browser/TinContextMenuHelper$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/content/browser/TinContextMenuHelper;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/ContextMenu$ContextMenuInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/terrace/content/browser/TinContextMenuHelper;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/content/browser/TinContextMenuHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/content/browser/TinContextMenuHelper$5;->this$0:Lcom/sec/terrace/content/browser/TinContextMenuHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinContextMenuHelper$5;->this$0:Lcom/sec/terrace/content/browser/TinContextMenuHelper;

    invoke-static {p0, p1}, Lcom/sec/terrace/content/browser/TinContextMenuHelper;->e(Lcom/sec/terrace/content/browser/TinContextMenuHelper;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method
