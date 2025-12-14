.class Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuExtractTextHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/extract_text/LiveTextController$TextDetectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuExtractTextHelper;->createDetectTextListener(Landroid/content/Context;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuExtractTextHelper;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuExtractTextHelper;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuExtractTextHelper$1;->this$0:Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuExtractTextHelper;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuExtractTextHelper$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTextDetectionResultReceived(Z)V
    .locals 3

    const-string v0, "LiveText onTextDetectionResultReceived = "

    const-string v1, "ContextMenuExtractTextHelper"

    invoke-static {v0, v1, p1}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuExtractTextHelper$1;->this$0:Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuExtractTextHelper;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuExtractTextHelper;->b(Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuExtractTextHelper;Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuExtractTextHelper$1;->this$0:Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuExtractTextHelper;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuExtractTextHelper;->a(Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuExtractTextHelper;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "LiveText onTextDetectionResultReceived startExtractText again"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuExtractTextHelper$1;->this$0:Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuExtractTextHelper;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuExtractTextHelper$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuExtractTextHelper;->startExtractText(Landroid/content/Context;)Z

    :cond_0
    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuExtractTextHelper$1;->val$context:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/context_menu/util/ContextMenuSALogging;->sendEventLogForShowExtractText(Landroid/content/Context;)V

    :cond_1
    return-void
.end method
