.class Lcom/sec/terrace/browser/extensions/SixClientService$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/extensions/SixClientService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/terrace/browser/extensions/SixClientService;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/extensions/SixClientService;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/extensions/SixClientService$1;->this$0:Lcom/sec/terrace/browser/extensions/SixClientService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "SixClientService"

    const-string v0, "onServiceConnected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/terrace/browser/extensions/SixClientService$1;->this$0:Lcom/sec/terrace/browser/extensions/SixClientService;

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p1, Lcom/sec/terrace/browser/extensions/SixClientService;->mService:Landroid/os/Messenger;

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/SixClientService$1;->this$0:Lcom/sec/terrace/browser/extensions/SixClientService;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/terrace/browser/extensions/SixClientService;->mBound:Z

    invoke-static {p0}, Lcom/sec/terrace/browser/extensions/SixClientService;->a(Lcom/sec/terrace/browser/extensions/SixClientService;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "SixClientService"

    const-string v0, "onServiceDisconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/SixClientService$1;->this$0:Lcom/sec/terrace/browser/extensions/SixClientService;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/terrace/browser/extensions/SixClientService;->mService:Landroid/os/Messenger;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/terrace/browser/extensions/SixClientService;->mBound:Z

    invoke-static {p0}, Lcom/sec/terrace/browser/extensions/SixClientService;->b(Lcom/sec/terrace/browser/extensions/SixClientService;)V

    return-void
.end method
