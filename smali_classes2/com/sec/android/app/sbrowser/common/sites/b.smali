.class public final synthetic Lcom/sec/android/app/sbrowser/common/sites/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/function/Supplier;
.implements Lcom/sec/android/app/sbrowser/contents_push/api_message/PushMessageSender$SendMessageInterface;
.implements Lcom/sec/android/app/sbrowser/global_config/GlobalConfig$UpdateCallback;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/sites/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/sites/b;->a:I

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/global_config/RichEntityConfig;->a()Lcom/sec/android/app/sbrowser/global_config/RichEntityConfig;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/global_config/GlobalConfig;->d()Lcom/sec/android/app/sbrowser/global_config/GlobalConfig;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationConfigManager;->a()Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationConfigManager;

    move-result-object p0

    return-object p0

    :pswitch_3
    new-instance p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;-><init>()V

    return-object p0

    :pswitch_4
    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/trans/ScsTransClient;->a()Lcom/sec/android/app/sbrowser/extensions/trans/ScsTransClient;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->e()Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->a()Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;

    move-result-object p0

    return-object p0

    :pswitch_7
    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->a()Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;

    move-result-object p0

    return-object p0

    :pswitch_8
    new-instance p0, Lcom/sec/android/app/sbrowser/extensions/SixDlService;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extensions/SixDlService;-><init>()V

    return-object p0

    :pswitch_9
    new-instance p0, Lcom/sec/android/app/sbrowser/extensions/SixAppstoreService;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extensions/SixAppstoreService;-><init>()V

    return-object p0

    :pswitch_a
    invoke-static {}, Lcom/sec/android/app/sbrowser/donations/AppSearchDonationHelper;->c()Lcom/sec/android/app/sbrowser/donations/AppSearchDonationHelper;

    move-result-object p0

    return-object p0

    :pswitch_b
    invoke-static {}, Lcom/sec/android/app/sbrowser/default_browser/SelfPromotionMananger;->a()Lcom/sec/android/app/sbrowser/default_browser/SelfPromotionMananger;

    move-result-object p0

    return-object p0

    :pswitch_c
    invoke-static {}, Lcom/sec/android/app/sbrowser/default_browser/HotSeatHelper;->a()Lcom/sec/android/app/sbrowser/default_browser/HotSeatHelper;

    move-result-object p0

    return-object p0

    :pswitch_d
    invoke-static {}, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserLogging;->a()Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserLogging;

    move-result-object p0

    return-object p0

    :pswitch_e
    new-instance p0, Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/contents_push/repository/PushRepository;-><init>()V

    return-object p0

    :pswitch_f
    new-instance p0, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushLogging;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushLogging;-><init>()V

    return-object p0

    :pswitch_10
    new-instance p0, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushHelper;-><init>()V

    return-object p0

    :pswitch_11
    new-instance p0, Lcom/sec/android/app/sbrowser/common/utils/iuid/IUIDManager;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/utils/iuid/IUIDManager;-><init>()V

    return-object p0

    :pswitch_12
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher;->a()Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher;

    move-result-object p0

    return-object p0

    :pswitch_13
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/VibratorUtil;->a()Lcom/sec/android/app/sbrowser/common/utils/VibratorUtil;

    move-result-object p0

    return-object p0

    :pswitch_14
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/KeyStoreUtils;->a()Lcom/sec/android/app/sbrowser/common/utils/KeyStoreUtils;

    move-result-object p0

    return-object p0

    :pswitch_15
    new-instance p0, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;-><init>()V

    return-object p0

    :pswitch_16
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/AudioUtil;->a()Lcom/sec/android/app/sbrowser/common/utils/AudioUtil;

    move-result-object p0

    return-object p0

    :pswitch_17
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/tnc/TermsAndConditionsLogging;->a()Lcom/sec/android/app/sbrowser/common/tnc/TermsAndConditionsLogging;

    move-result-object p0

    return-object p0

    :pswitch_18
    new-instance p0, Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/tnc/SIActivatedLogging;-><init>()V

    return-object p0

    :pswitch_19
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;->a()Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;

    move-result-object p0

    return-object p0

    :pswitch_1a
    new-instance p0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkSortTypeChangedNotifier;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkSortTypeChangedNotifier;-><init>()V

    return-object p0

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
        :pswitch_0
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
    .end packed-switch
.end method

.method public onFinished(Landroid/content/Context;)V
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/sites/b;->a:I

    packed-switch p0, :pswitch_data_0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigPreferenceFragment;->h(Landroid/content/Context;)V

    return-void

    :pswitch_0
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigPreferenceFragment;->k(Landroid/content/Context;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_0
    .end packed-switch
.end method

.method public sendMessage(Landroid/content/Context;Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/contents_push/api_message/PushMessageSender;->a(Landroid/content/Context;Lcom/sec/android/app/sbrowser/contents_push/api_message/PushApiMessage;)V

    return-void
.end method
