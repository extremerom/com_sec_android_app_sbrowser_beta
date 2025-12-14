.class Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/Terrace$BitmapRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->shareImage(Landroid/content/Context;Lcom/sec/terrace/TerraceContextMenuParams;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$itemId:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;Landroid/content/Context;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler$4;->this$0:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler$4;->val$context:Landroid/content/Context;

    iput p3, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler$4;->val$itemId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedImageBytes([BZLjava/lang/String;Ljava/lang/String;)V
    .locals 8

    if-eqz p1, :cond_1

    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "ContextMenuItemHandler"

    const-string v1, "[shareImage] onReceivedImageBytes"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler$4;->val$context:Landroid/content/Context;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler$4;->this$0:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->d(Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;)I

    move-result v7

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v2 .. v7}, Lcom/sec/android/app/sbrowser/utils/ShareHelper;->shareImage(Landroid/content/Context;[BZLjava/lang/String;Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler$4;->val$context:Landroid/content/Context;

    iget p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler$4;->val$itemId:I

    invoke-static {p1, p0, p2}, Lcom/sec/android/app/sbrowser/context_menu/util/ContextMenuSALogging;->sendEventLogForShareImage(Landroid/content/Context;IZ)V

    :cond_1
    :goto_0
    return-void
.end method
