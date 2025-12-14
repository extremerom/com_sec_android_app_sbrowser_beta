.class public Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoRepository;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mClient:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoClient;

.field private final mPreference:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoPreference;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoClient;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoPreference;)V
    .locals 0
    .param p1    # Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoClient;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoPreference;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoRepository;->mClient:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoClient;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoRepository;->mPreference:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoPreference;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoRepository;)Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoPreference;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoRepository;->mPreference:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoPreference;

    return-object p0
.end method

.method public static create()Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoRepository;
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoRepository;

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoClient;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoClient;-><init>()V

    new-instance v2, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoPreference;

    invoke-direct {v2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoPreference;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoRepository;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoClient;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoPreference;)V

    return-object v0
.end method


# virtual methods
.method public requestBackgroundInfo(Ljava/lang/String;ZZ)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoRepository;->mClient:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoClient;

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoRepository$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoRepository$1;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoRepository;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoClient;->requestBackgroundInfo(Ljava/lang/String;ZZLcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessBackgroundInfoClient$RequestBackgroundInfoCallback;)V

    return-void
.end method
