.class public final synthetic Lcom/sec/android/app/sbrowser/save_image/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/save_image/d;->a:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/save_image/d;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/save_image/d;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/d;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/permissions/PermissionEmbargoHandler;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/permissions/PermissionEmbargoHandler;->a(Lcom/sec/android/app/sbrowser/permissions/PermissionEmbargoHandler;Landroid/view/View;)V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/d;->b:Ljava/lang/Object;

    check-cast p0, Lt/O0;

    iget-object v0, p0, Lt/O0;->b:Lt/L0;

    if-eqz v0, :cond_0

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

    :pswitch_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/d;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/media/assistant/view/item/EmptyItem;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/media/assistant/view/item/EmptyItem;->a(Lcom/sec/android/app/sbrowser/media/assistant/view/item/EmptyItem;Landroid/view/View;)V

    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/d;->b:Ljava/lang/Object;

    check-cast p0, Lorg/chromium/ui/listmenu/ListMenuHost;

    invoke-static {p0, p1}, Lorg/chromium/ui/listmenu/ListMenuHost;->b(Lorg/chromium/ui/listmenu/ListMenuHost;Landroid/view/View;)V

    return-void

    :pswitch_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/d;->b:Ljava/lang/Object;

    check-cast p0, Landroid/app/RemoteAction;

    invoke-static {p0, p1}, Lorg/chromium/content/browser/selection/SelectActionMenuHelper;->a(Landroid/app/RemoteAction;Landroid/view/View;)V

    return-void

    :pswitch_4
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/d;->b:Ljava/lang/Object;

    check-cast p0, Lorg/chromium/ui/modelutil/PropertyModel;

    invoke-static {p0, p1}, Lorg/chromium/components/embedder_support/delegate/ColorPickerViewBinder;->a(Lorg/chromium/ui/modelutil/PropertyModel;Landroid/view/View;)V

    return-void

    :pswitch_5
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/d;->b:Ljava/lang/Object;

    check-cast p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerDialogView;

    invoke-static {p0, p1}, Lorg/chromium/components/embedder_support/delegate/ColorPickerDialogView;->c(Lorg/chromium/components/embedder_support/delegate/ColorPickerDialogView;Landroid/view/View;)V

    return-void

    :pswitch_6
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/d;->b:Ljava/lang/Object;

    check-cast p0, Lorg/chromium/components/autofill/AutofillSelectionMenuItemHelper;

    invoke-static {p0, p1}, Lorg/chromium/components/autofill/AutofillSelectionMenuItemHelper;->a(Lorg/chromium/components/autofill/AutofillSelectionMenuItemHelper;Landroid/view/View;)V

    return-void

    :pswitch_7
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/d;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/chip/SeslExpandableContainer;

    iget-boolean p1, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->e:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/material/chip/SeslExpandableContainer;->e:Z

    invoke-virtual {p0}, Lcom/google/android/material/chip/SeslExpandableContainer;->a()V

    new-instance p1, Ll6/r;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Ll6/r;-><init>(Lcom/google/android/material/chip/SeslExpandableContainer;I)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_8
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/d;->b:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/ui/ToggleCapsuleLayout;

    invoke-static {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/ui/ToggleCapsuleLayout;->a(Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/ui/ToggleCapsuleLayout;Landroid/view/View;)V

    return-void

    :pswitch_9
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/d;->b:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/value/SimpleCapsule;

    invoke-static {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl;->e(Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/value/SimpleCapsule;Landroid/view/View;)V

    return-void

    :pswitch_a
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/d;->b:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/value/ToggleCapsule;

    invoke-static {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl;->d(Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/data/value/ToggleCapsule;Landroid/view/View;)V

    return-void

    :pswitch_b
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/d;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->g(Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;Landroid/view/View;)V

    return-void

    :pswitch_c
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/d;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedWallpaperFragment;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedWallpaperFragment;->i(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedWallpaperFragment;Landroid/view/View;)V

    return-void

    :pswitch_d
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/d;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/CategoryFragment;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/CategoryFragment;->j(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/CategoryFragment;Landroid/view/View;)V

    return-void

    :pswitch_e
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/d;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/tab/CrashTabHandler;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/tab/CrashTabHandler;->a(Lcom/sec/android/app/sbrowser/tab/CrashTabHandler;Landroid/view/View;)V

    return-void

    :pswitch_f
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/d;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->g(Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;Landroid/view/View;)V

    return-void

    :pswitch_10
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/d;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/CreateBookmarkFolderAlertUtil;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/CreateBookmarkFolderAlertUtil;->a(Lcom/sec/android/app/sbrowser/sites/bookmark/utils/CreateBookmarkFolderAlertUtil;Landroid/view/View;)V

    return-void

    :pswitch_11
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/d;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPageIndicator;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPageIndicator;->a(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarPageIndicator;Landroid/view/View;)V

    return-void

    :pswitch_12
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/d;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/ReadArticlesAloudNoVoiceStylesPreference;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/browsing_assist/ReadArticlesAloudNoVoiceStylesPreference;->e(Lcom/sec/android/app/sbrowser/settings/browsing_assist/ReadArticlesAloudNoVoiceStylesPreference;Landroid/view/View;)V

    return-void

    :pswitch_13
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/d;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryContentsLayout;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryContentsLayout;->f(Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryContentsLayout;Landroid/view/View;)V

    return-void

    :pswitch_14
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/d;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->i(Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;Landroid/view/View;)V

    return-void

    :pswitch_15
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/d;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment;->l(Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetNewSettingsFragment;Landroid/view/View;)V

    return-void

    :pswitch_16
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/d;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->f(Lcom/sec/android/app/sbrowser/search_widget/SearchBar;Landroid/view/View;)V

    return-void

    :pswitch_17
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/d;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;->a(Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;Landroid/view/View;)V

    return-void

    :pswitch_18
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/d;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->c(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;Landroid/view/View;)V

    return-void

    :pswitch_19
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/d;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;->l(Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;Landroid/view/View;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
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
