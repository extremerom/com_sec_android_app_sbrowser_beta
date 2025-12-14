.class public final synthetic Lcom/sec/android/app/sbrowser/bookmark_bar/view/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton$3;

.field public final synthetic c:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton$3;Landroid/view/View;I)V
    .locals 0

    iput p3, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/d;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/d;->b:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton$3;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/d;->c:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/d;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/d;->b:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton$3;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/d;->c:Landroid/view/View;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton$3;->b(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton$3;Landroid/view/View;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/d;->b:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton$3;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/d;->c:Landroid/view/View;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton$3;->a(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton$3;Landroid/view/View;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
