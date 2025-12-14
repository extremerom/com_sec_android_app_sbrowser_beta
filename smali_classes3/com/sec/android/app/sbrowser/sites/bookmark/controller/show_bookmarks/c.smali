.class public final synthetic Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/c;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/c;->b:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/c;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/c;->b:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->d(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;)V

    return-void

    :pswitch_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->b(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;)V

    return-void

    :pswitch_1
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->a(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
