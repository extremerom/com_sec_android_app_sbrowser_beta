.class Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/Terrace$BitmapRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->startImageToolkit(Landroid/content/Context;Lcom/sec/terrace/TerraceContextMenuParams;IFF)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$x:F

.field final synthetic val$y:F


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;Landroid/content/Context;FF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler$3;->this$0:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler$3;->val$context:Landroid/content/Context;

    iput p3, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler$3;->val$x:F

    iput p4, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler$3;->val$y:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedImageBytes([BZLjava/lang/String;Ljava/lang/String;)V
    .locals 10

    if-eqz p1, :cond_1

    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "ContextMenuItemHandler"

    const-string v1, "[startImageToolkit] onReceivedImageBytes"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler$3;->this$0:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->e(Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;)Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuImageToolkitHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler$3;->val$context:Landroid/content/Context;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler$3;->this$0:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->d(Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;)I

    move-result v7

    iget v8, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler$3;->val$x:F

    iget v9, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler$3;->val$y:F

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v9}, Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuImageToolkitHelper;->startImageToolkit(Landroid/content/Context;[BZLjava/lang/String;Ljava/lang/String;IFF)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler$3;->val$context:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/context_menu/util/ContextMenuSALogging;->sendEventLogForSelectDrawingAssist(Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-void
.end method
