.class Lcom/sec/terrace/browser/webapps/TinWebApkInstaller$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/base/TerraceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/browser/webapps/TinWebApkInstaller;->updateAsync(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sec/terrace/base/TerraceCallback<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/terrace/browser/webapps/TinWebApkInstaller;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/webapps/TinWebApkInstaller;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/webapps/TinWebApkInstaller$2;->this$0:Lcom/sec/terrace/browser/webapps/TinWebApkInstaller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Integer;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/webapps/TinWebApkInstaller$2;->this$0:Lcom/sec/terrace/browser/webapps/TinWebApkInstaller;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/sec/terrace/browser/webapps/TinWebApkInstaller;->b(Lcom/sec/terrace/browser/webapps/TinWebApkInstaller;I)V

    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/webapps/TinWebApkInstaller$2;->onResult(Ljava/lang/Integer;)V

    return-void
.end method
