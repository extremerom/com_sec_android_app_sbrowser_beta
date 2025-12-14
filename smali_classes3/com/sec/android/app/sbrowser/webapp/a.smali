.class public final synthetic Lcom/sec/android/app/sbrowser/webapp/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry$FetchWebappDataStorageCallback;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/webapp/WebApkActivityCoordinator;

.field public final synthetic b:Lcom/sec/android/app/sbrowser/common/lifecycle/ActivityLifecycleDispatcher;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/webapp/WebApkActivityCoordinator;Lcom/sec/android/app/sbrowser/common/lifecycle/ActivityLifecycleDispatcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/webapp/a;->a:Lcom/sec/android/app/sbrowser/webapp/WebApkActivityCoordinator;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/webapp/a;->b:Lcom/sec/android/app/sbrowser/common/lifecycle/ActivityLifecycleDispatcher;

    return-void
.end method


# virtual methods
.method public final onWebappDataStorageRetrieved(Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/a;->a:Lcom/sec/android/app/sbrowser/webapp/WebApkActivityCoordinator;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/webapp/a;->b:Lcom/sec/android/app/sbrowser/common/lifecycle/ActivityLifecycleDispatcher;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/webapp/WebApkActivityCoordinator;->a(Lcom/sec/android/app/sbrowser/webapp/WebApkActivityCoordinator;Lcom/sec/android/app/sbrowser/common/lifecycle/ActivityLifecycleDispatcher;Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;)V

    return-void
.end method
