.class public final synthetic Lcom/sec/android/app/sbrowser/main_activity/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/main_activity/a;->a:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_activity/a;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/main_activity/a;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/main_activity/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_activity/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomHandler;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_activity/a;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomHandler;->a(Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomHandler;Ljava/lang/String;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_activity/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/smp/SmpController;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_activity/a;->c:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/smp/SmpController$InitializeResultCallback;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/smp/SmpController;->b(Lcom/sec/android/app/sbrowser/smp/SmpController;Lcom/sec/android/app/sbrowser/smp/SmpController$InitializeResultCallback;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_activity/a;->c:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_activity/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/smart_protect/BlockUnwantedWebpages;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/smart_protect/BlockUnwantedWebpages;->a(Lcom/sec/android/app/sbrowser/smart_protect/BlockUnwantedWebpages;[Ljava/lang/String;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_activity/a;->c:Ljava/lang/Object;

    check-cast v0, LH6/o;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_activity/a;->b:Ljava/lang/Object;

    check-cast p0, Landroid/app/Activity;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkUtil;->a(Landroid/app/Activity;LH6/o;)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_activity/a;->b:Ljava/lang/Object;

    check-cast v0, Landroid/app/Activity;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_activity/a;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModificationUtil;->b(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_activity/a;->b:Ljava/lang/Object;

    check-cast v0, Landroid/app/Activity;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_activity/a;->c:Ljava/lang/Object;

    check-cast p0, Landroid/net/Uri;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelHelper;->a(Landroid/app/Activity;Landroid/net/Uri;)V

    return-void

    :pswitch_5
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_activity/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_activity/a;->c:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->e(Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V

    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_activity/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_activity/a;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->b(Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;Ljava/lang/Long;)V

    return-void

    :pswitch_7
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_activity/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_activity/a;->c:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;->j(Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;Landroid/content/Context;)V

    return-void

    :pswitch_8
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_activity/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/sites/SitesActivity;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_activity/a;->c:Ljava/lang/Object;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->g(Lcom/sec/android/app/sbrowser/sites/SitesActivity;Ljava/lang/Object;)V

    return-void

    :pswitch_9
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_activity/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_activity/a;->c:Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->j(Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;Landroid/view/View;)V

    return-void

    :pswitch_a
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_activity/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUiHelper;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_activity/a;->c:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUiHelper;->e(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUiHelper;Landroidx/recyclerview/widget/RecyclerView;)V

    return-void

    :pswitch_b
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_activity/a;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_activity/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;->l(Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchBaseUi;Ljava/lang/String;)V

    return-void

    :pswitch_c
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_activity/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_activity/a;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->j(Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;Ljava/lang/String;)V

    return-void

    :pswitch_d
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_activity/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/search_window/ui/NewSearchWindowDialogImpl;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_activity/a;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/search_window/ui/NewSearchWindowDialogImpl;->n(Lcom/sec/android/app/sbrowser/search_window/ui/NewSearchWindowDialogImpl;Ljava/lang/String;)V

    return-void

    :pswitch_e
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_activity/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_activity/a;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->b(Lcom/sec/android/app/sbrowser/search_widget/SearchBar;Ljava/lang/String;)V

    return-void

    :pswitch_f
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_activity/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/save_image/model/ThumbnailTask;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_activity/a;->c:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Bitmap;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/save_image/model/ThumbnailTask;->a(Lcom/sec/android/app/sbrowser/save_image/model/ThumbnailTask;Landroid/graphics/Bitmap;)V

    return-void

    :pswitch_10
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_activity/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/save_image/model/ImageLoadTask;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_activity/a;->c:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Bitmap;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/save_image/model/ImageLoadTask;->a(Lcom/sec/android/app/sbrowser/save_image/model/ImageLoadTask;Landroid/graphics/Bitmap;)V

    return-void

    :pswitch_11
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_activity/a;->b:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_activity/a;->c:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedTabMainViewHolder;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedTabMainViewHolder;->a(Landroid/view/View;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedTabMainViewHolder;)V

    return-void

    :pswitch_12
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_activity/a;->c:Ljava/lang/Object;

    check-cast v0, Landroid/view/ViewGroup$LayoutParams;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_activity/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebFragment;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebFragment;->m(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebFragment;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :pswitch_13
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_activity/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/promotion/model/DataLoader;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_activity/a;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/promotion/model/DataLoader;->a(Lcom/sec/android/app/sbrowser/promotion/model/DataLoader;Ljava/lang/String;)V

    return-void

    :pswitch_14
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_activity/a;->b:Ljava/lang/Object;

    check-cast v0, Landroid/app/Activity;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_activity/a;->c:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->f(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;)V

    return-void

    :pswitch_15
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_activity/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentApp;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_activity/a;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentApp;->e(Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentApp;Ljava/lang/String;)V

    return-void

    :pswitch_16
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_activity/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_activity/a;->c:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation;->c(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    return-void

    :pswitch_17
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_activity/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_activity/a;->c:Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->H(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;Landroid/view/View;)V

    return-void

    :pswitch_18
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_activity/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_activity/a;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->b(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;Ljava/lang/Runnable;)V

    return-void

    :pswitch_19
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_activity/a;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_activity/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->l(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;Ljava/lang/String;)V

    return-void

    :pswitch_1a
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_activity/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_activity/a;->c:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;->b(Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;Landroid/content/Context;)V

    return-void

    :pswitch_1b
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_activity/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/media/MediaHandler;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_activity/a;->c:Ljava/lang/Object;

    check-cast p0, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/media/MediaHandler;->g(Lcom/sec/android/app/sbrowser/media/MediaHandler;Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;)V

    return-void

    :pswitch_1c
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_activity/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_activity/a;->c:Ljava/lang/Object;

    check-cast p0, Landroid/view/ViewGroup;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;->b(Lcom/sec/android/app/sbrowser/main_activity/MainActivityUtil;Landroid/view/ViewGroup;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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
