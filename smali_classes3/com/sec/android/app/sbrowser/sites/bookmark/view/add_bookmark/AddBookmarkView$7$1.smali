.class Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView$7$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView$7;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView$7;

.field final synthetic val$imm:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView$7;Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView$7$1;->this$1:Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView$7;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView$7$1;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView$7$1;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView$7$1;->this$1:Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView$7;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView$7;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView;->f(Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView;)Landroidx/appcompat/widget/AppCompatEditText;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method
