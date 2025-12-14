.class Lcom/sec/terrace/browser/webapps/TinWebApkInstaller$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry$FetchWebappDataStorageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/browser/webapps/TinWebApkInstaller;->installWebApkAsync(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/terrace/browser/webapps/TinWebApkInstaller;

.field final synthetic val$source:I


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/webapps/TinWebApkInstaller;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/terrace/browser/webapps/TinWebApkInstaller$1;->this$0:Lcom/sec/terrace/browser/webapps/TinWebApkInstaller;

    iput p2, p0, Lcom/sec/terrace/browser/webapps/TinWebApkInstaller$1;->val$source:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWebappDataStorageRetrieved(Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;)V
    .locals 0

    iget p0, p0, Lcom/sec/terrace/browser/webapps/TinWebApkInstaller$1;->val$source:I

    invoke-virtual {p1, p0}, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;->updateSource(I)V

    invoke-virtual {p1}, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;->updateTimeOfLastCheckForUpdatedWebManifest()V

    return-void
.end method
