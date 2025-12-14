.class public final synthetic Lcom/sec/terrace/browser/webapps/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/webapps/TerraceWebApkUpdateManager$WebApkUpdateCallback;


# instance fields
.field public final synthetic a:Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;

.field public final synthetic b:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/browser/webapps/c;->a:Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;

    iput-object p2, p0, Lcom/sec/terrace/browser/webapps/c;->b:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onResultFromNative(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/webapps/c;->a:Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;

    iget-object p0, p0, Lcom/sec/terrace/browser/webapps/c;->b:Ljava/lang/Runnable;

    invoke-static {v0, p0, p1, p2}, Lcom/sec/terrace/browser/webapps/TerraceWebApkUpdateManager;->c(Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;Ljava/lang/Runnable;IZ)V

    return-void
.end method
