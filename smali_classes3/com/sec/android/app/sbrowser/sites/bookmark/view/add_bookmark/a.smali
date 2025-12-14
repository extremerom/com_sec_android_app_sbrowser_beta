.class public final synthetic Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/window/OnBackInvokedCallback;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/a;->a:Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkActivity;

    return-void
.end method


# virtual methods
.method public final onBackInvoked()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/a;->a:Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkActivity;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/add_bookmark/AddBookmarkActivity;->onBackPressed()V

    return-void
.end method
