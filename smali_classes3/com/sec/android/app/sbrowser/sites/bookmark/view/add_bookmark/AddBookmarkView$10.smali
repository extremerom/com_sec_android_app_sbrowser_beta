.class Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView$10;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const-string p1, "303"

    const-string p2, "3053"

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView$10;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView;->t(Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView$10;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView;->g(Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView;)Landroidx/appcompat/widget/AppCompatEditText;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView$10;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView;->f(Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView;)Landroidx/appcompat/widget/AppCompatEditText;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView$10;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView;->h(Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView;)Lcom/sec/android/app/sbrowser/sites/bookmark/model/add_bookmark/AddBookmarkViewListener;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView$10;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView;->z(Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView;)V

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView$10;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView;->A(Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView;)V

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView$10;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView;->h(Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView;)Lcom/sec/android/app/sbrowser/sites/bookmark/model/add_bookmark/AddBookmarkViewListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/add_bookmark/AddBookmarkViewListener;->doneButtonSelected(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
