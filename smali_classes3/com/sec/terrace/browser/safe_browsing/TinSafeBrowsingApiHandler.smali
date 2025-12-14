.class public Lcom/sec/terrace/browser/safe_browsing/TinSafeBrowsingApiHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/components/safe_browsing/SafeBrowsingApiHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/safe_browsing/TinSafeBrowsingApiHandler$Natives;
    }
.end annotation


# static fields
.field private static sDidSetHandler:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static resetDidSetHandlerForTest()V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/terrace/browser/safe_browsing/TinSafeBrowsingApiHandler;->sDidSetHandler:Z

    return-void
.end method

.method public static setSafeBrowsingHandlerType()V
    .locals 1

    sget-boolean v0, Lcom/sec/terrace/browser/safe_browsing/TinSafeBrowsingApiHandler;->sDidSetHandler:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/terrace/browser/safe_browsing/TinSafeBrowsingApiHandler;

    invoke-direct {v0}, Lcom/sec/terrace/browser/safe_browsing/TinSafeBrowsingApiHandler;-><init>()V

    invoke-static {v0}, Lorg/chromium/components/safe_browsing/SafeBrowsingApiBridge;->setSafeBrowsingApiHandler(Lorg/chromium/components/safe_browsing/SafeBrowsingApiHandler;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/terrace/browser/safe_browsing/TinSafeBrowsingApiHandler;->sDidSetHandler:Z

    :cond_0
    return-void
.end method

.method public static updateSafeBrowsingStats(Ljava/lang/String;ZJ)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/safe_browsing/TinSafeBrowsingApiHandlerJni;->get()Lcom/sec/terrace/browser/safe_browsing/TinSafeBrowsingApiHandler$Natives;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/sec/terrace/browser/safe_browsing/TinSafeBrowsingApiHandler$Natives;->updateSafeBrowsingStats(Ljava/lang/String;ZJ)V

    return-void
.end method


# virtual methods
.method public setObserver(Lorg/chromium/components/safe_browsing/SafeBrowsingApiHandler$Observer;)V
    .locals 0

    invoke-static {p1}, Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler;->init(Lorg/chromium/components/safe_browsing/SafeBrowsingApiHandler$Observer;)Z

    return-void
.end method

.method public startUriLookup(JLjava/lang/String;[II)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler;->startUriLookup(JLjava/lang/String;[I)V

    return-void
.end method
