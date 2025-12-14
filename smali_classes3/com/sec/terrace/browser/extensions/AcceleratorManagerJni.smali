.class Lcom/sec/terrace/browser/extensions/AcceleratorManagerJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/extensions/AcceleratorManager$Natives;


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

.method public static get()Lcom/sec/terrace/browser/extensions/AcceleratorManager$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lcom/sec/terrace/browser/extensions/AcceleratorManagerJni;

    invoke-direct {v0}, Lcom/sec/terrace/browser/extensions/AcceleratorManagerJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public init(Ljava/lang/Object;)J
    .locals 0

    invoke-static {p1}, LJ/N;->M7fAINcG(Ljava/lang/Object;)J

    move-result-wide p0

    return-wide p0
.end method

.method public onKeyEvent(JLcom/sec/terrace/browser/extensions/AcceleratorManager;Landroid/view/KeyEvent;IIJIIZIJ)J
    .locals 0

    invoke-static/range {p1 .. p14}, LJ/N;->MCc_ZQqz(JLjava/lang/Object;Ljava/lang/Object;IIJIIZIJ)J

    move-result-wide p0

    return-wide p0
.end method
