.class public final synthetic Lcom/sec/android/app/sbrowser/bookmark_bar/controller/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnDragListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;

.field public final synthetic c:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarModel;

.field public final synthetic d:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarModel;Landroid/app/Activity;I)V
    .locals 0

    iput p4, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/a;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/a;->b:Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/a;->c:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarModel;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/a;->d:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/a;->d:Landroid/app/Activity;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/a;->b:Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/a;->c:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarModel;

    invoke-static {v1, p0, v0, p1, p2}, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->a(Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarModel;Landroid/app/Activity;Landroid/view/View;Landroid/view/DragEvent;)Z

    move-result p0

    return p0

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/a;->d:Landroid/app/Activity;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/a;->b:Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/a;->c:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarModel;

    invoke-static {v1, p0, v0, p1, p2}, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->b(Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarModel;Landroid/app/Activity;Landroid/view/View;Landroid/view/DragEvent;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
