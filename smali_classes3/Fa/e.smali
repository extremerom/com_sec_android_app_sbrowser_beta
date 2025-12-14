.class public final synthetic LFa/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LFa/e;->a:I

    iput-object p2, p0, LFa/e;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    iget v0, p0, LFa/e;->a:I

    iget-object p0, p0, LFa/e;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/DeleteSearchEngineListViewHolder;

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/DeleteSearchEngineListViewHolder;->a(Lcom/sec/android/app/sbrowser/settings/add_search_engine/controller/DeleteSearchEngineListViewHolder;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :pswitch_0
    check-cast p0, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->a(Lcom/sec/android/app/sbrowser/search_widget/SearchBar;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :pswitch_1
    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessIconViewHolder;

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessIconViewHolder;->f(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessIconViewHolder;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :pswitch_2
    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessAddItemViewHolder;

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessAddItemViewHolder;->d(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessAddItemViewHolder;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :pswitch_3
    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsMostVisitedIconViewHolder;

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsMostVisitedIconViewHolder;->g(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsMostVisitedIconViewHolder;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :pswitch_4
    check-cast p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->d(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :pswitch_5
    check-cast p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->z(Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :pswitch_6
    check-cast p0, Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper;

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper;->e(Lcom/sec/android/app/sbrowser/appshortcut/ShortcutHelper;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :pswitch_7
    check-cast p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->e(Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
