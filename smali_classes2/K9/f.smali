.class public final synthetic LK9/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, LK9/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, LK9/f;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProviderV2;->c(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, LS2/a;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDao_Impl;->c(LS2/a;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, LS2/a;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl;->f(LS2/a;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p1, LS2/a;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl;->d(LS2/a;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p1, LS2/a;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDao_Impl;->a(LS2/a;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p1, LS2/a;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDao_Impl;->d(LS2/a;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_6
    check-cast p1, LS2/a;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDao_Impl;->f(LS2/a;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_7
    check-cast p1, LS2/a;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/SaferBrowsingDatabaseDao_Impl;->e(LS2/a;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_8
    check-cast p1, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/CacheEntry;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingHashFinder;->e(Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/CacheEntry;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_9
    check-cast p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModelItem;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->e(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModelItem;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_a
    check-cast p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModelItem;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;->f(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModelItem;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_b
    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->b(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_c
    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageSecretViewModelImpl;->b(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_d
    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_e
    check-cast p1, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlUtil;->a(Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_f
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/TargetLanguageSpinnerController;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_10
    check-cast p1, Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocRefiner;

    invoke-static {p1}, Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocRefiner;->e(Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocRefiner;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_11
    check-cast p1, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionConfigRequest$Builder;

    invoke-static {p1}, Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocRefiner;->d(Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionConfigRequest$Builder;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_12
    check-cast p1, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionConfigRequest$Builder;

    invoke-static {p1}, Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDewarper;->f(Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionConfigRequest$Builder;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_13
    check-cast p1, Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDewarper;

    invoke-static {p1}, Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDewarper;->e(Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDewarper;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_14
    check-cast p1, Landroid/speech/tts/Voice;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/TtsVoiceUtils;->b(Landroid/speech/tts/Voice;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_15
    check-cast p1, Landroid/speech/tts/Voice;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/TtsVoiceUtils;->h(Landroid/speech/tts/Voice;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_16
    check-cast p1, Lcom/samsung/android/vexfwk/sdk/winedetector/VexFwkWineDetector;

    invoke-static {p1}, Lcom/samsung/android/vexfwk/sdk/winedetector/VexFwkWineDetector;->b(Lcom/samsung/android/vexfwk/sdk/winedetector/VexFwkWineDetector;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_17
    check-cast p1, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionConfigRequest$Builder;

    invoke-static {p1}, Lcom/samsung/android/vexfwk/sdk/winedetector/VexFwkWineDetector;->e(Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionConfigRequest$Builder;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_18
    check-cast p1, Lcom/samsung/android/vexfwk/sdk/ocr/VexFwkImageOcr;

    invoke-static {p1}, Lcom/samsung/android/vexfwk/sdk/ocr/VexFwkImageOcr;->f(Lcom/samsung/android/vexfwk/sdk/ocr/VexFwkImageOcr;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_19
    check-cast p1, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionConfigRequest$Builder;

    invoke-static {p1}, Lcom/samsung/android/vexfwk/sdk/ocr/VexFwkImageOcr;->k(Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionConfigRequest$Builder;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_1a
    check-cast p1, Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataNative;

    invoke-static {p1}, Lcom/samsung/android/vexfwk/sdk/ocr/VexFwkImageOcr;->b(Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataNative;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_1b
    check-cast p1, Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataNative;

    invoke-static {p1}, Lcom/samsung/android/vexfwk/sdk/ocr/VexFwkImageOcr;->e(Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataNative;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_1c
    check-cast p1, Lcom/samsung/android/vexfwk/sdk/objeraser/VexFwkVideoObjectRemover;

    invoke-static {p1}, Lcom/samsung/android/vexfwk/sdk/objeraser/VexFwkVideoObjectRemover;->b(Lcom/samsung/android/vexfwk/sdk/objeraser/VexFwkVideoObjectRemover;)Ldb/r;

    move-result-object p0

    return-object p0

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
