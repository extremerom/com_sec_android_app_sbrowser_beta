.class Lcom/sec/terrace/browser/infobars/password_manager/TerraceUpdatePasswordInfobarDelegateJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/infobars/password_manager/TerraceUpdatePasswordInfobarDelegate$Natives;


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

.method public static get()Lcom/sec/terrace/browser/infobars/password_manager/TerraceUpdatePasswordInfobarDelegate$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lcom/sec/terrace/browser/infobars/password_manager/TerraceUpdatePasswordInfobarDelegateJni;

    invoke-direct {v0}, Lcom/sec/terrace/browser/infobars/password_manager/TerraceUpdatePasswordInfobarDelegateJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public setSelectedUserNameIndex(JLcom/sec/terrace/browser/infobars/password_manager/TerraceUpdatePasswordInfobarDelegate;I)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MbbdAVRG(JLjava/lang/Object;I)V

    return-void
.end method
