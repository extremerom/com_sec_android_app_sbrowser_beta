.class Lcom/sec/android/app/sbrowser/media/history/MHActivity$2;
.super Landroidx/activity/u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/media/history/MHActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/media/history/MHActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/media/history/MHActivity;Z)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/MHActivity$2;->this$0:Lcom/sec/android/app/sbrowser/media/history/MHActivity;

    invoke-direct {p0, p2}, Landroidx/activity/u;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public handleOnBackPressed()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/media/history/MHActivity;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "handleOnBackPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/MHActivity$2;->this$0:Lcom/sec/android/app/sbrowser/media/history/MHActivity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/history/MHActivity;->h(Lcom/sec/android/app/sbrowser/media/history/MHActivity;)Lcom/sec/android/app/sbrowser/media/history/controller/MHController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/history/controller/MHController;->onBackPressed()V

    return-void
.end method
