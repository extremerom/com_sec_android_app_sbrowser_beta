.class Lorg/chromium/printing/PrintingContextJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/printing/PrintingContext$Natives;


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

.method public static get()Lorg/chromium/printing/PrintingContext$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/printing/PrintingContextJni;

    invoke-direct {v0}, Lorg/chromium/printing/PrintingContextJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public askUserForSettingsReply(JLorg/chromium/printing/PrintingContext;Z)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->M8HtOhJl(JLjava/lang/Object;Z)V

    return-void
.end method

.method public showSystemDialogDone(JLorg/chromium/printing/PrintingContext;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->Mmq2M8tt(JLjava/lang/Object;)V

    return-void
.end method
