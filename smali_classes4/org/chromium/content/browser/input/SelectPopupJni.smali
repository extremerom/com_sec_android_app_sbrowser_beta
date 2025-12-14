.class public Lorg/chromium/content/browser/input/SelectPopupJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/content/browser/input/SelectPopup$Natives;


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

.method public static get()Lorg/chromium/content/browser/input/SelectPopup$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/content/browser/input/SelectPopupJni;

    invoke-direct {v0}, Lorg/chromium/content/browser/input/SelectPopupJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public moveFocusToPrevNextInput(JLorg/chromium/content/browser/input/SelectPopup;JZ)V
    .locals 0

    invoke-static/range {p1 .. p6}, LJ/N;->Mb$sFsst(JLjava/lang/Object;JZ)V

    return-void
.end method

.method public selectMenuItems(JLorg/chromium/content/browser/input/SelectPopup;J[I)V
    .locals 0

    invoke-static/range {p1 .. p6}, LJ/N;->ME0LgXse(JLjava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method
