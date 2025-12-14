.class public Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingSILogManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mSILog:Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingSILog;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingSILog;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingSILog;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingSILogManager;->mSILog:Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingSILog;

    return-void
.end method

.method public static synthetic a()Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingSILogManager;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingSILogManager;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingSILogManager;-><init>()V

    return-object v0
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingSILogManager;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/homepage/a;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/homepage/a;-><init>(I)V

    const-class v1, Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingSILogManager;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingSILogManager;

    return-object v0
.end method


# virtual methods
.method public onLoadFinished()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingSILogManager;->mSILog:Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingSILog;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingSILog;->sendStatistics()V

    return-void
.end method

.method public onThreatDetected(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingSILogManager;->mSILog:Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingSILog;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingSILog;->sendDetectedThreatsStatistics(Ljava/util/List;)V

    return-void
.end method
