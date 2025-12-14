.class public final synthetic Lcom/sec/android/app/sbrowser/si_log/model/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/a;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/si_log/model/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/si_log/model/c;->a:I

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Lcom/samsung/android/vexfwk/sdk/bokeheffect/VexFwkPortraitBokehEffect;->d()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {}, Lcom/samsung/android/vexfwk/sdk/bokeheffect/VexFwkPortraitBokehEffect;->b()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {}, Lcom/samsung/android/vexfwk/sdk/bokeheffect/VexFwkPortraitBokehEffect;->c()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-static {}, Lcom/samsung/android/app/sdk/deepsky/textextraction/util/Rune;->b()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-static {}, Lcom/samsung/android/app/sdk/deepsky/textextraction/util/Rune;->a()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-static {}, Lcom/samsung/android/app/sdk/deepsky/textextraction/util/Rune;->c()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-static {}, Lcom/samsung/android/app/sdk/deepsky/textextraction/selectionui/helper/LockScreenHelper;->a()Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-static {}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/FeaturedWallpaperViewModel;->b()Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;

    move-result-object p0

    return-object p0

    :pswitch_7
    invoke-static {}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity;->h()Lcom/sec/android/app/sbrowser/wallpaper/presentation/viewmodel/QuickAccessWallpaperPreviewViewModel;

    move-result-object p0

    return-object p0

    :pswitch_8
    invoke-static {}, Lcom/sec/android/app/sbrowser/wallpaper/data/WallpaperUrlApi;->a()Lretrofit2/Retrofit;

    move-result-object p0

    return-object p0

    :pswitch_9
    invoke-static {}, Lcom/sec/android/app/sbrowser/wallpaper/data/WallpaperUrlApi;->b()Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedWallpaperUrlApiService;

    move-result-object p0

    return-object p0

    :pswitch_a
    invoke-static {}, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;->a()Lcom/sec/android/app/sbrowser/wallpaper/data/FeaturedWallpaperClient;

    move-result-object p0

    return-object p0

    :pswitch_b
    invoke-static {}, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;->h()LQc/f0;

    move-result-object p0

    return-object p0

    :pswitch_c
    invoke-static {}, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;->b()LQc/f0;

    move-result-object p0

    return-object p0

    :pswitch_d
    invoke-static {}, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel;->f()Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;

    move-result-object p0

    return-object p0

    :pswitch_e
    invoke-static {}, Lcom/sec/android/app/sbrowser/sync/SamsungCloudSyncSettingProvider;->a()Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;

    move-result-object p0

    return-object p0

    :pswitch_f
    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/provider/SBrowserProviderV2;->b()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0

    :pswitch_10
    invoke-static {}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemAdapter;->a()Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryItemAdapter$Companion$ITEM_COMPARATOR$2$1;

    move-result-object p0

    return-object p0

    :pswitch_11
    invoke-static {}, Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupAdapter;->a()Lcom/sec/android/app/sbrowser/si_log/ui/SILogHistoryGroupAdapter$Companion$GROUP_COMPARATOR$2$1;

    move-result-object p0

    return-object p0

    :pswitch_12
    invoke-static {}, Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;->a()Lcom/sec/android/app/sbrowser/si_log/model/SILogPreference;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
