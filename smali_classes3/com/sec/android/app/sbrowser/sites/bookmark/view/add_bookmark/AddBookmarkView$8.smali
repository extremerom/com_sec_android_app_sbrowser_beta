.class Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView;->registerForEvents()V
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView$8;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView$8;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView;->i(Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView$8;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView;->k(Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView$8;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView;->e(Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView;)Landroid/app/Activity;

    move-result-object p1

    const-string p2, "input_method"

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView$8;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView;->f(Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView;)Landroidx/appcompat/widget/AppCompatEditText;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView$8;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView;->v(Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView;)V

    :cond_0
    return-void
.end method
