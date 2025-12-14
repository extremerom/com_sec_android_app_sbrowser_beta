.class Lorg/chromium/ui/ModalDialogWrapperJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/ui/ModalDialogWrapper$Natives;


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

.method public static get()Lorg/chromium/ui/ModalDialogWrapper$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/ui/ModalDialogWrapperJni;

    invoke-direct {v0}, Lorg/chromium/ui/ModalDialogWrapperJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public destroy(J)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MLmWlp$5(J)V

    return-void
.end method

.method public dismissed(J)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->M0keSMcf(J)V

    return-void
.end method

.method public negativeButtonClicked(J)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MM2aJAou(J)V

    return-void
.end method

.method public positiveButtonClicked(J)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->Mukn90ka(J)V

    return-void
.end method
