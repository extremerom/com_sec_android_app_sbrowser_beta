.class public Lorg/chromium/content/browser/input/ImeAdapterImplJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/content/browser/input/ImeAdapterImpl$Natives;


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

.method public static get()Lorg/chromium/content/browser/input/ImeAdapterImpl$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/content/browser/input/ImeAdapterImplJni;

    invoke-direct {v0}, Lorg/chromium/content/browser/input/ImeAdapterImplJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public advanceFocusForIME(JLorg/chromium/content/browser/input/ImeAdapterImpl;I)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MrkJlyAt(JLjava/lang/Object;I)V

    return-void
.end method

.method public appendBackgroundColorSpan(JIII)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, LJ/N;->MqqhDONa(JIII)V

    return-void
.end method

.method public appendForegroundColorSpan(JIII)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, LJ/N;->Ms4vaKl$(JIII)V

    return-void
.end method

.method public appendSuggestionSpan(JIIZZZZII[Ljava/lang/String;)V
    .locals 0

    invoke-static/range {p1 .. p11}, LJ/N;->M$b45Vvn(JIIZZZZIILjava/lang/Object;)V

    return-void
.end method

.method public appendUnderlineSpan(JII)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MFfRzF$Z(JII)V

    return-void
.end method

.method public commitText(JLorg/chromium/content/browser/input/ImeAdapterImpl;Ljava/lang/CharSequence;Ljava/lang/String;I)V
    .locals 0

    invoke-static/range {p1 .. p6}, LJ/N;->Mb6t43di(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    return-void
.end method

.method public defersLoading(JLorg/chromium/content/browser/input/ImeAdapterImpl;Z)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->Mlw1u_TN(JLjava/lang/Object;Z)V

    return-void
.end method

.method public deleteSurroundingText(JLorg/chromium/content/browser/input/ImeAdapterImpl;II)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, LJ/N;->M26GCjn5(JLjava/lang/Object;II)V

    return-void
.end method

.method public deleteSurroundingTextInCodePoints(JLorg/chromium/content/browser/input/ImeAdapterImpl;II)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, LJ/N;->Mvb046o_(JLjava/lang/Object;II)V

    return-void
.end method

.method public finishComposingText(JLorg/chromium/content/browser/input/ImeAdapterImpl;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->M_V5g5ie(JLjava/lang/Object;)V

    return-void
.end method

.method public handleStylusWritingGestureAction(JLorg/chromium/content/browser/input/ImeAdapterImpl;ILjava/nio/ByteBuffer;)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, LJ/N;->M3wL9MnJ(JLjava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method

.method public init(Lorg/chromium/content/browser/input/ImeAdapterImpl;Lorg/chromium/content_public/browser/WebContents;)J
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MhbsQh1H(Ljava/lang/Object;Ljava/lang/Object;)J

    move-result-wide p0

    return-wide p0
.end method

.method public requestCursorUpdate(JLorg/chromium/content/browser/input/ImeAdapterImpl;ZZ)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, LJ/N;->MdwW1P2L(JLjava/lang/Object;ZZ)V

    return-void
.end method

.method public requestTextInputStateUpdate(JLorg/chromium/content/browser/input/ImeAdapterImpl;)Z
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->M7o5Xhhi(JLjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public sendKeyEvent(JLorg/chromium/content/browser/input/ImeAdapterImpl;Landroid/view/KeyEvent;IIJIIZI)Z
    .locals 0

    invoke-static/range {p1 .. p12}, LJ/N;->M1qwlrOP(JLjava/lang/Object;Ljava/lang/Object;IIJIIZI)Z

    move-result p0

    return p0
.end method

.method public setComposingRegion(JLorg/chromium/content/browser/input/ImeAdapterImpl;II)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, LJ/N;->M8ty0WHb(JLjava/lang/Object;II)V

    return-void
.end method

.method public setComposingText(JLorg/chromium/content/browser/input/ImeAdapterImpl;Ljava/lang/CharSequence;Ljava/lang/String;I)V
    .locals 0

    invoke-static/range {p1 .. p6}, LJ/N;->Mlslst_P(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    return-void
.end method

.method public setEditableSelectionOffsets(JLorg/chromium/content/browser/input/ImeAdapterImpl;II)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, LJ/N;->MmtjCblb(JLjava/lang/Object;II)V

    return-void
.end method
