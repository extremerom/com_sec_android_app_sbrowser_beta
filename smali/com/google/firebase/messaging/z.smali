.class public final synthetic Lcom/google/firebase/messaging/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LR5/c;
.implements Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener;
.implements Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager$DeviceStateCallback;
.implements Lcom/sec/terrace/TerraceJavaScriptCallback;
.implements Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup$AiOptionDelegate;
.implements LR5/e;
.implements LR5/d;
.implements Lcom/sec/android/app/sbrowser/backup/DataHelper$RestoreCallback;
.implements Landroidx/activity/result/a;
.implements Lcom/sec/android/app/sbrowser/common/sync/ISyncSettingUIManager$InitCallback;
.implements Lcom/sec/android/app/sbrowser/contents_push/api_message/PushMessageListener$Fallback;
.implements Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicClient$SubsFinishCallback;
.implements Lcom/sec/terrace/browser/download/TerraceDownloadManagerService$RenameDownloadCallback;
.implements Lw2/m;
.implements Lcom/sec/android/app/sbrowser/quickaccess/model/HandOffPromotionCallback;
.implements Lcom/sec/android/app/sbrowser/media/history/common/MHOembedHttpDataRequest$OnReceived;
.implements Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper$FaviconImageCallback;
.implements Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper$Delegate;
.implements Lcom/sec/android/app/sbrowser/common/model/authentication/Registration$Callback;
.implements Lcom/sec/android/app/sbrowser/promotion/model/DataLoaderListener;
.implements Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUiListener;
.implements Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreview$ImagePreviewCallBack;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/google/firebase/messaging/z;->a:I

    iput-object p2, p0, Lcom/google/firebase/messaging/z;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/messaging/z;->b:Ljava/lang/Object;

    check-cast p0, Lsb/k;

    check-cast p1, Landroidx/activity/result/ActivityResult;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlActivityDelegate;->b(Lsb/k;Landroidx/activity/result/ActivityResult;)V

    return-void
.end method

.method public getFeatureByPosition(I)I
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p0, p0, Lcom/google/firebase/messaging/z;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getMediaInfo()Lcom/sec/android/app/sbrowser/media/common/MediaInfo;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/messaging/z;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;->a(Lcom/sec/android/app/sbrowser/media/player/video/MPVideoView;)Lcom/sec/android/app/sbrowser/media/common/MediaInfo;

    move-result-object p0

    return-object p0
.end method

.method public handleJavaScriptResult(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/messaging/z;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/GetExtractSentencesCallback;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/SummaryPageController;->c(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/GetExtractSentencesCallback;Ljava/lang/String;)V

    return-void
.end method

.method public onComplete()V
    .locals 1

    iget v0, p0, Lcom/google/firebase/messaging/z;->a:I

    iget-object p0, p0, Lcom/google/firebase/messaging/z;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/sec/android/app/sbrowser/backup/InstantBackupRestoreService;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/backup/InstantBackupRestoreService;->b(Lcom/sec/android/app/sbrowser/backup/InstantBackupRestoreService;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;->a(Lcom/sec/android/app/sbrowser/backup/BackupRestoreService;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method

.method public onComplete(LR5/h;)V
    .locals 0

    iget p1, p0, Lcom/google/firebase/messaging/z;->a:I

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    iget-object p0, p0, Lcom/google/firebase/messaging/z;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {p0, p1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/google/firebase/messaging/z;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/firebase/messaging/B;

    iget-object p0, p0, Lcom/google/firebase/messaging/B;->b:LR5/i;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, LR5/i;->d(Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onComplete(Lcom/samsung/android/sdk/scs/base/tasks/Task;)V
    .locals 1

    iget v0, p0, Lcom/google/firebase/messaging/z;->a:I

    iget-object p0, p0, Lcom/google/firebase/messaging/z;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    check-cast p0, LH9/c;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LanguageDetectionUtils$Companion;->d(LH9/c;Lcom/samsung/android/sdk/scs/base/tasks/Task;)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/b;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient;->b(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/b;Lcom/samsung/android/sdk/scs/base/tasks/Task;)V

    return-void

    :pswitch_2
    check-cast p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/a;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/CloudSummarizerClient;->b(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/a;Lcom/samsung/android/sdk/scs/base/tasks/Task;)V

    return-void

    :pswitch_3
    check-cast p0, Lcom/samsung/android/sdk/scs/ai/visual/WallpaperGenerator;

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/scs/ai/visual/WallpaperGenerator;->a(Lcom/samsung/android/sdk/scs/ai/visual/WallpaperGenerator;Lcom/samsung/android/sdk/scs/base/tasks/Task;)V

    return-void

    :pswitch_4
    check-cast p0, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorGenerator;

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorGenerator;->a(Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorGenerator;Lcom/samsung/android/sdk/scs/base/tasks/Task;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onCompleted()V
    .locals 1

    iget v0, p0, Lcom/google/firebase/messaging/z;->a:I

    iget-object p0, p0, Lcom/google/firebase/messaging/z;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManagerV2;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManagerV2;->c(Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManagerV2;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManager;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManager;->a(Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManager;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_0
    .end packed-switch
.end method

.method public onDeviceStateChanged()V
    .locals 1

    iget v0, p0, Lcom/google/firebase/messaging/z;->a:I

    iget-object p0, p0, Lcom/google/firebase/messaging/z;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;->f(Lcom/sec/android/app/sbrowser/media/player/MPVideoActivity;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->A(Lcom/sec/android/app/sbrowser/SBrowserMainActivity;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onDownload()V
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/messaging/z;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;->m(Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;)V

    return-void
.end method

.method public onFailure(Ljava/lang/Exception;)V
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/messaging/z;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/IdentifyCallback;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LanguageDetectionUtils$Companion;->e(Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/IdentifyCallback;Ljava/lang/Exception;)V

    return-void
.end method

.method public onFaviconAvailable(Landroid/graphics/Bitmap;Ljava/lang/String;J)V
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/messaging/z;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->b(Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;Landroid/graphics/Bitmap;Ljava/lang/String;J)V

    return-void
.end method

.method public onFinished()V
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/messaging/z;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/topic/PushTopicDataSource;->a(Ljava/util/Map;)V

    return-void
.end method

.method public onImageUpdated(Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;)V
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/messaging/z;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;->b(Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewContainer;Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;)V

    return-void
.end method

.method public onItemSelected()V
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/messaging/z;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView$Callback;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView$Callback;->onButtonClicked()V

    return-void
.end method

.method public onLoadFinished(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/messaging/z;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/promotion/model/PromotionModel;

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/promotion/model/PromotionModel;->onItemUpdated(Ljava/util/HashMap;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/messaging/z;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigMonitorPreferenceFragment;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigMonitorPreferenceFragment;->h(Lcom/sec/android/app/sbrowser/global_config/GlobalConfigMonitorPreferenceFragment;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public onReceived(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/messaging/z;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil$ThumbnailUtilDelegate;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil;->a(Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil$ThumbnailUtilDelegate;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onResult(I)V
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/messaging/z;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog$Callback;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->c(Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog$Callback;I)V

    return-void
.end method

.method public onResult(Z)V
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/messaging/z;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;->c(Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentUIsManager;Z)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/messaging/z;->b:Ljava/lang/Object;

    check-cast p0, LC9/b;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LanguageDetectionUtils$Companion;->c(LC9/b;Ljava/lang/Object;)V

    return-void
.end method

.method public onUserNotFound(Landroid/content/Context;Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage;)V
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/messaging/z;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/contents_push/repository/source/user/PushUserDataSource;->restore(Landroid/content/Context;Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage;)V

    return-void
.end method
