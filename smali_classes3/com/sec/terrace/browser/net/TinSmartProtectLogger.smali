.class public Lcom/sec/terrace/browser/net/TinSmartProtectLogger;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/net/TinSmartProtectLogger$LazyHolder;
    }
.end annotation


# instance fields
.field private mLogLevel:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/terrace/browser/net/TinSmartProtectLogger;->mLogLevel:I

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/browser/net/TinSmartProtectLogger;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sec/terrace/browser/net/TinSmartProtectLogger;
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/net/TinSmartProtectLogger$LazyHolder;->a()Lcom/sec/terrace/browser/net/TinSmartProtectLogger;

    move-result-object v0

    return-object v0
.end method

.method private judgeReason(ILjava/lang/String;)I
    .locals 0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p0

    add-int/lit16 p0, p0, -0x3e2

    return p0
.end method


# virtual methods
.method public reportUnwantedNavigation(ILjava/lang/String;)Z
    .locals 3

    iget v0, p0, Lcom/sec/terrace/browser/net/TinSmartProtectLogger;->mLogLevel:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/16 v0, -0x3ec

    if-ne p1, v0, :cond_1

    return v2

    :cond_1
    invoke-static {p1}, Lcom/sec/terrace/browser/net/TinSmartProtectType;->getTypeDescription(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lcom/sec/terrace/browser/net/TinSmartProtectLogger;->judgeReason(ILjava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/terrace/browser/net/TinSmartProtectLogger;->sendLogMap(IILjava/lang/String;)V

    return v1
.end method

.method public sendLogMap(IILjava/lang/String;)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "sendLogMap errorCode: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TinSmartProtectLogger"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "Error code"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Reason"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Description"

    invoke-virtual {p0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "201"

    const-string p2, "9950"

    invoke-static {p1, p2, p0}, Lcom/sec/terrace/browser/TinSALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public setLoadingFailLogLevel(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setLoadingFailLogLevel "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TinSmartProtectLogger"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/terrace/browser/net/TinSmartProtectLogger;->mLogLevel:I

    return-void
.end method
