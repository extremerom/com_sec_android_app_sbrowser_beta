.class public final synthetic LB9/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/a;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, LB9/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    iget p0, p0, LB9/b;->a:I

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel;->b()Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedTabFragment;->i()Landroidx/lifecycle/v0;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->u()Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncBaseAdapterDiffCallback;->a()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebFragment;->k()Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AddWebSubtitleAdapter;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedItemAdapter;->a()Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRetrofitInstance;->a()Lretrofit2/Retrofit;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRetrofitInstance;->b()Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedApiService;

    move-result-object p0

    return-object p0

    :pswitch_7
    invoke-static {}, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroViewModel;->c()LQc/f0;

    move-result-object p0

    return-object p0

    :pswitch_8
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/BitmapUtil;->a()Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object p0

    return-object p0

    :pswitch_9
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/BitmapUtil;->b()Landroid/renderscript/RenderScript;

    move-result-object p0

    return-object p0

    :pswitch_a
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository;->a()LQc/f0;

    move-result-object p0

    return-object p0

    :pswitch_b
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlRepository;->b()LQc/f0;

    move-result-object p0

    return-object p0

    :pswitch_c
    invoke-static {}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->b()Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ScsSummarizerClient;

    move-result-object p0

    return-object p0

    :pswitch_d
    invoke-static {}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->c()Landroidx/lifecycle/S;

    move-result-object p0

    return-object p0

    :pswitch_e
    invoke-static {}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;->k()Landroid/widget/Button;

    move-result-object p0

    return-object p0

    :pswitch_f
    invoke-static {}, Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector;->b()Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_10
    invoke-static {}, Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector;->h()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_11
    invoke-static {}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkProvider;->a()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_12
    invoke-static {}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ToolbarActionManager;->a()Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_13
    const/4 p0, 0x0

    :try_start_0
    sget-object v0, LU2/c;->d:Ljava/lang/Object;

    invoke-interface {v0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "beginTransaction"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v3, Landroid/database/sqlite/SQLiteTransactionListener;

    const-class v4, Landroid/os/CancellationSignal;

    filled-new-array {v2, v3, v2, v4}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-object p0

    :pswitch_14
    const/4 p0, 0x0

    :try_start_1
    const-class v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "getThreadSession"

    invoke-virtual {v0, v1, p0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object p0, v0

    :catchall_1
    return-object p0

    :pswitch_15
    invoke-static {}, Lcom/samsung/android/vexfwk/sdk/ocr/VexFwkImageOcr;->j()Lcom/samsung/android/vexfwk/ocr/VexFwkImageOcrCapabilities;

    move-result-object p0

    return-object p0

    :pswitch_16
    invoke-static {}, Lcom/samsung/android/vexfwk/sdk/objeraser/VexFwkObjRemover;->h()Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_17
    invoke-static {}, Lcom/samsung/android/vexfwk/sdk/objeraser/VexFwkObjRemover;->c()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_18
    invoke-static {}, Lcom/samsung/android/vexfwk/sdk/objeraser/VexFwkImageObjectRemover;->j()Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_19
    invoke-static {}, Lcom/samsung/android/vexfwk/sdk/objeraser/VexFwkImageObjectRemover;->d()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_1a
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :pswitch_1b
    invoke-static {}, Lcom/samsung/android/vexfwk/sdk/frcrunner/VexFwkFrcRunner;->e()[I

    move-result-object p0

    return-object p0

    :pswitch_1c
    invoke-static {}, Lcom/samsung/android/vexfwk/sdk/frcrunner/VexFwkFrcRunner;->d()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

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
