.class abstract Lcom/sec/android/app/sbrowser/scloud/account/BasicAccountHandler$AbstractAccountHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/scloud/account/InternetAccountHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/scloud/account/BasicAccountHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractAccountHandler"
.end annotation


# instance fields
.field private final mBasicAccountHandler:Lcom/sec/android/app/sbrowser/scloud/account/BasicAccountHandler;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/scloud/account/BasicAccountHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/account/BasicAccountHandler$AbstractAccountHandler;->mBasicAccountHandler:Lcom/sec/android/app/sbrowser/scloud/account/BasicAccountHandler;

    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/account/BasicAccountHandler$AbstractAccountHandler;->mBasicAccountHandler:Lcom/sec/android/app/sbrowser/scloud/account/BasicAccountHandler;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/scloud/account/BasicAccountHandler;->cancel(Z)Z

    move-result p0

    return p0
.end method

.method public get()Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountInfo;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/account/BasicAccountHandler$AbstractAccountHandler;->mBasicAccountHandler:Lcom/sec/android/app/sbrowser/scloud/account/BasicAccountHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/account/BasicAccountHandler;->get()Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountInfo;

    move-result-object p0

    return-object p0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountInfo;
    .locals 0
    .param p3    # Ljava/util/concurrent/TimeUnit;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/account/BasicAccountHandler$AbstractAccountHandler;->mBasicAccountHandler:Lcom/sec/android/app/sbrowser/scloud/account/BasicAccountHandler;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/scloud/account/BasicAccountHandler;->get(JLjava/util/concurrent/TimeUnit;)Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountInfo;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/account/BasicAccountHandler$AbstractAccountHandler;->get()Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountInfo;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 0
    .param p3    # Ljava/util/concurrent/TimeUnit;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/scloud/account/BasicAccountHandler$AbstractAccountHandler;->get(JLjava/util/concurrent/TimeUnit;)Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountInfo;

    move-result-object p0

    return-object p0
.end method

.method public isCancelled()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/account/BasicAccountHandler$AbstractAccountHandler;->mBasicAccountHandler:Lcom/sec/android/app/sbrowser/scloud/account/BasicAccountHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/account/BasicAccountHandler;->isCancelled()Z

    move-result p0

    return p0
.end method

.method public isDone()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/account/BasicAccountHandler$AbstractAccountHandler;->mBasicAccountHandler:Lcom/sec/android/app/sbrowser/scloud/account/BasicAccountHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/account/BasicAccountHandler;->isDone()Z

    move-result p0

    return p0
.end method
