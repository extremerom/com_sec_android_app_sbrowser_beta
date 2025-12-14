.class public Lcom/sec/android/app/sbrowser/quickaccess/model/thread/MostVisitedDBThread;
.super Lcom/sec/android/app/sbrowser/quickaccess/model/thread/BaseDBThread;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/thread/BaseDBThread;-><init>()V

    return-void
.end method

.method public static synthetic a()Lcom/sec/android/app/sbrowser/quickaccess/model/thread/MostVisitedDBThread;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/model/thread/MostVisitedDBThread;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/thread/MostVisitedDBThread;-><init>()V

    return-object v0
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/quickaccess/model/thread/MostVisitedDBThread;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/homepage/a;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/homepage/a;-><init>(I)V

    const-class v1, Lcom/sec/android/app/sbrowser/quickaccess/model/thread/MostVisitedDBThread;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/quickaccess/model/thread/MostVisitedDBThread;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic execute(Ljava/lang/Runnable;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/thread/BaseDBThread;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
