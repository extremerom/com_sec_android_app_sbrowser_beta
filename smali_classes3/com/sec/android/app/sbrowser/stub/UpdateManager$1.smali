.class Lcom/sec/android/app/sbrowser/stub/UpdateManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/stub/UpdateManager;->checkUpdateAtLoadFinishedIfAvailable(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/stub/UpdateManager;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/stub/UpdateManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/stub/UpdateManager$1;->this$0:Lcom/sec/android/app/sbrowser/stub/UpdateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/stub/UpdateManager$1;->this$0:Lcom/sec/android/app/sbrowser/stub/UpdateManager;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/stub/UpdateManager;->c(Lcom/sec/android/app/sbrowser/stub/UpdateManager;)V

    return-void
.end method
