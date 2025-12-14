.class Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockWorkerThread$LazyHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockWorkerThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LazyHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockWorkerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockWorkerThread;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockWorkerThread;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockWorkerThread$LazyHolder;->INSTANCE:Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockWorkerThread;

    return-void
.end method

.method public static bridge synthetic a()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockWorkerThread;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockWorkerThread$LazyHolder;->INSTANCE:Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockWorkerThread;

    return-object v0
.end method
