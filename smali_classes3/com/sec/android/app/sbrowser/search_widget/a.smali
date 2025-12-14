.class public final synthetic Lcom/sec/android/app/sbrowser/search_widget/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/activity/result/a;
.implements Lt/p;
.implements Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryModel$Listener;
.implements Lcom/sec/android/app/sbrowser/common/model/sites/BookmarkListenerAction;
.implements Lcom/sec/android/app/sbrowser/sites/model/SitesTransitionListener;
.implements Lt/w0;
.implements Landroidx/fragment/app/k0;
.implements Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/CategoryThumbnailsAdapterListener;
.implements Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedCategoriesAdapterListener;
.implements Lcom/sec/android/app/sbrowser/webapp/WebApkHelper$DialogListener;
.implements Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsImpl$Delegate;
.implements Lorg/chromium/content_public/browser/MessagePort$MessageCallback;
.implements Lorg/chromium/components/paintpreview/player/PlayerCompositorDelegate$CompositorListener;
.implements Lorg/chromium/components/webauthn/IsUvpaaResponseCallback;
.implements LR5/d;
.implements Landroidx/window/extensions/core/util/function/Consumer;
.implements Lorg/chromium/content_public/browser/selection/SelectionDropdownMenuDelegate$ItemClickListener;
.implements Lcom/google/firebase/components/d;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/search_widget/a;->a:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/search_widget/a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/search_widget/a;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_widget/a;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingFragment;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingFragment;->o(Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingFragment;Ljava/lang/Boolean;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;

    check-cast p1, Landroidx/activity/result/ActivityResult;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;->j(Lcom/sec/android/app/sbrowser/search_widget/SearchActivity;Landroidx/activity/result/ActivityResult;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_widget/a;->b:Ljava/lang/Object;

    check-cast p0, Lorg/chromium/content/browser/device_posture/WindowLayoutInfoListener;

    check-cast p1, Landroidx/window/extensions/layout/WindowLayoutInfo;

    invoke-static {p0, p1}, Lorg/chromium/content/browser/device_posture/WindowLayoutInfoListener;->a(Lorg/chromium/content/browser/device_posture/WindowLayoutInfoListener;Landroidx/window/extensions/layout/WindowLayoutInfo;)V

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_widget/a;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/fragment/app/J;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;->c(Landroidx/fragment/app/J;Landroid/os/Bundle;)V

    return-void
.end method

.method public c(LA7/c;)Ljava/lang/Object;
    .locals 7

    new-instance v6, Lz7/c;

    const-class v0, Landroid/content/Context;

    invoke-virtual {p1, v0}, LA7/c;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    const-class v0, Lp7/f;

    invoke-virtual {p1, v0}, LA7/c;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp7/f;

    invoke-virtual {v0}, Lp7/f;->c()Ljava/lang/String;

    move-result-object v2

    const-class v0, Lz7/d;

    invoke-static {v0}, Lcom/google/firebase/components/r;->a(Ljava/lang/Class;)Lcom/google/firebase/components/r;

    move-result-object v0

    invoke-virtual {p1, v0}, LA7/c;->d(Lcom/google/firebase/components/r;)Ljava/util/Set;

    move-result-object v3

    const-class v0, LJ7/b;

    invoke-virtual {p1, v0}, LA7/c;->g(Ljava/lang/Class;)LC7/a;

    move-result-object v4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_widget/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/firebase/components/r;

    invoke-virtual {p1, p0}, LA7/c;->f(Lcom/google/firebase/components/r;)Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Ljava/util/concurrent/Executor;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lz7/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;LC7/a;Ljava/util/concurrent/Executor;)V

    return-object v6
.end method

.method public getUrl()Lorg/chromium/url/GURL;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_widget/a;->b:Ljava/lang/Object;

    check-cast p0, Lorg/chromium/content_public/browser/RenderFrameHost;

    invoke-interface {p0}, Lorg/chromium/content_public/browser/RenderFrameHost;->getLastCommittedURL()Lorg/chromium/url/GURL;

    move-result-object p0

    return-object p0
.end method

.method public onAction(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_widget/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/sites/SitesActivity;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->h(Lcom/sec/android/app/sbrowser/sites/SitesActivity;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;Ljava/lang/Object;)V

    return-void
.end method

.method public onCategoryThumbnailClicked(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/search_widget/a;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_widget/a;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionAdapter$WallpaperOptionViewHolder;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionAdapter$WallpaperOptionViewHolder;->a(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionAdapter$WallpaperOptionViewHolder;Ljava/lang/String;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedWallpaperFragment;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedWallpaperFragment;->h(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedWallpaperFragment;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method

.method public onComplete()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_widget/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->a(Lcom/sec/android/app/sbrowser/sites/SitesSearch;)V

    return-void
.end method

.method public onCompositorReady(Lorg/chromium/base/UnguessableToken;[Lorg/chromium/base/UnguessableToken;[I[I[I[Lorg/chromium/base/UnguessableToken;[IFJ)V
    .locals 12

    move-object v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/search_widget/a;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/sec/terrace/browser/paintpreview/TinPaintPreviewCompositor;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-wide/from16 v10, p9

    invoke-virtual/range {v1 .. v11}, Lcom/sec/terrace/browser/paintpreview/TinPaintPreviewCompositor;->onCompositorReady(Lorg/chromium/base/UnguessableToken;[Lorg/chromium/base/UnguessableToken;[I[I[I[Lorg/chromium/base/UnguessableToken;[IFJ)V

    return-void
.end method

.method public onFailure(Ljava/lang/Exception;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_widget/a;->b:Ljava/lang/Object;

    check-cast p0, Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator;

    invoke-static {p0, p1}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->b(Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator;Ljava/lang/Exception;)V

    return-void
.end method

.method public onIsUserVerifyingPlatformAuthenticatorAvailableResponse(Z)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/search_widget/a;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_widget/a;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lorg/chromium/blink/mojom/Authenticator$IsConditionalMediationAvailable_Response;

    invoke-static {p0, p1}, Lorg/chromium/components/webauthn/AuthenticatorImpl;->a(Lorg/chromium/blink/mojom/Authenticator$IsConditionalMediationAvailable_Response;Z)V

    return-void

    :pswitch_0
    check-cast p0, Lorg/chromium/components/webauthn/b;

    invoke-static {p0, p1}, Lorg/chromium/components/webauthn/AuthenticatorImpl;->h(Lorg/chromium/components/webauthn/b;Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
    .end packed-switch
.end method

.method public onListDataLoaded(Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_widget/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;->a(Lcom/sec/android/app/sbrowser/settings/security_panel/history/controller/DetailHistoryController;Ljava/util/concurrent/CopyOnWriteArrayList;)V

    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/search_widget/a;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_widget/a;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    check-cast p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->j(Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    :pswitch_1
    check-cast p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabGroupPopupMenu;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabGroupPopupMenu;->a(Lcom/sec/android/app/sbrowser/tab_bar/popup/TabGroupPopupMenu;Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    :pswitch_2
    check-cast p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabGroupListPopupMenu;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabGroupListPopupMenu;->a(Lcom/sec/android/app/sbrowser/tab_bar/popup/TabGroupListPopupMenu;Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    :pswitch_3
    check-cast p0, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabButtonPopupMenu;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/popup/TabButtonPopupMenu;->a(Lcom/sec/android/app/sbrowser/tab_bar/popup/TabButtonPopupMenu;Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    :pswitch_4
    check-cast p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;->j(Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetSettingsFragment;Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    :pswitch_5
    check-cast p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->k(Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onMessage(Lorg/chromium/content_public/browser/MessagePayload;[Lorg/chromium/content_public/browser/MessagePort;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_widget/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;

    invoke-static {p0, p1, p2}, Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;->a(Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;Lorg/chromium/content_public/browser/MessagePayload;[Lorg/chromium/content_public/browser/MessagePort;)V

    return-void
.end method

.method public onResult(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_widget/a;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/webapp/WebApkHelper;->e(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public onThumbnailClicked(Lcom/sec/android/app/sbrowser/wallpaper/data/CategoryThumbnailData;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_widget/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/CategoryFragment;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/CategoryFragment;->h(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/CategoryFragment;Lcom/sec/android/app/sbrowser/wallpaper/data/CategoryThumbnailData;)V

    return-void
.end method
