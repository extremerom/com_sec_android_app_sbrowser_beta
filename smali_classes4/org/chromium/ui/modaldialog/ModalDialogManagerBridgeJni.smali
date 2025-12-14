.class Lorg/chromium/ui/modaldialog/ModalDialogManagerBridgeJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/ui/modaldialog/ModalDialogManagerBridge$Natives;


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

.method public static get()Lorg/chromium/ui/modaldialog/ModalDialogManagerBridge$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/ui/modaldialog/ModalDialogManagerBridgeJni;

    invoke-direct {v0}, Lorg/chromium/ui/modaldialog/ModalDialogManagerBridgeJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public create(Lorg/chromium/ui/modaldialog/ModalDialogManagerBridge;)J
    .locals 0

    invoke-static {p1}, LJ/N;->McL9nu5N(Ljava/lang/Object;)J

    move-result-wide p0

    return-wide p0
.end method
