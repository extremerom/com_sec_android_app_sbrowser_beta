.class public final synthetic Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/o;->a:I

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/o;->c:Ljava/lang/Object;

    iput p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/o;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/o;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/o;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksViewAdapter;

    iget p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/o;->b:I

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksViewAdapter;->h(Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksViewAdapter;I)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/o;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksViewHelper$3;

    iget p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/o;->b:I

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksViewHelper$3;->a(Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksViewHelper$3;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
