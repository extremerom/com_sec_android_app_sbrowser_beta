.class Lcom/sec/android/app/sbrowser/trans_bar/TransBarHandler$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/trans_bar/TransBarHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarHandler;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/trans_bar/TransBarHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarHandler$1;->this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarHandler$1;->this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarHandler;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarHandler;->a(Lcom/sec/android/app/sbrowser/trans_bar/TransBarHandler;)Lcom/sec/android/app/sbrowser/trans_bar/TransBarHandlerClient;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarHandlerClient;->onRunLoadingRunnable()V

    return-void
.end method
