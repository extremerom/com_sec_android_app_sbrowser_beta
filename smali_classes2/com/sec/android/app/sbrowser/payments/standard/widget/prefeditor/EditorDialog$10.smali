.class Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->show(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;

.field final synthetic val$invalidViews:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog$10;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog$10;->val$invalidViews:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog$10;->val$invalidViews:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldView;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldView;->scrollToAndFocus()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->o()Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorObserverForTest;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->o()Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorObserverForTest;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorObserverForTest;->onEditorReadyToEdit()V

    :cond_0
    return-void
.end method
