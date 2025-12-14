.class Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt/w0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;->setOnMenuItemClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu$1;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu$1;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;->c(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;)Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarMenuListener;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "BookmarkBarPopupMenu"

    const-string p1, "onMenuItemClick : mListener is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    return v1

    :pswitch_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu$1;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;->c(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;)Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarMenuListener;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu$1;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;->a(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;)J

    move-result-wide v1

    invoke-interface {p1, v1, v2}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarMenuListener;->onRename(J)V

    return v0

    :pswitch_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu$1;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;->c(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;)Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarMenuListener;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu$1;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;->a(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;)J

    move-result-wide v1

    invoke-interface {p1, v1, v2}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarMenuListener;->onMove(J)V

    return v0

    :pswitch_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu$1;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;->c(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;)Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarMenuListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarMenuListener;->onEditBookmarkBar()V

    return v0

    :pswitch_4
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu$1;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;->c(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;)Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarMenuListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarMenuListener;->onCreateFolder()V

    return v0

    :pswitch_5
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu$1;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;->c(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;)Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarMenuListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarMenuListener;->onAddToBookmarkBar()V

    return v0

    :pswitch_6
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu$1;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;->c(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;)Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarMenuListener;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu$1;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;->d(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarMenuListener;->onOpenInSecretMode(Ljava/lang/String;)V

    return v0

    :pswitch_7
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu$1;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;->c(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;)Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarMenuListener;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu$1;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;->d(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarMenuListener;->onOpenInOtherWindow(Ljava/lang/String;)V

    return v0

    :pswitch_8
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu$1;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;->c(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;)Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarMenuListener;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu$1;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;->d(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarMenuListener;->onOpenInNewWindow(Ljava/lang/String;)V

    return v0

    :pswitch_9
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu$1;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;->c(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;)Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarMenuListener;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu$1;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;->d(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarMenuListener;->onOpenInNewTab(Ljava/lang/String;)V

    return v0

    :pswitch_a
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu$1;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;->c(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;)Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarMenuListener;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu$1;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;->a(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;)J

    move-result-wide v1

    invoke-interface {p1, v1, v2}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarMenuListener;->onEditBookmark(J)V

    return v0

    :pswitch_b
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu$1;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;->c(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;)Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarMenuListener;

    move-result-object p1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu$1;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;->a(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;)J

    move-result-wide v1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu$1;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;->b(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;)Z

    move-result p0

    invoke-interface {p1, v1, v2, p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarMenuListener;->onDelete(JZ)V

    return v0

    :pswitch_c
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu$1;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;->c(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;)Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarMenuListener;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu$1;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;->d(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarPopupMenu;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarMenuListener;->onCopyLink(Ljava/lang/String;)V

    return v0

    :pswitch_data_0
    .packed-switch 0x7f0b0195
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_b
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
