.class Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/Terrace$BitmapRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->copyImage(Landroid/content/Context;Lcom/sec/terrace/TerraceContextMenuParams;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler$1;->this$0:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedImageBytes([BZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_1

    array-length p4, p1

    if-gtz p4, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler$1;->val$context:Landroid/content/Context;

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil;->copyImageToCliboard(Landroid/content/Context;[BZLjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
