.class Lcom/sec/terrace/browser/extensions/TinAndroidExtensionViewJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView$Natives;


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

.method public static get()Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionViewJni;

    invoke-direct {v0}, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionViewJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public clear(JLcom/sec/terrace/browser/extensions/TinAndroidExtensionView;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MU3VLbu6(JLjava/lang/Object;)V

    return-void
.end method

.method public close(JLcom/sec/terrace/browser/extensions/TinAndroidExtensionView;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->M4THGo7e(JLjava/lang/Object;)V

    return-void
.end method

.method public init(JLcom/sec/terrace/browser/extensions/TinAndroidExtensionView;II)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, LJ/N;->M6nnIrAU(JLjava/lang/Object;II)V

    return-void
.end method

.method public setMaxSize(JLcom/sec/terrace/browser/extensions/TinAndroidExtensionView;II)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, LJ/N;->MalVgDqD(JLjava/lang/Object;II)V

    return-void
.end method
