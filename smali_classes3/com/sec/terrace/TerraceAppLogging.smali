.class public Lcom/sec/terrace/TerraceAppLogging;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/TerraceAppLogging$AppLoggingDelegate;
    }
.end annotation


# direct methods
.method public static setApploggingDelegate(Lcom/sec/terrace/TerraceAppLogging$AppLoggingDelegate;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/terrace/browser/TinAppLogging;->setDelegate(Lcom/sec/terrace/TerraceAppLogging$AppLoggingDelegate;)V

    return-void
.end method
