.class public final synthetic LFa/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, LFa/b;->a:I

    iput-object p2, p0, LFa/b;->b:Ljava/lang/Object;

    iput-object p3, p0, LFa/b;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget v0, p0, LFa/b;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LFa/b;->b:Ljava/lang/Object;

    check-cast v0, Lt/L0;

    const-string v1, "$itemClickListener"

    invoke-static {v0, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LFa/b;->c:Ljava/lang/Object;

    check-cast p0, Lt/O0;

    const-string v1, "this$0"

    invoke-static {p0, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lt/O0;->a:Ljava/util/ArrayList;

    const-string v1, "<this>"

    invoke-static {p0, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    check-cast v0, LB3/c;

    iget-object p1, v0, LB3/c;->a:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;

    invoke-virtual {p1}, Lcom/google/android/material/appbar/model/view/ViewPagerAppBarView;->getViewpager()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Landroidx/viewpager2/widget/ViewPager2;->c(IZ)V

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, LFa/b;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iget-object p0, p0, LFa/b;->c:Ljava/lang/Object;

    check-cast p0, Lorg/chromium/content_public/browser/SelectionClient$Result;

    invoke-static {v0, p0, p1}, Lorg/chromium/content/browser/selection/SelectActionMenuHelper;->b(Landroid/content/Context;Lorg/chromium/content_public/browser/SelectionClient$Result;Landroid/view/View;)V

    return-void

    :pswitch_1
    iget-object v0, p0, LFa/b;->b:Ljava/lang/Object;

    check-cast v0, Lorg/chromium/content/browser/selection/SelectActionMenuHelper$TextProcessingIntentHandler;

    iget-object p0, p0, LFa/b;->c:Ljava/lang/Object;

    check-cast p0, Landroid/content/Intent;

    invoke-static {v0, p0, p1}, Lorg/chromium/content/browser/selection/SelectActionMenuHelper;->c(Lorg/chromium/content/browser/selection/SelectActionMenuHelper$TextProcessingIntentHandler;Landroid/content/Intent;Landroid/view/View;)V

    return-void

    :pswitch_2
    iget-object v0, p0, LFa/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/value/ToggleCapsule;

    iget-object p0, p0, LFa/b;->c:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl;

    invoke-static {v0, p0, p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl;->b(Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/value/ToggleCapsule;Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl;Landroid/view/View;)V

    return-void

    :pswitch_3
    iget-object v0, p0, LFa/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/appbar/model/AppBarModel$OnClickListener;

    iget-object p0, p0, LFa/b;->c:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/appbar/model/view/SuggestAppBarView;

    invoke-static {v0, p0, p1}, Lcom/google/android/material/appbar/model/view/SuggestAppBarView;->a(Lcom/google/android/material/appbar/model/AppBarModel$OnClickListener;Lcom/google/android/material/appbar/model/view/SuggestAppBarView;Landroid/view/View;)V

    return-void

    :pswitch_4
    iget-object v0, p0, LFa/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/appbar/model/ButtonModel;

    iget-object p0, p0, LFa/b;->c:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/appbar/model/view/SuggestAppBarView;

    invoke-static {v0, p0, p1}, Lcom/google/android/material/appbar/model/view/SuggestAppBarView;->b(Lcom/google/android/material/appbar/model/ButtonModel;Lcom/google/android/material/appbar/model/view/SuggestAppBarView;Landroid/view/View;)V

    return-void

    :pswitch_5
    iget-object v0, p0, LFa/b;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/wallpaper/data/WallpaperGalleryFolderItemDto;

    iget-object p0, p0, LFa/b;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionGalleryFolderAdapter;

    invoke-static {p0, v0, p1}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionGalleryFolderAdapter;->a(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionGalleryFolderAdapter;Lcom/sec/android/app/sbrowser/wallpaper/data/WallpaperGalleryFolderItemDto;Landroid/view/View;)V

    return-void

    :pswitch_6
    iget-object v0, p0, LFa/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionAdapter;

    iget-object p0, p0, LFa/b;->c:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/wallpaper/data/WallpaperOptionItemDto;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionAdapter$WallpaperOptionViewHolder;->b(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionAdapter;Lcom/sec/android/app/sbrowser/wallpaper/data/WallpaperOptionItemDto;Landroid/view/View;)V

    return-void

    :pswitch_7
    iget-object v0, p0, LFa/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/wallpaper/data/CategoryThumbnailData;

    iget-object p0, p0, LFa/b;->c:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedOptionItemAdapter;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedOptionItemAdapter;->a(Lcom/sec/android/app/sbrowser/wallpaper/data/CategoryThumbnailData;Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedOptionItemAdapter;Landroid/view/View;)V

    return-void

    :pswitch_8
    iget-object v0, p0, LFa/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedCategoriesCardAdapter;

    iget-object p0, p0, LFa/b;->c:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/wallpaper/data/CategoryCardViewListData;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedCategoriesCardAdapter;->a(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedCategoriesCardAdapter;Lcom/sec/android/app/sbrowser/wallpaper/data/CategoryCardViewListData;Landroid/view/View;)V

    return-void

    :pswitch_9
    iget-object v0, p0, LFa/b;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/wallpaper/data/CategoryThumbnailData;

    iget-object p0, p0, LFa/b;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/CategoryThumbnailsAdapter;

    invoke-static {p0, v0, p1}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/CategoryThumbnailsAdapter;->a(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/CategoryThumbnailsAdapter;Lcom/sec/android/app/sbrowser/wallpaper/data/CategoryThumbnailData;Landroid/view/View;)V

    return-void

    :pswitch_a
    iget-object v0, p0, LFa/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;

    iget-object p0, p0, LFa/b;->c:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->c(Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;Landroid/view/View;)V

    return-void

    :pswitch_b
    iget-object v0, p0, LFa/b;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchItem;

    iget-object p0, p0, LFa/b;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchAdapter;

    invoke-static {p0, v0, p1}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchAdapter;->a(Lcom/sec/android/app/sbrowser/settings/search/SettingSearchAdapter;Lcom/sec/android/app/sbrowser/settings/search/SettingSearchItem;Landroid/view/View;)V

    return-void

    :pswitch_c
    iget-object v0, p0, LFa/b;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretDownloadTipCard;

    iget-object p0, p0, LFa/b;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;

    invoke-static {p0, v0, p1}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->i(Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretDownloadTipCard;Landroid/view/View;)V

    return-void

    :pswitch_d
    iget-object v0, p0, LFa/b;->c:Ljava/lang/Object;

    check-cast v0, Lm/l;

    iget-object p0, p0, LFa/b;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;

    invoke-static {p0, v0, p1}, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;->o(Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;Lm/l;Landroid/view/View;)V

    return-void

    :pswitch_e
    iget-object v0, p0, LFa/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemAdapter$SyncedTabAdapterDelegate;

    iget-object p0, p0, LFa/b;->c:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/SyncedTabItemViewHolder;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/SyncedTabItemViewHolder;->a(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemAdapter$SyncedTabAdapterDelegate;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/SyncedTabItemViewHolder;Landroid/view/View;)V

    return-void

    :pswitch_f
    iget-object v0, p0, LFa/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedTabLayoutContainer;

    iget-object p0, p0, LFa/b;->c:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedTabLayoutContainer;->b(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedTabLayoutContainer;Landroid/content/Context;Landroid/view/View;)V

    return-void

    :pswitch_10
    iget-object v0, p0, LFa/b;->b:Ljava/lang/Object;

    check-cast v0, Landroid/widget/Button;

    iget-object p0, p0, LFa/b;->c:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->o(Landroid/widget/Button;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;Landroid/view/View;)V

    return-void

    :pswitch_11
    iget-object v0, p0, LFa/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter;

    iget-object p0, p0, LFa/b;->c:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter$HeaderBarViewHolder;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter$HeaderBarViewHolder;->b(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter$HeaderBarViewHolder;Landroid/view/View;)V

    return-void

    :pswitch_12
    iget-object v0, p0, LFa/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/omnibox/PWAButton;

    iget-object p0, p0, LFa/b;->c:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/omnibox/PWAButton;->a(Lcom/sec/android/app/sbrowser/omnibox/PWAButton;Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;Landroid/view/View;)V

    return-void

    :pswitch_13
    iget-object v0, p0, LFa/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;

    iget-object p0, p0, LFa/b;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;->d(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureController;Ljava/lang/Boolean;Landroid/view/View;)V

    return-void

    :pswitch_14
    iget-object v0, p0, LFa/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/main_activity/BackgroundCallerHandler;

    iget-object p0, p0, LFa/b;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/main_activity/BackgroundCallerHandler;->b(Lcom/sec/android/app/sbrowser/main_activity/BackgroundCallerHandler;Ljava/lang/String;Landroid/view/View;)V

    return-void

    :pswitch_15
    iget-object v0, p0, LFa/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarCoordinator;

    iget-object p0, p0, LFa/b;->c:Ljava/lang/Object;

    check-cast p0, Lcom/sec/terrace/browser/browserservices/intents/TerraceCustomButtonParams;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarCoordinator;->a(Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbarCoordinator;Lcom/sec/terrace/browser/browserservices/intents/TerraceCustomButtonParams;Landroid/view/View;)V

    return-void

    :pswitch_16
    iget-object v0, p0, LFa/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;

    iget-object p0, p0, LFa/b;->c:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar$MaximizeButtonCallback;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;->b(Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar$MaximizeButtonCallback;Landroid/view/View;)V

    return-void

    :pswitch_17
    iget-object v0, p0, LFa/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummarySearchSuggestionAdapter$SummarySearchSuggestionViewHolder;

    iget-object p0, p0, LFa/b;->c:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummarySearchSuggestionAdapter;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummarySearchSuggestionAdapter$SummarySearchSuggestionViewHolder;->a(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummarySearchSuggestionAdapter$SummarySearchSuggestionViewHolder;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummarySearchSuggestionAdapter;Landroid/view/View;)V

    return-void

    :pswitch_18
    iget-object v0, p0, LFa/b;->c:Ljava/lang/Object;

    check-cast v0, Landroid/widget/ImageButton;

    iget-object p0, p0, LFa/b;->b:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCapturePopup;

    invoke-static {p0, v0, p1}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCapturePopup;->d(Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCapturePopup;Landroid/widget/ImageButton;Landroid/view/View;)V

    return-void

    :pswitch_19
    iget-object v0, p0, LFa/b;->b:Ljava/lang/Object;

    check-cast v0, LH6/o;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, LFa/b;->c:Ljava/lang/Object;

    check-cast p0, Landroid/view/View$OnClickListener;

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, LH6/m;->b(I)V

    return-void

    :pswitch_1a
    iget-object v0, p0, LFa/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter;

    iget-object p0, p0, LFa/b;->c:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter$ViewHolder;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter$ViewHolder;->a(Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter;Lcom/sec/android/app/sbrowser/tab_group/TabGroupColorAdapter$ViewHolder;Landroid/view/View;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
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
