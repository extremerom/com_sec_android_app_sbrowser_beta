.class Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImplJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl$Natives;


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

.method public static get()Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImplJni;

    invoke-direct {v0}, Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImplJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public adjustSlider(JIZ)Z
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MLjXc4lw(JIZ)Z

    move-result p0

    return p0
.end method

.method public areInlineTextBoxesLoaded(JI)Z
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MZcfOSQW(JI)Z

    move-result p0

    return p0
.end method

.method public blur(J)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MNm00fYN(J)V

    return-void
.end method

.method public click(JI)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MM4OAOXm(JI)V

    return-void
.end method

.method public connectInstanceToRootManager(J)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->Md53s98W(J)V

    return-void
.end method

.method public deleteEarly(J)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MxGfnb$m(J)V

    return-void
.end method

.method public disableRendererAccessibility(J)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MOP_btw0(J)V

    return-void
.end method

.method public findElementType(JILjava/lang/String;ZZZZZ)I
    .locals 0

    invoke-static/range {p1 .. p9}, LJ/N;->MavOU0SM(JILjava/lang/Object;ZZZZZ)I

    move-result p0

    return p0
.end method

.method public focus(JI)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MG_OiJKg(JI)V

    return-void
.end method

.method public getAbsolutePositionForNode(JI)[I
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MihzIy2h(JI)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0
.end method

.method public getCharacterBoundingBoxes(JIII)[I
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, LJ/N;->MVBiMGvZ(JIII)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0
.end method

.method public getEditableTextSelectionEnd(JI)I
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->Mxt_kc4Q(JI)I

    move-result p0

    return p0
.end method

.method public getEditableTextSelectionStart(JI)I
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MnVi6Frs(JI)I

    move-result p0

    return p0
.end method

.method public getIdForElementAfterElementHostingAutofillPopup(J)I
    .locals 0

    invoke-static {p1, p2}, LJ/N;->Mk31b3DX(J)I

    move-result p0

    return p0
.end method

.method public getImageData(JLandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;IZ)Z
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, LJ/N;->Mmo4i01Z(JLjava/lang/Object;IZ)Z

    move-result p0

    return p0
.end method

.method public getRootId(J)I
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MI8pU34f(J)I

    move-result p0

    return p0
.end method

.method public getSupportedHtmlElementTypes(J)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MPyIoFYC(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getTextLength(JI)I
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MhMiVz6m(JI)I

    move-result p0

    return p0
.end method

.method public init(Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;Lorg/chromium/content_public/browser/WebContents;Lorg/chromium/content/browser/accessibility/AccessibilityNodeInfoBuilder;)J
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MjYAnP1s(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)J

    move-result-wide p0

    return-wide p0
.end method

.method public initForAssistData(Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;Lorg/chromium/content_public/browser/WebContents;Lorg/chromium/content/browser/accessibility/AssistDataBuilder;)J
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->Me6UpGxZ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)J

    move-result-wide p0

    return-wide p0
.end method

.method public initWithAXTree(Lorg/chromium/content/browser/accessibility/WebContentsAccessibilityImpl;JLorg/chromium/content/browser/accessibility/AccessibilityNodeInfoBuilder;)J
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->M_XV3Nwg(Ljava/lang/Object;JLjava/lang/Object;)J

    move-result-wide p0

    return-wide p0
.end method

.method public isAutofillPopupNode(JI)Z
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->M5uHFthk(JI)Z

    move-result p0

    return p0
.end method

.method public isEditableText(JI)Z
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MCMbXu4W(JI)Z

    move-result p0

    return p0
.end method

.method public isFocused(JI)Z
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->M8UuMlLD(JI)Z

    move-result p0

    return p0
.end method

.method public isNodeValid(JI)Z
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MTBNGzHX(JI)Z

    move-result p0

    return p0
.end method

.method public isRootManagerConnected(J)Z
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MB0ln8Is(J)Z

    move-result p0

    return p0
.end method

.method public isSlider(JI)Z
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MkaakTGI(JI)Z

    move-result p0

    return p0
.end method

.method public loadInlineTextBoxes(JI)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->M2WbOJ7$(JI)V

    return-void
.end method

.method public moveAccessibilityFocus(JII)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MPQKLw45(JII)V

    return-void
.end method

.method public nextAtGranularity(JIZII)Z
    .locals 0

    invoke-static/range {p1 .. p6}, LJ/N;->McKjfBnu(JIZII)Z

    move-result p0

    return p0
.end method

.method public onAutofillPopupDismissed(J)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MdET073e(J)V

    return-void
.end method

.method public onAutofillPopupDisplayed(J)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MMiqVowe(J)V

    return-void
.end method

.method public onHoverEventNoRenderer(JFF)Z
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->Mx2ry6ai(JFF)Z

    move-result p0

    return p0
.end method

.method public populateAccessibilityEvent(JLandroid/view/accessibility/AccessibilityEvent;II)Z
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, LJ/N;->M2E1dEU9(JLjava/lang/Object;II)Z

    move-result p0

    return p0
.end method

.method public populateAccessibilityNodeInfo(JLandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;I)Z
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MJGtghd9(JLjava/lang/Object;I)Z

    move-result p0

    return p0
.end method

.method public previousAtGranularity(JIZII)Z
    .locals 0

    invoke-static/range {p1 .. p6}, LJ/N;->M3suD0ji(JIZII)Z

    move-result p0

    return p0
.end method

.method public reEnableRendererAccessibility(JLorg/chromium/content_public/browser/WebContents;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->M7xDKIau(JLjava/lang/Object;)V

    return-void
.end method

.method public requestAccessibilityTreeSnapshot(JLandroid/view/ViewStructure;Lorg/chromium/content/browser/accessibility/AccessibilityDelegate$AccessibilityCoordinates;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    invoke-static/range {p1 .. p6}, LJ/N;->MdpnvP$A(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public scroll(JIIZ)Z
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, LJ/N;->MNch0m9c(JIIZ)Z

    move-result p0

    return p0
.end method

.method public scrollToMakeNodeVisible(JI)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MB302_MP(JI)V

    return-void
.end method

.method public setAllowImageDescriptions(JZ)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->McBCyHOt(JZ)V

    return-void
.end method

.method public setBrowserAXMode(JZZZ)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, LJ/N;->M43clIZI(JZZZ)V

    return-void
.end method

.method public setRangeValue(JIF)Z
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MfTAAcu8(JIF)Z

    move-result p0

    return p0
.end method

.method public setSelection(JIII)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, LJ/N;->MVuu0R4P(JIII)V

    return-void
.end method

.method public setSequentialFocusStartingPoint(JI)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MuoU58Qm(JI)V

    return-void
.end method

.method public setTextFieldValue(JILjava/lang/String;)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MEJD7Boi(JILjava/lang/Object;)V

    return-void
.end method

.method public showContextMenu(JI)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MOikWIf9(JI)V

    return-void
.end method

.method public updateCachedAccessibilityNodeInfo(JLandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;I)Z
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MZ7sDynr(JLjava/lang/Object;I)Z

    move-result p0

    return p0
.end method
