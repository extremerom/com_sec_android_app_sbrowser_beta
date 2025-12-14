.class public Lcom/sec/android/app/sbrowser/scloud/account/CustomThreadFactoryBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mNameFormat:Ljava/lang/String;

.field private mPriority:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/account/CustomThreadFactoryBuilder;->mNameFormat:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/account/CustomThreadFactoryBuilder;->mPriority:Ljava/lang/Integer;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/scloud/account/CustomThreadFactoryBuilder;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/account/CustomThreadFactoryBuilder;->mPriority:Ljava/lang/Integer;

    return-object p0
.end method


# virtual methods
.method public build()Ljava/util/concurrent/ThreadFactory;
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/account/CustomThreadFactoryBuilder;->mNameFormat:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Lcom/sec/android/app/sbrowser/scloud/account/CustomThreadFactoryBuilder$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/sec/android/app/sbrowser/scloud/account/CustomThreadFactoryBuilder$1;-><init>(Lcom/sec/android/app/sbrowser/scloud/account/CustomThreadFactoryBuilder;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicLong;)V

    return-object v2
.end method

.method public setNameFormat(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/scloud/account/CustomThreadFactoryBuilder;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/account/CustomThreadFactoryBuilder;->mNameFormat:Ljava/lang/String;

    return-object p0
.end method
