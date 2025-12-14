.class Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView$7;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView$7;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView;->e(Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p1}, Lcom/sec/sbrowser/spl/wrapper/MajoInputMethodManager;->isInputMethodShown(Landroid/view/inputmethod/InputMethodManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView$7;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView;->f(Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView;)Landroidx/appcompat/widget/AppCompatEditText;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView$7$1;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView$7$1;-><init>(Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView$7;Landroid/view/inputmethod/InputMethodManager;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView$7$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView$7$2;-><init>(Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkView$7;)V

    const-wide/16 v1, 0x15e

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
