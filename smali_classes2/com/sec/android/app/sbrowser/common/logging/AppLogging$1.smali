.class Lcom/sec/android/app/sbrowser/common/logging/AppLogging$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/TerraceAppLogging$AppLoggingDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/logging/AppLogging;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, Lcom/sec/android/app/sbrowser/common/logging/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
