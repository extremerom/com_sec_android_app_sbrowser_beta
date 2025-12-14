.class public Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCounterBridgeJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCounterBridge$Natives;


# annotations
.annotation build Lorg/jni_zero/CheckDiscard;
.end annotation

.annotation build Lorg/jni_zero/internal/NullUnmarked;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCounterBridge$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCounterBridgeJni;

    invoke-direct {v0}, Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCounterBridgeJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public destroy(JLcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCounterBridge;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MkUi6Ae6(JLjava/lang/Object;)V

    return-void
.end method

.method public init(Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCounterBridge;III)J
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MSZHo0dh(Ljava/lang/Object;III)J

    move-result-wide p0

    return-wide p0
.end method
