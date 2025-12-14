.class public Lcom/sec/terrace/browser/TinAppLogging;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sDelegate:Lcom/sec/terrace/TerraceAppLogging$AppLoggingDelegate;


# direct methods
.method public static insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 6

    sget-object v0, Lcom/sec/terrace/browser/TinAppLogging;->sDelegate:Lcom/sec/terrace/TerraceAppLogging$AppLoggingDelegate;

    if-nez v0, :cond_0

    return-void

    :cond_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/sec/terrace/TerraceAppLogging$AppLoggingDelegate;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static insertLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-wide/16 v1, -0x1

    invoke-static {v0, p0, p1, v1, v2}, Lcom/sec/terrace/browser/TinAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static setDelegate(Lcom/sec/terrace/TerraceAppLogging$AppLoggingDelegate;)V
    .locals 0

    sput-object p0, Lcom/sec/terrace/browser/TinAppLogging;->sDelegate:Lcom/sec/terrace/TerraceAppLogging$AppLoggingDelegate;

    return-void
.end method
