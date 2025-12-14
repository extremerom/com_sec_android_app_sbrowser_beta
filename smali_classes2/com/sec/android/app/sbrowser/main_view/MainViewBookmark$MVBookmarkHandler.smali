.class Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark$MVBookmarkHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MVBookmarkHandler"
.end annotation


# instance fields
.field private final mMVBookmarkWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark$MVBookmarkHandler;->mMVBookmarkWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark$MVBookmarkHandler;->mMVBookmarkWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;

    if-eqz p0, :cond_0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->n(Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;Landroid/os/Message;)V

    :cond_0
    return-void
.end method
