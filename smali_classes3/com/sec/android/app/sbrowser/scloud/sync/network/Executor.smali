.class public interface abstract Lcom/sec/android/app/sbrowser/scloud/sync/network/Executor;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_EXECUTOR:Lcom/sec/android/app/sbrowser/scloud/sync/network/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/scloud/sync/network/Executor$1;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/network/Executor$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/scloud/sync/network/Executor;->DEFAULT_EXECUTOR:Lcom/sec/android/app/sbrowser/scloud/sync/network/Executor;

    return-void
.end method


# virtual methods
.method public abstract execute(Landroid/content/Context;Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;Lcom/sec/android/app/sbrowser/scloud/sync/network/SCResponseHandler;)Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData$ReqItem;
    .param p2    # Lcom/sec/android/app/sbrowser/scloud/sync/network/HttpRequestData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
