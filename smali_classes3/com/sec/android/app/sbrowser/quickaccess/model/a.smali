.class public final synthetic Lcom/sec/android/app/sbrowser/quickaccess/model/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/function/Supplier;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/a;->a:I

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository$Companion;->a()Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->f()Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;

    move-result-object p0

    return-object p0

    :pswitch_1
    new-instance p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessEditModeOwner;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessEditModeOwner;-><init>()V

    return-object p0

    :pswitch_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyDashboardRepository;->d()Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyDashboardRepository;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesRepository;->b()Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesRepository;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/model/HistoryRepository$Companion;->a()Lcom/sec/android/app/sbrowser/quickaccess/model/HistoryRepository;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
