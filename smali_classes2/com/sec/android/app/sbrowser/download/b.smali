.class public final synthetic Lcom/sec/android/app/sbrowser/download/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/download/b;->a:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/download/b;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/download/b;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/b;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/sec/android/app/sbrowser/tab/TabActivity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/tab/TabActivity;->o(Lcom/sec/android/app/sbrowser/tab/TabActivity;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->d(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;->a(Lcom/sec/android/app/sbrowser/sites/savedpage/controller/SavedPageController;)V

    return-void

    :pswitch_2
    check-cast p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->e(Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;)V

    return-void

    :pswitch_3
    check-cast p0, Lcom/sec/android/app/sbrowser/sites/SitesSearch;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/SitesSearch;->setSitesSearchData()V

    return-void

    :pswitch_4
    check-cast p0, Lcom/sec/android/app/sbrowser/sites/SitesActivity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->i(Lcom/sec/android/app/sbrowser/sites/SitesActivity;)V

    return-void

    :pswitch_5
    check-cast p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryHandler;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryHandler;->a(Lcom/sec/android/app/sbrowser/settings/security_panel/history/model/DetailHistoryHandler;)V

    return-void

    :pswitch_6
    check-cast p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/SummarizePreferenceFragment;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/browsing_assist/SummarizePreferenceFragment;->j(Lcom/sec/android/app/sbrowser/settings/browsing_assist/SummarizePreferenceFragment;)V

    return-void

    :pswitch_7
    check-cast p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/ReadArticlesAloudPreferenceFragment;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/browsing_assist/ReadArticlesAloudPreferenceFragment;->k(Lcom/sec/android/app/sbrowser/settings/browsing_assist/ReadArticlesAloudPreferenceFragment;)V

    return-void

    :pswitch_8
    check-cast p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/BrowsingAssistFragment;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/browsing_assist/BrowsingAssistFragment;->j(Lcom/sec/android/app/sbrowser/settings/browsing_assist/BrowsingAssistFragment;)V

    return-void

    :pswitch_9
    check-cast p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->j(Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;)V

    return-void

    :pswitch_a
    check-cast p0, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;->c(Lcom/sec/android/app/sbrowser/save_image/view/SaveAllImageBaseUi;)V

    return-void

    :pswitch_b
    check-cast p0, Lcom/sec/android/app/sbrowser/reader/ReaderCallback;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/reader/ReaderCallback;->showReaderTab()V

    return-void

    :pswitch_c
    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessCardView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessCardView;->updateBlurBackground()V

    return-void

    :pswitch_d
    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/PrivacyBoardViewHolder;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/PrivacyBoardViewHolder;->c(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/PrivacyBoardViewHolder;)V

    return-void

    :pswitch_e
    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;->onClickTurnOn()V

    return-void

    :pswitch_f
    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->h(Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;)V

    return-void

    :pswitch_10
    check-cast p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->b(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;)V

    return-void

    :pswitch_11
    check-cast p0, Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;->a(Lcom/sec/android/app/sbrowser/omnibox/SearchEngineButton;)V

    return-void

    :pswitch_12
    check-cast p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->a(Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;)V

    return-void

    :pswitch_13
    check-cast p0, Lcom/sec/android/app/sbrowser/media/history/MHActivityLauncher;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/history/MHActivityLauncher;->a(Lcom/sec/android/app/sbrowser/media/history/MHActivityLauncher;)V

    return-void

    :pswitch_14
    check-cast p0, Lcom/sec/android/app/sbrowser/media/common/FlexModeOrientation;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/common/FlexModeOrientation;->a(Lcom/sec/android/app/sbrowser/media/common/FlexModeOrientation;)V

    return-void

    :pswitch_15
    check-cast p0, Lcom/sec/android/app/sbrowser/media/common/BackgroundPlayHandler;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/common/BackgroundPlayHandler;->a(Lcom/sec/android/app/sbrowser/media/common/BackgroundPlayHandler;)V

    return-void

    :pswitch_16
    check-cast p0, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/assistant/MAManager;->d(Lcom/sec/android/app/sbrowser/media/assistant/MAManager;)V

    return-void

    :pswitch_17
    check-cast p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->destroyFullscreen()V

    return-void

    :pswitch_18
    check-cast p0, Lcom/sec/android/app/sbrowser/main_activity/BackgroundCallerHandler;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_activity/BackgroundCallerHandler;->a(Lcom/sec/android/app/sbrowser/main_activity/BackgroundCallerHandler;)V

    return-void

    :pswitch_19
    check-cast p0, Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager;->sendDataImpl()V

    return-void

    :pswitch_1a
    check-cast p0, Lcom/sec/android/app/sbrowser/download/completed_info/DCompletedSystemPopupManager;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/download/completed_info/DCompletedSystemPopupManager;->a(Lcom/sec/android/app/sbrowser/download/completed_info/DCompletedSystemPopupManager;)V

    return-void

    :pswitch_1b
    check-cast p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;->a(Lcom/sec/android/app/sbrowser/download/DownloadSaveAllImagesNotificationService;)V

    return-void

    :pswitch_1c
    check-cast p0, Lcom/sec/android/app/sbrowser/download/data_models/ImageDownloadInfo;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->a(Lcom/sec/android/app/sbrowser/download/data_models/ImageDownloadInfo;)V

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
