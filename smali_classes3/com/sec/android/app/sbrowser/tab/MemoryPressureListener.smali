.class public Lcom/sec/android/app/sbrowser/tab/MemoryPressureListener;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static handleDebugIntent(Landroid/app/Activity;Landroid/content/Intent;)Z
    .locals 1

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/sec/terrace/TerraceHelper;->handleDebugIntent(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method
