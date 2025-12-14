.class Lcom/sec/terrace/base/TerraceThreadUtilsJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/base/TerraceThreadUtils$Natives;


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

.method public static get()Lcom/sec/terrace/base/TerraceThreadUtils$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lcom/sec/terrace/base/TerraceThreadUtilsJni;

    invoke-direct {v0}, Lcom/sec/terrace/base/TerraceThreadUtilsJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public postOnPasswordDataThread(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MY1BD_mR(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public postOnPersonalDataThread(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->Mc1Zll14(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
