.class public final synthetic Lcom/sec/terrace/browser/webapps/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final synthetic a:Lcom/sec/terrace/browser/webapps/TerraceWebApkUpdateManager;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/terrace/browser/webapps/TerraceWebApkUpdateManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/browser/webapps/a;->a:Lcom/sec/terrace/browser/webapps/TerraceWebApkUpdateManager;

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/webapps/a;->a:Lcom/sec/terrace/browser/webapps/TerraceWebApkUpdateManager;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/sec/terrace/browser/webapps/TerraceWebApkUpdateManager;->a(Lcom/sec/terrace/browser/webapps/TerraceWebApkUpdateManager;Ljava/lang/Boolean;)V

    return-void
.end method
