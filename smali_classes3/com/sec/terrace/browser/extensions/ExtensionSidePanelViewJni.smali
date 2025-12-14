.class Lcom/sec/terrace/browser/extensions/ExtensionSidePanelViewJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView$Natives;


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

.method public static get()Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelViewJni;

    invoke-direct {v0}, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelViewJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public close(JLcom/sec/terrace/browser/extensions/ExtensionSidePanelView;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MfhS1u4V(JLjava/lang/Object;)V

    return-void
.end method

.method public init(JLcom/sec/terrace/browser/extensions/ExtensionSidePanelView;II)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, LJ/N;->MtzdZL$Y(JLjava/lang/Object;II)V

    return-void
.end method

.method public setMaxSize(JLcom/sec/terrace/browser/extensions/ExtensionSidePanelView;II)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, LJ/N;->M4TeLbb9(JLjava/lang/Object;II)V

    return-void
.end method
