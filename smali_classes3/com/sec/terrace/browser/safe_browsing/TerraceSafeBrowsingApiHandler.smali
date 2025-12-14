.class public Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate;,
        Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$ThreadChecker;
    }
.end annotation


# static fields
.field private static sFactory:Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate$DelegateFactory;

.field private static sSafeBrowsingDelegate:Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate;


# direct methods
.method public static bridge synthetic a()Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate$DelegateFactory;
    .locals 1

    sget-object v0, Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler;->sFactory:Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate$DelegateFactory;

    return-object v0
.end method

.method private static getInstance()Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate;
    .locals 2

    sget-object v0, Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler;->sSafeBrowsingDelegate:Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate;-><init>(I)V

    sput-object v0, Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler;->sSafeBrowsingDelegate:Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate;

    :cond_0
    sget-object v0, Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler;->sSafeBrowsingDelegate:Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate;

    return-object v0
.end method

.method public static init(Lorg/chromium/components/safe_browsing/SafeBrowsingApiHandler$Observer;)Z
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler;->getInstance()Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate;->c(Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate;Lorg/chromium/components/safe_browsing/SafeBrowsingApiHandler$Observer;)Z

    move-result p0

    return p0
.end method

.method public static setDelegateFactoryAndSBHandler(Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate$DelegateFactory;)V
    .locals 0

    sput-object p0, Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler;->sFactory:Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate$DelegateFactory;

    invoke-static {}, Lcom/sec/terrace/browser/safe_browsing/TinSafeBrowsingApiHandler;->setSafeBrowsingHandlerType()V

    return-void
.end method

.method public static setSafeBrowsingBrowserSettings(Z)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler;->getInstance()Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate;->d(Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate;Z)V

    return-void
.end method

.method public static startUriLookup(JLjava/lang/String;[I)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler;->getInstance()Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate;

    move-result-object v0

    invoke-static {v0, p0, p1, p2, p3}, Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate;->e(Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate;JLjava/lang/String;[I)V

    return-void
.end method
