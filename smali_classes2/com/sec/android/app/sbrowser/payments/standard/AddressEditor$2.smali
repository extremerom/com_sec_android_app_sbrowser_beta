.class Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;->edit(Lcom/sec/android/app/sbrowser/payments/standard/AutofillAddress;Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sec/android/app/sbrowser/payments/standard/common/Callback<",
        "Landroid/util/Pair<",
        "Ljava/lang/String;",
        "Ljava/lang/Runnable;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;

.field final synthetic val$editor:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorModel;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor$2;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor$2;->val$editor:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Landroid/util/Pair;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor$2;->val$editor:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorModel;->removeAllFields()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor$2;->val$editor:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorModel;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor$2;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;->d(Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;)Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorModel;->addField(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor$2;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor$2;->val$editor:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorModel;

    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;->g(Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorModel;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor$2;->val$editor:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorModel;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor$2;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;->f(Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;)Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorModel;->addField(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor$2;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;->e(Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;)Landroid/os/Handler;

    move-result-object p0

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor$2;->onResult(Landroid/util/Pair;)V

    return-void
.end method
