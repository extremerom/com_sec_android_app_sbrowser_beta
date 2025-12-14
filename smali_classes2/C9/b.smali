.class public final synthetic LC9/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LC9/b;->a:I

    iput-object p2, p0, LC9/b;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, LC9/b;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LC9/b;->b:Ljava/lang/Object;

    check-cast p0, Lsb/k;

    check-cast p1, Landroid/view/textclassifier/TextClassification;

    invoke-static {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/textclassification/TextClassificationHelper;->a(Lsb/k;Landroid/view/textclassifier/TextClassification;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, LC9/b;->b:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/selectionui/actionmode/TextExtractionActionModeHelper;

    check-cast p1, Landroid/view/textclassifier/TextClassification;

    invoke-static {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/selectionui/actionmode/TextExtractionActionModeHelper;->a(Lcom/samsung/android/app/sdk/deepsky/textextraction/selectionui/actionmode/TextExtractionActionModeHelper;Landroid/view/textclassifier/TextClassification;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_1
    iget-object p0, p0, LC9/b;->b:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/selectionui/TextExtractionDrawHelperImpl;

    check-cast p1, Ldb/r;

    invoke-static {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/selectionui/TextExtractionDrawHelperImpl;->a(Lcom/samsung/android/app/sdk/deepsky/textextraction/selectionui/TextExtractionDrawHelperImpl;Ldb/r;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_2
    iget-object p0, p0, LC9/b;->b:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl;

    check-cast p1, Ldb/r;

    invoke-static {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl;->f(Lcom/samsung/android/app/sdk/deepsky/textextraction/capsule/CapsuleHelperImpl;Ldb/r;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p1, Ljava/util/Map$Entry;

    const-string v0, "it"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LC9/b;->b:Ljava/lang/Object;

    check-cast p0, Lfb/f;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "(this Map)"

    if-ne v1, p0, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-ne p1, p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_4
    iget-object p0, p0, LC9/b;->b:Ljava/lang/Object;

    check-cast p0, Lfb/a;

    if-ne p1, p0, :cond_2

    const-string p0, "(this Collection)"

    goto :goto_2

    :cond_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_2
    return-object p0

    :pswitch_5
    iget-object p0, p0, LC9/b;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity;

    check-cast p1, Lcom/sec/android/app/sbrowser/common/livedata/Event;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity;->f(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity;Lcom/sec/android/app/sbrowser/common/livedata/Event;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_6
    iget-object p0, p0, LC9/b;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlActivityDelegate$Listener;

    check-cast p1, Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentStatus;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;->d(Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlActivityDelegate$Listener;Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentStatus;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_7
    iget-object p0, p0, LC9/b;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupAdapter;

    check-cast p1, Ldb/j;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryListFragment;->k(Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupAdapter;Ldb/j;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_8
    iget-object p0, p0, LC9/b;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryContentsLayout;

    check-cast p1, Ljava/util/List;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryContentsLayout;->a(Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryContentsLayout;Ljava/util/List;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_9
    iget-object p0, p0, LC9/b;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/search_widget/SearchBar;->e(Lcom/sec/android/app/sbrowser/search_widget/SearchBar;Ljava/lang/String;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_a
    iget-object p0, p0, LC9/b;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/SaferBrowsingDatabaseDao_Impl;

    check-cast p1, LS2/a;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/SaferBrowsingDatabaseDao_Impl;->a(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/SaferBrowsingDatabaseDao_Impl;LS2/a;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_b
    iget-object p0, p0, LC9/b;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/SaferBrowsingDatabaseDao$DefaultImpls;->d(Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/entity/ThreatDescriptorHashesEntity;

    move-result-object p0

    return-object p0

    :pswitch_c
    iget-object p0, p0, LC9/b;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroViewModel;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroViewModel;->b(Lcom/sec/android/app/sbrowser/help_intro/HelpIntroViewModel;Ljava/lang/Integer;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_d
    iget-object p0, p0, LC9/b;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlActivityDelegate;

    check-cast p1, Landroidx/activity/result/ActivityResult;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlActivityDelegate;->a(Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlActivityDelegate;Landroidx/activity/result/ActivityResult;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_e
    iget-object p0, p0, LC9/b;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/IdentifyCallback;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LanguageDetectionUtils$Companion;->b(Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/IdentifyCallback;Ljava/lang/String;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_f
    iget-object p0, p0, LC9/b;->b:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/controller/PhotoEditorServiceManager;

    check-cast p1, Landroid/os/Message;

    invoke-static {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/controller/PhotoEditorServiceManager;->a(Lcom/samsung/android/app/sdk/deepsky/objectcapture/controller/PhotoEditorServiceManager;Landroid/os/Message;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_10
    iget-object p0, p0, LC9/b;->b:Ljava/lang/Object;

    check-cast p0, Landroid/speech/tts/TextToSpeech;

    check-cast p1, Landroid/speech/tts/Voice;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/TtsVoiceUtils;->a(Landroid/speech/tts/TextToSpeech;Landroid/speech/tts/Voice;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_11
    iget-object p0, p0, LC9/b;->b:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/PointF;

    check-cast p1, Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataNative;

    invoke-static {p0, p1}, Lcom/samsung/android/vexfwk/sdk/objeraser/VexFwkObjectExtractor;->d(Landroid/graphics/PointF;Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataNative;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_12
    iget-object p0, p0, LC9/b;->b:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/vexfwk/imagestyletransfer/VexFwkImageStyleTransferStyles$Companion$StyleTransferType;

    check-cast p1, Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataNative;

    invoke-static {p0, p1}, Lcom/samsung/android/vexfwk/sdk/imgstyletransfer/VexFwkImageStyleTransfer;->b(Lcom/samsung/android/vexfwk/imagestyletransfer/VexFwkImageStyleTransferStyles$Companion$StyleTransferType;Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataNative;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_13
    check-cast p1, LJ2/c;

    const-string v0, "config"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LC9/b;->b:Ljava/lang/Object;

    check-cast p0, LJ2/U;

    invoke-virtual {p0, p1}, LJ2/U;->createOpenHelper(LJ2/c;)LT2/e;

    move-result-object p0

    return-object p0

    :pswitch_14
    check-cast p1, LT2/a;

    const-string v0, "db"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LC9/b;->b:Ljava/lang/Object;

    check-cast p0, LJ2/K;

    iput-object p1, p0, LJ2/K;->g:LT2/a;

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_15
    iget-object p0, p0, LC9/b;->b:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/vexfwk/imageenhancer/EnhanceType;

    check-cast p1, Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataNative;

    invoke-static {p0, p1}, Lcom/samsung/android/vexfwk/sdk/imageenhancer/VexFwkImageEnhancer;->b(Lcom/samsung/android/vexfwk/imageenhancer/EnhanceType;Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataNative;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_16
    iget-object p0, p0, LC9/b;->b:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/vexfwk/param/VexFwkImageEffectParams;

    check-cast p1, Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataNative;

    invoke-static {p0, p1}, Lcom/samsung/android/vexfwk/sdk/imageeffect/VexFwkImageEffectProcessor;->c(Lcom/samsung/android/vexfwk/param/VexFwkImageEffectParams;Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataNative;)Ldb/r;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
