.class Lcom/sec/terrace/browser/browsing_data/TinUrlFilterBridgeJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/browsing_data/TinUrlFilterBridge$Natives;


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

.method public static get()Lcom/sec/terrace/browser/browsing_data/TinUrlFilterBridge$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lcom/sec/terrace/browser/browsing_data/TinUrlFilterBridgeJni;

    invoke-direct {v0}, Lcom/sec/terrace/browser/browsing_data/TinUrlFilterBridgeJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public destroy(JLcom/sec/terrace/browser/browsing_data/TinUrlFilterBridge;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MXg7CO_Q(JLjava/lang/Object;)V

    return-void
.end method

.method public matchesUrl(JLcom/sec/terrace/browser/browsing_data/TinUrlFilterBridge;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MZl0tMxi(JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
