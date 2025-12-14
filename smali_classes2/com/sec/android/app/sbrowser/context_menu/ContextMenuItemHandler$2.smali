.class Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler$2;
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler$2;->this$0:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler$2;->val$context:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil;->copyBitmapImageToCliboard(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    return-void
.end method
