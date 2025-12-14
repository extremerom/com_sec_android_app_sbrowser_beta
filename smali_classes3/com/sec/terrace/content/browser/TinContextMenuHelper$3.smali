.class Lcom/sec/terrace/content/browser/TinContextMenuHelper$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


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


# direct methods
.method public constructor <init>(Lcom/sec/terrace/content/browser/TinContextMenuHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/content/browser/TinContextMenuHelper$3;->this$0:Lcom/sec/terrace/content/browser/TinContextMenuHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinContextMenuHelper$3;->this$0:Lcom/sec/terrace/content/browser/TinContextMenuHelper;

    invoke-static {p0, p1, p3}, Lcom/sec/terrace/content/browser/TinContextMenuHelper;->d(Lcom/sec/terrace/content/browser/TinContextMenuHelper;Landroid/view/ContextMenu;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method
