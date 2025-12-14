.class Lcom/sec/android/app/sbrowser/main_view/MainViewConnectivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/handoff/HandoffHelper$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/main_view/MainViewConnectivity;->onPostInflation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewConnectivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/main_view/MainViewConnectivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewConnectivity$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewConnectivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUrlOnlyReceived(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewConnectivity$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewConnectivity;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewConnectivity;->b(Lcom/sec/android/app/sbrowser/main_view/MainViewConnectivity;Ljava/lang/String;)V

    return-void
.end method

.method public onWebStateReceived(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewConnectivity$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewConnectivity;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/handoff/HandoffUtil;->modifyMediaInWebState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/sec/android/app/sbrowser/main_view/MainViewConnectivity;->a(Lcom/sec/android/app/sbrowser/main_view/MainViewConnectivity;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewConnectivity$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewConnectivity;

    invoke-static {p2, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewConnectivity;->c(Lcom/sec/android/app/sbrowser/main_view/MainViewConnectivity;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewConnectivity$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewConnectivity;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewConnectivity;->b(Lcom/sec/android/app/sbrowser/main_view/MainViewConnectivity;Ljava/lang/String;)V

    return-void
.end method
