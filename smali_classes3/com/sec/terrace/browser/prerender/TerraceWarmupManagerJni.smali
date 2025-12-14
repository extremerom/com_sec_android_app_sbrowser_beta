.class public Lcom/sec/terrace/browser/prerender/TerraceWarmupManagerJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/prerender/TerraceWarmupManager$Natives;


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

.method public static get()Lcom/sec/terrace/browser/prerender/TerraceWarmupManager$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lcom/sec/terrace/browser/prerender/TerraceWarmupManagerJni;

    invoke-direct {v0}, Lcom/sec/terrace/browser/prerender/TerraceWarmupManagerJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public preconnectUrlAndSubresources(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, LJ/N;->MNPhCW1p(Ljava/lang/Object;)V

    return-void
.end method
