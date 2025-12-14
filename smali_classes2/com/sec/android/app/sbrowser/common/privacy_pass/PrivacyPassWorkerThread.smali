.class public Lcom/sec/android/app/sbrowser/common/privacy_pass/PrivacyPassWorkerThread;
.super Lcom/sec/android/app/sbrowser/common/privacy_pass/PPWorkerThread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/privacy_pass/PrivacyPassWorkerThread$LazyHolder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/privacy_pass/PPWorkerThread;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/common/privacy_pass/PrivacyPassWorkerThread;
    .locals 2

    new-instance v0, Lcom/google/firebase/messaging/m;

    const/16 v1, 0x1c

    invoke-direct {v0, v1}, Lcom/google/firebase/messaging/m;-><init>(I)V

    const-class v1, Lcom/sec/android/app/sbrowser/common/privacy_pass/PrivacyPassWorkerThread;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/privacy_pass/PrivacyPassWorkerThread;

    return-object v0
.end method


# virtual methods
.method public createExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 0

    const/4 p0, 0x1

    invoke-static {p0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    return-object p0
.end method
