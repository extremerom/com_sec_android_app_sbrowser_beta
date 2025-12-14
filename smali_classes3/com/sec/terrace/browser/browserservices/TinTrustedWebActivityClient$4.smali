.class Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$ExecutionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient;->stopLocationUpdates(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$4;->this$0:Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(Lcom/sec/terrace/browser/customtabs/TerraceOrigin;Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClientWrappers$Connection;)V
    .locals 2

    iget-object p0, p0, Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$4;->this$0:Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient;

    sget-object p1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    const/4 v0, 0x0

    const-string v1, "stopLocation"

    invoke-static {p0, p2, v1, p1, v0}, Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient;->b(Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient;Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClientWrappers$Connection;Ljava/lang/String;Landroid/os/Bundle;LI/d;)Landroid/os/Bundle;

    return-void
.end method
