.class public final synthetic Lcom/sec/android/app/sbrowser/samsungpass/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/authfw/pass/sdk/service/PassConnector$BindListener;


# instance fields
.field public final synthetic a:Ljava/util/concurrent/CompletableFuture;

.field public final synthetic b:Ljava/util/Timer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/CompletableFuture;Ljava/util/Timer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/samsungpass/b;->a:Ljava/util/concurrent/CompletableFuture;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/samsungpass/b;->b:Ljava/util/Timer;

    return-void
.end method


# virtual methods
.method public final onFinished(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/samsungpass/b;->a:Ljava/util/concurrent/CompletableFuture;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/samsungpass/b;->b:Ljava/util/Timer;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdkAdapter;->b(Ljava/util/concurrent/CompletableFuture;Ljava/util/Timer;Z)V

    return-void
.end method
