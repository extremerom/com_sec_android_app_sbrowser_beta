.class Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridgeJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge$Natives;


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

.method public static get()Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridgeJni;

    invoke-direct {v0}, Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridgeJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public deletionRequested(JLcom/sec/terrace/browser/autofill/TinAutofillPopupBridge;I)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MFWaS8n5(JLjava/lang/Object;I)V

    return-void
.end method

.method public layoutRedrawRequested(J)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MnMD4E1t(J)V

    return-void
.end method

.method public popupDismissed(JLcom/sec/terrace/browser/autofill/TinAutofillPopupBridge;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MhX8Gltd(JLjava/lang/Object;)V

    return-void
.end method

.method public suggestionSelected(JLcom/sec/terrace/browser/autofill/TinAutofillPopupBridge;I)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MtOuP$Nx(JLjava/lang/Object;I)V

    return-void
.end method
