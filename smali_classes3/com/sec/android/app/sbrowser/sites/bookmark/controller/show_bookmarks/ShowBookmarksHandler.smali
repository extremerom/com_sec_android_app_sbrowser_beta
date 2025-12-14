.class Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field private final mShowBookmarksWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksHandler;->mShowBookmarksWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksHandler;->mShowBookmarksWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->handleMessage(Landroid/os/Message;)V

    :cond_0
    return-void
.end method
