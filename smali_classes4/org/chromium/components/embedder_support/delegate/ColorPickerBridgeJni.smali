.class Lorg/chromium/components/embedder_support/delegate/ColorPickerBridgeJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/components/embedder_support/delegate/ColorPickerBridge$Natives;


# annotations
.annotation build Lorg/jni_zero/CheckDiscard;
.end annotation

.annotation build Lorg/jni_zero/internal/NullUnmarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lorg/chromium/components/embedder_support/delegate/ColorPickerBridge$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/components/embedder_support/delegate/ColorPickerBridgeJni;

    invoke-direct {v0}, Lorg/chromium/components/embedder_support/delegate/ColorPickerBridgeJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onColorChosen(JLorg/chromium/components/embedder_support/delegate/ColorPickerBridge;I)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MwtvmxOv(JLjava/lang/Object;I)V

    return-void
.end method
